; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_xdg_screensaver_inhibit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_xdg_screensaver_inhibit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"[X11]: Suspending screensaver (X11, xdg-screensaver).\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"xdg-screensaver suspend 0x%x\00", align 1
@xdg_screensaver_available = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to launch xdg-screensaver.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not suspend screen saver.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xdg_screensaver_inhibit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdg_screensaver_inhibit(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  store i64 %0, i64* %2, align 8
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %5, align 16
  %6 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %8 = load i64, i64* %2, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 @snprintf(i8* %7, i32 64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %12 = call i32 @system(i8* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  store i32 0, i32* @xdg_screensaver_available, align 4
  %16 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @WEXITSTATUS(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  store i32 0, i32* @xdg_screensaver_available, align 4
  %22 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  br label %24

24:                                               ; preds = %23, %15
  ret void
}

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
