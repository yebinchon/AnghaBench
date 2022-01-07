; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_lookup_addr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_lookup_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_kentry = type { i32 }
%struct.pfr_ktable = type { %struct.radix_node_head*, %struct.radix_node_head* }
%struct.radix_node_head = type { i32 }
%struct.pfr_addr = type { i32, i32, i32, i32 }
%union.sockaddr_union = type { i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pfr_kentry* (%struct.pfr_ktable*, %struct.pfr_addr*, i32)* @pfr_lookup_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %0, %struct.pfr_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.pfr_kentry*, align 8
  %5 = alloca %struct.pfr_ktable*, align 8
  %6 = alloca %struct.pfr_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.sockaddr_union, align 4
  %9 = alloca %union.sockaddr_union, align 4
  %10 = alloca %struct.radix_node_head*, align 8
  %11 = alloca %struct.pfr_kentry*, align 8
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %5, align 8
  store %struct.pfr_addr* %1, %struct.pfr_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @pf_lock, align 4
  %13 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %14 = call i32 @LCK_MTX_ASSERT(i32 %12, i32 %13)
  %15 = call i32 @bzero(%union.sockaddr_union* %8, i32 4)
  %16 = load %struct.pfr_addr*, %struct.pfr_addr** %6, align 8
  %17 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AF_INET, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = bitcast %union.sockaddr_union* %8 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pfr_addr*, %struct.pfr_addr** %6, align 8
  %25 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @FILLIN_SIN(i32 %23, i32 %26)
  %28 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %29 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %28, i32 0, i32 1
  %30 = load %struct.radix_node_head*, %struct.radix_node_head** %29, align 8
  store %struct.radix_node_head* %30, %struct.radix_node_head** %10, align 8
  br label %49

31:                                               ; preds = %3
  %32 = load %struct.pfr_addr*, %struct.pfr_addr** %6, align 8
  %33 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AF_INET6, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = bitcast %union.sockaddr_union* %8 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pfr_addr*, %struct.pfr_addr** %6, align 8
  %41 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @FILLIN_SIN6(i32 %39, i32 %42)
  %44 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %45 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %44, i32 0, i32 0
  %46 = load %struct.radix_node_head*, %struct.radix_node_head** %45, align 8
  store %struct.radix_node_head* %46, %struct.radix_node_head** %10, align 8
  br label %48

47:                                               ; preds = %31
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %4, align 8
  br label %97

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %21
  %50 = load %struct.pfr_addr*, %struct.pfr_addr** %6, align 8
  %51 = call i64 @ADDR_NETWORK(%struct.pfr_addr* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load %struct.pfr_addr*, %struct.pfr_addr** %6, align 8
  %55 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pfr_addr*, %struct.pfr_addr** %6, align 8
  %58 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pfr_prepare_network(%union.sockaddr_union* %9, i32 %56, i32 %59)
  %61 = load %struct.radix_node_head*, %struct.radix_node_head** %10, align 8
  %62 = call i64 @rn_lookup(%union.sockaddr_union* %8, %union.sockaddr_union* %9, %struct.radix_node_head* %61)
  %63 = inttoptr i64 %62 to %struct.pfr_kentry*
  store %struct.pfr_kentry* %63, %struct.pfr_kentry** %11, align 8
  %64 = load %struct.pfr_kentry*, %struct.pfr_kentry** %11, align 8
  %65 = icmp ne %struct.pfr_kentry* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %53
  %67 = load %struct.pfr_kentry*, %struct.pfr_kentry** %11, align 8
  %68 = call i64 @KENTRY_RNF_ROOT(%struct.pfr_kentry* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %11, align 8
  br label %71

71:                                               ; preds = %70, %66, %53
  br label %95

72:                                               ; preds = %49
  %73 = load %struct.radix_node_head*, %struct.radix_node_head** %10, align 8
  %74 = call i64 @rn_match(%union.sockaddr_union* %8, %struct.radix_node_head* %73)
  %75 = inttoptr i64 %74 to %struct.pfr_kentry*
  store %struct.pfr_kentry* %75, %struct.pfr_kentry** %11, align 8
  %76 = load %struct.pfr_kentry*, %struct.pfr_kentry** %11, align 8
  %77 = icmp ne %struct.pfr_kentry* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.pfr_kentry*, %struct.pfr_kentry** %11, align 8
  %80 = call i64 @KENTRY_RNF_ROOT(%struct.pfr_kentry* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %11, align 8
  br label %83

83:                                               ; preds = %82, %78, %72
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.pfr_kentry*, %struct.pfr_kentry** %11, align 8
  %88 = icmp ne %struct.pfr_kentry* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.pfr_kentry*, %struct.pfr_kentry** %11, align 8
  %91 = call i64 @KENTRY_NETWORK(%struct.pfr_kentry* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %11, align 8
  br label %94

94:                                               ; preds = %93, %89, %86, %83
  br label %95

95:                                               ; preds = %94, %71
  %96 = load %struct.pfr_kentry*, %struct.pfr_kentry** %11, align 8
  store %struct.pfr_kentry* %96, %struct.pfr_kentry** %4, align 8
  br label %97

97:                                               ; preds = %95, %47
  %98 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  ret %struct.pfr_kentry* %98
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @bzero(%union.sockaddr_union*, i32) #1

declare dso_local i32 @FILLIN_SIN(i32, i32) #1

declare dso_local i32 @FILLIN_SIN6(i32, i32) #1

declare dso_local i64 @ADDR_NETWORK(%struct.pfr_addr*) #1

declare dso_local i32 @pfr_prepare_network(%union.sockaddr_union*, i32, i32) #1

declare dso_local i64 @rn_lookup(%union.sockaddr_union*, %union.sockaddr_union*, %struct.radix_node_head*) #1

declare dso_local i64 @KENTRY_RNF_ROOT(%struct.pfr_kentry*) #1

declare dso_local i64 @rn_match(%union.sockaddr_union*, %struct.radix_node_head*) #1

declare dso_local i64 @KENTRY_NETWORK(%struct.pfr_kentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
