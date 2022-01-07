; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_is_new_addr_neighbor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_is_new_addr_neighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.nd_prefix* }
%struct.nd_prefix = type { i32, i32, %struct.TYPE_3__, %struct.ifnet*, %struct.nd_prefix* }
%struct.TYPE_3__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.sockaddr_in6 = type { i64, i32 }
%struct.ifaddr = type { %struct.ifnet* }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@nd_prefix = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NDPRF_ONLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in6*, %struct.ifnet*)* @nd6_is_new_addr_neighbor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd6_is_new_addr_neighbor(%struct.sockaddr_in6* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in6*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.nd_prefix*, align 8
  %7 = alloca %struct.ifaddr*, align 8
  %8 = alloca %struct.sockaddr_in6, align 8
  %9 = alloca i64, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  %10 = load i32, i32* @nd6_mutex, align 4
  %11 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %12 = call i32 @LCK_MTX_ASSERT(i32 %10, i32 %11)
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 1
  %15 = call i64 @IN6_IS_ADDR_LINKLOCAL(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %19 = bitcast %struct.sockaddr_in6* %8 to i8*
  %20 = bitcast %struct.sockaddr_in6* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i64 @sa6_recoverscope(%struct.sockaddr_in6* %8, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %103

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 1
  %27 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %28 = call i64 @in6_setscope(i32* %26, %struct.ifnet* %27, i64* %9)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %103

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %103

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %103

38:                                               ; preds = %2
  %39 = load %struct.nd_prefix*, %struct.nd_prefix** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nd_prefix, i32 0, i32 0), align 8
  store %struct.nd_prefix* %39, %struct.nd_prefix** %6, align 8
  br label %40

40:                                               ; preds = %80, %38
  %41 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %42 = icmp ne %struct.nd_prefix* %41, null
  br i1 %42, label %43, label %84

43:                                               ; preds = %40
  %44 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %45 = call i32 @NDPR_LOCK(%struct.nd_prefix* %44)
  %46 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %47 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %46, i32 0, i32 3
  %48 = load %struct.ifnet*, %struct.ifnet** %47, align 8
  %49 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %50 = icmp ne %struct.ifnet* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %53 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %52)
  br label %80

54:                                               ; preds = %43
  %55 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %56 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NDPRF_ONLINK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %63 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %62)
  br label %80

64:                                               ; preds = %54
  %65 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %66 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %68, i32 0, i32 1
  %70 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %71 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %70, i32 0, i32 1
  %72 = call i64 @IN6_ARE_MASKED_ADDR_EQUAL(i32* %67, i32* %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %76 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %75)
  store i32 1, i32* %3, align 4
  br label %103

77:                                               ; preds = %64
  %78 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %79 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %78)
  br label %80

80:                                               ; preds = %77, %61, %51
  %81 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %82 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %81, i32 0, i32 4
  %83 = load %struct.nd_prefix*, %struct.nd_prefix** %82, align 8
  store %struct.nd_prefix* %83, %struct.nd_prefix** %6, align 8
  br label %40

84:                                               ; preds = %40
  %85 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %86 = call i32 @SA(%struct.sockaddr_in6* %85)
  %87 = call %struct.ifaddr* @ifa_ifwithdstaddr(i32 %86)
  store %struct.ifaddr* %87, %struct.ifaddr** %7, align 8
  %88 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %89 = icmp ne %struct.ifaddr* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %92 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %91, i32 0, i32 0
  %93 = load %struct.ifnet*, %struct.ifnet** %92, align 8
  %94 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %95 = icmp eq %struct.ifnet* %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %98 = call i32 @IFA_REMREF(%struct.ifaddr* %97)
  store i32 1, i32* %3, align 4
  br label %103

99:                                               ; preds = %90
  %100 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %101 = call i32 @IFA_REMREF(%struct.ifaddr* %100)
  store %struct.ifaddr* null, %struct.ifaddr** %7, align 8
  br label %102

102:                                              ; preds = %99, %84
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %96, %74, %37, %36, %30, %24
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i64 @IN6_IS_ADDR_LINKLOCAL(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @sa6_recoverscope(%struct.sockaddr_in6*, i32) #1

declare dso_local i64 @in6_setscope(i32*, %struct.ifnet*, i64*) #1

declare dso_local i32 @NDPR_LOCK(%struct.nd_prefix*) #1

declare dso_local i32 @NDPR_UNLOCK(%struct.nd_prefix*) #1

declare dso_local i64 @IN6_ARE_MASKED_ADDR_EQUAL(i32*, i32*, i32*) #1

declare dso_local %struct.ifaddr* @ifa_ifwithdstaddr(i32) #1

declare dso_local i32 @SA(%struct.sockaddr_in6*) #1

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
