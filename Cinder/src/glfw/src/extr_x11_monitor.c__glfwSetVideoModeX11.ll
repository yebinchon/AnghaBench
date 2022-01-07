; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_monitor.c__glfwSetVideoModeX11.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_monitor.c__glfwSetVideoModeX11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i64, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_26__ = type { i64 }

@_glfw = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@None = common dso_local global i64 0, align 8
@GLFW_TRUE = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"X11: Monitor mode list changed\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwSetVideoModeX11(%struct.TYPE_24__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 2, i32 1), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %141

17:                                               ; preds = %2
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %141, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @None, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @_glfwChooseVideoMode(%struct.TYPE_24__* %22, i32* %23)
  store i32* %24, i32** %10, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %26 = call i32 @_glfwPlatformGetVideoMode(%struct.TYPE_24__* %25, i32* %9)
  %27 = load i32*, i32** %10, align 8
  %28 = call i64 @_glfwCompareVideoModes(i32* %9, i32* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %31, i32* %3, align 4
  br label %143

32:                                               ; preds = %20
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 0), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 1), align 4
  %35 = call i32* @XRRGetScreenResources(i32 %33, i32 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 0), align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_27__* @XRRGetCrtcInfo(i32 %36, i32* %37, i32 %41)
  store %struct.TYPE_27__* %42, %struct.TYPE_27__** %7, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 0), align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_25__* @XRRGetOutputInfo(i32 %43, i32* %44, i32 %48)
  store %struct.TYPE_25__* %49, %struct.TYPE_25__** %8, align 8
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %82, %32
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_26__* @getModeInfo(i32* %57, i32 %64)
  store %struct.TYPE_26__* %65, %struct.TYPE_26__** %13, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %67 = call i32 @modeIsGood(%struct.TYPE_26__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %56
  br label %82

70:                                               ; preds = %56
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %73 = call i32 @vidmodeFromModeInfo(%struct.TYPE_26__* %71, %struct.TYPE_27__* %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = call i64 @_glfwCompareVideoModes(i32* %74, i32* %14)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %11, align 8
  br label %85

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %69
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %50

85:                                               ; preds = %77, %50
  %86 = load i64, i64* %11, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %127

88:                                               ; preds = %85
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @None, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  store i64 %98, i64* %101, align 8
  br label %102

102:                                              ; preds = %95, %88
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @_glfw, i32 0, i32 0, i32 0), align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CurrentTime, align 4
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* %11, align 8
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @XRRSetCrtcConfig(i32 %103, i32* %104, i32 %108, i32 %109, i32 %112, i32 %115, i64 %116, i32 %119, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %102, %85
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %129 = call i32 @XRRFreeOutputInfo(%struct.TYPE_25__* %128)
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %131 = call i32 @XRRFreeCrtcInfo(%struct.TYPE_27__* %130)
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @XRRFreeScreenResources(i32* %132)
  %134 = load i64, i64* %11, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %127
  %137 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %138 = call i32 @_glfwInputError(i32 %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %139 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %139, i32* %3, align 4
  br label %143

140:                                              ; preds = %127
  br label %141

141:                                              ; preds = %140, %17, %2
  %142 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %136, %30
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32* @_glfwChooseVideoMode(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @_glfwPlatformGetVideoMode(%struct.TYPE_24__*, i32*) #1

declare dso_local i64 @_glfwCompareVideoModes(i32*, i32*) #1

declare dso_local i32* @XRRGetScreenResources(i32, i32) #1

declare dso_local %struct.TYPE_27__* @XRRGetCrtcInfo(i32, i32*, i32) #1

declare dso_local %struct.TYPE_25__* @XRRGetOutputInfo(i32, i32*, i32) #1

declare dso_local %struct.TYPE_26__* @getModeInfo(i32*, i32) #1

declare dso_local i32 @modeIsGood(%struct.TYPE_26__*) #1

declare dso_local i32 @vidmodeFromModeInfo(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @XRRSetCrtcConfig(i32, i32*, i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @XRRFreeOutputInfo(%struct.TYPE_25__*) #1

declare dso_local i32 @XRRFreeCrtcInfo(%struct.TYPE_27__*) #1

declare dso_local i32 @XRRFreeScreenResources(i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
