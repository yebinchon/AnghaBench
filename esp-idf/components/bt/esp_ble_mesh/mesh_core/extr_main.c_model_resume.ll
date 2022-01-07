; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_main.c_model_resume.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_main.c_model_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.bt_mesh_elem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.bt_mesh_elem*, i32, i32, i8*)* @model_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @model_resume(%struct.bt_mesh_model* %0, %struct.bt_mesh_elem* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.bt_mesh_model*, align 8
  %7 = alloca %struct.bt_mesh_elem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %6, align 8
  store %struct.bt_mesh_elem* %1, %struct.bt_mesh_elem** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %13 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %5
  %17 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %18 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %25 = call i64 @bt_mesh_model_pub_period_get(%struct.bt_mesh_model* %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %30 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @k_delayed_work_submit(i32* %32, i64 %33)
  br label %35

35:                                               ; preds = %28, %23
  br label %36

36:                                               ; preds = %35, %16, %5
  ret void
}

declare dso_local i64 @bt_mesh_model_pub_period_get(%struct.bt_mesh_model*) #1

declare dso_local i32 @k_delayed_work_submit(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
