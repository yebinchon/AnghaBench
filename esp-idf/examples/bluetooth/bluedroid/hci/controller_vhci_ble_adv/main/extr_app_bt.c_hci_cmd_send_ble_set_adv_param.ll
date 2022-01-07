; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/hci/controller_vhci_ble_adv/main/extr_app_bt.c_hci_cmd_send_ble_set_adv_param.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/hci/controller_vhci_ble_adv/main/extr_app_bt.c_hci_cmd_send_ble_set_adv_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.hci_cmd_send_ble_set_adv_param.peer_addr = private unnamed_addr constant [6 x i32] [i32 128, i32 129, i32 130, i32 131, i32 132, i32 133], align 16
@hci_cmd_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hci_cmd_send_ble_set_adv_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cmd_send_ble_set_adv_param() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [6 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 256, i32* %1, align 4
  store i32 256, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = bitcast [6 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([6 x i32]* @__const.hci_cmd_send_ble_set_adv_param.peer_addr to i8*), i64 24, i1 false)
  store i32 7, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @hci_cmd_buf, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @make_cmd_ble_set_adv_param(i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32* %17, i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @hci_cmd_buf, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @esp_vhci_host_send_packet(i32 %21, i32 %22)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @make_cmd_ble_set_adv_param(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @esp_vhci_host_send_packet(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
