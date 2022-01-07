; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_address_is_wildcard.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_address_is_wildcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.necp_sockaddr_union = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.necp_sockaddr_union*)* @necp_address_is_wildcard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_address_is_wildcard(%union.necp_sockaddr_union* %0) #0 {
  %2 = alloca %union.necp_sockaddr_union*, align 8
  store %union.necp_sockaddr_union* %0, %union.necp_sockaddr_union** %2, align 8
  %3 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %2, align 8
  %4 = bitcast %union.necp_sockaddr_union* %3 to %struct.TYPE_7__*
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AF_INET, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %2, align 8
  %11 = bitcast %union.necp_sockaddr_union* %10 to %struct.TYPE_6__*
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INADDR_ANY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %32, label %17

17:                                               ; preds = %9, %1
  %18 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %2, align 8
  %19 = bitcast %union.necp_sockaddr_union* %18 to %struct.TYPE_7__*
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AF_INET6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %2, align 8
  %26 = bitcast %union.necp_sockaddr_union* %25 to %struct.TYPE_8__*
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i32* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %24, %17
  %31 = phi i1 [ false, %17 ], [ %29, %24 ]
  br label %32

32:                                               ; preds = %30, %9
  %33 = phi i1 [ true, %9 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
