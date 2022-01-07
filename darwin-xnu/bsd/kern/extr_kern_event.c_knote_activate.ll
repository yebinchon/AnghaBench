; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_activate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32, i32 }

@KN_ACTIVE = common dso_local global i32 0, align 4
@BSD_KEVENT_KNOTE_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @knote_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knote_activate(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %3 = load %struct.knote*, %struct.knote** %2, align 8
  %4 = getelementptr inbounds %struct.knote, %struct.knote* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @KN_ACTIVE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %39

10:                                               ; preds = %1
  %11 = load i32, i32* @BSD_KEVENT_KNOTE_ACTIVATE, align 4
  %12 = call i32 @KEV_EVTID(i32 %11)
  %13 = load %struct.knote*, %struct.knote** %2, align 8
  %14 = getelementptr inbounds %struct.knote, %struct.knote* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.knote*, %struct.knote** %2, align 8
  %17 = getelementptr inbounds %struct.knote, %struct.knote* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.knote*, %struct.knote** %2, align 8
  %20 = getelementptr inbounds %struct.knote, %struct.knote* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 32
  %23 = or i32 %18, %22
  %24 = load %struct.knote*, %struct.knote** %2, align 8
  %25 = getelementptr inbounds %struct.knote, %struct.knote* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @KDBG_FILTERED(i32 %12, i32 %15, i32 %23, i32 %26)
  %28 = load i32, i32* @KN_ACTIVE, align 4
  %29 = load %struct.knote*, %struct.knote** %2, align 8
  %30 = getelementptr inbounds %struct.knote, %struct.knote* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.knote*, %struct.knote** %2, align 8
  %34 = call i64 @knote_enqueue(%struct.knote* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %10
  %37 = load %struct.knote*, %struct.knote** %2, align 8
  %38 = call i32 @knote_wakeup(%struct.knote* %37)
  br label %39

39:                                               ; preds = %9, %36, %10
  ret void
}

declare dso_local i32 @KDBG_FILTERED(i32, i32, i32, i32) #1

declare dso_local i32 @KEV_EVTID(i32) #1

declare dso_local i64 @knote_enqueue(%struct.knote*) #1

declare dso_local i32 @knote_wakeup(%struct.knote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
