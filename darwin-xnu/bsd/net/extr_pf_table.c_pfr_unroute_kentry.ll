; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_unroute_kentry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_unroute_kentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { %struct.radix_node_head*, %struct.radix_node_head* }
%struct.radix_node_head = type { i32 }
%struct.pfr_kentry = type { i32, i32, i32 }
%union.sockaddr_union = type { i32 }
%struct.radix_node = type { i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pfr_unroute_kentry: delete failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfr_ktable*, %struct.pfr_kentry*)* @pfr_unroute_kentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfr_unroute_kentry(%struct.pfr_ktable* %0, %struct.pfr_kentry* %1) #0 {
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
  %13 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AF_INET, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %19 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %18, i32 0, i32 1
  %20 = load %struct.radix_node_head*, %struct.radix_node_head** %19, align 8
  store %struct.radix_node_head* %20, %struct.radix_node_head** %8, align 8
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %23 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AF_INET6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %29 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %28, i32 0, i32 0
  %30 = load %struct.radix_node_head*, %struct.radix_node_head** %29, align 8
  store %struct.radix_node_head* %30, %struct.radix_node_head** %8, align 8
  br label %32

31:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %60

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %17
  %34 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %35 = call i64 @KENTRY_NETWORK(%struct.pfr_kentry* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %39 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %42 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pfr_prepare_network(%union.sockaddr_union* %6, i32 %40, i32 %43)
  %45 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %46 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %45, i32 0, i32 0
  %47 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %48 = call %struct.radix_node* @rn_delete(i32* %46, %union.sockaddr_union* %6, %struct.radix_node_head* %47)
  store %struct.radix_node* %48, %struct.radix_node** %7, align 8
  br label %54

49:                                               ; preds = %33
  %50 = load %struct.pfr_kentry*, %struct.pfr_kentry** %5, align 8
  %51 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %50, i32 0, i32 0
  %52 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %53 = call %struct.radix_node* @rn_delete(i32* %51, %union.sockaddr_union* null, %struct.radix_node_head* %52)
  store %struct.radix_node* %53, %struct.radix_node** %7, align 8
  br label %54

54:                                               ; preds = %49, %37
  %55 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %56 = icmp eq %struct.radix_node* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %60

59:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %57, %31
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i64 @KENTRY_NETWORK(%struct.pfr_kentry*) #1

declare dso_local i32 @pfr_prepare_network(%union.sockaddr_union*, i32, i32) #1

declare dso_local %struct.radix_node* @rn_delete(i32*, %union.sockaddr_union*, %struct.radix_node_head*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
