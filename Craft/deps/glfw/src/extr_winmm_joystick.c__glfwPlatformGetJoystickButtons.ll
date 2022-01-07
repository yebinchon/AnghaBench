; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_winmm_joystick.c__glfwPlatformGetJoystickButtons.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_winmm_joystick.c__glfwPlatformGetJoystickButtons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i32 }

@_glfw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@JOYERR_NOERROR = common dso_local global i64 0, align 8
@JOY_RETURNBUTTONS = common dso_local global i32 0, align 4
@JOY_RETURNPOV = common dso_local global i32 0, align 4
@GLFW_PRESS = common dso_local global i8 0, align 1
@GLFW_RELEASE = common dso_local global i8 0, align 1
@JOYCAPS_HASPOV = common dso_local global i32 0, align 4
@JOYCAPS_POV4DIR = common dso_local global i32 0, align 4
@__const._glfwPlatformGetJoystickButtons.directions = private unnamed_addr constant [9 x i32] [i32 1, i32 3, i32 2, i32 6, i32 4, i32 12, i32 8, i32 9, i32 0], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_glfwPlatformGetJoystickButtons(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [9 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0), align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @_glfw_joyGetDevCaps(i32 %18, %struct.TYPE_9__* %6, i32 16)
  %20 = load i64, i64* @JOYERR_NOERROR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %128

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 24, i32* %24, align 8
  %25 = load i32, i32* @JOY_RETURNBUTTONS, align 4
  %26 = load i32, i32* @JOY_RETURNPOV, align 4
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @_glfw_joyGetPosEx(i32 %29, %struct.TYPE_8__* %7)
  %31 = load i64, i64* @JOYERR_NOERROR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i8* null, i8** %3, align 8
  br label %128

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %48 = shl i64 1, %47
  %49 = and i64 %44, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i8, i8* @GLFW_PRESS, align 1
  %53 = zext i8 %52 to i32
  br label %57

54:                                               ; preds = %42
  %55 = load i8, i8* @GLFW_RELEASE, align 1
  %56 = zext i8 %55 to i32
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i32 [ %53, %51 ], [ %56, %54 ]
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 %59, i8* %64, align 1
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %35

68:                                               ; preds = %35
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @JOYCAPS_HASPOV, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %126

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @JOYCAPS_POV4DIR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %126

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %82, 100
  %84 = sdiv i32 %83, 45
  store i32 %84, i32* %10, align 4
  %85 = bitcast [9 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %85, i8* align 16 bitcast ([9 x i32]* @__const._glfwPlatformGetJoystickButtons.directions to i8*), i64 36, i1 false)
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  %90 = icmp sgt i32 %89, 8
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %80
  store i32 8, i32* %10, align 4
  br label %92

92:                                               ; preds = %91, %88
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %122, %92
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %96, label %125

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = shl i32 1, %101
  %103 = and i32 %100, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %96
  %106 = load i8, i8* @GLFW_PRESS, align 1
  %107 = load i8*, i8** %8, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  store i8 %106, i8* %112, align 1
  br label %121

113:                                              ; preds = %96
  %114 = load i8, i8* @GLFW_RELEASE, align 1
  %115 = load i8*, i8** %8, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %115, i64 %119
  store i8 %114, i8* %120, align 1
  br label %121

121:                                              ; preds = %113, %105
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %93

125:                                              ; preds = %93
  br label %126

126:                                              ; preds = %125, %74, %68
  %127 = load i8*, i8** %8, align 8
  store i8* %127, i8** %3, align 8
  br label %128

128:                                              ; preds = %126, %33, %22
  %129 = load i8*, i8** %3, align 8
  ret i8* %129
}

declare dso_local i64 @_glfw_joyGetDevCaps(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @_glfw_joyGetPosEx(i32, %struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
