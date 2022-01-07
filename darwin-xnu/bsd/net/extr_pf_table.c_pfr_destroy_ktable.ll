; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_destroy_ktable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_destroy_ktable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { %struct.TYPE_2__*, %struct.pfr_ktable*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.pfr_kentryworkq = type { i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@M_RTABLE = common dso_local global i32 0, align 4
@pfr_ktable_pl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_ktable*, i32)* @pfr_destroy_ktable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_destroy_ktable(%struct.pfr_ktable* %0, i32 %1) #0 {
  %3 = alloca %struct.pfr_ktable*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfr_kentryworkq, align 4
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @pf_lock, align 4
  %7 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %8 = call i32 @LCK_MTX_ASSERT(i32 %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %13 = call i32 @pfr_enqueue_addrs(%struct.pfr_ktable* %12, %struct.pfr_kentryworkq* %5, i32* null, i32 0)
  %14 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %15 = call i32 @pfr_clean_node_mask(%struct.pfr_ktable* %14, %struct.pfr_kentryworkq* %5)
  %16 = call i32 @pfr_destroy_kentries(%struct.pfr_kentryworkq* %5)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %19 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %24 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = load i32, i32* @M_RTABLE, align 4
  %28 = call i32 @_FREE(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %17
  %30 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %31 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %36 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = ptrtoint i32* %37 to i32
  %39 = load i32, i32* @M_RTABLE, align 4
  %40 = call i32 @_FREE(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %43 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %42, i32 0, i32 1
  %44 = load %struct.pfr_ktable*, %struct.pfr_ktable** %43, align 8
  %45 = icmp ne %struct.pfr_ktable* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %48 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %47, i32 0, i32 1
  %49 = load %struct.pfr_ktable*, %struct.pfr_ktable** %48, align 8
  %50 = load i32, i32* %4, align 4
  call void @pfr_destroy_ktable(%struct.pfr_ktable* %49, i32 %50)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %53 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %58 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %64 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 @pf_remove_if_empty_ruleset(%struct.TYPE_2__* %65)
  br label %67

67:                                               ; preds = %56, %51
  %68 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %69 = call i32 @pool_put(i32* @pfr_ktable_pl, %struct.pfr_ktable* %68)
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @pfr_enqueue_addrs(%struct.pfr_ktable*, %struct.pfr_kentryworkq*, i32*, i32) #1

declare dso_local i32 @pfr_clean_node_mask(%struct.pfr_ktable*, %struct.pfr_kentryworkq*) #1

declare dso_local i32 @pfr_destroy_kentries(%struct.pfr_kentryworkq*) #1

declare dso_local i32 @_FREE(i32, i32) #1

declare dso_local i32 @pf_remove_if_empty_ruleset(%struct.TYPE_2__*) #1

declare dso_local i32 @pool_put(i32*, %struct.pfr_ktable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
