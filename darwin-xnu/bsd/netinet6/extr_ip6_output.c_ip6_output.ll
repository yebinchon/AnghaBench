; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_output.c_ip6_output.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_output.c_ip6_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ip6_pktopts = type { i32 }
%struct.route_in6 = type { i32 }
%struct.ip6_moptions = type { i32 }
%struct.ifnet = type { i32 }
%struct.ip6_out_args = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_output(%struct.mbuf* %0, %struct.ip6_pktopts* %1, %struct.route_in6* %2, i32 %3, %struct.ip6_moptions* %4, %struct.ifnet** %5, %struct.ip6_out_args* %6) #0 {
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.ip6_pktopts*, align 8
  %10 = alloca %struct.route_in6*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ip6_moptions*, align 8
  %13 = alloca %struct.ifnet**, align 8
  %14 = alloca %struct.ip6_out_args*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %8, align 8
  store %struct.ip6_pktopts* %1, %struct.ip6_pktopts** %9, align 8
  store %struct.route_in6* %2, %struct.route_in6** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ip6_moptions* %4, %struct.ip6_moptions** %12, align 8
  store %struct.ifnet** %5, %struct.ifnet*** %13, align 8
  store %struct.ip6_out_args* %6, %struct.ip6_out_args** %14, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %16 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %9, align 8
  %17 = load %struct.route_in6*, %struct.route_in6** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.ip6_moptions*, %struct.ip6_moptions** %12, align 8
  %20 = load %struct.ifnet**, %struct.ifnet*** %13, align 8
  %21 = load %struct.ip6_out_args*, %struct.ip6_out_args** %14, align 8
  %22 = call i32 @ip6_output_list(%struct.mbuf* %15, i32 0, %struct.ip6_pktopts* %16, %struct.route_in6* %17, i32 %18, %struct.ip6_moptions* %19, %struct.ifnet** %20, %struct.ip6_out_args* %21)
  ret i32 %22
}

declare dso_local i32 @ip6_output_list(%struct.mbuf*, i32, %struct.ip6_pktopts*, %struct.route_in6*, i32, %struct.ip6_moptions*, %struct.ifnet**, %struct.ip6_out_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
