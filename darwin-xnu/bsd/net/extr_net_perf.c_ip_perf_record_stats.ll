; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_net_perf.c_ip_perf_record_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_net_perf.c_ip_perf_record_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.timeval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.timeval*, %struct.timeval*, i64)* @ip_perf_record_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_perf_record_stats(%struct.TYPE_3__* %0, %struct.timeval* %1, %struct.timeval* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.timeval* %1, %struct.timeval** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.timeval*, %struct.timeval** %7, align 8
  %12 = load %struct.timeval*, %struct.timeval** %6, align 8
  %13 = call i32 @timersub(%struct.timeval* %11, %struct.timeval* %12, %struct.timeval* %9)
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = mul i64 %15, 1000000
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %16, %18
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = call i32 @OSAddAtomic64(i64 %20, i32* %22)
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @OSAddAtomic64(i64 %24, i32* %26)
  ret void
}

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @OSAddAtomic64(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
