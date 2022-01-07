; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_seg_tx_lookup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_seg_tx_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg_tx = type { i32, i32, i64, i64 }

@seg_tx = common dso_local global %struct.seg_tx* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.seg_tx* (i32, i64, i32)* @seg_tx_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.seg_tx* @seg_tx_lookup(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.seg_tx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.seg_tx*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %53, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.seg_tx*, %struct.seg_tx** @seg_tx, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.seg_tx* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %56

15:                                               ; preds = %10
  %16 = load %struct.seg_tx*, %struct.seg_tx** @seg_tx, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %16, i64 %18
  store %struct.seg_tx* %19, %struct.seg_tx** %8, align 8
  %20 = load %struct.seg_tx*, %struct.seg_tx** %8, align 8
  %21 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 8191
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %53

27:                                               ; preds = %15
  %28 = load %struct.seg_tx*, %struct.seg_tx** %8, align 8
  %29 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load %struct.seg_tx*, %struct.seg_tx** %8, align 8
  store %struct.seg_tx* %34, %struct.seg_tx** %4, align 8
  br label %57

35:                                               ; preds = %27
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load %struct.seg_tx*, %struct.seg_tx** %8, align 8
  %40 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.seg_tx*, %struct.seg_tx** %8, align 8
  %43 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.seg_tx*, %struct.seg_tx** %8, align 8
  %50 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.seg_tx*, %struct.seg_tx** %8, align 8
  store %struct.seg_tx* %51, %struct.seg_tx** %4, align 8
  br label %57

52:                                               ; preds = %38, %35
  br label %53

53:                                               ; preds = %52, %26
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %10

56:                                               ; preds = %10
  store %struct.seg_tx* null, %struct.seg_tx** %4, align 8
  br label %57

57:                                               ; preds = %56, %47, %33
  %58 = load %struct.seg_tx*, %struct.seg_tx** %4, align 8
  ret %struct.seg_tx* %58
}

declare dso_local i32 @ARRAY_SIZE(%struct.seg_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
