; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_main.c_btm_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_main.c_btm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@btm_cb = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@QUEUE_SIZE_MAX = common dso_local global i32 0, align 4
@BT_TRACE_LEVEL_NONE = common dso_local global i32 0, align 4
@BTM_SEC_MODE_SP = common dso_local global i32 0, align 4
@BTM_INITIAL_TRACE_LEVEL = common dso_local global i32 0, align 4
@btm_cb_ptr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_init() #0 {
  %1 = call i32 @memset(%struct.TYPE_3__* @btm_cb, i32 0, i32 4)
  %2 = load i32, i32* @QUEUE_SIZE_MAX, align 4
  %3 = call i8* @fixed_queue_new(i32 %2)
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btm_cb, i32 0, i32 2), align 8
  %4 = load i32, i32* @QUEUE_SIZE_MAX, align 4
  %5 = call i8* @fixed_queue_new(i32 %4)
  store i8* %5, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btm_cb, i32 0, i32 1), align 8
  %6 = load i32, i32* @BT_TRACE_LEVEL_NONE, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btm_cb, i32 0, i32 0), align 8
  %7 = call i32 (...) @btm_inq_db_init()
  %8 = call i32 (...) @btm_acl_init()
  %9 = load i32, i32* @BTM_SEC_MODE_SP, align 4
  %10 = call i32 @btm_sec_init(i32 %9)
  %11 = call i32 (...) @btm_sco_init()
  %12 = call i32 (...) @btm_dev_init()
  %13 = call i32 (...) @btm_ble_lock_init()
  %14 = call i32 (...) @btm_ble_sem_init()
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i8* @fixed_queue_new(i32) #1

declare dso_local i32 @btm_inq_db_init(...) #1

declare dso_local i32 @btm_acl_init(...) #1

declare dso_local i32 @btm_sec_init(i32) #1

declare dso_local i32 @btm_sco_init(...) #1

declare dso_local i32 @btm_dev_init(...) #1

declare dso_local i32 @btm_ble_lock_init(...) #1

declare dso_local i32 @btm_ble_sem_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
