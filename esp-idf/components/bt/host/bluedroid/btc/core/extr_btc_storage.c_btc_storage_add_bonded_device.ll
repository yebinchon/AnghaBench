; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_storage.c_btc_storage_add_bonded_device.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_storage.c_btc_storage_add_bonded_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"add to storage: Remote device:%s\0A\00", align 1
@BTC_STORAGE_LINK_KEY_TYPE_STR = common dso_local global i32 0, align 4
@BTC_STORAGE_PIN_LENGTH_STR = common dso_local global i32 0, align 4
@BTC_STORAGE_LINK_KEY_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Storage add rslt %d\0A\00", align 1
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@BT_STATUS_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_storage_add_bonded_device(i32* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @bdaddr_to_string(i32* %11, i32 %12, i32 4)
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @BTC_TRACE_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 (...) @btc_config_lock()
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @BTC_STORAGE_LINK_KEY_TYPE_STR, align 4
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @btc_config_set_int(i32 %17, i32 %18, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @BTC_STORAGE_PIN_LENGTH_STR, align 4
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @btc_config_set_int(i32 %22, i32 %23, i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @BTC_STORAGE_LINK_KEY_STR, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @btc_config_set_bin(i32 %29, i32 %30, i32 %31, i32 4)
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = call i32 (...) @btc_config_flush()
  %36 = call i32 (...) @btc_config_unlock()
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @BTC_TRACE_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  br label %45

43:                                               ; preds = %4
  %44 = load i32, i32* @BT_STATUS_FAIL, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  ret i32 %46
}

declare dso_local i32 @bdaddr_to_string(i32*, i32, i32) #1

declare dso_local i32 @BTC_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @btc_config_lock(...) #1

declare dso_local i32 @btc_config_set_int(i32, i32, i32) #1

declare dso_local i32 @btc_config_set_bin(i32, i32, i32, i32) #1

declare dso_local i32 @btc_config_flush(...) #1

declare dso_local i32 @btc_config_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
