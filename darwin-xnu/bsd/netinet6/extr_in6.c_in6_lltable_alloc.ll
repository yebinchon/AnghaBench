; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_lltable_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_lltable_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32, i32 }
%struct.lltable = type { %struct.ifnet* }
%struct.ifnet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"sin_family %d\00", align 1
@LLE_IFADDR = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"lla_lookup: new lle malloc failed\0A\00", align 1
@LLE_STATIC = common dso_local global i32 0, align 4
@ND6_LLINFO_REACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llentry* (%struct.lltable*, i32, %struct.sockaddr*)* @in6_lltable_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llentry* @in6_lltable_alloc(%struct.lltable* %0, i32 %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.llentry*, align 8
  %5 = alloca %struct.lltable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.llentry*, align 8
  store %struct.lltable* %0, %struct.lltable** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %12 = bitcast %struct.sockaddr* %11 to i8*
  %13 = bitcast i8* %12 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %13, %struct.sockaddr_in6** %8, align 8
  %14 = load %struct.lltable*, %struct.lltable** %5, align 8
  %15 = getelementptr inbounds %struct.lltable, %struct.lltable* %14, i32 0, i32 0
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %9, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AF_INET6, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %24 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %22, i8* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @LLE_IFADDR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %3
  %33 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %36 = call i64 @in6_lltable_rtcheck(%struct.ifnet* %33, i32 %34, %struct.sockaddr* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store %struct.llentry* null, %struct.llentry** %4, align 8
  br label %87

39:                                               ; preds = %32, %3
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.llentry* @in6_lltable_new(i32* %41, i32 %42)
  store %struct.llentry* %43, %struct.llentry** %10, align 8
  %44 = load %struct.llentry*, %struct.llentry** %10, align 8
  %45 = icmp eq %struct.llentry* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @LOG_INFO, align 4
  %48 = call i32 @log(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store %struct.llentry* null, %struct.llentry** %4, align 8
  br label %87

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.llentry*, %struct.llentry** %10, align 8
  %52 = getelementptr inbounds %struct.llentry, %struct.llentry* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @LLE_IFADDR, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @LLE_IFADDR, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %49
  %59 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %60 = load %struct.llentry*, %struct.llentry** %10, align 8
  %61 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SDL(i32 %65)
  %67 = call i32 @LLADDR(i32 %66)
  %68 = call i32 @lltable_set_entry_addr(%struct.ifnet* %59, %struct.llentry* %60, i32 %67)
  %69 = load i32, i32* @LLE_STATIC, align 4
  %70 = load %struct.llentry*, %struct.llentry** %10, align 8
  %71 = getelementptr inbounds %struct.llentry, %struct.llentry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %58, %49
  %75 = load %struct.llentry*, %struct.llentry** %10, align 8
  %76 = getelementptr inbounds %struct.llentry, %struct.llentry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @LLE_STATIC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* @ND6_LLINFO_REACHABLE, align 4
  %83 = load %struct.llentry*, %struct.llentry** %10, align 8
  %84 = getelementptr inbounds %struct.llentry, %struct.llentry* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %74
  %86 = load %struct.llentry*, %struct.llentry** %10, align 8
  store %struct.llentry* %86, %struct.llentry** %4, align 8
  br label %87

87:                                               ; preds = %85, %46, %38
  %88 = load %struct.llentry*, %struct.llentry** %4, align 8
  ret %struct.llentry* %88
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @in6_lltable_rtcheck(%struct.ifnet*, i32, %struct.sockaddr*) #1

declare dso_local %struct.llentry* @in6_lltable_new(i32*, i32) #1

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i32 @lltable_set_entry_addr(%struct.ifnet*, %struct.llentry*, i32) #1

declare dso_local i32 @LLADDR(i32) #1

declare dso_local i32 @SDL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
