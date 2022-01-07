; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_write_packet_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_write_packet_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__*, %struct.TYPE_20__**, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_26__*, %struct.TYPE_22__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32, i32 }
%struct.TYPE_24__ = type { i64, i64, i32 }
%struct.TYPE_21__ = type { i32, i32, i64, i64, i32, i8* }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@AVI_MAX_RIFF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"AVIX\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"movi\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_21__*)* @avi_write_packet_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_write_packet_internal(%struct.TYPE_25__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca [5 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %10, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %11, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %29, i64 %31
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %12, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %38, i64 %40
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %43, align 8
  store %struct.TYPE_26__* %44, %struct.TYPE_26__** %13, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %2
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %50, %2
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %106

71:                                               ; preds = %60
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %73 = call i64 @avio_tell(%struct.TYPE_23__* %72)
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = load i64, i64* @AVI_MAX_RIFF_SIZE, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %71
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %82 = call i32 @avi_write_ix(%struct.TYPE_25__* %81)
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @ff_end_tag(%struct.TYPE_23__* %83, i64 %86)
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %94 = call i32 @avi_write_idx1(%struct.TYPE_25__* %93)
  br label %95

95:                                               ; preds = %92, %80
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @ff_end_tag(%struct.TYPE_23__* %96, i64 %99)
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %103 = call i64 @avi_start_new_riff(%struct.TYPE_25__* %101, %struct.TYPE_23__* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %95, %71, %60
  %107 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @avi_stream2fourcc(i8* %107, i32 %108, i64 %111)
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %106
  store i32 16, i32* %7, align 4
  br label %120

120:                                              ; preds = %119, %106
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %120
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %132
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @avi_add_ientry(%struct.TYPE_25__* %142, i32 %143, i32* null, i32 %144, i32 %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %3, align 4
  br label %172

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151, %132
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %154 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %155 = call i32 @avio_write(%struct.TYPE_23__* %153, i8* %154, i32 4)
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @avio_wl32(%struct.TYPE_23__* %156, i32 %157)
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 5
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @avio_write(%struct.TYPE_23__* %159, i8* %162, i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = and i32 %165, 1
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %152
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %170 = call i32 @avio_w8(%struct.TYPE_23__* %169, i32 0)
  br label %171

171:                                              ; preds = %168, %152
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %149
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @avio_tell(%struct.TYPE_23__*) #1

declare dso_local i32 @avi_write_ix(%struct.TYPE_25__*) #1

declare dso_local i32 @ff_end_tag(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @avi_write_idx1(%struct.TYPE_25__*) #1

declare dso_local i64 @avi_start_new_riff(%struct.TYPE_25__*, %struct.TYPE_23__*, i8*, i8*) #1

declare dso_local i32 @avi_stream2fourcc(i8*, i32, i64) #1

declare dso_local i32 @avi_add_ientry(%struct.TYPE_25__*, i32, i32*, i32, i32) #1

declare dso_local i32 @avio_write(%struct.TYPE_23__*, i8*, i32) #1

declare dso_local i32 @avio_wl32(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @avio_w8(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
