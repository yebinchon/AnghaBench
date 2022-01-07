; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_boing.c_DrawBoingBall.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_boing.c_DrawBoingBall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_MODELVIEW = common dso_local global i32 0, align 4
@DIST_BALL = common dso_local global double 0.000000e+00, align 8
@dt = common dso_local global double 0.000000e+00, align 8
@MAX_DELTA_T = common dso_local global double 0.000000e+00, align 8
@deg_rot_y = common dso_local global float 0.000000e+00, align 4
@deg_rot_y_inc = common dso_local global float 0.000000e+00, align 4
@ANIMATION_SPEED = common dso_local global float 0.000000e+00, align 4
@ball_x = common dso_local global double 0.000000e+00, align 8
@ball_y = common dso_local global double 0.000000e+00, align 8
@drawBallHow = common dso_local global i64 0, align 8
@DRAW_BALL_SHADOW = common dso_local global i64 0, align 8
@SHADOW_OFFSET_X = common dso_local global double 0.000000e+00, align 8
@SHADOW_OFFSET_Y = common dso_local global double 0.000000e+00, align 8
@SHADOW_OFFSET_Z = common dso_local global double 0.000000e+00, align 8
@GL_FRONT = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_NORMALIZE = common dso_local global i32 0, align 4
@STEP_LONGITUDE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DrawBoingBall() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = call i32 (...) @glPushMatrix()
  %5 = load i32, i32* @GL_MODELVIEW, align 4
  %6 = call i32 @glMatrixMode(i32 %5)
  %7 = load double, double* @DIST_BALL, align 8
  %8 = call i32 @glTranslatef(double 0.000000e+00, double 0.000000e+00, double %7)
  %9 = load double, double* @dt, align 8
  store double %9, double* %2, align 8
  br label %10

10:                                               ; preds = %21, %0
  %11 = load double, double* %2, align 8
  %12 = fcmp ogt double %11, 0.000000e+00
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = load double, double* %2, align 8
  %15 = load double, double* @MAX_DELTA_T, align 8
  %16 = fcmp ogt double %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load double, double* @MAX_DELTA_T, align 8
  br label %21

19:                                               ; preds = %13
  %20 = load double, double* %2, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi double [ %18, %17 ], [ %20, %19 ]
  store double %22, double* %3, align 8
  %23 = load double, double* %3, align 8
  %24 = load double, double* %2, align 8
  %25 = fsub double %24, %23
  store double %25, double* %2, align 8
  %26 = load double, double* %3, align 8
  %27 = call i32 @BounceBall(double %26)
  %28 = load float, float* @deg_rot_y, align 4
  %29 = load float, float* @deg_rot_y_inc, align 4
  %30 = load double, double* %3, align 8
  %31 = fptrunc double %30 to float
  %32 = load float, float* @ANIMATION_SPEED, align 4
  %33 = fmul float %31, %32
  %34 = fmul float %29, %33
  %35 = fadd float %28, %34
  %36 = call float @TruncateDeg(float %35)
  store float %36, float* @deg_rot_y, align 4
  br label %10

37:                                               ; preds = %10
  %38 = load double, double* @ball_x, align 8
  %39 = load double, double* @ball_y, align 8
  %40 = call i32 @glTranslatef(double %38, double %39, double 0.000000e+00)
  %41 = load i64, i64* @drawBallHow, align 8
  %42 = load i64, i64* @DRAW_BALL_SHADOW, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load double, double* @SHADOW_OFFSET_X, align 8
  %46 = load double, double* @SHADOW_OFFSET_Y, align 8
  %47 = load double, double* @SHADOW_OFFSET_Z, align 8
  %48 = call i32 @glTranslatef(double %45, double %46, double %47)
  br label %49

49:                                               ; preds = %44, %37
  %50 = call i32 @glRotatef(float -2.000000e+01, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %51 = load float, float* @deg_rot_y, align 4
  %52 = call i32 @glRotatef(float %51, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %53 = load i32, i32* @GL_FRONT, align 4
  %54 = call i32 @glCullFace(i32 %53)
  %55 = load i32, i32* @GL_CULL_FACE, align 4
  %56 = call i32 @glEnable(i32 %55)
  %57 = load i32, i32* @GL_NORMALIZE, align 4
  %58 = call i32 @glEnable(i32 %57)
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %69, %49
  %60 = load i32, i32* %1, align 4
  %61 = icmp slt i32 %60, 180
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @STEP_LONGITUDE, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @DrawBoingBallBand(i32 %63, i64 %67)
  br label %69

69:                                               ; preds = %62
  %70 = load i64, i64* @STEP_LONGITUDE, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %1, align 4
  br label %59

75:                                               ; preds = %59
  %76 = call i32 (...) @glPopMatrix()
  ret void
}

declare dso_local i32 @glPushMatrix(...) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glTranslatef(double, double, double) #1

declare dso_local i32 @BounceBall(double) #1

declare dso_local float @TruncateDeg(float) #1

declare dso_local i32 @glRotatef(float, double, double, double) #1

declare dso_local i32 @glCullFace(i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @DrawBoingBallBand(i32, i64) #1

declare dso_local i32 @glPopMatrix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
