; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_read_remote_name_cmpl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_read_remote_name_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HCI_SUCCESS = common dso_local global i32 0, align 4
@BD_NAME_LEN = common dso_local global i64 0, align 8
@HCI_ERR_HOST_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_read_remote_name_cmpl(i32 %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @HCI_SUCCESS, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* %10, align 8
  %13 = load i64, i64* @BD_NAME_LEN, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @memset(i64 %12, i32 0, i64 %14)
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @BD_NAME_LEN, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* @BD_NAME_LEN, align 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %19, %4
  %22 = load i64, i64* %10, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @memcpy(i32* %23, i8* %24, i64 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %21
  %33 = load i32, i32* @HCI_ERR_HOST_TIMEOUT, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, 1
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @btm_process_remote_name(i32 %35, i64 %36, i64 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @btm_sec_rmt_name_request_complete(i32 %41, i32* %43, i32 %44)
  ret void
}

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @btm_process_remote_name(i32, i64, i64, i32) #1

declare dso_local i32 @btm_sec_rmt_name_request_complete(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
