; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_hal_h4.c_hci_packet_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_hal_h4.c_hci_packet_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64* }
%struct.TYPE_5__ = type { i32 }

@MAX_L2CAP_LINKS = common dso_local global i32 0, align 4
@DATA_TYPE_ACL = common dso_local global i64 0, align 8
@HCI_DATA_HANDLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @hci_packet_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_packet_complete(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %11 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %12 = add nsw i32 %11, 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %17 = add nsw i32 %16, 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %22, i64 %26
  store i64* %27, i64** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = call i32 @STREAM_TO_UINT8(i64 %28, i64* %29)
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @DATA_TYPE_ACL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = load i64*, i64** %9, align 8
  %37 = call i32 @STREAM_TO_UINT16(i32 %35, i64* %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @HCI_DATA_HANDLE_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.TYPE_5__* @l2cu_find_lcb_by_handle(i32 %41)
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %10, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %34
  %51 = call i64 (...) @esp_vhci_host_check_send_available()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = call i64 @l2cu_find_completed_packets(i32* %15, i32* %19)
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @btsnd_hcic_host_num_xmitted_pkts(i64 %58, i32* %15, i32* %19)
  br label %60

60:                                               ; preds = %57, %53
  br label %62

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %1
  %64 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #2

declare dso_local i32 @STREAM_TO_UINT16(i32, i64*) #2

declare dso_local %struct.TYPE_5__* @l2cu_find_lcb_by_handle(i32) #2

declare dso_local i64 @esp_vhci_host_check_send_available(...) #2

declare dso_local i64 @l2cu_find_completed_packets(i32*, i32*) #2

declare dso_local i32 @btsnd_hcic_host_num_xmitted_pkts(i64, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
