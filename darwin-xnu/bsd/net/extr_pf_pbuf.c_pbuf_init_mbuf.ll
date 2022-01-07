; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_pbuf.c_pbuf_init_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_pbuf.c_pbuf_init_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.ifnet*, %struct.mbuf*, i32 }
%struct.mbuf = type { i32 }
%struct.ifnet = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@PBUF_TYPE_MBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pbuf_init_mbuf(%struct.TYPE_4__* %0, %struct.mbuf* %1, %struct.ifnet* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store %struct.ifnet* %2, %struct.ifnet** %6, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %8 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @M_PKTHDR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @VERIFY(i32 %13)
  %15 = load i32, i32* @PBUF_TYPE_MBUF, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store %struct.mbuf* %18, %struct.mbuf** %20, align 8
  %21 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store %struct.ifnet* %21, %struct.ifnet** %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = call i32 @pbuf_sync(%struct.TYPE_4__* %26)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @pbuf_sync(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
