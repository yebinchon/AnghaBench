; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_8__, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@gatt_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@BT_TRACE_LEVEL_NONE = common dso_local global i32 0, align 4
@GATT_DEF_BLE_MTU_SIZE = common dso_local global i32 0, align 4
@QUEUE_SIZE_MAX = common dso_local global i32 0, align 4
@L2CAP_FCR_BASIC_MODE = common dso_local global i32 0, align 4
@gatt_le_connect_cback = common dso_local global i32 0, align 4
@gatt_le_data_ind = common dso_local global i32 0, align 4
@gatt_le_cong_cback = common dso_local global i32 0, align 4
@L2CAP_ATT_CID = common dso_local global i32 0, align 4
@BT_PSM_ATT = common dso_local global i32 0, align 4
@dyn_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ATT Dynamic Registration failed\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BTM_SEC_SERVICE_ATT = common dso_local global i32 0, align 4
@BTM_SEC_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GATT_GATT_START_HANDLE = common dso_local global i32 0, align 4
@GATT_GAP_START_HANDLE = common dso_local global i32 0, align 4
@GATT_APP_START_HANDLE = common dso_local global i32 0, align 4
@GATT_MAX_MTU_SIZE = common dso_local global i32 0, align 4
@gatt_default = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GATT_INITIAL_TRACE_LEVEL = common dso_local global i32 0, align 4
@gatt_cb_ptr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_init() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = call i32 @memset(%struct.TYPE_10__* @gatt_cb, i32 0, i32 4)
  %3 = call i32 @memset(%struct.TYPE_10__* %1, i32 0, i32 88)
  %4 = load i32, i32* @BT_TRACE_LEVEL_NONE, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gatt_cb, i32 0, i32 10), align 4
  %5 = load i32, i32* @GATT_DEF_BLE_MTU_SIZE, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gatt_cb, i32 0, i32 9), align 8
  %6 = load i32, i32* @QUEUE_SIZE_MAX, align 4
  %7 = call i8* @fixed_queue_new(i32 %6)
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gatt_cb, i32 0, i32 8), align 8
  %8 = load i32, i32* @QUEUE_SIZE_MAX, align 4
  %9 = call i8* @fixed_queue_new(i32 %8)
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gatt_cb, i32 0, i32 7), align 8
  %10 = load i32, i32* @QUEUE_SIZE_MAX, align 4
  %11 = call i8* @fixed_queue_new(i32 %10)
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gatt_cb, i32 0, i32 6), align 8
  %12 = load i32, i32* @L2CAP_FCR_BASIC_MODE, align 4
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 255, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32 2000, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  store i32 12000, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  store i32 670, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 4
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @gatt_le_connect_cback, align 4
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 4
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @gatt_le_data_ind, align 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @gatt_le_cong_cback, align 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i32 65535, i32* %31, align 8
  %32 = load i32, i32* @L2CAP_ATT_CID, align 4
  %33 = call i32 @L2CA_RegisterFixedChannel(i32 %32, %struct.TYPE_10__* %1)
  %34 = load i32, i32* @BT_PSM_ATT, align 4
  %35 = call i32 @L2CA_Register(i32 %34, i32* @dyn_info)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %0
  %38 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %0
  %40 = load i32, i32* @TRUE, align 4
  %41 = load i32, i32* @BTM_SEC_SERVICE_ATT, align 4
  %42 = load i32, i32* @BTM_SEC_NONE, align 4
  %43 = load i32, i32* @BT_PSM_ATT, align 4
  %44 = call i32 @BTM_SetSecurityLevel(i32 %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42, i32 %43, i32 0, i32 0)
  %45 = load i32, i32* @FALSE, align 4
  %46 = load i32, i32* @BTM_SEC_SERVICE_ATT, align 4
  %47 = load i32, i32* @BTM_SEC_NONE, align 4
  %48 = load i32, i32* @BT_PSM_ATT, align 4
  %49 = call i32 @BTM_SetSecurityLevel(i32 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 %48, i32 0, i32 0)
  %50 = load i32, i32* @GATT_GATT_START_HANDLE, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gatt_cb, i32 0, i32 1, i32 2), align 4
  %51 = load i32, i32* @GATT_GAP_START_HANDLE, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gatt_cb, i32 0, i32 1, i32 1), align 4
  %52 = load i32, i32* @GATT_APP_START_HANDLE, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gatt_cb, i32 0, i32 1, i32 0), align 4
  %53 = call i32 (...) @gatt_profile_db_init()
  %54 = load i32, i32* @GATT_MAX_MTU_SIZE, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gatt_default, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @fixed_queue_new(i32) #1

declare dso_local i32 @L2CA_RegisterFixedChannel(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @L2CA_Register(i32, i32*) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i32 @BTM_SetSecurityLevel(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gatt_profile_db_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
