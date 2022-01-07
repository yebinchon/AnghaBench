; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_unsol_na_output.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_unsol_na_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.ifaddr = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }
%struct.in6_ifaddr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.in6_addr }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@IFEF_IPV6_ND6ALT = common dso_local global i32 0, align 4
@in6addr_linklocal_allnodes = common dso_local global %struct.in6_addr zeroinitializer, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: sending unsolicited NA\0A\00", align 1
@ND_NA_FLAG_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifaddr*)* @nd6_unsol_na_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_unsol_na_output(%struct.ifaddr* %0) #0 {
  %2 = alloca %struct.ifaddr*, align 8
  %3 = alloca %struct.in6_ifaddr*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.in6_addr, align 4
  %6 = alloca %struct.in6_addr, align 4
  store %struct.ifaddr* %0, %struct.ifaddr** %2, align 8
  %7 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %8 = bitcast %struct.ifaddr* %7 to %struct.in6_ifaddr*
  store %struct.in6_ifaddr* %8, %struct.in6_ifaddr** %3, align 8
  %9 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %10 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %9, i32 0, i32 0
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_UP, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %1
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFEF_IPV6_ND6ALT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %18, %1
  br label %65

33:                                               ; preds = %25
  %34 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %35 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %34, i32 0, i32 0
  %36 = call i32 @IFA_LOCK_SPIN(i32* %35)
  %37 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %38 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = bitcast %struct.in6_addr* %6 to i8*
  %41 = bitcast %struct.in6_addr* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  %43 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %42, i32 0, i32 0
  %44 = call i32 @IFA_UNLOCK(i32* %43)
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = call i64 @in6_setscope(%struct.in6_addr* %6, %struct.ifnet* %45, i32* null)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %65

49:                                               ; preds = %33
  %50 = bitcast %struct.in6_addr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 bitcast (%struct.in6_addr* @in6addr_linklocal_allnodes to i8*), i64 4, i1 false)
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = call i64 @in6_setscope(%struct.in6_addr* %5, %struct.ifnet* %51, i32* null)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %65

55:                                               ; preds = %49
  %56 = load i32, i32* @LOG_INFO, align 4
  %57 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %58 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %57, i32 0, i32 0
  %59 = load %struct.ifnet*, %struct.ifnet** %58, align 8
  %60 = call i32 @if_name(%struct.ifnet* %59)
  %61 = call i32 @nd6log(i32 %60)
  %62 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %63 = load i32, i32* @ND_NA_FLAG_OVERRIDE, align 4
  %64 = call i32 @nd6_na_output(%struct.ifnet* %62, %struct.in6_addr* %5, %struct.in6_addr* %6, i32 %63, i32 1, i32* null)
  br label %65

65:                                               ; preds = %55, %54, %48, %32
  ret void
}

declare dso_local i32 @IFA_LOCK_SPIN(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IFA_UNLOCK(i32*) #1

declare dso_local i64 @in6_setscope(%struct.in6_addr*, %struct.ifnet*, i32*) #1

declare dso_local i32 @nd6log(i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @nd6_na_output(%struct.ifnet*, %struct.in6_addr*, %struct.in6_addr*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
