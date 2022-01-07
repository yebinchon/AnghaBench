; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_health_srv.c_health_get_fault_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_health_srv.c_health_get_fault_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { %struct.bt_mesh_health_srv* }
%struct.bt_mesh_health_srv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64* }
%struct.net_buf_simple = type { i32 }

@HEALTH_NO_FAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.net_buf_simple*, i32)* @health_get_fault_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @health_get_fault_value(%struct.bt_mesh_model* %0, %struct.net_buf_simple* %1, i32 %2) #0 {
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca %struct.net_buf_simple*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bt_mesh_health_srv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %4, align 8
  store %struct.net_buf_simple* %1, %struct.net_buf_simple** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %12 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %11, i32 0, i32 0
  %13 = load %struct.bt_mesh_health_srv*, %struct.bt_mesh_health_srv** %12, align 8
  store %struct.bt_mesh_health_srv* %13, %struct.bt_mesh_health_srv** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.bt_mesh_health_srv*, %struct.bt_mesh_health_srv** %7, align 8
  %18 = getelementptr inbounds %struct.bt_mesh_health_srv, %struct.bt_mesh_health_srv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = call i64 @ARRAY_SIZE(i64* %20)
  br label %28

22:                                               ; preds = %3
  %23 = load %struct.bt_mesh_health_srv*, %struct.bt_mesh_health_srv** %7, align 8
  %24 = getelementptr inbounds %struct.bt_mesh_health_srv, %struct.bt_mesh_health_srv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = call i64 @ARRAY_SIZE(i64* %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = phi i64 [ %21, %16 ], [ %27, %22 ]
  store i64 %29, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %68, %28
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load %struct.net_buf_simple*, %struct.net_buf_simple** %5, align 8
  %36 = call i64 @net_buf_simple_tailroom(%struct.net_buf_simple* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %71

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.bt_mesh_health_srv*, %struct.bt_mesh_health_srv** %7, align 8
  %44 = getelementptr inbounds %struct.bt_mesh_health_srv, %struct.bt_mesh_health_srv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  br label %58

50:                                               ; preds = %39
  %51 = load %struct.bt_mesh_health_srv*, %struct.bt_mesh_health_srv** %7, align 8
  %52 = getelementptr inbounds %struct.bt_mesh_health_srv, %struct.bt_mesh_health_srv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  br label %58

58:                                               ; preds = %50, %42
  %59 = phi i64 [ %49, %42 ], [ %57, %50 ]
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @HEALTH_NO_FAULT, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.net_buf_simple*, %struct.net_buf_simple** %5, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @net_buf_simple_add_u8(%struct.net_buf_simple* %64, i64 %65)
  br label %67

67:                                               ; preds = %63, %58
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %30

71:                                               ; preds = %38, %30
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @net_buf_simple_tailroom(%struct.net_buf_simple*) #1

declare dso_local i32 @net_buf_simple_add_u8(%struct.net_buf_simple*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
