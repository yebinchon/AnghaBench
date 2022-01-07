; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_read_remote_device_name.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_read_remote_device_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64* }

@.str = private unnamed_addr constant [31 x i8] c"bta_dm_read_remote_device_name\00", align 1
@bta_dm_search_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@bta_dm_remname_cback = common dso_local global i64 0, align 8
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"bta_dm_read_remote_device_name: BTM_ReadRemoteDeviceName is started\00", align 1
@TRUE = common dso_local global i32 0, align 4
@BTM_BUSY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"bta_dm_read_remote_device_name: BTM_ReadRemoteDeviceName is busy\00", align 1
@bta_dm_service_search_remname_cback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"bta_dm_read_remote_device_name: BTM_ReadRemoteDeviceName returns 0x%02X\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bta_dm_read_remote_device_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bta_dm_read_remote_device_name(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_dm_search_cb, i32 0, i32 0), align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @bdcpy(i32 %8, i32 %9)
  %11 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_dm_search_cb, i32 0, i32 1), align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_dm_search_cb, i32 0, i32 0), align 8
  %14 = load i64, i64* @bta_dm_remname_cback, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @BTM_ReadRemoteDeviceName(i32 %13, i32* %15, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @BTM_CMD_STARTED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @BTM_BUSY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @BTM_SecAddRmtNameNotifyCallback(i32* @bta_dm_service_search_remname_cback)
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %24
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %28, %21
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*) #1

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i64 @BTM_ReadRemoteDeviceName(i32, i32*, i32) #1

declare dso_local i32 @BTM_SecAddRmtNameNotifyCallback(i32*) #1

declare dso_local i32 @APPL_TRACE_WARNING(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
