; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_match_addr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_match_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pfr_ktable = type { i32, i32, i32, i32, i32, %struct.pfr_ktable* }
%struct.pf_addr = type { i32* }
%struct.pfr_kentry = type { i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@pfr_sin = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@pfr_sin6 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_match_addr(%struct.pfr_ktable* %0, %struct.pf_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfr_ktable*, align 8
  %6 = alloca %struct.pf_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pfr_kentry*, align 8
  %9 = alloca i32, align 4
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %5, align 8
  store %struct.pf_addr* %1, %struct.pf_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %8, align 8
  %10 = load i32, i32* @pf_lock, align 4
  %11 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %12 = call i32 @LCK_MTX_ASSERT(i32 %10, i32 %11)
  %13 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %14 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %21 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %20, i32 0, i32 5
  %22 = load %struct.pfr_ktable*, %struct.pfr_ktable** %21, align 8
  %23 = icmp ne %struct.pfr_ktable* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %26 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %25, i32 0, i32 5
  %27 = load %struct.pfr_ktable*, %struct.pfr_ktable** %26, align 8
  store %struct.pfr_ktable* %27, %struct.pfr_ktable** %5, align 8
  br label %28

28:                                               ; preds = %24, %19, %3
  %29 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %30 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %64

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %38 [
  ]

38:                                               ; preds = %36
  %39 = load %struct.pfr_kentry*, %struct.pfr_kentry** %8, align 8
  %40 = icmp ne %struct.pfr_kentry* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.pfr_kentry*, %struct.pfr_kentry** %8, align 8
  %43 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %54 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %62

57:                                               ; preds = %47
  %58 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %59 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %35
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
