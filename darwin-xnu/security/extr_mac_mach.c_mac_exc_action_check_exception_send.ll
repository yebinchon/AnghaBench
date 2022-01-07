; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_mach.c_mac_exc_action_check_exception_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_mach.c_mac_exc_action_check_exception_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32 }
%struct.exception_action = type { i32 }
%struct.proc = type { i32 }
%struct.label = type { i32 }

@.str = private unnamed_addr constant [69 x i8] c"mac_exc_action_check_exception_send: no exc_action label for process\00", align 1
@EPERM = common dso_local global i32 0, align 4
@exc_action_check_exception_send = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_exc_action_check_exception_send(%struct.task* %0, %struct.exception_action* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task*, align 8
  %5 = alloca %struct.exception_action*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca %struct.label*, align 8
  store %struct.task* %0, %struct.task** %4, align 8
  store %struct.exception_action* %1, %struct.exception_action** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.task*, %struct.task** %4, align 8
  %11 = call %struct.proc* @get_bsdtask_info(%struct.task* %10)
  store %struct.proc* %11, %struct.proc** %7, align 8
  store %struct.label* null, %struct.label** %8, align 8
  store %struct.label* null, %struct.label** %9, align 8
  %12 = load %struct.proc*, %struct.proc** %7, align 8
  %13 = icmp ne %struct.proc* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.proc*, %struct.proc** %7, align 8
  %16 = call %struct.label* @mac_exc_create_label_for_proc(%struct.proc* %15)
  store %struct.label* %16, %struct.label** %8, align 8
  store %struct.label* %16, %struct.label** %9, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.task*, %struct.task** %4, align 8
  %19 = call %struct.label* @get_task_crash_label(%struct.task* %18)
  store %struct.label* %19, %struct.label** %9, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.label*, %struct.label** %9, align 8
  %22 = icmp eq %struct.label* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = call i32 @MAC_MACH_UNEXPECTED(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EPERM, align 4
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %20
  %27 = load i32, i32* @exc_action_check_exception_send, align 4
  %28 = load %struct.label*, %struct.label** %9, align 8
  %29 = load %struct.exception_action*, %struct.exception_action** %5, align 8
  %30 = load %struct.exception_action*, %struct.exception_action** %5, align 8
  %31 = getelementptr inbounds %struct.exception_action, %struct.exception_action* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @MAC_CHECK(i32 %27, %struct.label* %28, %struct.exception_action* %29, i32 %32)
  %34 = load %struct.label*, %struct.label** %8, align 8
  %35 = icmp ne %struct.label* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load %struct.label*, %struct.label** %8, align 8
  %38 = call i32 @mac_exc_free_label(%struct.label* %37)
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %23
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.proc* @get_bsdtask_info(%struct.task*) #1

declare dso_local %struct.label* @mac_exc_create_label_for_proc(%struct.proc*) #1

declare dso_local %struct.label* @get_task_crash_label(%struct.task*) #1

declare dso_local i32 @MAC_MACH_UNEXPECTED(i8*) #1

declare dso_local i32 @MAC_CHECK(i32, %struct.label*, %struct.exception_action*, i32) #1

declare dso_local i32 @mac_exc_free_label(%struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
