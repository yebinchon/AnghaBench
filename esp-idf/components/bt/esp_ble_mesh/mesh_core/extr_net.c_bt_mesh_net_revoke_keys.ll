; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_net_revoke_keys.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_net_revoke_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.bt_mesh_app_key* }
%struct.bt_mesh_app_key = type { i64, i32, i32* }
%struct.bt_mesh_subnet = type { i64, i32* }

@.str = private unnamed_addr constant [11 x i8] c"idx 0x%04x\00", align 1
@bt_mesh = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_mesh_net_revoke_keys(%struct.bt_mesh_subnet* %0) #0 {
  %2 = alloca %struct.bt_mesh_subnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bt_mesh_app_key*, align 8
  store %struct.bt_mesh_subnet* %0, %struct.bt_mesh_subnet** %2, align 8
  %5 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  %6 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  %10 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  %14 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = call i32 @memcpy(i32* %12, i32* %16, i32 4)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %53, %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 8
  %21 = call i32 @ARRAY_SIZE(%struct.bt_mesh_app_key* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %24, i64 %26
  store %struct.bt_mesh_app_key* %27, %struct.bt_mesh_app_key** %4, align 8
  %28 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %4, align 8
  %29 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  %32 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %23
  %36 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %4, align 8
  %37 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %23
  br label %53

41:                                               ; preds = %35
  %42 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %4, align 8
  %43 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %4, align 8
  %47 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = call i32 @memcpy(i32* %45, i32* %49, i32 4)
  %51 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %4, align 8
  %52 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %41, %40
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %18

56:                                               ; preds = %18
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bt_mesh_app_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
