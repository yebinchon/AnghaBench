; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_fill_ip6_sockaddr_4_6.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_fill_ip6_sockaddr_4_6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sockaddr_in_4_6 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i32, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { i64* }

@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.sockaddr_in_4_6*, %struct.in6_addr*, i32)* @fill_ip6_sockaddr_4_6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_ip6_sockaddr_4_6(%union.sockaddr_in_4_6* %0, %struct.in6_addr* %1, i32 %2) #0 {
  %4 = alloca %union.sockaddr_in_4_6*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in6*, align 8
  store %union.sockaddr_in_4_6* %0, %union.sockaddr_in_4_6** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %4, align 8
  %9 = bitcast %union.sockaddr_in_4_6* %8 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %9, %struct.sockaddr_in6** %7, align 8
  %10 = load i32, i32* @AF_INET6, align 4
  %11 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %12 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 0
  store i32 32, i32* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 1
  %20 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %21 = bitcast %struct.in6_addr* %19 to i8*
  %22 = bitcast %struct.in6_addr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %23, i32 0, i32 1
  %25 = call i64 @IN6_IS_SCOPE_EMBED(%struct.in6_addr* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %3
  %28 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ntohs(i64 %33)
  %35 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %27, %3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @IN6_IS_SCOPE_EMBED(%struct.in6_addr*) #2

declare dso_local i32 @ntohs(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
