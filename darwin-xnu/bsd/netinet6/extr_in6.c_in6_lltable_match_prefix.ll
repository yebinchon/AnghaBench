; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_lltable_match_prefix.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_lltable_match_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.llentry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.sockaddr_in6 = type { %struct.in6_addr }

@LLE_IFADDR = common dso_local global i32 0, align 4
@LLE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, i32, %struct.llentry*)* @in6_lltable_match_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_lltable_match_prefix(%struct.sockaddr* %0, %struct.sockaddr* %1, i32 %2, %struct.llentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.llentry*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.llentry* %3, %struct.llentry** %9, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = bitcast %struct.sockaddr* %13 to i8*
  %15 = bitcast i8* %14 to %struct.sockaddr_in6*
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  store %struct.in6_addr* %16, %struct.in6_addr** %10, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %18 = bitcast %struct.sockaddr* %17 to i8*
  %19 = bitcast i8* %18 to %struct.sockaddr_in6*
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 0
  store %struct.in6_addr* %20, %struct.in6_addr** %11, align 8
  %21 = load %struct.llentry*, %struct.llentry** %9, align 8
  %22 = getelementptr inbounds %struct.llentry, %struct.llentry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.in6_addr* %23, %struct.in6_addr** %12, align 8
  %24 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %25 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %26 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %27 = call i64 @IN6_ARE_MASKED_ADDR_EQUAL(%struct.in6_addr* %24, %struct.in6_addr* %25, %struct.in6_addr* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %63

30:                                               ; preds = %4
  %31 = load %struct.llentry*, %struct.llentry** %9, align 8
  %32 = getelementptr inbounds %struct.llentry, %struct.llentry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LLE_IFADDR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %39 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %40 = call i64 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %38, %struct.in6_addr* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @LLE_STATIC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  br label %63

48:                                               ; preds = %42, %37
  store i32 0, i32* %5, align 4
  br label %63

49:                                               ; preds = %30
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @LLE_STATIC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load %struct.llentry*, %struct.llentry** %9, align 8
  %56 = getelementptr inbounds %struct.llentry, %struct.llentry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LLE_STATIC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54, %49
  store i32 1, i32* %5, align 4
  br label %63

62:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %61, %48, %47, %29
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @IN6_ARE_MASKED_ADDR_EQUAL(%struct.in6_addr*, %struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i64 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
