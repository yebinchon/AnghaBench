; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps3.c_hidpad_ps3_send_control.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps3.c_hidpad_ps3_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpad_ps3_data = type { i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*, i32)*, i32 (i32, i32, i32, i32*, i32)* }

@hidpad_ps3_send_control.report_buffer = internal global <{ [32 x i32], [18 x i32] }> <{ [32 x i32] [i32 82, i32 1, i32 0, i32 255, i32 0, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 39, i32 16, i32 0, i32 50, i32 255, i32 39, i32 16, i32 0, i32 50, i32 255, i32 39, i32 16, i32 0, i32 50, i32 255, i32 39, i32 16, i32 0, i32 50], [18 x i32] zeroinitializer }>, align 16
@DS3_RUMBLE_REPORT_ID = common dso_local global i32 0, align 4
@HID_REPORT_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidpad_ps3_data*)* @hidpad_ps3_send_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpad_ps3_send_control(%struct.hidpad_ps3_data* %0) #0 {
  %2 = alloca %struct.hidpad_ps3_data*, align 8
  store %struct.hidpad_ps3_data* %0, %struct.hidpad_ps3_data** %2, align 8
  %3 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %2, align 8
  %4 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = srem i32 %5, 4
  %7 = add nsw i32 %6, 1
  %8 = shl i32 1, %7
  store i32 %8, i32* getelementptr inbounds ([50 x i32], [50 x i32]* bitcast (<{ [32 x i32], [18 x i32] }>* @hidpad_ps3_send_control.report_buffer to [50 x i32]*), i64 0, i64 11), align 4
  %9 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %2, align 8
  %10 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 8
  store i32 %14, i32* getelementptr inbounds ([50 x i32], [50 x i32]* bitcast (<{ [32 x i32], [18 x i32] }>* @hidpad_ps3_send_control.report_buffer to [50 x i32]*), i64 0, i64 4), align 16
  %15 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %2, align 8
  %16 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 8
  store i32 %20, i32* getelementptr inbounds ([50 x i32], [50 x i32]* bitcast (<{ [32 x i32], [18 x i32] }>* @hidpad_ps3_send_control.report_buffer to [50 x i32]*), i64 0, i64 6), align 8
  %21 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %2, align 8
  %22 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %24, align 8
  %26 = load %struct.hidpad_ps3_data*, %struct.hidpad_ps3_data** %2, align 8
  %27 = getelementptr inbounds %struct.hidpad_ps3_data, %struct.hidpad_ps3_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %25(i32 %28, i32* getelementptr inbounds ([50 x i32], [50 x i32]* bitcast (<{ [32 x i32], [18 x i32] }>* @hidpad_ps3_send_control.report_buffer to [50 x i32]*), i64 0, i64 0), i32 200)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
