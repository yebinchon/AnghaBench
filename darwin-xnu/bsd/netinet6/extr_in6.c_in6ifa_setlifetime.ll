; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ifa_setlifetime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ifa_setlifetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { %struct.in6_addrlifetime_i }
%struct.in6_addrlifetime_i = type { i32, i32, i32, i32, i32, i32 }
%struct.in6_addrlifetime = type { i32, i32, i32, i32 }
%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6ifa_setlifetime(%struct.in6_ifaddr* %0, %struct.in6_addrlifetime* %1) #0 {
  %3 = alloca %struct.in6_ifaddr*, align 8
  %4 = alloca %struct.in6_addrlifetime*, align 8
  %5 = alloca %struct.in6_addrlifetime_i*, align 8
  %6 = alloca %struct.timeval, align 4
  store %struct.in6_ifaddr* %0, %struct.in6_ifaddr** %3, align 8
  store %struct.in6_addrlifetime* %1, %struct.in6_addrlifetime** %4, align 8
  %7 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %8 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %7, i32 0, i32 0
  store %struct.in6_addrlifetime_i* %8, %struct.in6_addrlifetime_i** %5, align 8
  %9 = call i32 @getmicrotime(%struct.timeval* %6)
  %10 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %5, align 8
  %11 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (...) @net_uptime()
  %14 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %5, align 8
  %15 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @NET_CALCULATE_CLOCKSKEW(i32 %18, i32 %12, i32 %13, i32 %16)
  %20 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %5, align 8
  %21 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %27 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %5, align 8
  %30 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %32 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %5, align 8
  %35 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %37 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %5, align 8
  %40 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %42 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %5, align 8
  %45 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i64 @NET_CALCULATE_CLOCKSKEW(i32, i32, i32, i32) #1

declare dso_local i32 @net_uptime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
