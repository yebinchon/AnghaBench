; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_kernel_trigger.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_kernel_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netagent_wrapper = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@netagent_lock = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Requested netagent for kernel trigger could not be found\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NETAGENT_FLAG_KERNEL_ACTIVATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Requested netagent for kernel trigger is not kernel activated\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NETAGENT_FLAG_ACTIVE = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Requested netagent for kernel trigger is already active\00", align 1
@NETAGENT_TRIGGER_FLAG_KERNEL = common dso_local global i32 0, align 4
@NETAGENT_MESSAGE_TYPE_TRIGGER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Triggered netagent from kernel (error %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netagent_kernel_trigger(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.netagent_wrapper*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = call i32 @lck_rw_lock_shared(i32* @netagent_lock)
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.netagent_wrapper* @netagent_find_agent_with_uuid(i32 %6)
  store %struct.netagent_wrapper* %7, %struct.netagent_wrapper** %4, align 8
  %8 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %9 = icmp eq %struct.netagent_wrapper* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @LOG_ERR, align 4
  %12 = call i32 @NETAGENTLOG0(i32 %11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOENT, align 4
  store i32 %13, i32* %3, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %16 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NETAGENT_FLAG_KERNEL_ACTIVATED, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i32, i32* @LOG_ERR, align 4
  %24 = call i32 @NETAGENTLOG0(i32 %23, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %14
  %27 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %28 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NETAGENT_FLAG_ACTIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @LOG_INFO, align 4
  %36 = call i32 @NETAGENTLOG0(i32 %35, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

37:                                               ; preds = %26
  %38 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %39 = call i32 (...) @current_proc()
  %40 = load i32, i32* @NETAGENT_TRIGGER_FLAG_KERNEL, align 4
  %41 = load i32, i32* @NETAGENT_MESSAGE_TYPE_TRIGGER, align 4
  %42 = call i32 @netagent_send_trigger(%struct.netagent_wrapper* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @LOG_ERR, align 4
  br label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @LOG_INFO, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @NETAGENTLOG(i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %34, %22, %10
  %54 = call i32 @lck_rw_done(i32* @netagent_lock)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local %struct.netagent_wrapper* @netagent_find_agent_with_uuid(i32) #1

declare dso_local i32 @NETAGENTLOG0(i32, i8*) #1

declare dso_local i32 @netagent_send_trigger(%struct.netagent_wrapper*, i32, i32, i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @NETAGENTLOG(i32, i8*, i32) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
