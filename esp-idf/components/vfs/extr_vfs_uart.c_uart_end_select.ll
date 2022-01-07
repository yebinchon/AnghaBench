; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_uart_end_select.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_uart_end_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uart_end_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_end_select(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = call i32 (...) @uart_get_selectlock()
  %9 = call i32 @portENTER_CRITICAL(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @unregister_select(i32* %10)
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %19, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @UART_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @uart_set_select_notif_callback(i32 %17, i32* null)
  br label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %12

22:                                               ; preds = %12
  %23 = call i32 (...) @uart_get_selectlock()
  %24 = call i32 @portEXIT_CRITICAL(i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @free(i32* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @portENTER_CRITICAL(i32) #1

declare dso_local i32 @uart_get_selectlock(...) #1

declare dso_local i32 @unregister_select(i32*) #1

declare dso_local i32 @uart_set_select_notif_callback(i32, i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
