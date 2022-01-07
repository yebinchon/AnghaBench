; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.h_send_cb_finalize.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.h_send_cb_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_send_cb = type { i32 (i32, i8*)*, i32 (i32, i32, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_send_cb*, i8*)* @send_cb_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_cb_finalize(%struct.bt_mesh_send_cb* %0, i8* %1) #0 {
  %3 = alloca %struct.bt_mesh_send_cb*, align 8
  %4 = alloca i8*, align 8
  store %struct.bt_mesh_send_cb* %0, %struct.bt_mesh_send_cb** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.bt_mesh_send_cb*, %struct.bt_mesh_send_cb** %3, align 8
  %6 = icmp ne %struct.bt_mesh_send_cb* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %30

8:                                                ; preds = %2
  %9 = load %struct.bt_mesh_send_cb*, %struct.bt_mesh_send_cb** %3, align 8
  %10 = getelementptr inbounds %struct.bt_mesh_send_cb, %struct.bt_mesh_send_cb* %9, i32 0, i32 1
  %11 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %10, align 8
  %12 = icmp ne i32 (i32, i32, i8*)* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.bt_mesh_send_cb*, %struct.bt_mesh_send_cb** %3, align 8
  %15 = getelementptr inbounds %struct.bt_mesh_send_cb, %struct.bt_mesh_send_cb* %14, i32 0, i32 1
  %16 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 %16(i32 0, i32 0, i8* %17)
  br label %19

19:                                               ; preds = %13, %8
  %20 = load %struct.bt_mesh_send_cb*, %struct.bt_mesh_send_cb** %3, align 8
  %21 = getelementptr inbounds %struct.bt_mesh_send_cb, %struct.bt_mesh_send_cb* %20, i32 0, i32 0
  %22 = load i32 (i32, i8*)*, i32 (i32, i8*)** %21, align 8
  %23 = icmp ne i32 (i32, i8*)* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.bt_mesh_send_cb*, %struct.bt_mesh_send_cb** %3, align 8
  %26 = getelementptr inbounds %struct.bt_mesh_send_cb, %struct.bt_mesh_send_cb* %25, i32 0, i32 0
  %27 = load i32 (i32, i8*)*, i32 (i32, i8*)** %26, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 %27(i32 0, i8* %28)
  br label %30

30:                                               ; preds = %7, %24, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
