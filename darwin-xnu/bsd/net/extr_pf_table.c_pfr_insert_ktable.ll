; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_insert_ktable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_insert_ktable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@pfr_ktablehead = common dso_local global i32 0, align 4
@pfr_ktables = common dso_local global i32 0, align 4
@pfr_ktable_cnt = common dso_local global i32 0, align 4
@PFR_REFCNT_ANCHOR = common dso_local global i64 0, align 8
@PFR_TFLAG_REFDANCHOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_ktable*)* @pfr_insert_ktable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_insert_ktable(%struct.pfr_ktable* %0) #0 {
  %2 = alloca %struct.pfr_ktable*, align 8
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %2, align 8
  %3 = load i32, i32* @pf_lock, align 4
  %4 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %5 = call i32 @LCK_MTX_ASSERT(i32 %3, i32 %4)
  %6 = load i32, i32* @pfr_ktablehead, align 4
  %7 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %8 = call i32 @RB_INSERT(i32 %6, i32* @pfr_ktables, %struct.pfr_ktable* %7)
  %9 = load i32, i32* @pfr_ktable_cnt, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @pfr_ktable_cnt, align 4
  %11 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %12 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  %16 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %17 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @PFR_REFCNT_ANCHOR, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %15
  %27 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %28 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.pfr_ktable*, %struct.pfr_ktable** %2, align 8
  %31 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PFR_TFLAG_REFDANCHOR, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @pfr_setflags_ktable(%struct.TYPE_2__* %29, i32 %36)
  br label %38

38:                                               ; preds = %26, %15
  br label %39

39:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.pfr_ktable*) #1

declare dso_local i32 @pfr_setflags_ktable(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
