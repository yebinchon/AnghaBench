; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_BTE_Init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_BTE_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.timespec = type { i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"BTE_Init()\0A\00", align 1
@btstate = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@acl_wlp_completed = common dso_local global i32 0, align 4
@acl_conn_complete = common dso_local global i32 0, align 4
@bt_alarmhandler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTE_Init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timespec, align 8
  %3 = call i32 @LOG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @memset(%struct.TYPE_3__* @btstate, i32 0, i32 4)
  %5 = call i32 (...) @hci_init()
  %6 = call i32 (...) @l2cap_init()
  %7 = call i32 (...) @physbusif_init()
  %8 = call i32 @LWP_InitQueue(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 1))
  %9 = call i32 @SYS_CreateAlarm(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 0))
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @_CPU_ISR_Disable(i32 %10)
  %12 = call i32 (...) @bte_reset_all()
  %13 = call i32 (...) @hci_reset_all()
  %14 = call i32 (...) @l2cap_reset_all()
  %15 = call i32 (...) @physbusif_reset_all()
  %16 = load i32, i32* @acl_wlp_completed, align 4
  %17 = call i32 @hci_wlp_complete(i32 %16)
  %18 = load i32, i32* @acl_conn_complete, align 4
  %19 = call i32 @hci_connection_complete(i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @_CPU_ISR_Restore(i32 %20)
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 0), align 4
  %25 = load i32, i32* @bt_alarmhandler, align 4
  %26 = call i32 @SYS_SetPeriodicAlarm(i32 %24, %struct.timespec* %2, %struct.timespec* %2, i32 %25, i32* null)
  ret void
}

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @hci_init(...) #1

declare dso_local i32 @l2cap_init(...) #1

declare dso_local i32 @physbusif_init(...) #1

declare dso_local i32 @LWP_InitQueue(i32*) #1

declare dso_local i32 @SYS_CreateAlarm(i32*) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @bte_reset_all(...) #1

declare dso_local i32 @hci_reset_all(...) #1

declare dso_local i32 @l2cap_reset_all(...) #1

declare dso_local i32 @physbusif_reset_all(...) #1

declare dso_local i32 @hci_wlp_complete(i32) #1

declare dso_local i32 @hci_connection_complete(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @SYS_SetPeriodicAlarm(i32, %struct.timespec*, %struct.timespec*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
