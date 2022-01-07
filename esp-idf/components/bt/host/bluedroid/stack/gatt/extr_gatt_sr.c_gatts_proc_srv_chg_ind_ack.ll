; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_proc_srv_chg_ind_ack.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_proc_srv_chg_ind_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (i32, %struct.TYPE_12__*, i32*)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"gatts_proc_srv_chg_ind_ack\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"NV update set srv chg = FALSE\00", align 1
@FALSE = common dso_local global i32 0, align 4
@gatt_cb = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GATTS_SRV_CHG_CMD_UPDATE_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @gatts_proc_srv_chg_ind_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gatts_proc_srv_chg_ind_ack(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  %5 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_13__* @gatt_is_bda_in_the_srv_chg_clt_list(i32 %8)
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %4, align 8
  %10 = icmp ne %struct.TYPE_13__* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @FALSE, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = call i32 @memcpy(i32* %16, %struct.TYPE_13__* %17, i32 4)
  %19 = load i32 (i32, %struct.TYPE_12__*, i32*)*, i32 (i32, %struct.TYPE_12__*, i32*)** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gatt_cb, i32 0, i32 0, i32 0), align 8
  %20 = icmp ne i32 (i32, %struct.TYPE_12__*, i32*)* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load i32 (i32, %struct.TYPE_12__*, i32*)*, i32 (i32, %struct.TYPE_12__*, i32*)** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gatt_cb, i32 0, i32 0, i32 0), align 8
  %23 = load i32, i32* @GATTS_SRV_CHG_CMD_UPDATE_CLIENT, align 4
  %24 = call i32 %22(i32 %23, %struct.TYPE_12__* %3, i32* null)
  br label %25

25:                                               ; preds = %21, %11
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

declare dso_local %struct.TYPE_13__* @gatt_is_bda_in_the_srv_chg_clt_list(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
