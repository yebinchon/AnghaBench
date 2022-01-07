; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_suppress.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_suppress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32 }
%struct.kqtailq = type { i32 }
%struct.kqueue = type { i32 }

@KN_SUPPRESSED = common dso_local global i32 0, align 4
@kn_tqe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @knote_suppress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knote_suppress(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.kqtailq*, align 8
  %4 = alloca %struct.kqueue*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %5 = load %struct.knote*, %struct.knote** %2, align 8
  %6 = call %struct.kqueue* @knote_get_kq(%struct.knote* %5)
  store %struct.kqueue* %6, %struct.kqueue** %4, align 8
  %7 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %8 = call i32 @kqlock_held(%struct.kqueue* %7)
  %9 = load %struct.knote*, %struct.knote** %2, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @KN_SUPPRESSED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.knote*, %struct.knote** %2, align 8
  %18 = call i32 @knote_dequeue(%struct.knote* %17)
  %19 = load i32, i32* @KN_SUPPRESSED, align 4
  %20 = load %struct.knote*, %struct.knote** %2, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %25 = load %struct.knote*, %struct.knote** %2, align 8
  %26 = call %struct.kqtailq* @kqueue_get_suppressed_queue(%struct.kqueue* %24, %struct.knote* %25)
  store %struct.kqtailq* %26, %struct.kqtailq** %3, align 8
  %27 = load %struct.kqtailq*, %struct.kqtailq** %3, align 8
  %28 = load %struct.knote*, %struct.knote** %2, align 8
  %29 = load i32, i32* @kn_tqe, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(%struct.kqtailq* %27, %struct.knote* %28, i32 %29)
  br label %31

31:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @kqlock_held(%struct.kqueue*) #1

declare dso_local i32 @knote_dequeue(%struct.knote*) #1

declare dso_local %struct.kqtailq* @kqueue_get_suppressed_queue(%struct.kqueue*, %struct.knote*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.kqtailq*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
