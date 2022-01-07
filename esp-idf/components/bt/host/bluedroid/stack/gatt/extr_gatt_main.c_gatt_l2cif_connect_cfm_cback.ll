; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_l2cif_connect_cfm_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_l2cif_connect_cfm_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"gatt_l2c_connect_cfm_cback result: %d ch_state: %d, lcid:0x%x\00", align 1
@GATT_CH_CONN = common dso_local global i64 0, align 8
@L2CAP_CONN_OK = common dso_local global i32 0, align 4
@GATT_CH_CFG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@gatt_default = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GATT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @gatt_l2cif_connect_cfm_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gatt_l2cif_connect_cfm_cback(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_10__* @gatt_find_tcb_by_cid(i32 %7)
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %5, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %54

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = call i64 @gatt_get_ch_state(%struct.TYPE_10__* %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %13, i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = call i64 @gatt_get_ch_state(%struct.TYPE_10__* %18)
  %20 = load i64, i64* @GATT_CH_CONN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %10
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @L2CAP_CONN_OK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = load i32, i32* @GATT_CH_CFG, align 4
  %29 = call i32 @gatt_set_ch_state(%struct.TYPE_10__* %27, i32 %28)
  %30 = call i32 @memset(%struct.TYPE_9__* %6, i32 0, i32 8)
  %31 = load i32, i32* @TRUE, align 4
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gatt_default, i32 0, i32 0), align 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @L2CA_ConfigReq(i32 %35, %struct.TYPE_9__* %6)
  br label %44

37:                                               ; preds = %22
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @GATT_TRANSPORT_BR_EDR, align 4
  %43 = call i32 @gatt_cleanup_upon_disc(i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %26
  br label %53

45:                                               ; preds = %10
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @L2CAP_CONN_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @L2CA_DisconnectReq(i32 %50)
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52, %44
  br label %54

54:                                               ; preds = %53, %2
  ret void
}

declare dso_local %struct.TYPE_10__* @gatt_find_tcb_by_cid(i32) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i32, i64, i32) #1

declare dso_local i64 @gatt_get_ch_state(%struct.TYPE_10__*) #1

declare dso_local i32 @gatt_set_ch_state(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @L2CA_ConfigReq(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @gatt_cleanup_upon_disc(i32, i32, i32) #1

declare dso_local i32 @L2CA_DisconnectReq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
