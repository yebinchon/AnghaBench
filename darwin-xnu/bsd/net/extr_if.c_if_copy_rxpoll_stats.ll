; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_copy_rxpoll_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_copy_rxpoll_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.if_rxpoll_stats = type { i32 }

@IFEF_RXPOLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_copy_rxpoll_stats(%struct.ifnet* %0, %struct.if_rxpoll_stats* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.if_rxpoll_stats*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.if_rxpoll_stats* %1, %struct.if_rxpoll_stats** %4, align 8
  %5 = load %struct.if_rxpoll_stats*, %struct.if_rxpoll_stats** %4, align 8
  %6 = call i32 @bzero(%struct.if_rxpoll_stats* %5, i32 4)
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IFEF_RXPOLL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %15 = call i32 @ifnet_is_attached(%struct.ifnet* %14, i32 1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %2
  br label %33

18:                                               ; preds = %13
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @VERIFY(i32 %23)
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.if_rxpoll_stats*, %struct.if_rxpoll_stats** %4, align 8
  %30 = call i32 @bcopy(i32* %28, %struct.if_rxpoll_stats* %29, i32 4)
  %31 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %32 = call i32 @ifnet_decr_iorefcnt(%struct.ifnet* %31)
  br label %33

33:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @bzero(%struct.if_rxpoll_stats*, i32) #1

declare dso_local i32 @ifnet_is_attached(%struct.ifnet*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(i32*, %struct.if_rxpoll_stats*, i32) #1

declare dso_local i32 @ifnet_decr_iorefcnt(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
