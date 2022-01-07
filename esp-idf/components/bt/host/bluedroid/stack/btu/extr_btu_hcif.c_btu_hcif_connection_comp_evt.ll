; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_hcif.c_btu_hcif_connection_comp_evt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_hcif.c_btu_hcif_connection_comp_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@HCI_LINK_TYPE_ACL = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @btu_hcif_connection_comp_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btu_hcif_connection_comp_evt(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  store i64* %0, i64** %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64*, i64** %2, align 8
  %11 = call i32 @STREAM_TO_UINT8(i64 %9, i64* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i64*, i64** %2, align 8
  %14 = call i32 @STREAM_TO_UINT16(i32 %12, i64* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i64*, i64** %2, align 8
  %17 = call i32 @STREAM_TO_BDADDR(i32 %15, i64* %16)
  %18 = load i64, i64* %6, align 8
  %19 = load i64*, i64** %2, align 8
  %20 = call i32 @STREAM_TO_UINT8(i64 %18, i64* %19)
  %21 = load i64, i64* %7, align 8
  %22 = load i64*, i64** %2, align 8
  %23 = call i32 @STREAM_TO_UINT8(i64 %21, i64* %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @HCID_GET_HANDLE(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @HCI_LINK_TYPE_ACL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @btm_sec_connected(i32 %30, i32 %31, i64 %32, i64 %33)
  %35 = load i64, i64* %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @l2c_link_hci_conn_comp(i64 %35, i32 %36, i32 %37)
  br label %50

39:                                               ; preds = %1
  %40 = call i32 @memset(%struct.TYPE_4__* %8, i32 0, i32 4)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @BD_ADDR_LEN, align 4
  %45 = call i32 @memcpy(i32 %42, i32 %43, i32 %44)
  %46 = load i64, i64* %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @btm_sco_connected(i64 %46, i32 %47, i32 %48, %struct.TYPE_4__* %8)
  br label %50

50:                                               ; preds = %39, %29
  ret void
}

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i64*) #1

declare dso_local i32 @STREAM_TO_BDADDR(i32, i64*) #1

declare dso_local i32 @HCID_GET_HANDLE(i32) #1

declare dso_local i32 @btm_sec_connected(i32, i32, i64, i64) #1

declare dso_local i32 @l2c_link_hci_conn_comp(i64, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @btm_sco_connected(i64, i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
