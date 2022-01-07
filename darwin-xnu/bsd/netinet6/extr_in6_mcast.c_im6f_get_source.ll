; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_im6f_get_source.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_im6f_get_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_mfilter = type { i64, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.in6_msource = type { i32*, i32 }
%struct.ip6_msource = type { i32 }

@ip6_msource_tree = common dso_local global i32 0, align 4
@in6_mcast_maxsocksrc = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in6_mfilter*, %struct.sockaddr_in6*, %struct.in6_msource**)* @im6f_get_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @im6f_get_source(%struct.in6_mfilter* %0, %struct.sockaddr_in6* %1, %struct.in6_msource** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_mfilter*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca %struct.in6_msource**, align 8
  %8 = alloca %struct.ip6_msource, align 4
  %9 = alloca %struct.ip6_msource*, align 8
  %10 = alloca %struct.in6_msource*, align 8
  %11 = alloca i32, align 4
  store %struct.in6_mfilter* %0, %struct.in6_mfilter** %5, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %6, align 8
  store %struct.in6_msource** %2, %struct.in6_msource*** %7, align 8
  store i32 0, i32* %11, align 4
  store %struct.ip6_msource* null, %struct.ip6_msource** %9, align 8
  store %struct.in6_msource* null, %struct.in6_msource** %10, align 8
  %12 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @ip6_msource_tree, align 4
  %17 = load %struct.in6_mfilter*, %struct.in6_mfilter** %5, align 8
  %18 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %17, i32 0, i32 1
  %19 = call %struct.ip6_msource* @RB_FIND(i32 %16, i32* %18, %struct.ip6_msource* %8)
  store %struct.ip6_msource* %19, %struct.ip6_msource** %9, align 8
  %20 = load %struct.ip6_msource*, %struct.ip6_msource** %9, align 8
  %21 = bitcast %struct.ip6_msource* %20 to %struct.in6_msource*
  store %struct.in6_msource* %21, %struct.in6_msource** %10, align 8
  %22 = load %struct.in6_msource*, %struct.in6_msource** %10, align 8
  %23 = icmp eq %struct.in6_msource* %22, null
  br i1 %23, label %24, label %59

24:                                               ; preds = %3
  %25 = load %struct.in6_mfilter*, %struct.in6_mfilter** %5, align 8
  %26 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @in6_mcast_maxsocksrc, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOSPC, align 4
  store i32 %31, i32* %4, align 4
  br label %63

32:                                               ; preds = %24
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call %struct.in6_msource* @in6ms_alloc(i32 %33)
  store %struct.in6_msource* %34, %struct.in6_msource** %10, align 8
  %35 = load %struct.in6_msource*, %struct.in6_msource** %10, align 8
  %36 = icmp eq %struct.in6_msource* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %4, align 4
  br label %63

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.in6_msource*, %struct.in6_msource** %10, align 8
  %43 = getelementptr inbounds %struct.in6_msource, %struct.in6_msource* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @MCAST_UNDEFINED, align 4
  %45 = load %struct.in6_msource*, %struct.in6_msource** %10, align 8
  %46 = getelementptr inbounds %struct.in6_msource, %struct.in6_msource* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* @ip6_msource_tree, align 4
  %50 = load %struct.in6_mfilter*, %struct.in6_mfilter** %5, align 8
  %51 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %50, i32 0, i32 1
  %52 = load %struct.in6_msource*, %struct.in6_msource** %10, align 8
  %53 = bitcast %struct.in6_msource* %52 to %struct.ip6_msource*
  %54 = call i32 @RB_INSERT(i32 %49, i32* %51, %struct.ip6_msource* %53)
  %55 = load %struct.in6_mfilter*, %struct.in6_mfilter** %5, align 8
  %56 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %39, %3
  %60 = load %struct.in6_msource*, %struct.in6_msource** %10, align 8
  %61 = load %struct.in6_msource**, %struct.in6_msource*** %7, align 8
  store %struct.in6_msource* %60, %struct.in6_msource** %61, align 8
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %37, %30
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.ip6_msource* @RB_FIND(i32, i32*, %struct.ip6_msource*) #1

declare dso_local %struct.in6_msource* @in6ms_alloc(i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.ip6_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
