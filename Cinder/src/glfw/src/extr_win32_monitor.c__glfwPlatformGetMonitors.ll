; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_monitor.c__glfwPlatformGetMonitors.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_monitor.c__glfwPlatformGetMonitors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32* }

@GLFW_FALSE = common dso_local global i64 0, align 8
@DISPLAY_DEVICE_ACTIVE = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i64 0, align 8
@DISPLAY_DEVICE_PRIMARY_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @_glfwPlatformGetMonitors(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %6, align 8
  %11 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %11, i64* %9, align 8
  store i32** null, i32*** %10, align 8
  %12 = load i32*, i32** %2, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %37, %1
  %14 = call i32 @ZeroMemory(%struct.TYPE_6__* %7, i32 16)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 16, i32* %15, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @EnumDisplayDevicesW(i32* null, i64 %16, %struct.TYPE_6__* %7, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %40

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DISPLAY_DEVICE_ACTIVE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %37

27:                                               ; preds = %20
  %28 = call i32 @ZeroMemory(%struct.TYPE_6__* %8, i32 16)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 16, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @EnumDisplayDevicesW(i32* %31, i64 0, %struct.TYPE_6__* %8, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* @GLFW_TRUE, align 8
  store i64 %35, i64* %9, align 8
  br label %40

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %4, align 8
  br label %13

40:                                               ; preds = %34, %19
  store i64 0, i64* %4, align 8
  br label %41

41:                                               ; preds = %112, %40
  %42 = call i32 @ZeroMemory(%struct.TYPE_6__* %7, i32 16)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 16, i32* %43, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @EnumDisplayDevicesW(i32* null, i64 %44, %struct.TYPE_6__* %7, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %115

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DISPLAY_DEVICE_ACTIVE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %112

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DISPLAY_DEVICE_PRIMARY_DEVICE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %64
  store i64 0, i64* %5, align 8
  br label %68

68:                                               ; preds = %92, %67
  %69 = call i32 @ZeroMemory(%struct.TYPE_6__* %8, i32 16)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 16, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i64 @EnumDisplayDevicesW(i32* %72, i64 %73, %struct.TYPE_6__* %8, i32 0)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  br label %95

77:                                               ; preds = %68
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  %80 = load i32**, i32*** %10, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 8, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32** @realloc(i32** %80, i32 %84)
  store i32** %85, i32*** %10, align 8
  %86 = call i32* @createMonitor(%struct.TYPE_6__* %7, %struct.TYPE_6__* %8)
  %87 = load i32**, i32*** %10, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %87, i64 %90
  store i32* %86, i32** %91, align 8
  br label %92

92:                                               ; preds = %77
  %93 = load i64, i64* %5, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %5, align 8
  br label %68

95:                                               ; preds = %76
  br label %111

96:                                               ; preds = %64
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  %99 = load i32**, i32*** %10, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 8, %101
  %103 = trunc i64 %102 to i32
  %104 = call i32** @realloc(i32** %99, i32 %103)
  store i32** %104, i32*** %10, align 8
  %105 = call i32* @createMonitor(%struct.TYPE_6__* %7, %struct.TYPE_6__* null)
  %106 = load i32**, i32*** %10, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %106, i64 %109
  store i32* %105, i32** %110, align 8
  br label %111

111:                                              ; preds = %96, %95
  br label %112

112:                                              ; preds = %111, %54
  %113 = load i64, i64* %4, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %4, align 8
  br label %41

115:                                              ; preds = %47
  %116 = load i32**, i32*** %10, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32**, i32*** %10, align 8
  %120 = load i64, i64* %6, align 8
  %121 = getelementptr inbounds i32*, i32** %119, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @_GLFW_SWAP_POINTERS(i32* %118, i32* %122)
  %124 = load i32, i32* %3, align 4
  %125 = load i32*, i32** %2, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32**, i32*** %10, align 8
  ret i32** %126
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @EnumDisplayDevicesW(i32*, i64, %struct.TYPE_6__*, i32) #1

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i32* @createMonitor(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @_GLFW_SWAP_POINTERS(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
