; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_procamp_vaapi.c_procamp_vaapi_build_filter_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_procamp_vaapi.c_procamp_vaapi_build_filter_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i8*, i8* }
%struct.TYPE_15__ = type { i32, i32 }

@VAProcColorBalanceCount = common dso_local global i32 0, align 4
@VAProcFilterColorBalance = common dso_local global i8* null, align 8
@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to query procamp filter caps: %d (%s).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@VAProcColorBalanceBrightness = common dso_local global i32 0, align 4
@BRIGHTNESS_MIN = common dso_local global i32 0, align 4
@BRIGHTNESS_MAX = common dso_local global i32 0, align 4
@VAProcColorBalanceContrast = common dso_local global i32 0, align 4
@CONTRAST_MIN = common dso_local global i32 0, align 4
@CONTRAST_MAX = common dso_local global i32 0, align 4
@VAProcColorBalanceHue = common dso_local global i32 0, align 4
@HUE_MIN = common dso_local global i32 0, align 4
@HUE_MAX = common dso_local global i32 0, align 4
@VAProcColorBalanceSaturation = common dso_local global i32 0, align 4
@SATURATION_MIN = common dso_local global i32 0, align 4
@SATURATION_MAX = common dso_local global i32 0, align 4
@VAProcFilterParameterBufferType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @procamp_vaapi_build_filter_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procamp_vaapi_build_filter_params(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x %struct.TYPE_16__], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %4, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %5, align 8
  %19 = load i32, i32* @VAProcColorBalanceCount, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca %struct.TYPE_16__, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %23 = bitcast [4 x %struct.TYPE_16__]* %7 to %struct.TYPE_16__**
  %24 = call i32 @memset(%struct.TYPE_16__** %23, i32 0, i32 128)
  %25 = bitcast %struct.TYPE_16__* %22 to %struct.TYPE_16__**
  %26 = mul nuw i64 32, %20
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(%struct.TYPE_16__** %25, i32 0, i32 %27)
  %29 = load i32, i32* @VAProcColorBalanceCount, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** @VAProcFilterColorBalance, align 8
  %39 = bitcast %struct.TYPE_16__* %22 to %struct.TYPE_16__**
  %40 = call i64 @vaQueryVideoProcFilterCaps(i32 %34, i32 %37, i8* %38, %struct.TYPE_16__** %39, i32* %10)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %1
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = load i32, i32* @AV_LOG_ERROR, align 4
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @vaErrorStr(i64 %48)
  %50 = call i32 @av_log(%struct.TYPE_18__* %45, i32 %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %47, i32 %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %203

53:                                               ; preds = %1
  %54 = load i8*, i8** @VAProcFilterColorBalance, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  store i8* %54, i8** %58, align 8
  %59 = load i32, i32* @VAProcColorBalanceBrightness, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 16
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BRIGHTNESS_MIN, align 4
  %68 = load i32, i32* @BRIGHTNESS_MAX, align 4
  %69 = load i32, i32* @VAProcColorBalanceBrightness, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @VAProcColorBalanceBrightness, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @map(i32 %66, i32 %67, i32 %68, i32 %75, i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  store i8* %83, i8** %87, align 16
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = load i8*, i8** @VAProcFilterColorBalance, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  store i8* %90, i8** %94, align 8
  %95 = load i32, i32* @VAProcColorBalanceContrast, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 16
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CONTRAST_MIN, align 4
  %104 = load i32, i32* @CONTRAST_MAX, align 4
  %105 = load i32, i32* @VAProcColorBalanceContrast, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @VAProcColorBalanceContrast, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @map(i32 %102, i32 %103, i32 %104, i32 %111, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  store i8* %119, i8** %123, align 16
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = load i8*, i8** @VAProcFilterColorBalance, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 3
  store i8* %126, i8** %130, align 8
  %131 = load i32, i32* @VAProcColorBalanceHue, align 4
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 16
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @HUE_MIN, align 4
  %140 = load i32, i32* @HUE_MAX, align 4
  %141 = load i32, i32* @VAProcColorBalanceHue, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @VAProcColorBalanceHue, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @map(i32 %138, i32 %139, i32 %140, i32 %147, i32 %154)
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  store i8* %155, i8** %159, align 16
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  %162 = load i8*, i8** @VAProcFilterColorBalance, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 3
  store i8* %162, i8** %166, align 8
  %167 = load i32, i32* @VAProcColorBalanceSaturation, align 4
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  store i32 %167, i32* %171, align 16
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @SATURATION_MIN, align 4
  %176 = load i32, i32* @SATURATION_MAX, align 4
  %177 = load i32, i32* @VAProcColorBalanceSaturation, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @VAProcColorBalanceSaturation, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @map(i32 %174, i32 %175, i32 %176, i32 %183, i32 %190)
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 2
  store i8* %191, i8** %195, align 16
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %199 = load i32, i32* @VAProcFilterParameterBufferType, align 4
  %200 = bitcast [4 x %struct.TYPE_16__]* %7 to %struct.TYPE_16__**
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @ff_vaapi_vpp_make_param_buffers(%struct.TYPE_18__* %198, i32 %199, %struct.TYPE_16__** %200, i32 32, i32 %201)
  store i32 %202, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %203

203:                                              ; preds = %53, %44
  %204 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_16__**, i32, i32) #2

declare dso_local i64 @vaQueryVideoProcFilterCaps(i32, i32, i8*, %struct.TYPE_16__**, i32*) #2

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, i64, i32) #2

declare dso_local i32 @vaErrorStr(i64) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i8* @map(i32, i32, i32, i32, i32) #2

declare dso_local i32 @ff_vaapi_vpp_make_param_buffers(%struct.TYPE_18__*, i32, %struct.TYPE_16__**, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
