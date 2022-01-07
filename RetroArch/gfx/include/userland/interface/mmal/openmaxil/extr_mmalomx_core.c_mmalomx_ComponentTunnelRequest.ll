; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentTunnelRequest.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentTunnelRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [77 x i8] c"hComponent %p, nPort %i, hTunneledComp %p, nTunneledPort %i, pTunnelSetup %p\00", align 1
@OMX_ErrorInvalidComponent = common dso_local global i32 0, align 4
@OMX_StateInvalid = common dso_local global i64 0, align 8
@OMX_ErrorInvalidState = common dso_local global i32 0, align 4
@OMX_ErrorBadPortIndex = common dso_local global i32 0, align 4
@OMX_StateLoaded = common dso_local global i64 0, align 8
@OMX_ErrorIncorrectStateOperation = common dso_local global i32 0, align 4
@OMX_ErrorBadParameter = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i32 0, align 4
@OMX_ErrorNotImplemented = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i32*)* @mmalomx_ComponentTunnelRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmalomx_ComponentTunnelRequest(i64 %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %12, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %16 = call i32 @MMAL_PARAM_UNUSED(%struct.TYPE_5__* %15)
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %19, i64 %20, i32 %22, i32* %23)
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @OMX_ErrorInvalidComponent, align 4
  store i32 %28, i32* %6, align 4
  br label %77

29:                                               ; preds = %5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OMX_StateInvalid, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @OMX_ErrorInvalidState, align 4
  store i32 %36, i32* %6, align 4
  br label %77

37:                                               ; preds = %29
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @OMX_ErrorBadPortIndex, align 4
  store i32 %44, i32* %6, align 4
  br label %77

45:                                               ; preds = %37
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @OMX_StateLoaded, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @OMX_ErrorIncorrectStateOperation, align 4
  store i32 %61, i32* %6, align 4
  br label %77

62:                                               ; preds = %51, %45
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32*, i32** %11, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %69, i32* %6, align 4
  br label %77

70:                                               ; preds = %65, %62
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %74, i32* %6, align 4
  br label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @OMX_ErrorNotImplemented, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %73, %68, %60, %43, %35, %27
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @MMAL_PARAM_UNUSED(%struct.TYPE_5__*) #1

declare dso_local i32 @LOG_TRACE(i8*, i64, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
