; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/zero-to-n/extr_zero-to-n.c_usage.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/zero-to-n/extr_zero-to-n.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [310 x i8] c"Usage: %s <threads> <chain | hop | broadcast-single-sem | broadcast-per-thread> <realtime | timeshare | fixed> <iterations>\0A\09\09[--trace <traceworthy latency in ns>] [--verbose] [--spin-one] [--spin-all] [--spin-time <nanos>] [--affinity]\0A\09\09[--no-sleep] [--drop-priority] [--churn-pri <pri>] [--churn-count <n>]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @EX_USAGE, align 4
  %2 = call i32 (...) @getprogname()
  %3 = call i32 @errx(i32 %1, i8* getelementptr inbounds ([310 x i8], [310 x i8]* @.str, i64 0, i64 0), i32 %2)
  unreachable
}

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @getprogname(...) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
