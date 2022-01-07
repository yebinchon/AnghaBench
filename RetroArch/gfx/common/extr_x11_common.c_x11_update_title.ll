; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_update_title.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_update_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_x11_dpy = common dso_local global i32 0, align 4
@g_x11_win = common dso_local global i32 0, align 4
@XA_WM_NAME = common dso_local global i32 0, align 4
@XA_STRING = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x11_update_title(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [128 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %9, align 16
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %11 = call i32 @video_driver_get_window_title(i8* %10, i32 128)
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %13 = load i8, i8* %12, align 16
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @g_x11_dpy, align 4
  %17 = load i32, i32* @g_x11_win, align 4
  %18 = load i32, i32* @XA_WM_NAME, align 4
  %19 = load i32, i32* @XA_STRING, align 4
  %20 = load i32, i32* @PropModeReplace, align 4
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %23 = call i32 @strlen(i8* %22)
  %24 = call i32 @XChangeProperty(i32 %16, i32 %17, i32 %18, i32 %19, i32 8, i32 %20, i8* %21, i32 %23)
  br label %25

25:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @video_driver_get_window_title(i8*, i32) #1

declare dso_local i32 @XChangeProperty(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
