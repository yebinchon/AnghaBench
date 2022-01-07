; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_poll_select_kevent_paired_fds.c_reenable_workq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_poll_select_kevent_paired_fds.c_reenable_workq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent_qos_s = type { i32, i32, i32, i32, i32, i32 }

@EV_ENABLE = common dso_local global i32 0, align 4
@EV_UDATA_SPECIFIC = common dso_local global i32 0, align 4
@EV_DISPATCH = common dso_local global i32 0, align 4
@NOTE_LOWAT = common dso_local global i32 0, align 4
@EXPECTED_QOS = common dso_local global i32 0, align 4
@KEVENT_FLAG_WORKQ = common dso_local global i32 0, align 4
@KEVENT_FLAG_ERROR_EVENTS = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"reenable workq in kevent_qos\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @reenable_workq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reenable_workq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.kevent_qos_s], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [1 x %struct.kevent_qos_s], [1 x %struct.kevent_qos_s]* %5, i64 0, i64 0
  %8 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %7, i32 0, i32 0
  %9 = load i32, i32* @EV_ENABLE, align 4
  %10 = load i32, i32* @EV_UDATA_SPECIFIC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @EV_DISPATCH, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 8
  %14 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %7, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %7, i32 0, i32 2
  %16 = load i32, i32* @NOTE_LOWAT, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %7, i32 0, i32 3
  %18 = load i32, i32* @EXPECTED_QOS, align 4
  %19 = call i32 @_pthread_qos_class_encode(i32 %18, i32 0, i32 0)
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %7, i32 0, i32 4
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %7, i32 0, i32 5
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds [1 x %struct.kevent_qos_s], [1 x %struct.kevent_qos_s]* %5, i64 0, i64 0
  %25 = getelementptr inbounds [1 x %struct.kevent_qos_s], [1 x %struct.kevent_qos_s]* %5, i64 0, i64 0
  %26 = load i32, i32* @KEVENT_FLAG_WORKQ, align 4
  %27 = load i32, i32* @KEVENT_FLAG_ERROR_EVENTS, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @kevent_qos(i32 -1, %struct.kevent_qos_s* %24, i32 1, %struct.kevent_qos_s* %25, i32 1, i32* null, i32* null, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @T_QUIET, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_pthread_qos_class_encode(i32, i32, i32) #1

declare dso_local i32 @kevent_qos(i32, %struct.kevent_qos_s*, i32, %struct.kevent_qos_s*, i32, i32*, i32*, i32) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
