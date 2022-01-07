; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_dad_ns_output.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_dad_ns_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dadq = type { i32*, i32, i32 }
%struct.ifaddr = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.in6_ifaddr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@dad_enhanced = common dso_local global i64 0, align 8
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@ND_OPT_NONCE_LEN32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dadq*, %struct.ifaddr*)* @nd6_dad_ns_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_dad_ns_output(%struct.dadq* %0, %struct.ifaddr* %1) #0 {
  %3 = alloca %struct.dadq*, align 8
  %4 = alloca %struct.ifaddr*, align 8
  %5 = alloca %struct.in6_ifaddr*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.in6_addr, align 4
  store %struct.dadq* %0, %struct.dadq** %3, align 8
  store %struct.ifaddr* %1, %struct.ifaddr** %4, align 8
  %9 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %10 = bitcast %struct.ifaddr* %9 to %struct.in6_ifaddr*
  store %struct.in6_ifaddr* %10, %struct.in6_ifaddr** %5, align 8
  %11 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %12 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %11, i32 0, i32 0
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.dadq*, %struct.dadq** %3, align 8
  %15 = call i32 @DAD_LOCK(%struct.dadq* %14)
  %16 = load %struct.dadq*, %struct.dadq** %3, align 8
  %17 = getelementptr inbounds %struct.dadq, %struct.dadq* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.dadq*, %struct.dadq** %3, align 8
  %28 = call i32 @DAD_UNLOCK(%struct.dadq* %27)
  br label %90

29:                                               ; preds = %2
  %30 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.dadq*, %struct.dadq** %3, align 8
  %38 = call i32 @DAD_UNLOCK(%struct.dadq* %37)
  br label %90

39:                                               ; preds = %29
  %40 = load %struct.dadq*, %struct.dadq** %3, align 8
  %41 = getelementptr inbounds %struct.dadq, %struct.dadq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.dadq*, %struct.dadq** %3, align 8
  %45 = call i32 @DAD_UNLOCK(%struct.dadq* %44)
  %46 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %47 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %46, i32 0, i32 0
  %48 = call i32 @IFA_LOCK_SPIN(i32* %47)
  %49 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %50 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = bitcast %struct.in6_addr* %8 to i8*
  %53 = bitcast %struct.in6_addr* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %55 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %54, i32 0, i32 0
  %56 = call i32 @IFA_UNLOCK(i32* %55)
  %57 = load i64, i64* @dad_enhanced, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %39
  %60 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IFF_POINTOPOINT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @ND_OPT_NONCE_LEN32, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = call i32 (...) @RandomULong()
  %73 = load %struct.dadq*, %struct.dadq** %3, align 8
  %74 = getelementptr inbounds %struct.dadq, %struct.dadq* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %67

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %59, %39
  %84 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %85 = load %struct.dadq*, %struct.dadq** %3, align 8
  %86 = getelementptr inbounds %struct.dadq, %struct.dadq* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = call i32 @nd6_ns_output(%struct.ifnet* %84, i32* null, %struct.in6_addr* %8, i32* null, i32* %88)
  br label %90

90:                                               ; preds = %83, %36, %26
  ret void
}

declare dso_local i32 @DAD_LOCK(%struct.dadq*) #1

declare dso_local i32 @DAD_UNLOCK(%struct.dadq*) #1

declare dso_local i32 @IFA_LOCK_SPIN(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IFA_UNLOCK(i32*) #1

declare dso_local i32 @RandomULong(...) #1

declare dso_local i32 @nd6_ns_output(%struct.ifnet*, i32*, %struct.in6_addr*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
