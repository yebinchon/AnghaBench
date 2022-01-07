; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_lltable_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_lltable_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32 }
%struct.lltable = type { i32, i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"sin_family %d\00", align 1
@LLE_UNLOCKED = common dso_local global i32 0, align 4
@LLE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"wrong lle request flags: 0x%X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llentry* (%struct.lltable*, i32, %struct.sockaddr*)* @in6_lltable_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llentry* @in6_lltable_lookup(%struct.lltable* %0, i32 %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.llentry*, align 8
  %5 = alloca %struct.lltable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.llentry*, align 8
  store %struct.lltable* %0, %struct.lltable** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %11 = bitcast %struct.sockaddr* %10 to i8*
  %12 = bitcast i8* %11 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %12, %struct.sockaddr_in6** %8, align 8
  %13 = load %struct.lltable*, %struct.lltable** %5, align 8
  %14 = getelementptr inbounds %struct.lltable, %struct.lltable* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.lltable*, %struct.lltable** %5, align 8
  %17 = getelementptr inbounds %struct.lltable, %struct.lltable* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IF_AFDATA_LOCK_ASSERT(i32 %15, i32 %18)
  %20 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET6, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @KASSERT(i32 %25, i8* %29)
  %31 = load %struct.lltable*, %struct.lltable** %5, align 8
  %32 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %32, i32 0, i32 0
  %34 = call %struct.llentry* @in6_lltable_find_dst(%struct.lltable* %31, i32* %33)
  store %struct.llentry* %34, %struct.llentry** %9, align 8
  %35 = load %struct.llentry*, %struct.llentry** %9, align 8
  %36 = icmp eq %struct.llentry* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store %struct.llentry* null, %struct.llentry** %4, align 8
  br label %72

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @LLE_UNLOCKED, align 4
  %41 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = load i32, i32* @LLE_UNLOCKED, align 4
  %45 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %46 = or i32 %44, %45
  %47 = icmp ne i32 %43, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @KASSERT(i32 %48, i8* %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @LLE_UNLOCKED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %38
  %58 = load %struct.llentry*, %struct.llentry** %9, align 8
  store %struct.llentry* %58, %struct.llentry** %4, align 8
  br label %72

59:                                               ; preds = %38
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.llentry*, %struct.llentry** %9, align 8
  %66 = call i32 @LLE_WLOCK(%struct.llentry* %65)
  br label %70

67:                                               ; preds = %59
  %68 = load %struct.llentry*, %struct.llentry** %9, align 8
  %69 = call i32 @LLE_RLOCK(%struct.llentry* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.llentry*, %struct.llentry** %9, align 8
  store %struct.llentry* %71, %struct.llentry** %4, align 8
  br label %72

72:                                               ; preds = %70, %57, %37
  %73 = load %struct.llentry*, %struct.llentry** %4, align 8
  ret %struct.llentry* %73
}

declare dso_local i32 @IF_AFDATA_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.llentry* @in6_lltable_find_dst(%struct.lltable*, i32*) #1

declare dso_local i32 @LLE_WLOCK(%struct.llentry*) #1

declare dso_local i32 @LLE_RLOCK(%struct.llentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
