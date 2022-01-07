; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_register_validate_priority.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_register_validate_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32 }
%struct.knote = type { i32 }
%struct.kevent_internal_s = type { i32, i32 }

@EV_DISABLE = common dso_local global i32 0, align 4
@EV_DELETE = common dso_local global i32 0, align 4
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqueue*, %struct.knote*, %struct.kevent_internal_s*)* @kevent_register_validate_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kevent_register_validate_priority(%struct.kqueue* %0, %struct.knote* %1, %struct.kevent_internal_s* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kqueue*, align 8
  %6 = alloca %struct.knote*, align 8
  %7 = alloca %struct.kevent_internal_s*, align 8
  store %struct.kqueue* %0, %struct.kqueue** %5, align 8
  store %struct.knote* %1, %struct.knote** %6, align 8
  store %struct.kevent_internal_s* %2, %struct.kevent_internal_s** %7, align 8
  %8 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %9 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EV_DISABLE, align 4
  %12 = load i32, i32* @EV_DELETE, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

17:                                               ; preds = %3
  %18 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %19 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @KQ_WORKLOOP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %17
  %25 = load %struct.knote*, %struct.knote** %6, align 8
  %26 = icmp ne %struct.knote* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.knote*, %struct.knote** %6, align 8
  %29 = getelementptr inbounds %struct.knote, %struct.knote* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %33 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i32 [ %30, %27 ], [ %34, %31 ]
  %37 = call i32 @_pthread_priority_thread_qos(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @ERANGE, align 4
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %17
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %39, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @_pthread_priority_thread_qos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
