; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_winmm_joystick.c__glfwPlatformGetJoystickAxes.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_winmm_joystick.c__glfwPlatformGetJoystickAxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { float* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@JOYERR_NOERROR = common dso_local global i64 0, align 8
@JOY_RETURNX = common dso_local global i32 0, align 4
@JOY_RETURNY = common dso_local global i32 0, align 4
@JOY_RETURNZ = common dso_local global i32 0, align 4
@JOY_RETURNR = common dso_local global i32 0, align 4
@JOY_RETURNU = common dso_local global i32 0, align 4
@JOY_RETURNV = common dso_local global i32 0, align 4
@JOYCAPS_HASZ = common dso_local global i32 0, align 4
@JOYCAPS_HASR = common dso_local global i32 0, align 4
@JOYCAPS_HASU = common dso_local global i32 0, align 4
@JOYCAPS_HASV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float* @_glfwPlatformGetJoystickAxes(i32 %0, i32* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca float*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0), align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load float*, float** %13, align 8
  store float* %14, float** %8, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @_glfw_joyGetDevCaps(i32 %15, %struct.TYPE_9__* %6, i32 52)
  %17 = load i64, i64* @JOYERR_NOERROR, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store float* null, float** %3, align 8
  br label %147

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 32, i32* %21, align 4
  %22 = load i32, i32* @JOY_RETURNX, align 4
  %23 = load i32, i32* @JOY_RETURNY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @JOY_RETURNZ, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @JOY_RETURNR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @JOY_RETURNU, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @JOY_RETURNV, align 4
  %32 = or i32 %30, %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @_glfw_joyGetPosEx(i32 %34, %struct.TYPE_8__* %7)
  %36 = load i64, i64* @JOYERR_NOERROR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %20
  store float* null, float** %3, align 8
  br label %147

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 12
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = call float @normalizeAxis(i32 %41, i32 %43, i32 %45)
  %47 = load float*, float** %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds float, float* %47, i64 %51
  store float %46, float* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = call float @normalizeAxis(i32 %54, i32 %56, i32 %58)
  %60 = load float*, float** %8, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds float, float* %60, i64 %64
  store float %59, float* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @JOYCAPS_HASZ, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %39
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = call float @normalizeAxis(i32 %73, i32 %75, i32 %77)
  %79 = load float*, float** %8, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds float, float* %79, i64 %83
  store float %78, float* %84, align 4
  br label %85

85:                                               ; preds = %71, %39
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @JOYCAPS_HASR, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = call float @normalizeAxis(i32 %93, i32 %95, i32 %97)
  %99 = load float*, float** %8, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds float, float* %99, i64 %103
  store float %98, float* %104, align 4
  br label %105

105:                                              ; preds = %91, %85
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @JOYCAPS_HASU, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call float @normalizeAxis(i32 %113, i32 %115, i32 %117)
  %119 = load float*, float** %8, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds float, float* %119, i64 %123
  store float %118, float* %124, align 4
  br label %125

125:                                              ; preds = %111, %105
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @JOYCAPS_HASV, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call float @normalizeAxis(i32 %133, i32 %135, i32 %137)
  %139 = load float*, float** %8, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds float, float* %139, i64 %143
  store float %138, float* %144, align 4
  br label %145

145:                                              ; preds = %131, %125
  %146 = load float*, float** %8, align 8
  store float* %146, float** %3, align 8
  br label %147

147:                                              ; preds = %145, %38, %19
  %148 = load float*, float** %3, align 8
  ret float* %148
}

declare dso_local i64 @_glfw_joyGetDevCaps(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @_glfw_joyGetPosEx(i32, %struct.TYPE_8__*) #1

declare dso_local float @normalizeAxis(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
