; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_ctl_recv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_ctl_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.bt_mesh_net_rx = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.net_buf_simple = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"OpCode 0x%02x len %u\00", align 1
@CONFIG_BLE_MESH_NODE = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_FRIEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unhandled TransOpCode 0x%02x\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TRANS_CTL_OP_FRIEND_OFFER = common dso_local global i32 0, align 4
@bt_mesh = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_mesh_net_rx*, i32, %struct.net_buf_simple*, i32*)* @ctl_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_recv(%struct.bt_mesh_net_rx* %0, i32 %1, %struct.net_buf_simple* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bt_mesh_net_rx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_buf_simple*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.bt_mesh_net_rx* %0, %struct.bt_mesh_net_rx** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.net_buf_simple* %2, %struct.net_buf_simple** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = call i32 @TRANS_CTL_OP(i32* %7)
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %14 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %28 [
    i32 137, label %18
    i32 128, label %24
  ]

18:                                               ; preds = %4
  %19 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @trans_ack(%struct.bt_mesh_net_rx* %19, i32 %20, %struct.net_buf_simple* %21, i32* %22)
  store i32 %23, i32* %5, align 4
  br label %81

24:                                               ; preds = %4
  %25 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %6, align 8
  %26 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %27 = call i32 @trans_heartbeat(%struct.bt_mesh_net_rx* %25, %struct.net_buf_simple* %26)
  store i32 %27, i32* %5, align 4
  br label %81

28:                                               ; preds = %4
  %29 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %6, align 8
  %30 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %81

34:                                               ; preds = %28
  %35 = load i32, i32* @CONFIG_BLE_MESH_NODE, align 4
  %36 = call i64 @IS_ENABLED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %34
  %39 = call i64 (...) @bt_mesh_is_provisioned()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %38
  %42 = load i32, i32* @CONFIG_BLE_MESH_FRIEND, align 4
  %43 = call i64 @IS_ENABLED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %41
  %46 = call i32 (...) @bt_mesh_lpn_established()
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %75, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  switch i32 %49, label %74 [
    i32 134, label %50
    i32 133, label %54
    i32 136, label %58
    i32 135, label %62
    i32 132, label %66
    i32 130, label %70
  ]

50:                                               ; preds = %48
  %51 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %6, align 8
  %52 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %53 = call i32 @bt_mesh_friend_poll(%struct.bt_mesh_net_rx* %51, %struct.net_buf_simple* %52)
  store i32 %53, i32* %5, align 4
  br label %81

54:                                               ; preds = %48
  %55 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %6, align 8
  %56 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %57 = call i32 @bt_mesh_friend_req(%struct.bt_mesh_net_rx* %55, %struct.net_buf_simple* %56)
  store i32 %57, i32* %5, align 4
  br label %81

58:                                               ; preds = %48
  %59 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %6, align 8
  %60 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %61 = call i32 @bt_mesh_friend_clear(%struct.bt_mesh_net_rx* %59, %struct.net_buf_simple* %60)
  store i32 %61, i32* %5, align 4
  br label %81

62:                                               ; preds = %48
  %63 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %6, align 8
  %64 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %65 = call i32 @bt_mesh_friend_clear_cfm(%struct.bt_mesh_net_rx* %63, %struct.net_buf_simple* %64)
  store i32 %65, i32* %5, align 4
  br label %81

66:                                               ; preds = %48
  %67 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %6, align 8
  %68 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %69 = call i32 @bt_mesh_friend_sub_add(%struct.bt_mesh_net_rx* %67, %struct.net_buf_simple* %68)
  store i32 %69, i32* %5, align 4
  br label %81

70:                                               ; preds = %48
  %71 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %6, align 8
  %72 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %73 = call i32 @bt_mesh_friend_sub_rem(%struct.bt_mesh_net_rx* %71, %struct.net_buf_simple* %72)
  store i32 %73, i32* %5, align 4
  br label %81

74:                                               ; preds = %48
  br label %75

75:                                               ; preds = %74, %45, %41
  br label %76

76:                                               ; preds = %75, %38, %34
  %77 = load i32, i32* %10, align 4
  %78 = call i32 (i8*, ...) @BT_WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @ENOENT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %76, %70, %66, %62, %58, %54, %50, %33, %24, %18
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @TRANS_CTL_OP(i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @trans_ack(%struct.bt_mesh_net_rx*, i32, %struct.net_buf_simple*, i32*) #1

declare dso_local i32 @trans_heartbeat(%struct.bt_mesh_net_rx*, %struct.net_buf_simple*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @bt_mesh_is_provisioned(...) #1

declare dso_local i32 @bt_mesh_lpn_established(...) #1

declare dso_local i32 @bt_mesh_friend_poll(%struct.bt_mesh_net_rx*, %struct.net_buf_simple*) #1

declare dso_local i32 @bt_mesh_friend_req(%struct.bt_mesh_net_rx*, %struct.net_buf_simple*) #1

declare dso_local i32 @bt_mesh_friend_clear(%struct.bt_mesh_net_rx*, %struct.net_buf_simple*) #1

declare dso_local i32 @bt_mesh_friend_clear_cfm(%struct.bt_mesh_net_rx*, %struct.net_buf_simple*) #1

declare dso_local i32 @bt_mesh_friend_sub_add(%struct.bt_mesh_net_rx*, %struct.net_buf_simple*) #1

declare dso_local i32 @bt_mesh_friend_sub_rem(%struct.bt_mesh_net_rx*, %struct.net_buf_simple*) #1

declare dso_local i32 @BT_WARN(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
