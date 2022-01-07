; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_storage.c_btc_storage_get_num_bt_bond_devices.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_storage.c_btc_storage_get_num_bt_bond_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTC_STORAGE_LINK_KEY_TYPE_STR = common dso_local global i32 0, align 4
@BTC_STORAGE_PIN_LENGTH_STR = common dso_local global i32 0, align 4
@BTC_STORAGE_LINK_KEY_STR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_storage_get_num_bt_bond_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i32 (...) @btc_config_lock()
  %5 = call i32* (...) @btc_config_section_begin()
  store i32* %5, i32** %2, align 8
  br label %6

6:                                                ; preds = %35, %0
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* (...) @btc_config_section_end()
  %9 = icmp ne i32* %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @btc_config_section_name(i32* %11)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @string_is_bdaddr(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @BTC_STORAGE_LINK_KEY_TYPE_STR, align 4
  %19 = call i64 @btc_config_exist(i8* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @BTC_STORAGE_PIN_LENGTH_STR, align 4
  %24 = call i64 @btc_config_exist(i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* @BTC_STORAGE_LINK_KEY_STR, align 4
  %29 = call i64 @btc_config_exist(i8* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %31, %26, %21, %16, %10
  br label %35

35:                                               ; preds = %34
  %36 = load i32*, i32** %2, align 8
  %37 = call i32* @btc_config_section_next(i32* %36)
  store i32* %37, i32** %2, align 8
  br label %6

38:                                               ; preds = %6
  %39 = call i32 (...) @btc_config_unlock()
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @btc_config_lock(...) #1

declare dso_local i32* @btc_config_section_begin(...) #1

declare dso_local i32* @btc_config_section_end(...) #1

declare dso_local i8* @btc_config_section_name(i32*) #1

declare dso_local i64 @string_is_bdaddr(i8*) #1

declare dso_local i64 @btc_config_exist(i8*, i32) #1

declare dso_local i32* @btc_config_section_next(i32*) #1

declare dso_local i32 @btc_config_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
