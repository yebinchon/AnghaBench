; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_populate_kevent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_populate_kevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent_qos_s = type { i64, i32, i32, i32, i32 }

@EVFILT_MACHPORT = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ENABLE = common dso_local global i32 0, align 4
@EV_UDATA_SPECIFIC = common dso_local global i32 0, align 4
@EV_DISPATCH = common dso_local global i32 0, align 4
@EV_VANISHED = common dso_local global i32 0, align 4
@MACH_RCV_MSG = common dso_local global i32 0, align 4
@MACH_RCV_LARGE = common dso_local global i32 0, align 4
@MACH_RCV_LARGE_IDENTITY = common dso_local global i32 0, align 4
@MACH_RCV_TRAILER_CTX = common dso_local global i32 0, align 4
@MACH_MSG_TRAILER_FORMAT_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kevent_qos_s*, i64)* @populate_kevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_kevent(%struct.kevent_qos_s* %0, i64 %1) #0 {
  %3 = alloca %struct.kevent_qos_s*, align 8
  %4 = alloca i64, align 8
  store %struct.kevent_qos_s* %0, %struct.kevent_qos_s** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %3, align 8
  %6 = call i32 @memset(%struct.kevent_qos_s* %5, i32 0, i32 24)
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %3, align 8
  %9 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load i32, i32* @EVFILT_MACHPORT, align 4
  %11 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %3, align 8
  %12 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @EV_ADD, align 4
  %14 = load i32, i32* @EV_ENABLE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @EV_UDATA_SPECIFIC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @EV_DISPATCH, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @EV_VANISHED, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %3, align 8
  %23 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @MACH_RCV_MSG, align 4
  %25 = load i32, i32* @MACH_RCV_LARGE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MACH_RCV_LARGE_IDENTITY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MACH_RCV_TRAILER_CTX, align 4
  %30 = call i32 @MACH_RCV_TRAILER_ELEMENTS(i32 %29)
  %31 = or i32 %28, %30
  %32 = load i32, i32* @MACH_MSG_TRAILER_FORMAT_0, align 4
  %33 = call i32 @MACH_RCV_TRAILER_TYPE(i32 %32)
  %34 = or i32 %31, %33
  %35 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %3, align 8
  %36 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %3, align 8
  %38 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %37, i32 0, i32 3
  store i32 1, i32* %38, align 8
  ret void
}

declare dso_local i32 @memset(%struct.kevent_qos_s*, i32, i32) #1

declare dso_local i32 @MACH_RCV_TRAILER_ELEMENTS(i32) #1

declare dso_local i32 @MACH_RCV_TRAILER_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
