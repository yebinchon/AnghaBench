; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_net_decrypt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_net_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bt_mesh_subnet = type { i32 }
%struct.bt_mesh_net_rx = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net_buf_simple = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"NID 0x%02x net_idx 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"IVI %u net->iv_index 0x%08x\00", align 1
@bt_mesh = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ENOENT = common dso_local global i32 0, align 4
@BLE_MESH_NET_IF_ADV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Duplicate found in Network Message Cache\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Ignoring non-unicast src addr 0x%04x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"src 0x%04x\00", align 1
@BLE_MESH_NET_IF_PROXY_CFG = common dso_local global i64 0, align 8
@CONFIG_BLE_MESH_PROXY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_mesh_subnet*, i32*, i32*, i32*, i64, %struct.bt_mesh_net_rx*, %struct.net_buf_simple*)* @net_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_decrypt(%struct.bt_mesh_subnet* %0, i32* %1, i32* %2, i32* %3, i64 %4, %struct.bt_mesh_net_rx* %5, %struct.net_buf_simple* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bt_mesh_subnet*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bt_mesh_net_rx*, align 8
  %15 = alloca %struct.net_buf_simple*, align 8
  store %struct.bt_mesh_subnet* %0, %struct.bt_mesh_subnet** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.bt_mesh_net_rx* %5, %struct.bt_mesh_net_rx** %14, align 8
  store %struct.net_buf_simple* %6, %struct.net_buf_simple** %15, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = call i32 @NID(i32* %16)
  %18 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %9, align 8
  %19 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 @IVI(i32* %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bt_mesh, i32 0, i32 0), align 4
  %25 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @IVI(i32* %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bt_mesh, i32 0, i32 0), align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %14, align 8
  %33 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.net_buf_simple*, %struct.net_buf_simple** %15, align 8
  %35 = call i32 @net_buf_simple_reset(%struct.net_buf_simple* %34)
  %36 = load %struct.net_buf_simple*, %struct.net_buf_simple** %15, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @net_buf_simple_add(%struct.net_buf_simple* %36, i64 %37)
  %39 = load i32*, i32** %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @memcpy(i32 %38, i32* %39, i64 %40)
  %42 = load %struct.net_buf_simple*, %struct.net_buf_simple** %15, align 8
  %43 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %14, align 8
  %46 = call i32 @BLE_MESH_NET_IVI_RX(%struct.bt_mesh_net_rx* %45)
  %47 = load i32*, i32** %11, align 8
  %48 = call i64 @bt_mesh_net_obfuscate(i32 %44, i32 %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %7
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %101

53:                                               ; preds = %7
  %54 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %14, align 8
  %55 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BLE_MESH_NET_IF_ADV, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %14, align 8
  %61 = load %struct.net_buf_simple*, %struct.net_buf_simple** %15, align 8
  %62 = call i64 @msg_cache_match(%struct.bt_mesh_net_rx* %60, %struct.net_buf_simple* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = call i32 (i8*, ...) @BT_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EALREADY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %101

68:                                               ; preds = %59, %53
  %69 = load %struct.net_buf_simple*, %struct.net_buf_simple** %15, align 8
  %70 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @SRC(i32 %71)
  %73 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %14, align 8
  %74 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %14, align 8
  %77 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @BLE_MESH_ADDR_IS_UNICAST(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %68
  %83 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %14, align 8
  %84 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i8*, ...) @BT_WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %101

90:                                               ; preds = %68
  %91 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %14, align 8
  %92 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32*, i32** %10, align 8
  %97 = load %struct.net_buf_simple*, %struct.net_buf_simple** %15, align 8
  %98 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %14, align 8
  %99 = call i32 @BLE_MESH_NET_IVI_RX(%struct.bt_mesh_net_rx* %98)
  %100 = call i32 @bt_mesh_net_decrypt(i32* %96, %struct.net_buf_simple* %97, i32 %99, i32 0)
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %90, %82, %64, %50
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @NID(i32*) #1

declare dso_local i32 @IVI(i32*) #1

declare dso_local i32 @net_buf_simple_reset(%struct.net_buf_simple*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @net_buf_simple_add(%struct.net_buf_simple*, i64) #1

declare dso_local i64 @bt_mesh_net_obfuscate(i32, i32, i32*) #1

declare dso_local i32 @BLE_MESH_NET_IVI_RX(%struct.bt_mesh_net_rx*) #1

declare dso_local i64 @msg_cache_match(%struct.bt_mesh_net_rx*, %struct.net_buf_simple*) #1

declare dso_local i32 @BT_WARN(i8*, ...) #1

declare dso_local i32 @SRC(i32) #1

declare dso_local i32 @BLE_MESH_ADDR_IS_UNICAST(i32) #1

declare dso_local i32 @bt_mesh_net_decrypt(i32*, %struct.net_buf_simple*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
