; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_enable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32 }
%struct.kqueue = type { i32 }

@KN_DISABLED = common dso_local global i32 0, align 4
@KN_SUPPRESSED = common dso_local global i32 0, align 4
@KQ_PROCESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @knote_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knote_enable(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.kqueue*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %4 = load %struct.knote*, %struct.knote** %2, align 8
  %5 = getelementptr inbounds %struct.knote, %struct.knote* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @KN_DISABLED, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %45

11:                                               ; preds = %1
  %12 = load i32, i32* @KN_DISABLED, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.knote*, %struct.knote** %2, align 8
  %15 = getelementptr inbounds %struct.knote, %struct.knote* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.knote*, %struct.knote** %2, align 8
  %19 = getelementptr inbounds %struct.knote, %struct.knote* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @KN_SUPPRESSED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %11
  %25 = load %struct.knote*, %struct.knote** %2, align 8
  %26 = call %struct.kqueue* @knote_get_kq(%struct.knote* %25)
  store %struct.kqueue* %26, %struct.kqueue** %3, align 8
  %27 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %28 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @KQ_PROCESSING, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.knote*, %struct.knote** %2, align 8
  %35 = call i32 @knote_unsuppress(%struct.knote* %34)
  br label %36

36:                                               ; preds = %33, %24
  br label %45

37:                                               ; preds = %11
  %38 = load %struct.knote*, %struct.knote** %2, align 8
  %39 = call i64 @knote_enqueue(%struct.knote* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.knote*, %struct.knote** %2, align 8
  %43 = call i32 @knote_wakeup(%struct.knote* %42)
  br label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %10, %44, %36
  ret void
}

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @knote_unsuppress(%struct.knote*) #1

declare dso_local i64 @knote_enqueue(%struct.knote*) #1

declare dso_local i32 @knote_wakeup(%struct.knote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
