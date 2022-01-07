; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_install_grabs.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_install_grabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 (i8*, i8*)*, i32 (i32, i8*)* }

@dpy = common dso_local global i32 0, align 4
@None = common dso_local global i32 0, align 4
@win = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@False = common dso_local global i32 0, align 4
@MOUSE_MASK = common dso_local global i32 0, align 4
@GrabModeAsync = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4
@mouse_accel_numerator = common dso_local global i32 0, align 4
@mouse_accel_denominator = common dso_local global i32 0, align 4
@mouse_threshold = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@mouseResetTime = common dso_local global i32 0, align 4
@in_dgamouse = common dso_local global %struct.TYPE_5__* null, align 8
@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to detect XF86DGA Mouse\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"in_dgamouse\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@XF86DGADirectMouse = common dso_local global i32 0, align 4
@mwx = common dso_local global i32 0, align 4
@mwy = common dso_local global i32 0, align 4
@my = common dso_local global i64 0, align 8
@mx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @install_grabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_grabs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @dpy, align 4
  %4 = load i32, i32* @None, align 4
  %5 = load i32, i32* @win, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 0), align 4
  %7 = sdiv i32 %6, 2
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 1), align 4
  %9 = sdiv i32 %8, 2
  %10 = call i32 @XWarpPointer(i32 %3, i32 %4, i32 %5, i32 0, i32 0, i32 0, i32 0, i32 %7, i32 %9)
  %11 = load i32, i32* @dpy, align 4
  %12 = load i32, i32* @False, align 4
  %13 = call i32 @XSync(i32 %11, i32 %12)
  %14 = load i32, i32* @dpy, align 4
  %15 = load i32, i32* @win, align 4
  %16 = load i32, i32* @dpy, align 4
  %17 = load i32, i32* @win, align 4
  %18 = call i32 @CreateNullCursor(i32 %16, i32 %17)
  %19 = call i32 @XDefineCursor(i32 %14, i32 %15, i32 %18)
  %20 = load i32, i32* @dpy, align 4
  %21 = load i32, i32* @win, align 4
  %22 = load i32, i32* @False, align 4
  %23 = load i32, i32* @MOUSE_MASK, align 4
  %24 = load i32, i32* @GrabModeAsync, align 4
  %25 = load i32, i32* @GrabModeAsync, align 4
  %26 = load i32, i32* @win, align 4
  %27 = load i32, i32* @None, align 4
  %28 = load i32, i32* @CurrentTime, align 4
  %29 = call i32 @XGrabPointer(i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @dpy, align 4
  %31 = call i32 @XGetPointerControl(i32 %30, i32* @mouse_accel_numerator, i32* @mouse_accel_denominator, i32* @mouse_threshold)
  %32 = load i32, i32* @dpy, align 4
  %33 = load i32, i32* @True, align 4
  %34 = load i32, i32* @True, align 4
  %35 = call i32 @XChangePointerControl(i32 %32, i32 %33, i32 %34, i32 1, i32 1, i32 0)
  %36 = load i32, i32* @dpy, align 4
  %37 = load i32, i32* @False, align 4
  %38 = call i32 @XSync(i32 %36, i32 %37)
  %39 = call i32 (...) @Sys_Milliseconds()
  store i32 %39, i32* @mouseResetTime, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @in_dgamouse, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %0
  %45 = load i32, i32* @dpy, align 4
  %46 = call i32 @XF86DGAQueryVersion(i32 %45, i32* %1, i32* %2)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 1), align 8
  %50 = load i32, i32* @PRINT_ALL, align 4
  %51 = call i32 %49(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %52 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %53 = call i32 %52(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %64

54:                                               ; preds = %44
  %55 = load i32, i32* @dpy, align 4
  %56 = load i32, i32* @dpy, align 4
  %57 = call i32 @DefaultScreen(i32 %56)
  %58 = load i32, i32* @XF86DGADirectMouse, align 4
  %59 = call i32 @XF86DGADirectVideo(i32 %55, i32 %57, i32 %58)
  %60 = load i32, i32* @dpy, align 4
  %61 = load i32, i32* @None, align 4
  %62 = load i32, i32* @win, align 4
  %63 = call i32 @XWarpPointer(i32 %60, i32 %61, i32 %62, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %64

64:                                               ; preds = %54, %48
  br label %70

65:                                               ; preds = %0
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 0), align 4
  %67 = sdiv i32 %66, 2
  store i32 %67, i32* @mwx, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 1), align 4
  %69 = sdiv i32 %68, 2
  store i32 %69, i32* @mwy, align 4
  store i64 0, i64* @my, align 8
  store i64 0, i64* @mx, align 8
  br label %70

70:                                               ; preds = %65, %64
  %71 = load i32, i32* @dpy, align 4
  %72 = load i32, i32* @win, align 4
  %73 = load i32, i32* @False, align 4
  %74 = load i32, i32* @GrabModeAsync, align 4
  %75 = load i32, i32* @GrabModeAsync, align 4
  %76 = load i32, i32* @CurrentTime, align 4
  %77 = call i32 @XGrabKeyboard(i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* @dpy, align 4
  %79 = load i32, i32* @False, align 4
  %80 = call i32 @XSync(i32 %78, i32 %79)
  ret void
}

declare dso_local i32 @XWarpPointer(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XSync(i32, i32) #1

declare dso_local i32 @XDefineCursor(i32, i32, i32) #1

declare dso_local i32 @CreateNullCursor(i32, i32) #1

declare dso_local i32 @XGrabPointer(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XGetPointerControl(i32, i32*, i32*, i32*) #1

declare dso_local i32 @XChangePointerControl(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Sys_Milliseconds(...) #1

declare dso_local i32 @XF86DGAQueryVersion(i32, i32*, i32*) #1

declare dso_local i32 @XF86DGADirectVideo(i32, i32, i32) #1

declare dso_local i32 @DefaultScreen(i32) #1

declare dso_local i32 @XGrabKeyboard(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
