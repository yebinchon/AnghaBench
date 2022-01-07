; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_tkhd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_tkhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__**, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }

@mp4_write_box_tkhd.matrix = internal global [9 x i32] [i32 65536, i32 0, i32 0, i32 0, i32 65536, i32 0, i32 0, i32 0, i32 1073741824], align 16
@MP4_64BITS_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"creation_time\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"modification_time\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"track_ID\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@MP4_TIMESCALE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"alternate_group\00", align 1
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_SUBPICTURE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @mp4_write_box_tkhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_write_box_tkhd(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %3, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %15, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %16, i64 %19
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %4, align 8
  %22 = load i32, i32* @MP4_64BITS_TIME, align 4
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @WRITE_U8(%struct.TYPE_20__* %23, i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %27 = call i32 @WRITE_U24(%struct.TYPE_20__* %26, i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %1
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %32 = call i32 @WRITE_U64(%struct.TYPE_20__* %31, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %34 = call i32 @WRITE_U64(%struct.TYPE_20__* %33, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = call i32 @WRITE_U32(%struct.TYPE_20__* %35, i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %43 = call i32 @WRITE_U32(%struct.TYPE_20__* %42, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MP4_TIMESCALE, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sdiv i32 %49, 1000000
  %51 = call i32 @WRITE_U64(%struct.TYPE_20__* %44, i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %74

52:                                               ; preds = %1
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %54 = call i32 @WRITE_U32(%struct.TYPE_20__* %53, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %56 = call i32 @WRITE_U32(%struct.TYPE_20__* %55, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  %62 = trunc i64 %61 to i32
  %63 = call i32 @WRITE_U32(%struct.TYPE_20__* %57, i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %65 = call i32 @WRITE_U32(%struct.TYPE_20__* %64, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MP4_TIMESCALE, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sdiv i32 %71, 1000000
  %73 = call i32 @WRITE_U32(%struct.TYPE_20__* %66, i32 %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %52, %30
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %81, %74
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %80 = call i32 @WRITE_U32(%struct.TYPE_20__* %79, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %75

84:                                               ; preds = %75
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %86 = call i32 @WRITE_U16(%struct.TYPE_20__* %85, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %88 = call i32 @WRITE_U16(%struct.TYPE_20__* %87, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 256, i32 0
  %99 = call i32 @WRITE_U16(%struct.TYPE_20__* %89, i32 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %101 = call i32 @WRITE_U16(%struct.TYPE_20__* %100, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %112, %84
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 9
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [9 x i32], [9 x i32]* @mp4_write_box_tkhd.matrix, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @WRITE_U32(%struct.TYPE_20__* %106, i32 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %102

115:                                              ; preds = %102
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %183

123:                                              ; preds = %115
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = shl i32 %131, 16
  store i32 %132, i32* %7, align 4
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 16
  store i32 %141, i32* %8, align 4
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %182

151:                                              ; preds = %123
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %182

161:                                              ; preds = %151
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = mul nsw i32 %162, %171
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = sdiv i32 %172, %180
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %161, %151, %123
  br label %193

183:                                              ; preds = %115
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @VC_CONTAINER_ES_TYPE_SUBPICTURE, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191, %183
  br label %193

193:                                              ; preds = %192, %182
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @WRITE_U32(%struct.TYPE_20__* %194, i32 %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @WRITE_U32(%struct.TYPE_20__* %197, i32 %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %201 = call i32 @STREAM_STATUS(%struct.TYPE_20__* %200)
  ret i32 %201
}

declare dso_local i32 @WRITE_U8(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @WRITE_U24(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @WRITE_U64(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @WRITE_U16(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
