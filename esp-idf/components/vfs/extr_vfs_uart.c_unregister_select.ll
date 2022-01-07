; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_unregister_select.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_unregister_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@s_registered_select_lock = common dso_local global i32 0, align 4
@s_registered_select_num = common dso_local global i32 0, align 4
@s_registered_selects = common dso_local global i32** null, align 8
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @unregister_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unregister_select(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @ESP_OK, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %59

9:                                                ; preds = %1
  %10 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %10, i32* %3, align 4
  %11 = call i32 @portENTER_CRITICAL(i32* @s_registered_select_lock)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %54, %9
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @s_registered_select_num, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %12
  %17 = load i32**, i32*** @s_registered_selects, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = icmp eq i32* %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %16
  %25 = load i32, i32* @s_registered_select_num, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = load i32**, i32*** @s_registered_selects, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32**, i32*** @s_registered_selects, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  store i32* %31, i32** %35, align 8
  %36 = load i32**, i32*** @s_registered_selects, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = call i32** @realloc(i32** %36, i32 %40)
  store i32** %41, i32*** @s_registered_selects, align 8
  %42 = load i32**, i32*** @s_registered_selects, align 8
  %43 = icmp ne i32** %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %24
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %24
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* @s_registered_select_num, align 4
  %49 = load i32, i32* @ESP_OK, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %47
  br label %57

53:                                               ; preds = %16
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %12

57:                                               ; preds = %52, %12
  %58 = call i32 @portEXIT_CRITICAL(i32* @s_registered_select_lock)
  br label %59

59:                                               ; preds = %57, %1
  %60 = load i32, i32* %3, align 4
  ret i32 %60
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
