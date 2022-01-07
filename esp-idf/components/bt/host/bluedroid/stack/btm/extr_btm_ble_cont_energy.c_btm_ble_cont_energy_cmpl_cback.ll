; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_cont_energy.c_btm_ble_cont_energy_cmpl_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_cont_energy.c_btm_ble_cont_energy_cmpl_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i32, i32, i32, i32)* }
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [48 x i8] c"wrong length for btm_ble_cont_energy_cmpl_cback\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"energy_info status=%d,tx_t=%u, rx_t=%u, ener_used=%u, idle_t=%u\00", align 1
@ble_energy_info_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_cont_energy_cmpl_cback(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 17
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %53

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @STREAM_TO_UINT8(i32 %21, i32* %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @STREAM_TO_UINT32(i32 %24, i32* %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @STREAM_TO_UINT32(i32 %27, i32* %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @STREAM_TO_UINT32(i32 %30, i32* %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @STREAM_TO_UINT32(i32 %33, i32* %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_energy_info_cb, i32 0, i32 0), align 8
  %43 = icmp ne i32 (i32, i32, i32, i32, i32)* null, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %20
  %45 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ble_energy_info_cb, i32 0, i32 0), align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 %45(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %20
  br label %53

53:                                               ; preds = %52, %18
  ret void
}

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i32 @STREAM_TO_UINT8(i32, i32*) #1

declare dso_local i32 @STREAM_TO_UINT32(i32, i32*) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
