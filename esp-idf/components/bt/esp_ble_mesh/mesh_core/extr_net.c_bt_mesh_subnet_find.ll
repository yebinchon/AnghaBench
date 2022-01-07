; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_subnet_find.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_subnet_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.bt_mesh_subnet* }
%struct.bt_mesh_subnet = type { i64, i64, i32* }

@bt_mesh = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BLE_MESH_KEY_UNUSED = common dso_local global i64 0, align 8
@BLE_MESH_KR_NORMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bt_mesh_subnet* @bt_mesh_subnet_find(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.bt_mesh_subnet*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bt_mesh_subnet*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %66, %5
  %15 = load i32, i32* %12, align 4
  %16 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 8
  %17 = call i32 @ARRAY_SIZE(%struct.bt_mesh_subnet* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %14
  %20 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %20, i64 %22
  store %struct.bt_mesh_subnet* %23, %struct.bt_mesh_subnet** %13, align 8
  %24 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %13, align 8
  %25 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BLE_MESH_KEY_UNUSED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %66

30:                                               ; preds = %19
  %31 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %13, align 8
  %32 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = call i64 @auth_match(i32* %34, i32* %35, i32 %36, i32 %37, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32*, i32** %11, align 8
  store i32 0, i32* %42, align 4
  %43 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %13, align 8
  store %struct.bt_mesh_subnet* %43, %struct.bt_mesh_subnet** %6, align 8
  br label %70

44:                                               ; preds = %30
  %45 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %13, align 8
  %46 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BLE_MESH_KR_NORMAL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %66

51:                                               ; preds = %44
  %52 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %13, align 8
  %53 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = call i64 @auth_match(i32* %55, i32* %56, i32 %57, i32 %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32*, i32** %11, align 8
  store i32 1, i32* %63, align 4
  %64 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %13, align 8
  store %struct.bt_mesh_subnet* %64, %struct.bt_mesh_subnet** %6, align 8
  br label %70

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %50, %29
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %14

69:                                               ; preds = %14
  store %struct.bt_mesh_subnet* null, %struct.bt_mesh_subnet** %6, align 8
  br label %70

70:                                               ; preds = %69, %62, %41
  %71 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %6, align 8
  ret %struct.bt_mesh_subnet* %71
}

declare dso_local i32 @ARRAY_SIZE(%struct.bt_mesh_subnet*) #1

declare dso_local i64 @auth_match(i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
