; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet6_pr_module.c_ether_inet6_pre_output.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet6_pr_module.c_ether_inet6_pre_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_dl = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@M_LOOP = common dso_local global i32 0, align 4
@ETHERTYPE_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.mbuf**, %struct.sockaddr*, i8*, i8*, i8*)* @ether_inet6_pre_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ether_inet6_pre_output(i32 %0, i32 %1, %struct.mbuf** %2, %struct.sockaddr* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf**, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sockaddr_dl, align 4
  %17 = alloca %struct.mbuf*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.mbuf** %2, %struct.mbuf*** %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %19 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  store %struct.mbuf* %20, %struct.mbuf** %17, align 8
  %21 = load i32, i32* @M_LOOP, align 4
  %22 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %28 = ptrtoint %struct.sockaddr* %27 to i64
  %29 = inttoptr i64 %28 to %struct.sockaddr_in6*
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %31, align 8
  %33 = call i64 @nd6_lookup_ipv6(i32 %26, %struct.sockaddr_in6* %29, %struct.sockaddr_dl* %16, i32 4, i8* %30, %struct.mbuf* %32)
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %7
  %37 = load i32, i32* @ETHERTYPE_IPV6, align 4
  %38 = call i32 @htons(i32 %37)
  store i32 %38, i32* %18, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @bcopy(i32* %18, i8* %39, i32 4)
  %41 = call i32* @LLADDR(%struct.sockaddr_dl* %16)
  %42 = load i8*, i8** %14, align 8
  %43 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %16, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bcopy(i32* %41, i8* %42, i32 %44)
  br label %46

46:                                               ; preds = %36, %7
  %47 = load i64, i64* %15, align 8
  ret i64 %47
}

declare dso_local i64 @nd6_lookup_ipv6(i32, %struct.sockaddr_in6*, %struct.sockaddr_dl*, i32, i8*, %struct.mbuf*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bcopy(i32*, i8*, i32) #1

declare dso_local i32* @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
