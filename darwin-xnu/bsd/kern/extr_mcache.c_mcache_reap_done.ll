; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mcache.c_mcache_reap_done.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mcache.c_mcache_reap_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcache_reap_interval = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@mcache_reap_interval_leeway = common dso_local global i32 0, align 4
@mcache_reap_tcall = common dso_local global i32 0, align 4
@THREAD_CALL_DELAY_LEEWAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mcache_reap_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcache_reap_done(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @mcache_reap_interval, align 4
  %6 = load i32, i32* @NSEC_PER_SEC, align 4
  %7 = call i32 @clock_interval_to_deadline(i32 %5, i32 %6, i32* %3)
  %8 = load i32, i32* @mcache_reap_interval_leeway, align 4
  %9 = load i32, i32* @NSEC_PER_SEC, align 4
  %10 = call i32 @clock_interval_to_absolutetime_interval(i32 %8, i32 %9, i32* %4)
  %11 = load i32, i32* @mcache_reap_tcall, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @THREAD_CALL_DELAY_LEEWAY, align 4
  %16 = call i32 @thread_call_enter_delayed_with_leeway(i32 %11, i8* %12, i32 %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @clock_interval_to_deadline(i32, i32, i32*) #1

declare dso_local i32 @clock_interval_to_absolutetime_interval(i32, i32, i32*) #1

declare dso_local i32 @thread_call_enter_delayed_with_leeway(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
