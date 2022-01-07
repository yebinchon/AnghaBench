; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_ndrv_remove_all_multicast.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_ndrv_remove_all_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndrv_cb = type { %struct.ndrv_multiaddr*, i32* }
%struct.ndrv_multiaddr = type { i32, %struct.ndrv_multiaddr* }

@M_IFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ndrv_cb*)* @ndrv_remove_all_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndrv_remove_all_multicast(%struct.ndrv_cb* %0) #0 {
  %2 = alloca %struct.ndrv_cb*, align 8
  %3 = alloca %struct.ndrv_multiaddr*, align 8
  store %struct.ndrv_cb* %0, %struct.ndrv_cb** %2, align 8
  %4 = load %struct.ndrv_cb*, %struct.ndrv_cb** %2, align 8
  %5 = getelementptr inbounds %struct.ndrv_cb, %struct.ndrv_cb* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %14, %8
  %10 = load %struct.ndrv_cb*, %struct.ndrv_cb** %2, align 8
  %11 = getelementptr inbounds %struct.ndrv_cb, %struct.ndrv_cb* %10, i32 0, i32 0
  %12 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %11, align 8
  %13 = icmp ne %struct.ndrv_multiaddr* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = load %struct.ndrv_cb*, %struct.ndrv_cb** %2, align 8
  %16 = getelementptr inbounds %struct.ndrv_cb, %struct.ndrv_cb* %15, i32 0, i32 0
  %17 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %16, align 8
  store %struct.ndrv_multiaddr* %17, %struct.ndrv_multiaddr** %3, align 8
  %18 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %3, align 8
  %19 = getelementptr inbounds %struct.ndrv_multiaddr, %struct.ndrv_multiaddr* %18, i32 0, i32 1
  %20 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %19, align 8
  %21 = load %struct.ndrv_cb*, %struct.ndrv_cb** %2, align 8
  %22 = getelementptr inbounds %struct.ndrv_cb, %struct.ndrv_cb* %21, i32 0, i32 0
  store %struct.ndrv_multiaddr* %20, %struct.ndrv_multiaddr** %22, align 8
  %23 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %3, align 8
  %24 = getelementptr inbounds %struct.ndrv_multiaddr, %struct.ndrv_multiaddr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ifnet_remove_multicast(i32 %25)
  %27 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %3, align 8
  %28 = getelementptr inbounds %struct.ndrv_multiaddr, %struct.ndrv_multiaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ifmaddr_release(i32 %29)
  %31 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %3, align 8
  %32 = load i32, i32* @M_IFADDR, align 4
  %33 = call i32 @FREE(%struct.ndrv_multiaddr* %31, i32 %32)
  br label %9

34:                                               ; preds = %9
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @ifnet_remove_multicast(i32) #1

declare dso_local i32 @ifmaddr_release(i32) #1

declare dso_local i32 @FREE(%struct.ndrv_multiaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
