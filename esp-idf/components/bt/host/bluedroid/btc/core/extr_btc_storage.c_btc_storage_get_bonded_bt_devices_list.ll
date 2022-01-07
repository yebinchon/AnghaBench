; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_storage.c_btc_storage_get_bonded_bt_devices_list.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_storage.c_btc_storage_get_bonded_bt_devices_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTC_STORAGE_LINK_KEY_TYPE_STR = common dso_local global i32 0, align 4
@BTC_STORAGE_PIN_LENGTH_STR = common dso_local global i32 0, align 4
@BTC_STORAGE_LINK_KEY_STR = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_storage_get_bonded_bt_devices_list(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @btc_config_lock()
  %9 = call i32* (...) @btc_config_section_begin()
  store i32* %9, i32** %6, align 8
  br label %10

10:                                               ; preds = %48, %2
  %11 = load i32*, i32** %6, align 8
  %12 = call i32* (...) @btc_config_section_end()
  %13 = icmp ne i32* %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = icmp sle i32 %15, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %51

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = call i8* @btc_config_section_name(i32* %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @string_is_bdaddr(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @BTC_STORAGE_LINK_KEY_TYPE_STR, align 4
  %28 = call i64 @btc_config_exist(i8* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @BTC_STORAGE_PIN_LENGTH_STR, align 4
  %33 = call i64 @btc_config_exist(i8* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @BTC_STORAGE_LINK_KEY_STR, align 4
  %38 = call i64 @btc_config_exist(i8* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @string_to_bdaddr(i8* %41, i32* %5)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @memcpy(i32* %43, i32* %5, i32 4)
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %3, align 8
  br label %47

47:                                               ; preds = %40, %35, %30, %25, %19
  br label %48

48:                                               ; preds = %47
  %49 = load i32*, i32** %6, align 8
  %50 = call i32* @btc_config_section_next(i32* %49)
  store i32* %50, i32** %6, align 8
  br label %10

51:                                               ; preds = %18, %10
  %52 = call i32 (...) @btc_config_unlock()
  %53 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  ret i32 %53
}

declare dso_local i32 @btc_config_lock(...) #1

declare dso_local i32* @btc_config_section_begin(...) #1

declare dso_local i32* @btc_config_section_end(...) #1

declare dso_local i8* @btc_config_section_name(i32*) #1

declare dso_local i64 @string_is_bdaddr(i8*) #1

declare dso_local i64 @btc_config_exist(i8*, i32) #1

declare dso_local i32 @string_to_bdaddr(i8*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @btc_config_section_next(i32*) #1

declare dso_local i32 @btc_config_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
