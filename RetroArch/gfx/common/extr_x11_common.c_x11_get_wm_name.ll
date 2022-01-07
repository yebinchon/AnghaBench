; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_get_wm_name.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_get_wm_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_x11_dpy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"_NET_SUPPORTING_WM_CHECK\00", align 1
@False = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"_NET_WM_NAME\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"UTF8_STRING\00", align 1
@XA_WINDOW = common dso_local global i32 0, align 4
@Success = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @x11_get_wm_name(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %14 = load i32, i32* @g_x11_dpy, align 4
  %15 = load i32, i32* @False, align 4
  %16 = call i32 @XInternAtom(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @g_x11_dpy, align 4
  %18 = load i32, i32* @False, align 4
  %19 = call i32 @XInternAtom(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @g_x11_dpy, align 4
  %21 = load i32, i32* @False, align 4
  %22 = call i32 @XInternAtom(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %1
  store i8* null, i8** %2, align 8
  br label %68

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @DefaultRootWindow(i32* %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @False, align 4
  %35 = load i32, i32* @XA_WINDOW, align 4
  %36 = call i64 @XGetWindowProperty(i32* %30, i32 %32, i32 %33, i32 0, i32 1, i32 %34, i32 %35, i32* %4, i32* %5, i64* %10, i64* %11, i8** %13)
  %37 = load i64, i64* @Success, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i8*, i8** %13, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %29
  store i8* null, i8** %2, align 8
  br label %68

43:                                               ; preds = %39
  %44 = load i8*, i8** %13, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @XFree(i8* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @False, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @XGetWindowProperty(i32* %50, i32 %51, i32 %52, i32 0, i32 8192, i32 %53, i32 %54, i32* %4, i32* %5, i64* %10, i64* %11, i8** %13)
  %56 = load i64, i64* @Success, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %43
  %59 = load i8*, i8** %13, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %43
  store i8* null, i8** %2, align 8
  br label %68

62:                                               ; preds = %58
  %63 = load i8*, i8** %13, align 8
  %64 = call i8* @strdup(i8* %63)
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @XFree(i8* %65)
  %67 = load i8*, i8** %12, align 8
  store i8* %67, i8** %2, align 8
  br label %68

68:                                               ; preds = %62, %61, %42, %28
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

declare dso_local i32 @XInternAtom(i32, i8*, i32) #1

declare dso_local i64 @XGetWindowProperty(i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i64*, i64*, i8**) #1

declare dso_local i32 @DefaultRootWindow(i32*) #1

declare dso_local i32 @XFree(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
