; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_delete_dev_from_srv_chg_clt_list.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_delete_dev_from_srv_chg_clt_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (i32, %struct.TYPE_8__*, i32*)* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"gatt_delete_dev_from_srv_chg_clt_list\00", align 1
@gatt_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@GATTS_SRV_CHG_CMD_REMOVE_CLIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_delete_dev_from_srv_chg_clt_list(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* %2, align 4
  %7 = call i32* @gatt_is_bda_in_the_srv_chg_clt_list(i32 %6)
  store i32* %7, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gatt_cb, i32 0, i32 1, i32 0), align 8
  %11 = icmp ne i32 (i32, %struct.TYPE_8__*, i32*)* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @BD_ADDR_LEN, align 4
  %18 = call i32 @memcpy(i32 %15, i32 %16, i32 %17)
  %19 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gatt_cb, i32 0, i32 1, i32 0), align 8
  %20 = load i32, i32* @GATTS_SRV_CHG_CMD_REMOVE_CLIENT, align 4
  %21 = call i32 %19(i32 %20, %struct.TYPE_8__* %4, i32* null)
  br label %22

22:                                               ; preds = %12, %9
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gatt_cb, i32 0, i32 0), align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @fixed_queue_try_remove_from_queue(i32 %23, i32* %24)
  %26 = call i32 @osi_free(i32 %25)
  br label %27

27:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

declare dso_local i32* @gatt_is_bda_in_the_srv_chg_clt_list(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @osi_free(i32) #1

declare dso_local i32 @fixed_queue_try_remove_from_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
