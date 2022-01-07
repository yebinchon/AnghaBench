; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_register_select.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_register_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@s_registered_select_lock = common dso_local global i32 0, align 4
@s_registered_select_num = common dso_local global i32 0, align 4
@s_registered_selects = common dso_local global i32** null, align 8
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @register_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_select(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = call i32 @portENTER_CRITICAL(i32* @s_registered_select_lock)
  %10 = load i32, i32* @s_registered_select_num, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = load i32**, i32*** @s_registered_selects, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = call i32** @realloc(i32** %12, i32 %16)
  store i32** %17, i32*** @s_registered_selects, align 8
  %18 = icmp eq i32** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %8
  %20 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %8
  %22 = load i32*, i32** %2, align 8
  %23 = load i32**, i32*** @s_registered_selects, align 8
  %24 = load i32, i32* @s_registered_select_num, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  store i32* %22, i32** %26, align 8
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* @s_registered_select_num, align 4
  %28 = load i32, i32* @ESP_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %19
  %30 = call i32 @portEXIT_CRITICAL(i32* @s_registered_select_lock)
  br label %31

31:                                               ; preds = %29, %1
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
