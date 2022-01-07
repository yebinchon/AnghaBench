; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_l2cif_connect_ind_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_l2cif_connect_ind_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@L2CAP_CONN_OK = common dso_local global i64 0, align 8
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Connection indication cid = %d\00", align 1
@L2CAP_CONN_NO_RESOURCES = common dso_local global i64 0, align 8
@GATT_CH_CFG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@gatt_default = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64)* @gatt_l2cif_connect_ind_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gatt_l2cif_connect_ind_cback(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* @L2CAP_CONN_OK, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %15 = call %struct.TYPE_10__* @gatt_find_tcb_by_addr(i32 %13, i32 %14)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @UNUSED(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %25 = call %struct.TYPE_10__* @gatt_allocate_tcb_by_bdaddr(i32 %23, i32 %24)
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %11, align 8
  %26 = icmp eq %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @L2CAP_CONN_NO_RESOURCES, align 8
  store i64 %28, i64* %9, align 8
  br label %33

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %27
  br label %36

34:                                               ; preds = %4
  %35 = load i64, i64* @L2CAP_CONN_NO_RESOURCES, align 8
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @L2CA_ConnectRsp(i32 %37, i64 %38, i32 %39, i64 %40, i32 0)
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @L2CAP_CONN_OK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = load i32, i32* @GATT_CH_CFG, align 4
  %48 = call i32 @gatt_set_ch_state(%struct.TYPE_10__* %46, i32 %47)
  %49 = call i32 @memset(%struct.TYPE_9__* %10, i32 0, i32 8)
  %50 = load i32, i32* @TRUE, align 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gatt_default, i32 0, i32 0), align 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @L2CA_ConfigReq(i32 %54, %struct.TYPE_9__* %10)
  br label %56

56:                                               ; preds = %45, %36
  ret void
}

declare dso_local %struct.TYPE_10__* @gatt_find_tcb_by_addr(i32, i32) #1

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*, i32) #1

declare dso_local %struct.TYPE_10__* @gatt_allocate_tcb_by_bdaddr(i32, i32) #1

declare dso_local i32 @L2CA_ConnectRsp(i32, i64, i32, i64, i32) #1

declare dso_local i32 @gatt_set_ch_state(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @L2CA_ConfigReq(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
