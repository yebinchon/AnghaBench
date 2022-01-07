; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_detaching_enqueue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_detaching_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@ifnet_detaching_cnt = common dso_local global i64 0, align 8
@ifnet_detaching_head = common dso_local global i32 0, align 4
@if_detaching_link = common dso_local global i32 0, align 4
@ifnet_delayed_run = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @ifnet_detaching_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifnet_detaching_enqueue(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %3 = call i32 (...) @dlil_if_lock_assert()
  %4 = load i64, i64* @ifnet_detaching_cnt, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* @ifnet_detaching_cnt, align 8
  %6 = load i64, i64* @ifnet_detaching_cnt, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @VERIFY(i32 %8)
  %10 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %11 = load i32, i32* @if_detaching_link, align 4
  %12 = call i32 @TAILQ_INSERT_TAIL(i32* @ifnet_detaching_head, %struct.ifnet* %10, i32 %11)
  %13 = call i32 @wakeup(i32 ptrtoint (i32* @ifnet_delayed_run to i32))
  ret void
}

declare dso_local i32 @dlil_if_lock_assert(...) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ifnet*, i32) #1

declare dso_local i32 @wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
