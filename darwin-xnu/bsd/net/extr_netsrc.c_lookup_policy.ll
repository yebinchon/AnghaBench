; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_netsrc.c_lookup_policy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_netsrc.c_lookup_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.in6_addrpolicy = type { i32 }
%struct.sockaddr = type { i64 }
%union.sockaddr_in_4_6 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@IN6ADDR_V4MAPPED_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in6_addrpolicy* (%struct.sockaddr*)* @lookup_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in6_addrpolicy* @lookup_policy(%struct.sockaddr* %0) #0 {
  %2 = alloca %struct.in6_addrpolicy*, align 8
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %union.sockaddr_in_4_6*, align 8
  %5 = alloca %struct.sockaddr_in6, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  %6 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %7 = bitcast %struct.sockaddr* %6 to i8*
  %8 = bitcast i8* %7 to %union.sockaddr_in_4_6*
  store %union.sockaddr_in_4_6* %8, %union.sockaddr_in_4_6** %4, align 8
  %9 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %4, align 8
  %10 = bitcast %union.sockaddr_in_4_6* %9 to %struct.TYPE_7__*
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_INET6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %4, align 8
  %17 = bitcast %union.sockaddr_in_4_6* %16 to %struct.sockaddr_in6*
  %18 = call %struct.in6_addrpolicy* @in6_addrsel_lookup_policy(%struct.sockaddr_in6* %17)
  store %struct.in6_addrpolicy* %18, %struct.in6_addrpolicy** %2, align 8
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  %27 = load i64, i64* @AF_INET6, align 8
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 1
  store i32 24, i32* %28, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 2
  %30 = bitcast %struct.TYPE_8__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.TYPE_8__* @IN6ADDR_V4MAPPED_INIT to i8*), i64 8, i1 false)
  %31 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %4, align 8
  %32 = bitcast %union.sockaddr_in_4_6* %31 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  store i32 %35, i32* %39, align 4
  %40 = call %struct.in6_addrpolicy* @in6_addrsel_lookup_policy(%struct.sockaddr_in6* %5)
  store %struct.in6_addrpolicy* %40, %struct.in6_addrpolicy** %2, align 8
  br label %43

41:                                               ; preds = %19
  br label %42

42:                                               ; preds = %41
  store %struct.in6_addrpolicy* null, %struct.in6_addrpolicy** %2, align 8
  br label %43

43:                                               ; preds = %42, %25, %15
  %44 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %2, align 8
  ret %struct.in6_addrpolicy* %44
}

declare dso_local %struct.in6_addrpolicy* @in6_addrsel_lookup_policy(%struct.sockaddr_in6*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
