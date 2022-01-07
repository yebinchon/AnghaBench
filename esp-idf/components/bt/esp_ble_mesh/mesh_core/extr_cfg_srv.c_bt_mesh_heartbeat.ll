; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_bt_mesh_heartbeat.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_bt_mesh_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_cfg_srv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32 (i32, i64)*, i32, i32 }

@conf = common dso_local global %struct.bt_mesh_cfg_srv* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"No configuaration server context available\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"No subscription for received heartbeat\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Heartbeat subscription period expired\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"src 0x%04x dst 0x%04x hops %u min %u max %u count %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_mesh_heartbeat(i64 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.bt_mesh_cfg_srv*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** @conf, align 8
  store %struct.bt_mesh_cfg_srv* %10, %struct.bt_mesh_cfg_srv** %9, align 8
  %11 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %12 = icmp ne %struct.bt_mesh_cfg_srv* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = call i32 @BT_WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %100

15:                                               ; preds = %4
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %18 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %16, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %25 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22, %15
  %30 = call i32 @BT_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %100

31:                                               ; preds = %22
  %32 = call i64 (...) @k_uptime_get()
  %33 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %34 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %32, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @BT_WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %100

40:                                               ; preds = %31
  %41 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %42 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @MIN(i32 %44, i32 %45)
  %47 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %48 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 6
  store i32 %46, i32* %49, align 4
  %50 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %51 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @MAX(i32 %53, i32 %54)
  %56 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %57 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  store i32 %55, i32* %58, align 8
  %59 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %60 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %62, 65535
  br i1 %63, label %64, label %70

64:                                               ; preds = %40
  %65 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %66 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %40
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %75 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %79 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %83 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @BT_DBG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %71, i64 %72, i32 %73, i32 %77, i32 %81, i32 %85)
  %87 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %88 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i32 (i32, i64)*, i32 (i32, i64)** %89, align 8
  %91 = icmp ne i32 (i32, i64)* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %70
  %93 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %9, align 8
  %94 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  %96 = load i32 (i32, i64)*, i32 (i32, i64)** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i64, i64* %8, align 8
  %99 = call i32 %96(i32 %97, i64 %98)
  br label %100

100:                                              ; preds = %13, %29, %38, %92, %70
  ret void
}

declare dso_local i32 @BT_WARN(i8*) #1

declare dso_local i64 @k_uptime_get(...) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, i64, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
