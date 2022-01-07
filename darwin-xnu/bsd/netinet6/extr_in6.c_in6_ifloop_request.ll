; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_ifloop_request.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_ifloop_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.rtentry = type { %struct.ifaddr* }
%struct.sockaddr = type { i32 }
%struct.in6_ifaddr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@in6mask128 = common dso_local global i32 0, align 4
@rnh_lock = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@RTF_LLINFO = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"in6_ifloop_request: %s operation failed for %s (errno=%d)\0A\00", align 1
@RTM_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@RTM_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ifaddr*)* @in6_ifloop_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_ifloop_request(i32 %0, %struct.ifaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifaddr*, align 8
  %5 = alloca %struct.sockaddr_in6, align 4
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ifaddr* %1, %struct.ifaddr** %4, align 8
  store %struct.rtentry* null, %struct.rtentry** %6, align 8
  %8 = call i32 @bzero(%struct.sockaddr_in6* %5, i32 12)
  %9 = load i32, i32* @AF_INET6, align 4
  %10 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  store i32 12, i32* %11, align 4
  %12 = load i32, i32* @in6mask128, align 4
  %13 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @rnh_lock, align 4
  %15 = call i32 @lck_mtx_lock(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %18 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %21 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  %24 = load i32, i32* @RTF_UP, align 4
  %25 = load i32, i32* @RTF_HOST, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RTF_LLINFO, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @rtrequest_locked(i32 %16, i32 %19, i32 %22, %struct.sockaddr* %23, i32 %28, %struct.rtentry** %6)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %2
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @RTM_ADD, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %39 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %40 = bitcast %struct.ifaddr* %39 to %struct.in6_ifaddr*
  %41 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @ip6_sprintf(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @log(i32 %33, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %32, %2
  %47 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %48 = icmp ne %struct.rtentry* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %51 = call i32 @RT_LOCK(%struct.rtentry* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @RTM_ADD, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %58 = icmp ne %struct.rtentry* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %61 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %62 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %61, i32 0, i32 0
  %63 = load %struct.ifaddr*, %struct.ifaddr** %62, align 8
  %64 = icmp ne %struct.ifaddr* %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %67 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %68 = call i32 @rtsetifa(%struct.rtentry* %66, %struct.ifaddr* %67)
  br label %69

69:                                               ; preds = %65, %59, %56, %52
  %70 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %71 = icmp ne %struct.rtentry* %70, null
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %77 = call i32 @rt_newaddrmsg(i32 %73, %struct.ifaddr* %74, i32 %75, %struct.rtentry* %76)
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @RTM_DELETE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %83 = call i32 @RT_UNLOCK(%struct.rtentry* %82)
  %84 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %85 = call i32 @rtfree_locked(%struct.rtentry* %84)
  br label %91

86:                                               ; preds = %72
  %87 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %88 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %87)
  %89 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %90 = call i32 @RT_UNLOCK(%struct.rtentry* %89)
  br label %91

91:                                               ; preds = %86, %81
  br label %92

92:                                               ; preds = %91, %69
  %93 = load i32, i32* @rnh_lock, align 4
  %94 = call i32 @lck_mtx_unlock(i32 %93)
  ret void
}

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @rtrequest_locked(i32, i32, i32, %struct.sockaddr*, i32, %struct.rtentry**) #1

declare dso_local i32 @log(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @ip6_sprintf(i32*) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @rtsetifa(%struct.rtentry*, %struct.ifaddr*) #1

declare dso_local i32 @rt_newaddrmsg(i32, %struct.ifaddr*, i32, %struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtfree_locked(%struct.rtentry*) #1

declare dso_local i32 @RT_REMREF_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
