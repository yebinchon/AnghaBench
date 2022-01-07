; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_util_params_camera.c_mmalomx_param_mapping_image_effect_params.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_util_params_camera.c_mmalomx_param_mapping_image_effect_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@MMALOMX_PARAM_ENUM_TRANSLATE_T = common dso_local global i32 0, align 4
@xenum = common dso_local global %struct.TYPE_7__* null, align 8
@mmalomx_param_enum_image_effect = common dso_local global i32 0, align 4
@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMALOMX_PARAM_MAPPING_TO_MMAL = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i64)* @mmalomx_param_mapping_image_effect_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmalomx_param_mapping_image_effect_params(i64 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %9, align 8
  %14 = load i32, i32* @MMALOMX_PARAM_ENUM_TRANSLATE_T, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @xenum, align 8
  %16 = load i32, i32* @mmalomx_param_enum_image_effect, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MMALOMX_PARAM_ENUM_FIND(i32 %14, %struct.TYPE_7__* %15, i32 %16, i64 %17, i32 %20, i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @xenum, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %105

29:                                               ; preds = %3
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @MMALOMX_PARAM_MAPPING_TO_MMAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MMAL_COUNTOF(i32 %39)
  %41 = icmp sgt i32 %36, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %43, i32* %4, align 4
  br label %105

44:                                               ; preds = %33
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @xenum, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 4, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memcpy(i32 %57, i32 %60, i32 %66)
  br label %103

68:                                               ; preds = %29
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MMAL_COUNTOF(i32 %74)
  %76 = icmp sgt i32 %71, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %78, i32* %4, align 4
  br label %105

79:                                               ; preds = %68
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @xenum, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memcpy(i32 %92, i32 %95, i32 %101)
  br label %103

103:                                              ; preds = %79, %44
  %104 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %77, %42, %27
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @MMALOMX_PARAM_ENUM_FIND(i32, %struct.TYPE_7__*, i32, i64, i32, i32) #1

declare dso_local i32 @MMAL_COUNTOF(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
