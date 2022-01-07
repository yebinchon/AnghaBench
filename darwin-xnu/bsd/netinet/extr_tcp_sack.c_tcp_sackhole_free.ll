; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sackhole_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sackhole_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.sackhole = type { i32 }

@sack_hole_zone = common dso_local global i32 0, align 4
@tcp_sack_globalholes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.sackhole*)* @tcp_sackhole_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_sackhole_free(%struct.tcpcb* %0, %struct.sackhole* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.sackhole*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.sackhole* %1, %struct.sackhole** %4, align 8
  %5 = load i32, i32* @sack_hole_zone, align 4
  %6 = load %struct.sackhole*, %struct.sackhole** %4, align 8
  %7 = call i32 @zfree(i32 %5, %struct.sackhole* %6)
  %8 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = call i32 @OSDecrementAtomic(i32* @tcp_sack_globalholes)
  ret void
}

declare dso_local i32 @zfree(i32, %struct.sackhole*) #1

declare dso_local i32 @OSDecrementAtomic(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
