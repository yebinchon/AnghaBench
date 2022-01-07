; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_gldraw.c_Draw_ClearWindow.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_gldraw.c_Draw_ClearWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Draw_ClearWindow.init = internal global i32 0, align 4
@drawflag = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@draw_maxs = common dso_local global i8** null, align 8
@draw_mins = common dso_local global i8** null, align 8
@GL_FRONT_AND_BACK = common dso_local global i32 0, align 4
@GL_FILL = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_POLYGON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Draw_ClearWindow() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @drawflag, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %91

9:                                                ; preds = %0
  %10 = load i32, i32* @Draw_ClearWindow.init, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @qtrue, align 4
  store i32 %13, i32* @Draw_ClearWindow.init, align 4
  %14 = call i32 (...) @InitWindow()
  br label %15

15:                                               ; preds = %12, %9
  %16 = call i32 @glClearColor(i32 1, double 8.000000e-01, double 8.000000e-01, i32 0)
  %17 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %18 = call i32 @glClear(i32 %17)
  %19 = load i8**, i8*** @draw_maxs, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8**, i8*** @draw_mins, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %21 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %1, align 4
  %29 = load i8**, i8*** @draw_maxs, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** @draw_mins, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %31 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %2, align 4
  %39 = load i8**, i8*** @draw_mins, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sdiv i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, i8* %41, i64 %44
  store i8* %45, i8** %4, align 8
  %46 = load i8**, i8*** @draw_mins, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sdiv i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %48, i64 %51
  store i8* %52, i8** %5, align 8
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* %2, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %15
  %57 = load i32, i32* %1, align 4
  br label %60

58:                                               ; preds = %15
  %59 = load i32, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %3, align 4
  %62 = call i32 (...) @glLoadIdentity()
  %63 = call i32 @gluPerspective(i32 90, i32 1, i32 2, i32 16384)
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i8**, i8*** @draw_maxs, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sdiv i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %68, i64 %71
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i8**, i8*** @draw_maxs, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @gluLookAt(i8* %64, i8* %65, i8* %72, i8* %73, i8* %74, i8* %77, i32 0, i32 1, i32 0)
  %79 = call i32 @glColor3f(i32 0, i32 0, i32 0)
  %80 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %81 = load i32, i32* @GL_FILL, align 4
  %82 = call i32 @glPolygonMode(i32 %80, i32 %81)
  %83 = load i32, i32* @GL_DEPTH_TEST, align 4
  %84 = call i32 @glDisable(i32 %83)
  %85 = load i32, i32* @GL_BLEND, align 4
  %86 = call i32 @glEnable(i32 %85)
  %87 = load i32, i32* @GL_SRC_ALPHA, align 4
  %88 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %89 = call i32 @glBlendFunc(i32 %87, i32 %88)
  %90 = call i32 (...) @glFlush()
  br label %91

91:                                               ; preds = %60, %8
  ret void
}

declare dso_local i32 @InitWindow(...) #1

declare dso_local i32 @glClearColor(i32, double, double, i32) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @gluPerspective(i32, i32, i32, i32) #1

declare dso_local i32 @gluLookAt(i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @glColor3f(i32, i32, i32) #1

declare dso_local i32 @glPolygonMode(i32, i32) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @glFlush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
