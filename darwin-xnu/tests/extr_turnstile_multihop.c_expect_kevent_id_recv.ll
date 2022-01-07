; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_turnstile_multihop.c_expect_kevent_id_recv.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_turnstile_multihop.c_expect_kevent_id_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent_qos_s = type { i32, i32, i32, i32, i32, i32, i32 }

@T_QUIET = common dso_local global i32 0, align 4
@worker_cb = common dso_local global i32 0, align 4
@event_cb = common dso_local global i32 0, align 4
@workloop_cb_test_intransit = common dso_local global i64 0, align 8
@EV_ADD = common dso_local global i32 0, align 4
@EV_UDATA_SPECIFIC = common dso_local global i32 0, align 4
@EV_DISPATCH = common dso_local global i32 0, align 4
@EV_VANISHED = common dso_local global i32 0, align 4
@MACH_RCV_MSG = common dso_local global i32 0, align 4
@MACH_RCV_LARGE = common dso_local global i32 0, align 4
@MACH_RCV_LARGE_IDENTITY = common dso_local global i32 0, align 4
@MACH_RCV_TRAILER_CTX = common dso_local global i32 0, align 4
@MACH_MSG_TRAILER_FORMAT_0 = common dso_local global i32 0, align 4
@MACH_RCV_VOUCHER = common dso_local global i32 0, align 4
@QOS_CLASS_MAINTENANCE = common dso_local global i32 0, align 4
@EVFILT_MACHPORT = common dso_local global i32 0, align 4
@KEVENT_FLAG_WORKLOOP = common dso_local global i32 0, align 4
@KEVENT_FLAG_ERROR_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"kevent_id\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"no errors returned from kevent_id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @expect_kevent_id_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expect_kevent_id_recv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.kevent_qos_s], align 16
  %5 = alloca [1 x %struct.kevent_qos_s], align 16
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @T_QUIET, align 4
  %7 = load i32, i32* @worker_cb, align 4
  %8 = load i32, i32* @event_cb, align 4
  %9 = load i64, i64* @workloop_cb_test_intransit, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @_pthread_workqueue_init_with_workloop(i32 %7, i32 %8, i32 %10, i32 0, i32 0)
  %12 = call i32 @T_ASSERT_POSIX_ZERO(i32 %11, i32* null)
  %13 = getelementptr inbounds [1 x %struct.kevent_qos_s], [1 x %struct.kevent_qos_s]* %4, i64 0, i64 0
  %14 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %13, i32 0, i32 0
  %15 = load i32, i32* @EV_ADD, align 4
  %16 = load i32, i32* @EV_UDATA_SPECIFIC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @EV_DISPATCH, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @EV_VANISHED, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %14, align 4
  %22 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %13, i32 0, i32 1
  %23 = load i32, i32* @MACH_RCV_MSG, align 4
  %24 = load i32, i32* @MACH_RCV_LARGE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MACH_RCV_LARGE_IDENTITY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MACH_RCV_TRAILER_CTX, align 4
  %29 = call i32 @MACH_RCV_TRAILER_ELEMENTS(i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* @MACH_MSG_TRAILER_FORMAT_0, align 4
  %32 = call i32 @MACH_RCV_TRAILER_TYPE(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* @MACH_RCV_VOUCHER, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %22, align 4
  %36 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %13, i32 0, i32 2
  store i32 1, i32* %36, align 4
  %37 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %13, i32 0, i32 3
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %13, i32 0, i32 4
  %39 = load i32, i32* @QOS_CLASS_MAINTENANCE, align 4
  %40 = call i32 @_pthread_qos_class_encode(i32 %39, i32 0, i32 0)
  store i32 %40, i32* %38, align 4
  %41 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %13, i32 0, i32 5
  %42 = load i32, i32* @EVFILT_MACHPORT, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %13, i32 0, i32 6
  %44 = load i32, i32* %2, align 4
  store i32 %44, i32* %43, align 4
  %45 = bitcast [1 x %struct.kevent_qos_s]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %45, i8 0, i64 28, i1 false)
  %46 = getelementptr inbounds [1 x %struct.kevent_qos_s], [1 x %struct.kevent_qos_s]* %4, i64 0, i64 0
  %47 = getelementptr inbounds [1 x %struct.kevent_qos_s], [1 x %struct.kevent_qos_s]* %5, i64 0, i64 0
  %48 = load i32, i32* @KEVENT_FLAG_WORKLOOP, align 4
  %49 = load i32, i32* @KEVENT_FLAG_ERROR_EVENTS, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @kevent_id(i32 25, %struct.kevent_qos_s* %46, i32 1, %struct.kevent_qos_s* %47, i32 1, i32* null, i32* null, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @T_QUIET, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @T_QUIET, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @T_ASSERT_EQ(i32 %56, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i32*) #1

declare dso_local i32 @_pthread_workqueue_init_with_workloop(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MACH_RCV_TRAILER_ELEMENTS(i32) #1

declare dso_local i32 @MACH_RCV_TRAILER_TYPE(i32) #1

declare dso_local i32 @_pthread_qos_class_encode(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @kevent_id(i32, %struct.kevent_qos_s*, i32, %struct.kevent_qos_s*, i32, i32*, i32*, i32) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

declare dso_local i32 @T_ASSERT_EQ(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
