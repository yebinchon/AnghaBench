; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_qnx_input.c_qnx_input_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_qnx_input.c_qnx_input_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @qnx_input_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qnx_input_poll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %3, align 8
  br label %9

9:                                                ; preds = %1, %38
  store i32* null, i32** %4, align 8
  %10 = call i32 @bps_get_event(i32** %4, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @BPS_SUCCESS, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %39

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @bps_event_get_domain(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (...) @navigator_get_domain()
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @qnx_handle_navigator_event(i32* %25, i32* %26)
  br label %37

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (...) @screen_get_domain()
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @qnx_handle_screen_event(i32* %33, i32* %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %24
  br label %38

38:                                               ; preds = %37, %9
  br label %9

39:                                               ; preds = %17
  ret void
}

declare dso_local i32 @bps_get_event(i32**, i32) #1

declare dso_local i32 @bps_event_get_domain(i32*) #1

declare dso_local i32 @navigator_get_domain(...) #1

declare dso_local i32 @qnx_handle_navigator_event(i32*, i32*) #1

declare dso_local i32 @screen_get_domain(...) #1

declare dso_local i32 @qnx_handle_screen_event(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
