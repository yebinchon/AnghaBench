; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_enqueue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32 }
%struct.kqtailq = type { i32 }
%struct.kqueue = type { i32 }

@KN_ACTIVE = common dso_local global i32 0, align 4
@KN_STAYACTIVE = common dso_local global i32 0, align 4
@KN_DISABLED = common dso_local global i32 0, align 4
@KN_SUPPRESSED = common dso_local global i32 0, align 4
@KN_DROPPING = common dso_local global i32 0, align 4
@KN_QUEUED = common dso_local global i32 0, align 4
@kn_tqe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*)* @knote_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knote_enqueue(%struct.knote* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.kqtailq*, align 8
  %5 = alloca %struct.kqueue*, align 8
  store %struct.knote* %0, %struct.knote** %3, align 8
  %6 = load %struct.knote*, %struct.knote** %3, align 8
  %7 = getelementptr inbounds %struct.knote, %struct.knote* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @KN_ACTIVE, align 4
  %10 = load i32, i32* @KN_STAYACTIVE, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = load %struct.knote*, %struct.knote** %3, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @KN_DISABLED, align 4
  %19 = load i32, i32* @KN_SUPPRESSED, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @KN_DROPPING, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %61

26:                                               ; preds = %14
  %27 = load %struct.knote*, %struct.knote** %3, align 8
  %28 = getelementptr inbounds %struct.knote, %struct.knote* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @KN_QUEUED, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load %struct.knote*, %struct.knote** %3, align 8
  %35 = call %struct.kqtailq* @knote_get_queue(%struct.knote* %34)
  store %struct.kqtailq* %35, %struct.kqtailq** %4, align 8
  %36 = load %struct.knote*, %struct.knote** %3, align 8
  %37 = call %struct.kqueue* @knote_get_kq(%struct.knote* %36)
  store %struct.kqueue* %37, %struct.kqueue** %5, align 8
  %38 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %39 = call i32 @kqlock_held(%struct.kqueue* %38)
  %40 = load %struct.kqtailq*, %struct.kqtailq** %4, align 8
  %41 = load %struct.knote*, %struct.knote** %3, align 8
  %42 = load i32, i32* @kn_tqe, align 4
  %43 = call i32 @TAILQ_INSERT_TAIL(%struct.kqtailq* %40, %struct.knote* %41, i32 %42)
  %44 = load i32, i32* @KN_QUEUED, align 4
  %45 = load %struct.knote*, %struct.knote** %3, align 8
  %46 = getelementptr inbounds %struct.knote, %struct.knote* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %50 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  store i32 1, i32* %2, align 4
  br label %61

53:                                               ; preds = %26
  %54 = load %struct.knote*, %struct.knote** %3, align 8
  %55 = getelementptr inbounds %struct.knote, %struct.knote* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @KN_STAYACTIVE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %53, %33, %25
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.kqtailq* @knote_get_queue(%struct.knote*) #1

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @kqlock_held(%struct.kqueue*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.kqtailq*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
