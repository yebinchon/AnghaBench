; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_api.c_SMP_SecurityGrant.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_api.c_SMP_SecurityGrant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"SMP_SecurityGrant \00", align 1
@smp_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SMP_BR_STATE_WAIT_APP_RSP = common dso_local global i64 0, align 8
@SMP_SEC_REQUEST_EVT = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@SMP_BR_API_SEC_GRANT_EVT = common dso_local global i32 0, align 4
@SMP_STATE_WAIT_APP_RSP = common dso_local global i64 0, align 8
@SMP_API_SEC_GRANT_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SMP_SecurityGrant(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32 @SMP_TRACE_EVENT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smp_cb, i32 0, i32 4), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smp_cb, i32 0, i32 0), align 8
  %10 = load i64, i64* @SMP_BR_STATE_WAIT_APP_RSP, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smp_cb, i32 0, i32 1), align 8
  %14 = load i64, i64* @SMP_SEC_REQUEST_EVT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smp_cb, i32 0, i32 3), align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @BD_ADDR_LEN, align 4
  %20 = call i64 @memcmp(i32 %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %12, %8
  br label %44

23:                                               ; preds = %16
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smp_cb, i32 0, i32 1), align 8
  %24 = load i32, i32* @SMP_BR_API_SEC_GRANT_EVT, align 4
  %25 = call i32 @smp_br_state_machine_event(%struct.TYPE_4__* @smp_cb, i32 %24, i32* %4)
  br label %44

26:                                               ; preds = %2
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smp_cb, i32 0, i32 2), align 8
  %28 = load i64, i64* @SMP_STATE_WAIT_APP_RSP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smp_cb, i32 0, i32 1), align 8
  %32 = load i64, i64* @SMP_SEC_REQUEST_EVT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smp_cb, i32 0, i32 3), align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @BD_ADDR_LEN, align 4
  %38 = call i64 @memcmp(i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %30, %26
  br label %44

41:                                               ; preds = %34
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smp_cb, i32 0, i32 1), align 8
  %42 = load i32, i32* @SMP_API_SEC_GRANT_EVT, align 4
  %43 = call i32 @smp_sm_event(%struct.TYPE_4__* @smp_cb, i32 %42, i32* %4)
  br label %44

44:                                               ; preds = %41, %40, %23, %22
  ret void
}

declare dso_local i32 @SMP_TRACE_EVENT(i8*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @smp_br_state_machine_event(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @smp_sm_event(%struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
