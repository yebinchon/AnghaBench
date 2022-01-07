; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_im6f_prune.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_im6f_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_mfilter = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.ip6_msource = type { i32 }
%struct.in6_msource = type { i32* }

@ip6_msource_tree = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in6_mfilter*, %struct.sockaddr_in6*)* @im6f_prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @im6f_prune(%struct.in6_mfilter* %0, %struct.sockaddr_in6* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in6_mfilter*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca %struct.ip6_msource, align 4
  %7 = alloca %struct.ip6_msource*, align 8
  %8 = alloca %struct.in6_msource*, align 8
  store %struct.in6_mfilter* %0, %struct.in6_mfilter** %4, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %5, align 8
  %9 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @ip6_msource_tree, align 4
  %14 = load %struct.in6_mfilter*, %struct.in6_mfilter** %4, align 8
  %15 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %14, i32 0, i32 0
  %16 = call %struct.ip6_msource* @RB_FIND(i32 %13, i32* %15, %struct.ip6_msource* %6)
  store %struct.ip6_msource* %16, %struct.ip6_msource** %7, align 8
  %17 = load %struct.ip6_msource*, %struct.ip6_msource** %7, align 8
  %18 = icmp eq %struct.ip6_msource* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOENT, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.ip6_msource*, %struct.ip6_msource** %7, align 8
  %23 = bitcast %struct.ip6_msource* %22 to %struct.in6_msource*
  store %struct.in6_msource* %23, %struct.in6_msource** %8, align 8
  %24 = load i32, i32* @MCAST_UNDEFINED, align 4
  %25 = load %struct.in6_msource*, %struct.in6_msource** %8, align 8
  %26 = getelementptr inbounds %struct.in6_msource, %struct.in6_msource* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %24, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %19
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.ip6_msource* @RB_FIND(i32, i32*, %struct.ip6_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
