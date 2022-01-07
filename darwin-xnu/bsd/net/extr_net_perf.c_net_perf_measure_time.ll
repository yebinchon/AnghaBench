; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_net_perf.c_net_perf_measure_time.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_net_perf.c_net_perf_measure_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @net_perf_measure_time(i32* %0, %struct.timeval* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 4
  store i32* %0, i32** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @microtime(%struct.timeval* %7)
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.timeval*, %struct.timeval** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @ip_perf_record_stats(i32* %9, %struct.timeval* %10, %struct.timeval* %7, i32 %11)
  ret void
}

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i32 @ip_perf_record_stats(i32*, %struct.timeval*, %struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
