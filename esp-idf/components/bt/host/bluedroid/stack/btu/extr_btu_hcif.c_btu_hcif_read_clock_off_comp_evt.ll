; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_hcif.c_btu_hcif_read_clock_off_comp_evt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_hcif.c_btu_hcif_read_clock_off_comp_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HCI_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @btu_hcif_read_clock_off_comp_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btu_hcif_read_clock_off_comp_evt(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64*, i64** %2, align 8
  %8 = call i32 @STREAM_TO_UINT8(i64 %6, i64* %7)
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @HCI_SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %28

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i64*, i64** %2, align 8
  %16 = call i32 @STREAM_TO_UINT16(i32 %14, i64* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i64*, i64** %2, align 8
  %19 = call i32 @STREAM_TO_UINT16(i32 %17, i64* %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @HCID_GET_HANDLE(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @btm_process_clk_off_comp_evt(i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @btm_sec_update_clock_offset(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i64*) #1

declare dso_local i32 @HCID_GET_HANDLE(i32) #1

declare dso_local i32 @btm_process_clk_off_comp_evt(i32, i32) #1

declare dso_local i32 @btm_sec_update_clock_offset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
