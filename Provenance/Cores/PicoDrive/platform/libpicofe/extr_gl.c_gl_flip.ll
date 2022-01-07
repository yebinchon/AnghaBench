; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_gl.c_gl_flip.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_gl.c_gl_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gl_flip.old_w = internal global i32 0, align 4
@gl_flip.old_h = internal global i32 0, align 4
@texture = common dso_local global float* null, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT_5_6_5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"glTexSubImage2D\00", align 1
@GL_FLOAT = common dso_local global i32 0, align 4
@vertices = common dso_local global i32 0, align 4
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"glDrawArrays\00", align 1
@edpy = common dso_local global i32 0, align 4
@esfc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"eglSwapBuffers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_flip(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %53

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @gl_flip.old_w, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @gl_flip.old_h, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %6, align 4
  %22 = sitofp i32 %21 to float
  %23 = fdiv float %22, 1.024000e+03
  store float %23, float* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sitofp i32 %24 to float
  %26 = fdiv float %25, 5.120000e+02
  store float %26, float* %9, align 4
  %27 = load float, float* %8, align 4
  %28 = load float*, float** @texture, align 8
  %29 = getelementptr inbounds float, float* %28, i64 2
  store float %27, float* %29, align 4
  %30 = load float, float* %9, align 4
  %31 = load float*, float** @texture, align 8
  %32 = getelementptr inbounds float, float* %31, i64 5
  store float %30, float* %32, align 4
  %33 = load float, float* %8, align 4
  %34 = load float*, float** @texture, align 8
  %35 = getelementptr inbounds float, float* %34, i64 6
  store float %33, float* %35, align 4
  %36 = load float, float* %9, align 4
  %37 = load float*, float** @texture, align 8
  %38 = getelementptr inbounds float, float* %37, i64 7
  store float %36, float* %38, align 4
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* @gl_flip.old_w, align 4
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* @gl_flip.old_h, align 4
  br label %41

41:                                               ; preds = %20, %16
  %42 = load i32, i32* @GL_TEXTURE_2D, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @GL_RGB, align 4
  %46 = load i32, i32* @GL_UNSIGNED_SHORT_5_6_5, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @glTexSubImage2D(i32 %42, i32 0, i32 0, i32 0, i32 %43, i32 %44, i32 %45, i32 %46, i8* %47)
  %49 = call i64 @gl_have_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %73

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i32, i32* @GL_FLOAT, align 4
  %55 = load i32, i32* @vertices, align 4
  %56 = call i32 @glVertexPointer(i32 3, i32 %54, i32 0, i32 %55)
  %57 = load i32, i32* @GL_FLOAT, align 4
  %58 = load float*, float** @texture, align 8
  %59 = call i32 @glTexCoordPointer(i32 2, i32 %57, i32 0, float* %58)
  %60 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %61 = call i32 @glDrawArrays(i32 %60, i32 0, i32 4)
  %62 = call i64 @gl_have_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %73

65:                                               ; preds = %53
  %66 = load i32, i32* @edpy, align 4
  %67 = load i32, i32* @esfc, align 4
  %68 = call i32 @eglSwapBuffers(i32 %66, i32 %67)
  %69 = call i64 @gles_have_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %73

72:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %71, %64, %51
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @glTexSubImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @gl_have_error(i8*) #1

declare dso_local i32 @glVertexPointer(i32, i32, i32, i32) #1

declare dso_local i32 @glTexCoordPointer(i32, i32, i32, float*) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @eglSwapBuffers(i32, i32) #1

declare dso_local i64 @gles_have_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
