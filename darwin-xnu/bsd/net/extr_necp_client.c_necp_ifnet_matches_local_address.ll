; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_ifnet_matches_local_address.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_ifnet_matches_local_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sockaddr = type { i32 }
%struct.ifaddr = type { i32 }
%struct.sockaddr_storage = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.sockaddr*)* @necp_ifnet_matches_local_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_ifnet_matches_local_address(%struct.ifnet* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.ifaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_storage, align 8
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  store %struct.ifaddr* null, %struct.ifaddr** %5, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @IFSCOPE_NONE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %12 = call i32 @sa_copy(%struct.sockaddr* %11, %struct.sockaddr_storage* %7, i32* %8)
  %13 = call %struct.TYPE_4__* @SIN(%struct.sockaddr_storage* %7)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AF_INET6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call %struct.TYPE_3__* @SIN6(%struct.sockaddr_storage* %7)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %24 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ifaddr* @ifa_ifwithaddr_scoped_locked(%struct.sockaddr* %23, i32 %26)
  store %struct.ifaddr* %27, %struct.ifaddr** %5, align 8
  %28 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %29 = icmp ne %struct.ifaddr* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %32 = icmp ne %struct.ifaddr* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %35 = call i32 @ifaddr_release(%struct.ifaddr* %34)
  br label %36

36:                                               ; preds = %33, %22
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @sa_copy(%struct.sockaddr*, %struct.sockaddr_storage*, i32*) #1

declare dso_local %struct.TYPE_4__* @SIN(%struct.sockaddr_storage*) #1

declare dso_local %struct.TYPE_3__* @SIN6(%struct.sockaddr_storage*) #1

declare dso_local %struct.ifaddr* @ifa_ifwithaddr_scoped_locked(%struct.sockaddr*, i32) #1

declare dso_local i32 @ifaddr_release(%struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
