; ModuleID = '/home/carl/AnghaBench/Craft/deps/glew/src/extr_glewinfo.c_glewDestroyContext.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glew/src/extr_glewinfo.c_glewDestroyContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dpy = common dso_local global i32* null, align 8
@ctx = common dso_local global i32* null, align 8
@wnd = common dso_local global i64 0, align 8
@cmap = common dso_local global i64 0, align 8
@vis = common dso_local global i32* null, align 8
@vi = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @glewDestroyContext() #0 {
  %1 = load i32*, i32** @dpy, align 8
  %2 = icmp ne i32* null, %1
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32*, i32** @ctx, align 8
  %5 = icmp ne i32* null, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load i32*, i32** @dpy, align 8
  %8 = load i32*, i32** @ctx, align 8
  %9 = call i32 @glXDestroyContext(i32* %7, i32* %8)
  br label %10

10:                                               ; preds = %6, %3, %0
  %11 = load i32*, i32** @dpy, align 8
  %12 = icmp ne i32* null, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i64, i64* @wnd, align 8
  %15 = icmp ne i64 0, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32*, i32** @dpy, align 8
  %18 = load i64, i64* @wnd, align 8
  %19 = call i32 @XDestroyWindow(i32* %17, i64 %18)
  br label %20

20:                                               ; preds = %16, %13, %10
  %21 = load i32*, i32** @dpy, align 8
  %22 = icmp ne i32* null, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i64, i64* @cmap, align 8
  %25 = icmp ne i64 0, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32*, i32** @dpy, align 8
  %28 = load i64, i64* @cmap, align 8
  %29 = call i32 @XFreeColormap(i32* %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %23, %20
  %31 = load i32*, i32** @vis, align 8
  %32 = icmp ne i32* null, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32*, i32** @vis, align 8
  %35 = call i32 @XFree(i32* %34)
  br label %43

36:                                               ; preds = %30
  %37 = load i32*, i32** @vi, align 8
  %38 = icmp ne i32* null, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** @vi, align 8
  %41 = call i32 @XFree(i32* %40)
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32*, i32** @dpy, align 8
  %45 = icmp ne i32* null, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32*, i32** @dpy, align 8
  %48 = call i32 @XCloseDisplay(i32* %47)
  br label %49

49:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32 @glXDestroyContext(i32*, i32*) #1

declare dso_local i32 @XDestroyWindow(i32*, i64) #1

declare dso_local i32 @XFreeColormap(i32*, i64) #1

declare dso_local i32 @XFree(i32*) #1

declare dso_local i32 @XCloseDisplay(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
