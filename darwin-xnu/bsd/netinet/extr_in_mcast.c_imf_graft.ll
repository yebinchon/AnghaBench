; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_imf_graft.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_imf_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_msource = type { i32*, i32 }
%struct.in_mfilter = type { i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ip_msource = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i32 0, align 4
@ip_msource_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in_msource* (%struct.in_mfilter*, i32, %struct.sockaddr_in*)* @imf_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in_msource* @imf_graft(%struct.in_mfilter* %0, i32 %1, %struct.sockaddr_in* %2) #0 {
  %4 = alloca %struct.in_msource*, align 8
  %5 = alloca %struct.in_mfilter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.in_msource*, align 8
  store %struct.in_mfilter* %0, %struct.in_mfilter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %7, align 8
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call %struct.in_msource* @inms_alloc(i32 %9)
  store %struct.in_msource* %10, %struct.in_msource** %8, align 8
  %11 = load %struct.in_msource*, %struct.in_msource** %8, align 8
  %12 = icmp eq %struct.in_msource* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.in_msource* null, %struct.in_msource** %4, align 8
  br label %43

14:                                               ; preds = %3
  %15 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ntohl(i32 %18)
  %20 = load %struct.in_msource*, %struct.in_msource** %8, align 8
  %21 = getelementptr inbounds %struct.in_msource, %struct.in_msource* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @MCAST_UNDEFINED, align 4
  %23 = load %struct.in_msource*, %struct.in_msource** %8, align 8
  %24 = getelementptr inbounds %struct.in_msource, %struct.in_msource* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.in_msource*, %struct.in_msource** %8, align 8
  %29 = getelementptr inbounds %struct.in_msource, %struct.in_msource* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @ip_msource_tree, align 4
  %33 = load %struct.in_mfilter*, %struct.in_mfilter** %5, align 8
  %34 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %33, i32 0, i32 1
  %35 = load %struct.in_msource*, %struct.in_msource** %8, align 8
  %36 = bitcast %struct.in_msource* %35 to %struct.ip_msource*
  %37 = call i32 @RB_INSERT(i32 %32, i32* %34, %struct.ip_msource* %36)
  %38 = load %struct.in_mfilter*, %struct.in_mfilter** %5, align 8
  %39 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.in_msource*, %struct.in_msource** %8, align 8
  store %struct.in_msource* %42, %struct.in_msource** %4, align 8
  br label %43

43:                                               ; preds = %14, %13
  %44 = load %struct.in_msource*, %struct.in_msource** %4, align 8
  ret %struct.in_msource* %44
}

declare dso_local %struct.in_msource* @inms_alloc(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.ip_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
