; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_qsv.c_qsv_frames_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_qsv.c_qsv_frames_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__*, %struct.TYPE_13__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i32*, i32*, i32*, %struct.TYPE_16__, i32**, %struct.TYPE_18__** }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_18__** }

@MFX_MEMTYPE_OPAQUE_FRAME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported pixel format\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Error creating an internal frame pool\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MFX_EXTBUFF_OPAQUE_SURFACE_ALLOCATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @qsv_frames_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_frames_init(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %4, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %5, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MFX_MEMTYPE_OPAQUE_FRAME, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @qsv_fourcc_from_pix_fmt(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %1
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = call i32 @av_log(%struct.TYPE_21__* %34, i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOSYS, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %194

39:                                               ; preds = %1
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @qsv_init_pool(%struct.TYPE_21__* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = call i32 @av_log(%struct.TYPE_21__* %51, i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %2, align 4
  br label %194

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %143

59:                                               ; preds = %56
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @av_mallocz_array(i32 %62, i32 8)
  %64 = bitcast i8* %63 to %struct.TYPE_18__**
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 9
  store %struct.TYPE_18__** %64, %struct.TYPE_18__*** %66, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 9
  %69 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %68, align 8
  %70 = icmp ne %struct.TYPE_18__** %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %194

74:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %94, %74
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %75
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i64 %86
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 9
  %90 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %90, i64 %92
  store %struct.TYPE_18__* %87, %struct.TYPE_18__** %93, align 8
  br label %94

94:                                               ; preds = %81
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %75

97:                                               ; preds = %75
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 9
  %100 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %99, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  store %struct.TYPE_18__** %100, %struct.TYPE_18__*** %104, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  store i32 %114, i32* %118, align 4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = bitcast %struct.TYPE_14__* %121 to i8*
  %126 = bitcast %struct.TYPE_14__* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 16, i1 false)
  %127 = load i32, i32* @MFX_EXTBUFF_OPAQUE_SURFACE_ALLOCATION, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 7
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  store i32 40, i32* %135, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 7
  %138 = bitcast %struct.TYPE_16__* %137 to i32*
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 8
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 0
  store i32* %138, i32** %142, align 8
  br label %185

143:                                              ; preds = %56
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @av_mallocz_array(i32 %146, i32 4)
  %148 = bitcast i8* %147 to i32*
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 6
  store i32* %148, i32** %150, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 6
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %143
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = call i32 @AVERROR(i32 %156)
  store i32 %157, i32* %2, align 4
  br label %194

158:                                              ; preds = %143
  store i32 0, i32* %8, align 4
  br label %159

159:                                              ; preds = %181, %158
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %184

165:                                              ; preds = %159
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %174, i32* %180, align 4
  br label %181

181:                                              ; preds = %165
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  br label %159

184:                                              ; preds = %159
  br label %185

185:                                              ; preds = %184, %97
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 5
  store i32* null, i32** %187, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 4
  store i32* null, i32** %189, align 8
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 3
  store i64 0, i64* %191, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 2
  store i64 0, i64* %193, align 8
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %185, %155, %71, %50, %33
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @qsv_fourcc_from_pix_fmt(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @qsv_init_pool(%struct.TYPE_21__*, i32) #1

declare dso_local i8* @av_mallocz_array(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
