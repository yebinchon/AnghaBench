; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_route_kentry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_route_kentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { %struct.radix_node_head*, %struct.radix_node_head* }
%struct.radix_node_head = type { i32 }
%struct.pfr_kentry = type { i32, i32, i32, i32 }
%union.sockaddr_union = type { i32 }
%struct.radix_node = type { i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfr_ktable*, %struct.pfr_kentry*)* @pfr_route_kentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfr_route_kentry(%struct.pfr_ktable* %0, %struct.pfr_kentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfr_ktable*, align 8
  %5 = alloca %struct.pfr_kentry*, align 8
  %6 = alloca %union.sockaddr_union, align 4
  %7 = alloca %struct.radix_node*, align 8
  %8 = alloca %struct.radix_node_head*, align 8
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %4, align 8
  store %struct.pfr_kentry* %1, %struct.pfr_kentry** %5, align 8
  %9 = load i32, i32* @pf_lock, align 4
  %10 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %11 = call i32 @LCK_MTX_ASSERT(i32 %9, i32 %10)
  %12 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %13 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bzero(i32 %14, i32 4)
  %16 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %17 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AF_INET, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %23 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %22, i32 0, i32 1
  %24 = load %struct.radix_node_head*, %struct.radix_node_head** %23, align 8
  store %struct.radix_node_head* %24, %struct.radix_node_head** %8, align 8
  br label %37

25:                                               ; preds = %2
  %26 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %27 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AF_INET6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %33 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %32, i32 0, i32 0
  %34 = load %struct.radix_node_head*, %struct.radix_node_head** %33, align 8
  store %struct.radix_node_head* %34, %struct.radix_node_head** %8, align 8
  br label %36

35:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %69

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %39 = call i64 @KENTRY_NETWORK(%struct.pfr_kentry* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %43 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %46 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pfr_prepare_network(%union.sockaddr_union* %6, i32 %44, i32 %47)
  %49 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %50 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %49, i32 0, i32 1
  %51 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %52 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %53 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.radix_node* @rn_addroute(i32* %50, %union.sockaddr_union* %6, %struct.radix_node_head* %51, i32 %54)
  store %struct.radix_node* %55, %struct.radix_node** %7, align 8
  br label %64

56:                                               ; preds = %37
  %57 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %58 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %57, i32 0, i32 1
  %59 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %60 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %61 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.radix_node* @rn_addroute(i32* %58, %union.sockaddr_union* null, %struct.radix_node_head* %59, i32 %62)
  store %struct.radix_node* %63, %struct.radix_node** %7, align 8
  br label %64

64:                                               ; preds = %56, %41
  %65 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %66 = icmp eq %struct.radix_node* %65, null
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 -1, i32 0
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %35
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i64 @KENTRY_NETWORK(%struct.pfr_kentry*) #1

declare dso_local i32 @pfr_prepare_network(%union.sockaddr_union*, i32, i32) #1

declare dso_local %struct.radix_node* @rn_addroute(i32*, %union.sockaddr_union*, %struct.radix_node_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
