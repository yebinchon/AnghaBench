; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_domain_sched_timeout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_domain_sched_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@domain_timeout_mtx = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@domain_timeout_run = common dso_local global i64 0, align 8
@domain_draining = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@domain_timeout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @domain_sched_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domain_sched_timeout() #0 {
  %1 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %2 = call i32 @LCK_MTX_ASSERT(i32* @domain_timeout_mtx, i32 %1)
  %3 = load i64, i64* @domain_timeout_run, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @domain_draining, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load i64, i64* @TRUE, align 8
  store i64 %9, i64* @domain_timeout_run, align 8
  %10 = load i32, i32* @domain_timeout, align 4
  %11 = load i32, i32* @hz, align 4
  %12 = call i32 @timeout(i32 %10, i32* null, i32 %11)
  br label %13

13:                                               ; preds = %8, %5, %0
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @timeout(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
