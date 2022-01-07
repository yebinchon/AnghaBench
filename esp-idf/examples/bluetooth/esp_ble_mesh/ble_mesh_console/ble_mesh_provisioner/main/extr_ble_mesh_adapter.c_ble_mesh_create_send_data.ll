; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_adapter.c_ble_mesh_create_send_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_adapter.c_ble_mesh_create_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VENDOR_MODEL_PERF_OPERATION_TYPE_GET = common dso_local global i8 0, align 1
@VENDOR_MODEL_PERF_OPERATION_TYPE_SET = common dso_local global i8 0, align 1
@VENDOR_MODEL_PERF_OPERATION_TYPE_SET_UNACK = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ble_mesh_create_send_data(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = ashr i32 %10, 8
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %12, i8* %14, align 1
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 255
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %17, i8* %19, align 1
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %33 [
    i32 130, label %21
    i32 129, label %25
    i32 128, label %29
  ]

21:                                               ; preds = %4
  %22 = load i8, i8* @VENDOR_MODEL_PERF_OPERATION_TYPE_GET, align 1
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  store i8 %22, i8* %24, align 1
  br label %33

25:                                               ; preds = %4
  %26 = load i8, i8* @VENDOR_MODEL_PERF_OPERATION_TYPE_SET, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  store i8 %26, i8* %28, align 1
  br label %33

29:                                               ; preds = %4
  %30 = load i8, i8* @VENDOR_MODEL_PERF_OPERATION_TYPE_SET_UNACK, align 1
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  store i8 %30, i8* %32, align 1
  br label %33

33:                                               ; preds = %4, %29, %25, %21
  store i32 3, i32* %9, align 4
  br label %34

34:                                               ; preds = %45, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 %40, i8* %44, align 1
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %34

48:                                               ; preds = %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
