; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_net_local.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_net_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.k_work = type { i32 }
%struct.net_buf = type { i32, i32, i32 }

@bt_mesh = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"len %u: %s\00", align 1
@BLE_MESH_NET_IF_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_work*)* @bt_mesh_net_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt_mesh_net_local(%struct.k_work* %0) #0 {
  %2 = alloca %struct.k_work*, align 8
  %3 = alloca %struct.net_buf*, align 8
  store %struct.k_work* %0, %struct.k_work** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = call %struct.net_buf* @net_buf_slist_get(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0))
  store %struct.net_buf* %5, %struct.net_buf** %3, align 8
  %6 = icmp ne %struct.net_buf* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = load %struct.net_buf*, %struct.net_buf** %3, align 8
  %9 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.net_buf*, %struct.net_buf** %3, align 8
  %12 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.net_buf*, %struct.net_buf** %3, align 8
  %15 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bt_hex(i32 %13, i32 %16)
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %17)
  %19 = load %struct.net_buf*, %struct.net_buf** %3, align 8
  %20 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %19, i32 0, i32 0
  %21 = load i32, i32* @BLE_MESH_NET_IF_LOCAL, align 4
  %22 = call i32 @bt_mesh_net_recv(i32* %20, i32 0, i32 %21)
  %23 = load %struct.net_buf*, %struct.net_buf** %3, align 8
  %24 = call i32 @net_buf_unref(%struct.net_buf* %23)
  br label %4

25:                                               ; preds = %4
  ret void
}

declare dso_local %struct.net_buf* @net_buf_slist_get(i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @bt_hex(i32, i32) #1

declare dso_local i32 @bt_mesh_net_recv(i32*, i32, i32) #1

declare dso_local i32 @net_buf_unref(%struct.net_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
