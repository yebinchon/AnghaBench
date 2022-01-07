; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_send_ack.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_subnet = type { i32 }
%struct.bt_mesh_msg_ctx = type { i32, i32, i32, i32 }
%struct.bt_mesh_net_tx = type { i32, i32, %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_subnet* }

@BLE_MESH_KEY_UNUSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SeqZero 0x%04x Block 0x%08x OBO %u\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Not sending ack when LPN is enabled\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Not sending ack for non-unicast address\00", align 1
@TRANS_CTL_OP_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_mesh_subnet*, i32, i32, i32, i32*, i32, i32)* @send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_ack(%struct.bt_mesh_subnet* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bt_mesh_subnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bt_mesh_msg_ctx, align 4
  %17 = alloca %struct.bt_mesh_net_tx, align 8
  %18 = alloca i32, align 4
  %19 = alloca [6 x i32], align 16
  store %struct.bt_mesh_subnet* %0, %struct.bt_mesh_subnet** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %16, i32 0, i32 0
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %16, i32 0, i32 1
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %16, i32 0, i32 2
  %25 = load i32, i32* @BLE_MESH_KEY_UNUSED, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %16, i32 0, i32 3
  %27 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %9, align 8
  %28 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %17, i32 0, i32 0
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = call i32 (...) @bt_mesh_primary_addr()
  br label %37

35:                                               ; preds = %7
  %36 = load i32, i32* %10, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %30, align 8
  %39 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %17, i32 0, i32 1
  %40 = call i32 (...) @bt_mesh_net_transmit_get()
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %17, i32 0, i32 2
  store %struct.bt_mesh_msg_ctx* %16, %struct.bt_mesh_msg_ctx** %41, align 8
  %42 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %17, i32 0, i32 3
  %43 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %9, align 8
  store %struct.bt_mesh_subnet* %43, %struct.bt_mesh_subnet** %42, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 8191
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  %51 = call i64 (...) @bt_mesh_lpn_established()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = call i32 @BT_WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %76

55:                                               ; preds = %37
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @BLE_MESH_ADDR_IS_UNICAST(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = call i32 @BT_WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %76

61:                                               ; preds = %55
  %62 = load i32, i32* %18, align 4
  %63 = shl i32 %62, 2
  %64 = and i32 %63, 32764
  %65 = load i32, i32* %15, align 4
  %66 = shl i32 %65, 15
  %67 = or i32 %64, %66
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 0
  %69 = call i32 @sys_put_be16(i32 %67, i32* %68)
  %70 = load i32, i32* %14, align 4
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 2
  %72 = call i32 @sys_put_be32(i32 %70, i32* %71)
  %73 = load i32, i32* @TRANS_CTL_OP_ACK, align 4
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 0
  %75 = call i32 @bt_mesh_ctl_send(%struct.bt_mesh_net_tx* %17, i32 %73, i32* %74, i32 24, i32* null, i32* null, i32* null)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %61, %59, %53
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @bt_mesh_primary_addr(...) #1

declare dso_local i32 @bt_mesh_net_transmit_get(...) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32) #1

declare dso_local i64 @bt_mesh_lpn_established(...) #1

declare dso_local i32 @BT_WARN(i8*) #1

declare dso_local i32 @BLE_MESH_ADDR_IS_UNICAST(i32) #1

declare dso_local i32 @sys_put_be16(i32, i32*) #1

declare dso_local i32 @sys_put_be32(i32, i32*) #1

declare dso_local i32 @bt_mesh_ctl_send(%struct.bt_mesh_net_tx*, i32, i32*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
