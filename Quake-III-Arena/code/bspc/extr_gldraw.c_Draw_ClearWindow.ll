; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_gldraw.c_Draw_ClearWindow.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_gldraw.c_Draw_ClearWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Draw_ClearWindow.init = internal global i32 0, align 4
@drawflag = common dso_local global i32 0, align 4
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
  br label %90

9:                                                ; preds = %0
  %10 = load i32, i32* @Draw_ClearWindow.init, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  store i32 1, i32* @Draw_ClearWindow.init, align 4
  %13 = call i32 (...) @InitWindow()
  br label %14

14:                                               ; preds = %12, %9
  %15 = call i32 @glClearColor(i32 1, double 8.000000e-01, double 8.000000e-01, i32 0)
  %16 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %17 = call i32 @glClear(i32 %16)
  %18 = load i8**, i8*** @draw_maxs, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8**, i8*** @draw_mins, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %20 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %1, align 4
  %28 = load i8**, i8*** @draw_maxs, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** @draw_mins, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %30 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %2, align 4
  %38 = load i8**, i8*** @draw_mins, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sdiv i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %40, i64 %43
  store i8* %44, i8** %4, align 8
  %45 = load i8**, i8*** @draw_mins, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sdiv i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %47, i64 %50
  store i8* %51, i8** %5, align 8
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* %2, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %14
  %56 = load i32, i32* %1, align 4
  br label %59

57:                                               ; preds = %14
  %58 = load i32, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %3, align 4
  %61 = call i32 (...) @glLoadIdentity()
  %62 = call i32 @gluPerspective(i32 90, i32 1, i32 2, i32 16384)
  %63 = load i8*, i8** %4, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i8**, i8*** @draw_maxs, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sdiv i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %67, i64 %70
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i8**, i8*** @draw_maxs, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @gluLookAt(i8* %63, i8* %64, i8* %71, i8* %72, i8* %73, i8* %76, i32 0, i32 1, i32 0)
  %78 = call i32 @glColor3f(i32 0, i32 0, i32 0)
  %79 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %80 = load i32, i32* @GL_FILL, align 4
  %81 = call i32 @glPolygonMode(i32 %79, i32 %80)
  %82 = load i32, i32* @GL_DEPTH_TEST, align 4
  %83 = call i32 @glDisable(i32 %82)
  %84 = load i32, i32* @GL_BLEND, align 4
  %85 = call i32 @glEnable(i32 %84)
  %86 = load i32, i32* @GL_SRC_ALPHA, align 4
  %87 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %88 = call i32 @glBlendFunc(i32 %86, i32 %87)
  %89 = call i32 (...) @glFlush()
  br label %90

90:                                               ; preds = %59, %8
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
