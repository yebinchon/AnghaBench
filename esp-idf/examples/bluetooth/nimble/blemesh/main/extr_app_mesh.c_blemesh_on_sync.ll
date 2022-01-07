; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blemesh/main/extr_app_mesh.c_blemesh_on_sync.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blemesh/main/extr_app_mesh.c_blemesh_on_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@tag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Bluetooth initialized\0A\00", align 1
@prov = common dso_local global i32 0, align 4
@comp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Initializing mesh failed (err %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Mesh initialized\0A\00", align 1
@CONFIG_SETTINGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Mesh network restored from flash\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @blemesh_on_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blemesh_on_sync() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = load i32, i32* @tag, align 4
  %4 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @ble_hs_id_gen_rnd(i32 1, %struct.TYPE_3__* %2)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ble_hs_id_set_rnd(i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bt_mesh_init(i32 %18, i32* @prov, i32* @comp)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %0
  %23 = load i32, i32* @tag, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %40

26:                                               ; preds = %0
  %27 = load i32, i32* @tag, align 4
  %28 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @CONFIG_SETTINGS, align 4
  %30 = call i64 @IS_ENABLED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 (...) @settings_load()
  br label %34

34:                                               ; preds = %32, %26
  %35 = call i64 (...) @bt_mesh_is_provisioned()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @tag, align 4
  %39 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %22, %37, %34
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @ble_hs_id_gen_rnd(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ble_hs_id_set_rnd(i32) #1

declare dso_local i32 @bt_mesh_init(i32, i32*, i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @settings_load(...) #1

declare dso_local i64 @bt_mesh_is_provisioned(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
