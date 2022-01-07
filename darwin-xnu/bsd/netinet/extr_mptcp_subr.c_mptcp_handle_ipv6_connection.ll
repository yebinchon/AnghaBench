; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_handle_ipv6_connection.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_handle_ipv6_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptses = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.mptsub = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.ifnet = type { i32 }
%struct.ipv6_prefix = type { i64 }
%struct.TYPE_6__ = type { %struct.ifnet* }

@NAT64_MAX_NUM_PREFIXES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mptses*, %struct.mptsub*)* @mptcp_handle_ipv6_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcp_handle_ipv6_connection(%struct.mptses* %0, %struct.mptsub* %1) #0 {
  %3 = alloca %struct.mptses*, align 8
  %4 = alloca %struct.mptsub*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mptses* %0, %struct.mptses** %3, align 8
  store %struct.mptsub* %1, %struct.mptsub** %4, align 8
  %12 = load i32, i32* @NAT64_MAX_NUM_PREFIXES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca %struct.ipv6_prefix, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.mptsub*, %struct.mptsub** %4, align 8
  %17 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %16, i32 0, i32 0
  %18 = load %struct.socket*, %struct.socket** %17, align 8
  store %struct.socket* %18, %struct.socket** %7, align 8
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = call %struct.TYPE_6__* @sotoinpcb(%struct.socket* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.ifnet*, %struct.ifnet** %21, align 8
  store %struct.ifnet* %22, %struct.ifnet** %8, align 8
  %23 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %24 = call i64 @ifnet_get_nat64prefix(%struct.ifnet* %23, %struct.ipv6_prefix* %15)
  %25 = load i64, i64* @ENOENT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %29 = call i32 @mptcp_ask_for_nat64(%struct.ifnet* %28)
  store i32 1, i32* %10, align 4
  br label %76

30:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %72, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @NAT64_MAX_NUM_PREFIXES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ipv6_prefix, %struct.ipv6_prefix* %15, i64 %37
  %39 = getelementptr inbounds %struct.ipv6_prefix, %struct.ipv6_prefix* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %72

43:                                               ; preds = %35
  %44 = load %struct.mptses*, %struct.mptses** %3, align 8
  %45 = getelementptr inbounds %struct.mptses, %struct.mptses* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ipv6_prefix, %struct.ipv6_prefix* %15, i64 %48
  %50 = load %struct.mptses*, %struct.mptses** %3, align 8
  %51 = getelementptr inbounds %struct.mptses, %struct.mptses* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = call i32 @mptcp_desynthesize_ipv6_addr(i32* %46, %struct.ipv6_prefix* %49, i32* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %43
  %57 = load %struct.mptses*, %struct.mptses** %3, align 8
  %58 = getelementptr inbounds %struct.mptses, %struct.mptses* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 16, i32* %59, align 4
  %60 = load i32, i32* @AF_INET, align 4
  %61 = load %struct.mptses*, %struct.mptses** %3, align 8
  %62 = getelementptr inbounds %struct.mptses, %struct.mptses* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 4
  %64 = load %struct.mptses*, %struct.mptses** %3, align 8
  %65 = getelementptr inbounds %struct.mptses, %struct.mptses* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mptses*, %struct.mptses** %3, align 8
  %69 = getelementptr inbounds %struct.mptses, %struct.mptses* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  br label %75

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %71, %42
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %31

75:                                               ; preds = %56, %31
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %27
  %77 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %10, align 4
  switch i32 %78, label %80 [
    i32 0, label %79
    i32 1, label %79
  ]

79:                                               ; preds = %76, %76
  ret void

80:                                               ; preds = %76
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_6__* @sotoinpcb(%struct.socket*) #2

declare dso_local i64 @ifnet_get_nat64prefix(%struct.ifnet*, %struct.ipv6_prefix*) #2

declare dso_local i32 @mptcp_ask_for_nat64(%struct.ifnet*) #2

declare dso_local i32 @mptcp_desynthesize_ipv6_addr(i32*, %struct.ipv6_prefix*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
