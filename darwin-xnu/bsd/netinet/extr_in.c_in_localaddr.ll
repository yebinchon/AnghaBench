; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_in_localaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_in_localaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.in_ifaddr* }
%struct.in_ifaddr = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.in_ifaddr* }
%struct.in_addr = type { i32 }

@subnetsarelocal = common dso_local global i64 0, align 8
@in_ifaddr_rwlock = common dso_local global i32 0, align 4
@in_ifaddrhead = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_localaddr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_ifaddr*, align 8
  %6 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ntohl(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @IN_LINKLOCAL(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %94

14:                                               ; preds = %1
  %15 = load i64, i64* @subnetsarelocal, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = load i32, i32* @in_ifaddr_rwlock, align 4
  %19 = call i32 @lck_rw_lock_shared(i32 %18)
  %20 = load %struct.in_ifaddr*, %struct.in_ifaddr** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @in_ifaddrhead, i32 0, i32 0), align 8
  store %struct.in_ifaddr* %20, %struct.in_ifaddr** %5, align 8
  br label %21

21:                                               ; preds = %47, %17
  %22 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %23 = icmp ne %struct.in_ifaddr* %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %21
  %25 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %26 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %25, i32 0, i32 4
  %27 = call i32 @IFA_LOCK(i32* %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %30 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %28, %31
  %33 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %34 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %39 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %38, i32 0, i32 4
  %40 = call i32 @IFA_UNLOCK(i32* %39)
  %41 = load i32, i32* @in_ifaddr_rwlock, align 4
  %42 = call i32 @lck_rw_done(i32 %41)
  store i32 1, i32* %2, align 4
  br label %94

43:                                               ; preds = %24
  %44 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %45 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %44, i32 0, i32 4
  %46 = call i32 @IFA_UNLOCK(i32* %45)
  br label %47

47:                                               ; preds = %43
  %48 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %49 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.in_ifaddr*, %struct.in_ifaddr** %50, align 8
  store %struct.in_ifaddr* %51, %struct.in_ifaddr** %5, align 8
  br label %21

52:                                               ; preds = %21
  %53 = load i32, i32* @in_ifaddr_rwlock, align 4
  %54 = call i32 @lck_rw_done(i32 %53)
  br label %93

55:                                               ; preds = %14
  %56 = load i32, i32* @in_ifaddr_rwlock, align 4
  %57 = call i32 @lck_rw_lock_shared(i32 %56)
  %58 = load %struct.in_ifaddr*, %struct.in_ifaddr** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @in_ifaddrhead, i32 0, i32 0), align 8
  store %struct.in_ifaddr* %58, %struct.in_ifaddr** %5, align 8
  br label %59

59:                                               ; preds = %85, %55
  %60 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %61 = icmp ne %struct.in_ifaddr* %60, null
  br i1 %61, label %62, label %90

62:                                               ; preds = %59
  %63 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %64 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %63, i32 0, i32 4
  %65 = call i32 @IFA_LOCK(i32* %64)
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %68 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %66, %69
  %71 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %72 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %62
  %76 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %77 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %76, i32 0, i32 4
  %78 = call i32 @IFA_UNLOCK(i32* %77)
  %79 = load i32, i32* @in_ifaddr_rwlock, align 4
  %80 = call i32 @lck_rw_done(i32 %79)
  store i32 1, i32* %2, align 4
  br label %94

81:                                               ; preds = %62
  %82 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %83 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %82, i32 0, i32 4
  %84 = call i32 @IFA_UNLOCK(i32* %83)
  br label %85

85:                                               ; preds = %81
  %86 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %87 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load %struct.in_ifaddr*, %struct.in_ifaddr** %88, align 8
  store %struct.in_ifaddr* %89, %struct.in_ifaddr** %5, align 8
  br label %59

90:                                               ; preds = %59
  %91 = load i32, i32* @in_ifaddr_rwlock, align 4
  %92 = call i32 @lck_rw_done(i32 %91)
  br label %93

93:                                               ; preds = %90, %52
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %75, %37, %13
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @IN_LINKLOCAL(i32) #1

declare dso_local i32 @lck_rw_lock_shared(i32) #1

declare dso_local i32 @IFA_LOCK(i32*) #1

declare dso_local i32 @IFA_UNLOCK(i32*) #1

declare dso_local i32 @lck_rw_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
