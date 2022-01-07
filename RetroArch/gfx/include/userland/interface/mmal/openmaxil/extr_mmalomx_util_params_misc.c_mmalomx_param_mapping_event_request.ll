; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_util_params_misc.c_mmalomx_param_mapping_event_request.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_util_params_misc.c_mmalomx_param_mapping_event_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MMALOMX_PARAM_MAPPING_TO_MMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"ommalomx_param_mapping_event_request: omx parameter 0x%08x not recognised\00", align 1
@MMAL_EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"mmalomx_param_mapping_event_request: mmal parameter 0x%08x not recognised\00", align 1
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i64)* @mmalomx_param_mapping_event_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmalomx_param_mapping_event_request(i64 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %9, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @MMALOMX_PARAM_MAPPING_TO_MMAL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_8__* @mmalomx_find_parameter_from_omx_id(i32 %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %10, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @VCOS_ALERT(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %68

31:                                               ; preds = %18
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %66

42:                                               ; preds = %3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.TYPE_8__* @mmalomx_find_parameter_from_mmal_id(i32 %45)
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %10, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @VCOS_ALERT(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %54, i32* %4, align 4
  br label %68

55:                                               ; preds = %42
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %55, %31
  %67 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %49, %25
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_8__* @mmalomx_find_parameter_from_omx_id(i32) #1

declare dso_local i32 @VCOS_ALERT(i8*, i32) #1

declare dso_local %struct.TYPE_8__* @mmalomx_find_parameter_from_mmal_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
