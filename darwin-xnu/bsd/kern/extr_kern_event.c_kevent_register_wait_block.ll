; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_register_wait_block.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_register_wait_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.knote_lock_ctx = type { i32 }
%struct._kevent_register = type { i32, i32, i32 }

@KNOTE_KQ_UNLOCK = common dso_local global i32 0, align 4
@TURNSTILE_INTERLOCK_NOT_HELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.turnstile*, i32, %struct.knote_lock_ctx*, i32, %struct._kevent_register*)* @kevent_register_wait_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kevent_register_wait_block(%struct.turnstile* %0, i32 %1, %struct.knote_lock_ctx* %2, i32 %3, %struct._kevent_register* %4) #0 {
  %6 = alloca %struct.turnstile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.knote_lock_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._kevent_register*, align 8
  store %struct.turnstile* %0, %struct.turnstile** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.knote_lock_ctx* %2, %struct.knote_lock_ctx** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct._kevent_register* %4, %struct._kevent_register** %10, align 8
  %11 = load %struct._kevent_register*, %struct._kevent_register** %10, align 8
  %12 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct._kevent_register*, %struct._kevent_register** %10, align 8
  %15 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.knote_lock_ctx*, %struct.knote_lock_ctx** %8, align 8
  %18 = load i32, i32* @KNOTE_KQ_UNLOCK, align 4
  %19 = call i32 @knote_unlock(i32 %13, i32 %16, %struct.knote_lock_ctx* %17, i32 %18)
  %20 = load %struct.turnstile*, %struct.turnstile** %6, align 8
  %21 = load i32, i32* @TURNSTILE_INTERLOCK_NOT_HELD, align 4
  %22 = call i32 @turnstile_update_inheritor_complete(%struct.turnstile* %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct._kevent_register*, %struct._kevent_register** %10, align 8
  %25 = getelementptr inbounds %struct._kevent_register, %struct._kevent_register* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct._kevent_register*, %struct._kevent_register** %10, align 8
  %29 = call i32 @thread_handoff_parameter(i32 %26, i32 %27, %struct._kevent_register* %28)
  ret void
}

declare dso_local i32 @knote_unlock(i32, i32, %struct.knote_lock_ctx*, i32) #1

declare dso_local i32 @turnstile_update_inheritor_complete(%struct.turnstile*, i32) #1

declare dso_local i32 @thread_handoff_parameter(i32, i32, %struct._kevent_register*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
