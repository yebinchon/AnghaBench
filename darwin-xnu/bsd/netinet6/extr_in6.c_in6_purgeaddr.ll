; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_purgeaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_purgeaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.in6_ifaddr = type { i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.in6_multi_mship* }
%struct.in6_multi_mship = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@IFA_ROUTE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@RTF_HOST = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"in6_purgeaddr: failed to remove a route to the p2p destination: %s on %s, errno=%d\0A\00", align 1
@i6mm_chain = common dso_local global i32 0, align 4
@KEV_INET6_ADDR_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_purgeaddr(%struct.ifaddr* %0) #0 {
  %2 = alloca %struct.ifaddr*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.in6_ifaddr*, align 8
  %5 = alloca %struct.in6_multi_mship*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ifaddr* %0, %struct.ifaddr** %2, align 8
  %8 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %9 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %12 = bitcast %struct.ifaddr* %11 to %struct.in6_ifaddr*
  store %struct.in6_ifaddr* %12, %struct.in6_ifaddr** %4, align 8
  %13 = load i32, i32* @nd6_mutex, align 4
  %14 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %15 = call i32 @LCK_MTX_ASSERT(i32 %13, i32 %14)
  %16 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %17 = call i32 @nd6_dad_stop(%struct.ifaddr* %16)
  %18 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %19 = call i32 @IFA_LOCK(%struct.ifaddr* %18)
  %20 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %21 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFA_ROUTE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %71

26:                                               ; preds = %1
  %27 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %28 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %71

31:                                               ; preds = %26
  %32 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %33 = call i32 @IFA_UNLOCK(%struct.ifaddr* %32)
  %34 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %35 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AF_INET6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @RTF_HOST, align 4
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  store i32 %44, i32* %7, align 4
  %45 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %46 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %45, i32 0, i32 3
  %47 = load i32, i32* @RTM_DELETE, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @rtinit(i32* %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %55 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @ip6_sprintf(i32* %56)
  %58 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %59 = call i32 @if_name(%struct.ifnet* %58)
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @log(i32 %53, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %52, %43
  %63 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %64 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %63)
  %65 = load i32, i32* @IFA_ROUTE, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %68 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %62, %26, %1
  %72 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %73 = call i32 @IFA_UNLOCK(%struct.ifaddr* %72)
  %74 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %75 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %74, i32 0, i32 3
  %76 = call i32 @in6_ifremloop(i32* %75)
  %77 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %78 = call i32 @IFA_LOCK(%struct.ifaddr* %77)
  br label %79

79:                                               ; preds = %85, %71
  %80 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %81 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %82, align 8
  store %struct.in6_multi_mship* %83, %struct.in6_multi_mship** %5, align 8
  %84 = icmp ne %struct.in6_multi_mship* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %5, align 8
  %87 = load i32, i32* @i6mm_chain, align 4
  %88 = call i32 @LIST_REMOVE(%struct.in6_multi_mship* %86, i32 %87)
  %89 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %90 = call i32 @IFA_UNLOCK(%struct.ifaddr* %89)
  %91 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %5, align 8
  %92 = call i32 @in6_leavegroup(%struct.in6_multi_mship* %91)
  %93 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %94 = call i32 @IFA_LOCK(%struct.ifaddr* %93)
  br label %79

95:                                               ; preds = %79
  %96 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %97 = call i32 @IFA_UNLOCK(%struct.ifaddr* %96)
  %98 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %99 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %100 = call i32 @in6_unlink_ifa(%struct.in6_ifaddr* %98, %struct.ifnet* %99)
  %101 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %102 = load i32, i32* @KEV_INET6_ADDR_DELETED, align 4
  %103 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %104 = call i32 @in6_post_msg(%struct.ifnet* %101, i32 %102, %struct.in6_ifaddr* %103, i32* null)
  %105 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %106 = load i64, i64* @AF_INET6, align 8
  %107 = call i32 @ifnet_notify_address(%struct.ifnet* %105, i64 %106)
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @nd6_dad_stop(%struct.ifaddr*) #1

declare dso_local i32 @IFA_LOCK(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i32 @rtinit(i32*, i32, i32) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ip6_sprintf(i32*) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @IFA_LOCK_SPIN(%struct.ifaddr*) #1

declare dso_local i32 @in6_ifremloop(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.in6_multi_mship*, i32) #1

declare dso_local i32 @in6_leavegroup(%struct.in6_multi_mship*) #1

declare dso_local i32 @in6_unlink_ifa(%struct.in6_ifaddr*, %struct.ifnet*) #1

declare dso_local i32 @in6_post_msg(%struct.ifnet*, i32, %struct.in6_ifaddr*, i32*) #1

declare dso_local i32 @ifnet_notify_address(%struct.ifnet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
