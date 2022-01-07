; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_uninstall_grabs.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_uninstall_grabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32 (i32, i8*)* }
%struct.TYPE_7__ = type { i32, i32 }

@in_dgamouse = common dso_local global %struct.TYPE_6__* null, align 8
@com_developer = common dso_local global %struct.TYPE_8__* null, align 8
@ri = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"DGA Mouse - Disabling DGA DirectVideo\0A\00", align 1
@dpy = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@mouse_accel_numerator = common dso_local global i32 0, align 4
@mouse_accel_denominator = common dso_local global i32 0, align 4
@mouse_threshold = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4
@None = common dso_local global i32 0, align 4
@win = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uninstall_grabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninstall_grabs() #0 {
  %1 = load %struct.TYPE_6__*, %struct.TYPE_6__** @in_dgamouse, align 8
  %2 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %0
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @com_developer, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %12 = load i32, i32* @PRINT_ALL, align 4
  %13 = call i32 %11(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %10, %5
  %15 = load i32, i32* @dpy, align 4
  %16 = load i32, i32* @dpy, align 4
  %17 = call i32 @DefaultScreen(i32 %16)
  %18 = call i32 @XF86DGADirectVideo(i32 %15, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %14, %0
  %20 = load i32, i32* @dpy, align 4
  %21 = load i32, i32* @qtrue, align 4
  %22 = load i32, i32* @qtrue, align 4
  %23 = load i32, i32* @mouse_accel_numerator, align 4
  %24 = load i32, i32* @mouse_accel_denominator, align 4
  %25 = load i32, i32* @mouse_threshold, align 4
  %26 = call i32 @XChangePointerControl(i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @dpy, align 4
  %28 = load i32, i32* @CurrentTime, align 4
  %29 = call i32 @XUngrabPointer(i32 %27, i32 %28)
  %30 = load i32, i32* @dpy, align 4
  %31 = load i32, i32* @CurrentTime, align 4
  %32 = call i32 @XUngrabKeyboard(i32 %30, i32 %31)
  %33 = load i32, i32* @dpy, align 4
  %34 = load i32, i32* @None, align 4
  %35 = load i32, i32* @win, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 0), align 4
  %37 = sdiv i32 %36, 2
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 1), align 4
  %39 = sdiv i32 %38, 2
  %40 = call i32 @XWarpPointer(i32 %33, i32 %34, i32 %35, i32 0, i32 0, i32 0, i32 0, i32 %37, i32 %39)
  %41 = load i32, i32* @dpy, align 4
  %42 = load i32, i32* @win, align 4
  %43 = call i32 @XUndefineCursor(i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @XF86DGADirectVideo(i32, i32, i32) #1

declare dso_local i32 @DefaultScreen(i32) #1

declare dso_local i32 @XChangePointerControl(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XUngrabPointer(i32, i32) #1

declare dso_local i32 @XUngrabKeyboard(i32, i32) #1

declare dso_local i32 @XWarpPointer(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XUndefineCursor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
