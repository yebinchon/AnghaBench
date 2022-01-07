; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_stf.c_stf_getsrcifa6.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_stf.c_stf_getsrcifa6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { i32 }
%struct.ifnet = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ifaddr* }
%struct.ifaddr = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.ifaddr* }
%struct.in_ifaddr = type { %struct.ifaddr, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.sockaddr_in6 = type { i32 }
%struct.in_addr = type { i64 }

@AF_INET6 = common dso_local global i64 0, align 8
@in_ifaddr_rwlock = common dso_local global i32 0, align 4
@in_ifaddrhead = common dso_local global i32 0, align 4
@ia_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in6_ifaddr* (%struct.ifnet*)* @stf_getsrcifa6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in6_ifaddr* @stf_getsrcifa6(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.in6_ifaddr*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifaddr*, align 8
  %5 = alloca %struct.in_ifaddr*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca %struct.in_addr, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = call i32 @ifnet_lock_shared(%struct.ifnet* %8)
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  store %struct.ifaddr* %13, %struct.ifaddr** %4, align 8
  br label %14

14:                                               ; preds = %101, %1
  %15 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %16 = icmp ne %struct.ifaddr* %15, null
  br i1 %16, label %17, label %106

17:                                               ; preds = %14
  %18 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %19 = call i32 @IFA_LOCK(%struct.ifaddr* %18)
  %20 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %21 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp eq %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %26 = call i32 @IFA_UNLOCK(%struct.ifaddr* %25)
  br label %101

27:                                               ; preds = %17
  %28 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %29 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AF_INET6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %37 = call i32 @IFA_UNLOCK(%struct.ifaddr* %36)
  br label %101

38:                                               ; preds = %27
  %39 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %40 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = bitcast %struct.TYPE_8__* %41 to i8*
  %43 = bitcast i8* %42 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %43, %struct.sockaddr_in6** %6, align 8
  %44 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 0
  %46 = call i32 @IN6_IS_ADDR_6TO4(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %50 = call i32 @IFA_UNLOCK(%struct.ifaddr* %49)
  br label %101

51:                                               ; preds = %38
  %52 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %52, i32 0, i32 0
  %54 = call i32 @GET_V4(i32* %53)
  %55 = call i32 @bcopy(i32 %54, %struct.in_addr* %7, i32 8)
  %56 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %57 = call i32 @IFA_UNLOCK(%struct.ifaddr* %56)
  %58 = load i32, i32* @in_ifaddr_rwlock, align 4
  %59 = call i32 @lck_rw_lock_shared(i32 %58)
  %60 = call %struct.in_ifaddr* @TAILQ_FIRST(i32* @in_ifaddrhead)
  store %struct.in_ifaddr* %60, %struct.in_ifaddr** %5, align 8
  br label %61

61:                                               ; preds = %84, %51
  %62 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %63 = icmp ne %struct.in_ifaddr* %62, null
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %66 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %65, i32 0, i32 0
  %67 = call i32 @IFA_LOCK(%struct.ifaddr* %66)
  %68 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %69 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %78 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %77, i32 0, i32 0
  %79 = call i32 @IFA_UNLOCK(%struct.ifaddr* %78)
  br label %88

80:                                               ; preds = %64
  %81 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %82 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %81, i32 0, i32 0
  %83 = call i32 @IFA_UNLOCK(%struct.ifaddr* %82)
  br label %84

84:                                               ; preds = %80
  %85 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %86 = load i32, i32* @ia_link, align 4
  %87 = call %struct.in_ifaddr* @TAILQ_NEXT(%struct.in_ifaddr* %85, i32 %86)
  store %struct.in_ifaddr* %87, %struct.in_ifaddr** %5, align 8
  br label %61

88:                                               ; preds = %76, %61
  %89 = load i32, i32* @in_ifaddr_rwlock, align 4
  %90 = call i32 @lck_rw_done(i32 %89)
  %91 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %92 = icmp eq %struct.in_ifaddr* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %101

94:                                               ; preds = %88
  %95 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %96 = call i32 @IFA_ADDREF(%struct.ifaddr* %95)
  %97 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %98 = call i32 @ifnet_lock_done(%struct.ifnet* %97)
  %99 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %100 = bitcast %struct.ifaddr* %99 to %struct.in6_ifaddr*
  store %struct.in6_ifaddr* %100, %struct.in6_ifaddr** %2, align 8
  br label %109

101:                                              ; preds = %93, %48, %35, %24
  %102 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %103 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.ifaddr*, %struct.ifaddr** %104, align 8
  store %struct.ifaddr* %105, %struct.ifaddr** %4, align 8
  br label %14

106:                                              ; preds = %14
  %107 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %108 = call i32 @ifnet_lock_done(%struct.ifnet* %107)
  store %struct.in6_ifaddr* null, %struct.in6_ifaddr** %2, align 8
  br label %109

109:                                              ; preds = %106, %94
  %110 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %2, align 8
  ret %struct.in6_ifaddr* %110
}

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @IFA_LOCK(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i32 @IN6_IS_ADDR_6TO4(i32*) #1

declare dso_local i32 @bcopy(i32, %struct.in_addr*, i32) #1

declare dso_local i32 @GET_V4(i32*) #1

declare dso_local i32 @lck_rw_lock_shared(i32) #1

declare dso_local %struct.in_ifaddr* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.in_ifaddr* @TAILQ_NEXT(%struct.in_ifaddr*, i32) #1

declare dso_local i32 @lck_rw_done(i32) #1

declare dso_local i32 @IFA_ADDREF(%struct.ifaddr*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
