; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_output.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.rtentry = type { i32 }
%struct.flowadv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_output(%struct.ifnet* %0, %struct.ifnet* %1, %struct.mbuf* %2, %struct.sockaddr_in6* %3, %struct.rtentry* %4, %struct.flowadv* %5) #0 {
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.rtentry*, align 8
  %12 = alloca %struct.flowadv*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store %struct.ifnet* %1, %struct.ifnet** %8, align 8
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.sockaddr_in6* %3, %struct.sockaddr_in6** %10, align 8
  store %struct.rtentry* %4, %struct.rtentry** %11, align 8
  store %struct.flowadv* %5, %struct.flowadv** %12, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %16 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %17 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %18 = load %struct.flowadv*, %struct.flowadv** %12, align 8
  %19 = call i32 @nd6_output_list(%struct.ifnet* %13, %struct.ifnet* %14, %struct.mbuf* %15, %struct.sockaddr_in6* %16, %struct.rtentry* %17, %struct.flowadv* %18)
  ret i32 %19
}

declare dso_local i32 @nd6_output_list(%struct.ifnet*, %struct.ifnet*, %struct.mbuf*, %struct.sockaddr_in6*, %struct.rtentry*, %struct.flowadv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
