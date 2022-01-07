; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_ndrv_have_multicast.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_ndrv_have_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndrv_multiaddr = type { %struct.TYPE_2__, %struct.ndrv_multiaddr* }
%struct.TYPE_2__ = type { i64 }
%struct.ndrv_cb = type { %struct.ndrv_multiaddr* }
%struct.sockaddr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ndrv_multiaddr* (%struct.ndrv_cb*, %struct.sockaddr*)* @ndrv_have_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ndrv_multiaddr* @ndrv_have_multicast(%struct.ndrv_cb* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.ndrv_multiaddr*, align 8
  %4 = alloca %struct.ndrv_cb*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.ndrv_multiaddr*, align 8
  store %struct.ndrv_cb* %0, %struct.ndrv_cb** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %7 = load %struct.ndrv_cb*, %struct.ndrv_cb** %4, align 8
  %8 = getelementptr inbounds %struct.ndrv_cb, %struct.ndrv_cb* %7, i32 0, i32 0
  %9 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %8, align 8
  store %struct.ndrv_multiaddr* %9, %struct.ndrv_multiaddr** %6, align 8
  br label %10

10:                                               ; preds = %34, %2
  %11 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %6, align 8
  %12 = icmp ne %struct.ndrv_multiaddr* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %6, align 8
  %18 = getelementptr inbounds %struct.ndrv_multiaddr, %struct.ndrv_multiaddr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %16, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %13
  %23 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %6, align 8
  %24 = getelementptr inbounds %struct.ndrv_multiaddr, %struct.ndrv_multiaddr* %23, i32 0, i32 0
  %25 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @bcmp(%struct.TYPE_2__* %24, %struct.sockaddr* %25, i64 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %6, align 8
  store %struct.ndrv_multiaddr* %32, %struct.ndrv_multiaddr** %3, align 8
  br label %39

33:                                               ; preds = %22, %13
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %6, align 8
  %36 = getelementptr inbounds %struct.ndrv_multiaddr, %struct.ndrv_multiaddr* %35, i32 0, i32 1
  %37 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %36, align 8
  store %struct.ndrv_multiaddr* %37, %struct.ndrv_multiaddr** %6, align 8
  br label %10

38:                                               ; preds = %10
  store %struct.ndrv_multiaddr* null, %struct.ndrv_multiaddr** %3, align 8
  br label %39

39:                                               ; preds = %38, %31
  %40 = load %struct.ndrv_multiaddr*, %struct.ndrv_multiaddr** %3, align 8
  ret %struct.ndrv_multiaddr* %40
}

declare dso_local i64 @bcmp(%struct.TYPE_2__*, %struct.sockaddr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
