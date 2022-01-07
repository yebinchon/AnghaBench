; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32*, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i32 }

@SYNC_POLICY_DISABLE_IRQ = common dso_local global i32 0, align 4
@SYNC_POLICY_REVERSED = common dso_local global i32 0, align 4
@SYNC_POLICY_TURNSTILE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@TURNSTILE_INHERITOR_NULL = common dso_local global i32 0, align 4
@TURNSTILE_NONE = common dso_local global i32 0, align 4
@TURNSTILE_STATE_THREAD = common dso_local global i32 0, align 4
@turnstile_refgrp = common dso_local global i32 0, align 4
@TURNSTILE_PROPRIETOR_NULL = common dso_local global i32 0, align 4
@MAXPRI_THROTTLE = common dso_local global i32 0, align 4
@TURNSTILE_UPDATE_FLAGS_NONE = common dso_local global i32 0, align 4
@PRIORITY_QUEUE_BUILTIN_MAX_HEAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.turnstile*)* @turnstile_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turnstile_init(%struct.turnstile* %0) #0 {
  %2 = alloca %struct.turnstile*, align 8
  %3 = alloca i64, align 8
  store %struct.turnstile* %0, %struct.turnstile** %2, align 8
  %4 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %5 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %4, i32 0, i32 11
  %6 = load i32, i32* @SYNC_POLICY_DISABLE_IRQ, align 4
  %7 = load i32, i32* @SYNC_POLICY_REVERSED, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SYNC_POLICY_TURNSTILE, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @waitq_init(i32* %5, i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @KERN_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @TURNSTILE_INHERITOR_NULL, align 4
  %18 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %19 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %21 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %20, i32 0, i32 9
  %22 = call i32 @SLIST_INIT(i32* %21)
  %23 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %24 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %23, i32 0, i32 8
  store i64 0, i64* %24, align 8
  %25 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %26 = load i32, i32* @TURNSTILE_NONE, align 4
  %27 = call i32 @turnstile_set_type_and_increment_gencount(%struct.turnstile* %25, i32 %26)
  %28 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %29 = load i32, i32* @TURNSTILE_STATE_THREAD, align 4
  %30 = call i32 @turnstile_state_init(%struct.turnstile* %28, i32 %29)
  %31 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %32 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %31, i32 0, i32 7
  %33 = call i32 @os_ref_init_count(i32* %32, i32* @turnstile_refgrp, i32 1)
  %34 = load i32, i32* @TURNSTILE_PROPRIETOR_NULL, align 4
  %35 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %36 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @MAXPRI_THROTTLE, align 4
  %38 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %39 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @TURNSTILE_UPDATE_FLAGS_NONE, align 4
  %41 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %42 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %44 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %46 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %45, i32 0, i32 2
  %47 = load i32, i32* @PRIORITY_QUEUE_BUILTIN_MAX_HEAP, align 4
  %48 = call i32 @priority_queue_init(i32* %46, i32 %47)
  ret void
}

declare dso_local i64 @waitq_init(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @turnstile_set_type_and_increment_gencount(%struct.turnstile*, i32) #1

declare dso_local i32 @turnstile_state_init(%struct.turnstile*, i32) #1

declare dso_local i32 @os_ref_init_count(i32*, i32*, i32) #1

declare dso_local i32 @priority_queue_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
