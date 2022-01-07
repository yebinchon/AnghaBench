; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_net_beacon_update.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_net_beacon_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bt_mesh_subnet = type { i32, %struct.bt_mesh_subnet_keys*, i32, i64 }
%struct.bt_mesh_subnet_keys = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"NetIndex %u Using new key\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"NetIndex %u Using current key\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"flags 0x%02x, IVI 0x%08x\00", align 1
@bt_mesh = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_net_beacon_update(%struct.bt_mesh_subnet* %0) #0 {
  %2 = alloca %struct.bt_mesh_subnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bt_mesh_subnet_keys*, align 8
  store %struct.bt_mesh_subnet* %0, %struct.bt_mesh_subnet** %2, align 8
  %5 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  %6 = call i32 @bt_mesh_net_flags(%struct.bt_mesh_subnet* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  %8 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  %13 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  %17 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %16, i32 0, i32 1
  %18 = load %struct.bt_mesh_subnet_keys*, %struct.bt_mesh_subnet_keys** %17, align 8
  %19 = getelementptr inbounds %struct.bt_mesh_subnet_keys, %struct.bt_mesh_subnet_keys* %18, i64 1
  store %struct.bt_mesh_subnet_keys* %19, %struct.bt_mesh_subnet_keys** %4, align 8
  br label %29

20:                                               ; preds = %1
  %21 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  %22 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  %26 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %25, i32 0, i32 1
  %27 = load %struct.bt_mesh_subnet_keys*, %struct.bt_mesh_subnet_keys** %26, align 8
  %28 = getelementptr inbounds %struct.bt_mesh_subnet_keys, %struct.bt_mesh_subnet_keys* %27, i64 0
  store %struct.bt_mesh_subnet_keys* %28, %struct.bt_mesh_subnet_keys** %4, align 8
  br label %29

29:                                               ; preds = %20, %11
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 4
  %32 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.bt_mesh_subnet_keys*, %struct.bt_mesh_subnet_keys** %4, align 8
  %34 = getelementptr inbounds %struct.bt_mesh_subnet_keys, %struct.bt_mesh_subnet_keys* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.bt_mesh_subnet_keys*, %struct.bt_mesh_subnet_keys** %4, align 8
  %38 = getelementptr inbounds %struct.bt_mesh_subnet_keys, %struct.bt_mesh_subnet_keys* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 4
  %41 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  %42 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bt_mesh_beacon_auth(i32 %35, i32 %36, i32 %39, i32 %40, i32 %43)
  ret i32 %44
}

declare dso_local i32 @bt_mesh_net_flags(%struct.bt_mesh_subnet*) #1

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @bt_mesh_beacon_auth(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
