; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_monitor.c__glfwSetVideoModeWin32.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_monitor.c__glfwSetVideoModeWin32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32 }

@GLFW_TRUE = common dso_local global i32 0, align 4
@DM_PELSWIDTH = common dso_local global i32 0, align 4
@DM_PELSHEIGHT = common dso_local global i32 0, align 4
@DM_BITSPERPEL = common dso_local global i32 0, align 4
@DM_DISPLAYFREQUENCY = common dso_local global i32 0, align 4
@CDS_FULLSCREEN = common dso_local global i32 0, align 4
@DISP_CHANGE_SUCCESSFUL = common dso_local global i64 0, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Win32: Failed to set video mode\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwSetVideoModeWin32(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %11 = call %struct.TYPE_18__* @_glfwChooseVideoMode(%struct.TYPE_17__* %9, %struct.TYPE_18__* %10)
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %7, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = call i32 @_glfwPlatformGetVideoMode(%struct.TYPE_17__* %12, %struct.TYPE_18__* %6)
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %15 = call i64 @_glfwCompareVideoModes(%struct.TYPE_18__* %6, %struct.TYPE_18__* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %18, i32* %3, align 4
  br label %82

19:                                               ; preds = %2
  %20 = call i32 @ZeroMemory(%struct.TYPE_19__* %8, i32 24)
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  store i32 24, i32* %21, align 4
  %22 = load i32, i32* @DM_PELSWIDTH, align 4
  %23 = load i32, i32* @DM_PELSHEIGHT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @DM_BITSPERPEL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @DM_DISPLAYFREQUENCY, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 5
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 15
  br i1 %56, label %61, label %57

57:                                               ; preds = %19
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 24
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %19
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  store i32 32, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CDS_FULLSCREEN, align 4
  %69 = call i64 @ChangeDisplaySettingsExW(i32 %67, %struct.TYPE_19__* %8, i32* null, i32 %68, i32* null)
  %70 = load i64, i64* @DISP_CHANGE_SUCCESSFUL, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %74 = call i32 @_glfwInputError(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %75, i32* %3, align 4
  br label %82

76:                                               ; preds = %63
  %77 = load i32, i32* @GLFW_TRUE, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %76, %72, %17
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_18__* @_glfwChooseVideoMode(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @_glfwPlatformGetVideoMode(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i64 @_glfwCompareVideoModes(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ChangeDisplaySettingsExW(i32, %struct.TYPE_19__*, i32*, i32, i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
