; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_im6f_graft.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_im6f_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_msource = type { i32*, i32 }
%struct.in6_mfilter = type { i32, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.ip6_msource = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i32 0, align 4
@ip6_msource_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in6_msource* (%struct.in6_mfilter*, i32, %struct.sockaddr_in6*)* @im6f_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in6_msource* @im6f_graft(%struct.in6_mfilter* %0, i32 %1, %struct.sockaddr_in6* %2) #0 {
  %4 = alloca %struct.in6_msource*, align 8
  %5 = alloca %struct.in6_mfilter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.in6_msource*, align 8
  store %struct.in6_mfilter* %0, %struct.in6_mfilter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr_in6* %2, %struct.sockaddr_in6** %7, align 8
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call %struct.in6_msource* @in6ms_alloc(i32 %9)
  store %struct.in6_msource* %10, %struct.in6_msource** %8, align 8
  %11 = load %struct.in6_msource*, %struct.in6_msource** %8, align 8
  %12 = icmp eq %struct.in6_msource* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.in6_msource* null, %struct.in6_msource** %4, align 8
  br label %41

14:                                               ; preds = %3
  %15 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.in6_msource*, %struct.in6_msource** %8, align 8
  %19 = getelementptr inbounds %struct.in6_msource, %struct.in6_msource* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @MCAST_UNDEFINED, align 4
  %21 = load %struct.in6_msource*, %struct.in6_msource** %8, align 8
  %22 = getelementptr inbounds %struct.in6_msource, %struct.in6_msource* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.in6_msource*, %struct.in6_msource** %8, align 8
  %27 = getelementptr inbounds %struct.in6_msource, %struct.in6_msource* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @ip6_msource_tree, align 4
  %31 = load %struct.in6_mfilter*, %struct.in6_mfilter** %5, align 8
  %32 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %31, i32 0, i32 1
  %33 = load %struct.in6_msource*, %struct.in6_msource** %8, align 8
  %34 = bitcast %struct.in6_msource* %33 to %struct.ip6_msource*
  %35 = call i32 @RB_INSERT(i32 %30, i32* %32, %struct.ip6_msource* %34)
  %36 = load %struct.in6_mfilter*, %struct.in6_mfilter** %5, align 8
  %37 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.in6_msource*, %struct.in6_msource** %8, align 8
  store %struct.in6_msource* %40, %struct.in6_msource** %4, align 8
  br label %41

41:                                               ; preds = %14, %13
  %42 = load %struct.in6_msource*, %struct.in6_msource** %4, align 8
  ret %struct.in6_msource* %42
}

declare dso_local %struct.in6_msource* @in6ms_alloc(i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.ip6_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
