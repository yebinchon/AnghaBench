; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_imf_get_source.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_imf_get_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_mfilter = type { i64, i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.in_msource = type { i32*, i32 }
%struct.ip_msource = type { i32 }

@ip_msource_tree = common dso_local global i32 0, align 4
@in_mcast_maxsocksrc = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_mfilter*, %struct.sockaddr_in*, %struct.in_msource**)* @imf_get_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imf_get_source(%struct.in_mfilter* %0, %struct.sockaddr_in* %1, %struct.in_msource** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_mfilter*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.in_msource**, align 8
  %8 = alloca %struct.ip_msource, align 4
  %9 = alloca %struct.ip_msource*, align 8
  %10 = alloca %struct.in_msource*, align 8
  %11 = alloca i32, align 4
  store %struct.in_mfilter* %0, %struct.in_mfilter** %5, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store %struct.in_msource** %2, %struct.in_msource*** %7, align 8
  store i32 0, i32* %11, align 4
  store %struct.ip_msource* null, %struct.ip_msource** %9, align 8
  store %struct.in_msource* null, %struct.in_msource** %10, align 8
  %12 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohl(i32 %15)
  %17 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %8, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @ip_msource_tree, align 4
  %19 = load %struct.in_mfilter*, %struct.in_mfilter** %5, align 8
  %20 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %19, i32 0, i32 1
  %21 = call %struct.ip_msource* @RB_FIND(i32 %18, i32* %20, %struct.ip_msource* %8)
  store %struct.ip_msource* %21, %struct.ip_msource** %9, align 8
  %22 = load %struct.ip_msource*, %struct.ip_msource** %9, align 8
  %23 = bitcast %struct.ip_msource* %22 to %struct.in_msource*
  store %struct.in_msource* %23, %struct.in_msource** %10, align 8
  %24 = load %struct.in_msource*, %struct.in_msource** %10, align 8
  %25 = icmp eq %struct.in_msource* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %3
  %27 = load %struct.in_mfilter*, %struct.in_mfilter** %5, align 8
  %28 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @in_mcast_maxsocksrc, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOSPC, align 4
  store i32 %33, i32* %4, align 4
  br label %65

34:                                               ; preds = %26
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = call %struct.in_msource* @inms_alloc(i32 %35)
  store %struct.in_msource* %36, %struct.in_msource** %10, align 8
  %37 = load %struct.in_msource*, %struct.in_msource** %10, align 8
  %38 = icmp eq %struct.in_msource* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %4, align 4
  br label %65

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.in_msource*, %struct.in_msource** %10, align 8
  %45 = getelementptr inbounds %struct.in_msource, %struct.in_msource* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @MCAST_UNDEFINED, align 4
  %47 = load %struct.in_msource*, %struct.in_msource** %10, align 8
  %48 = getelementptr inbounds %struct.in_msource, %struct.in_msource* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @ip_msource_tree, align 4
  %52 = load %struct.in_mfilter*, %struct.in_mfilter** %5, align 8
  %53 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %52, i32 0, i32 1
  %54 = load %struct.in_msource*, %struct.in_msource** %10, align 8
  %55 = bitcast %struct.in_msource* %54 to %struct.ip_msource*
  %56 = call i32 @RB_INSERT(i32 %51, i32* %53, %struct.ip_msource* %55)
  %57 = load %struct.in_mfilter*, %struct.in_mfilter** %5, align 8
  %58 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %41, %3
  %62 = load %struct.in_msource*, %struct.in_msource** %10, align 8
  %63 = load %struct.in_msource**, %struct.in_msource*** %7, align 8
  store %struct.in_msource* %62, %struct.in_msource** %63, align 8
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %39, %32
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.ip_msource* @RB_FIND(i32, i32*, %struct.ip_msource*) #1

declare dso_local %struct.in_msource* @inms_alloc(i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.ip_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
