; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_seg_tx_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_seg_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg_tx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seg_tx*, i32)* @seg_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seg_tx_complete(%struct.seg_tx* %0, i32 %1) #0 {
  %3 = alloca %struct.seg_tx*, align 8
  %4 = alloca i32, align 4
  store %struct.seg_tx* %0, %struct.seg_tx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.seg_tx*, %struct.seg_tx** %3, align 8
  %6 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.seg_tx*, %struct.seg_tx** %3, align 8
  %11 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = icmp ne i32 (i32, i32)* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load %struct.seg_tx*, %struct.seg_tx** %3, align 8
  %18 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.seg_tx*, %struct.seg_tx** %3, align 8
  %24 = getelementptr inbounds %struct.seg_tx, %struct.seg_tx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %21(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %16, %9, %2
  %28 = load %struct.seg_tx*, %struct.seg_tx** %3, align 8
  %29 = call i32 @seg_tx_reset(%struct.seg_tx* %28)
  ret void
}

declare dso_local i32 @seg_tx_reset(%struct.seg_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
