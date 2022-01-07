; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@menu_widgets_frame_count = common dso_local global i64 0, align 8
@MSG_QUEUE_PENDING_MAX = common dso_local global i32 0, align 4
@msg_queue = common dso_local global i32 0, align 4
@current_msgs = common dso_local global i32* null, align 8
@MSG_QUEUE_ONSCREEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_widgets_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @menu_display_init_first_driver(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %30

8:                                                ; preds = %1
  store i64 0, i64* @menu_widgets_frame_count, align 8
  %9 = load i32, i32* @MSG_QUEUE_PENDING_MAX, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @fifo_new(i32 %12)
  store i32 %13, i32* @msg_queue, align 4
  %14 = load i32, i32* @msg_queue, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  br label %30

17:                                               ; preds = %8
  %18 = call i64 @calloc(i32 1, i32 4)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** @current_msgs, align 8
  %20 = load i32*, i32** @current_msgs, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %30

23:                                               ; preds = %17
  %24 = load i32*, i32** @current_msgs, align 8
  %25 = load i32, i32* @MSG_QUEUE_ONSCREEN_MAX, align 4
  %26 = call i32 @file_list_reserve(i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %30

29:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %36

30:                                               ; preds = %28, %22, %16, %7
  %31 = call i64 (...) @menu_widgets_ready()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (...) @menu_widgets_free()
  br label %35

35:                                               ; preds = %33, %30
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @menu_display_init_first_driver(i32) #1

declare dso_local i32 @fifo_new(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @file_list_reserve(i32*, i32) #1

declare dso_local i64 @menu_widgets_ready(...) #1

declare dso_local i32 @menu_widgets_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
