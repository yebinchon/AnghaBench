; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_monitor.c__glfwPlatformGetVideoModes.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_monitor.c__glfwPlatformGetVideoModes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32* }

@_glfw = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_glfwPlatformGetVideoModes(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2, i32 1), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %109

16:                                               ; preds = %2
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %109, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 4
  %22 = call i32* @XRRGetScreenResourcesCurrent(i32 %20, i32 %21)
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @XRRGetCrtcInfo(i32 %23, i32* %24, i32 %28)
  store i32* %29, i32** %9, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_15__* @XRRGetOutputInfo(i32 %30, i32* %31, i32 %35)
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %10, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32* @calloc(i32 %39, i32 4)
  store i32* %40, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %99, %19
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %102

47:                                               ; preds = %41
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @getModeInfo(i32* %48, i32 %55)
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @modeIsGood(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %47
  br label %99

61:                                               ; preds = %47
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @vidmodeFromModeInfo(i32* %62, i32* %63)
  store i32 %64, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %79, %61
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i64 @_glfwCompareVideoModes(i32* %74, i32* %12)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %82

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %65

82:                                               ; preds = %77, %65
  %83 = load i32, i32* %7, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %99

88:                                               ; preds = %82
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  store i32 %92, i32* %98, align 4
  br label %99

99:                                               ; preds = %88, %87, %60
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %41

102:                                              ; preds = %41
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %104 = call i32 @XRRFreeOutputInfo(%struct.TYPE_15__* %103)
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @XRRFreeCrtcInfo(i32* %105)
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @XRRFreeScreenResources(i32* %107)
  br label %115

109:                                              ; preds = %16, %2
  %110 = load i32*, i32** %4, align 8
  store i32 1, i32* %110, align 4
  %111 = call i32* @calloc(i32 1, i32 4)
  store i32* %111, i32** %5, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @_glfwPlatformGetVideoMode(%struct.TYPE_14__* %112, i32* %113)
  br label %115

115:                                              ; preds = %109, %102
  %116 = load i32*, i32** %5, align 8
  ret i32* %116
}

declare dso_local i32* @XRRGetScreenResourcesCurrent(i32, i32) #1

declare dso_local i32* @XRRGetCrtcInfo(i32, i32*, i32) #1

declare dso_local %struct.TYPE_15__* @XRRGetOutputInfo(i32, i32*, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32* @getModeInfo(i32*, i32) #1

declare dso_local i32 @modeIsGood(i32*) #1

declare dso_local i32 @vidmodeFromModeInfo(i32*, i32*) #1

declare dso_local i64 @_glfwCompareVideoModes(i32*, i32*) #1

declare dso_local i32 @XRRFreeOutputInfo(%struct.TYPE_15__*) #1

declare dso_local i32 @XRRFreeCrtcInfo(i32*) #1

declare dso_local i32 @XRRFreeScreenResources(i32*) #1

declare dso_local i32 @_glfwPlatformGetVideoMode(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
