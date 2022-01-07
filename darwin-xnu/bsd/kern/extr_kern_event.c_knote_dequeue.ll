; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_dequeue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32 }
%struct.kqueue = type { i32 }
%struct.kqtailq = type { i32 }

@KN_QUEUED = common dso_local global i32 0, align 4
@kn_tqe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @knote_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knote_dequeue(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.kqueue*, align 8
  %4 = alloca %struct.kqtailq*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %5 = load %struct.knote*, %struct.knote** %2, align 8
  %6 = call %struct.kqueue* @knote_get_kq(%struct.knote* %5)
  store %struct.kqueue* %6, %struct.kqueue** %3, align 8
  %7 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %8 = call i32 @kqlock_held(%struct.kqueue* %7)
  %9 = load %struct.knote*, %struct.knote** %2, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @KN_QUEUED, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.knote*, %struct.knote** %2, align 8
  %18 = call %struct.kqtailq* @knote_get_queue(%struct.knote* %17)
  store %struct.kqtailq* %18, %struct.kqtailq** %4, align 8
  %19 = load %struct.kqtailq*, %struct.kqtailq** %4, align 8
  %20 = load %struct.knote*, %struct.knote** %2, align 8
  %21 = load i32, i32* @kn_tqe, align 4
  %22 = call i32 @TAILQ_REMOVE(%struct.kqtailq* %19, %struct.knote* %20, i32 %21)
  %23 = load i32, i32* @KN_QUEUED, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.knote*, %struct.knote** %2, align 8
  %26 = getelementptr inbounds %struct.knote, %struct.knote* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %30 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @kqlock_held(%struct.kqueue*) #1

declare dso_local %struct.kqtailq* @knote_get_queue(%struct.knote*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.kqtailq*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
