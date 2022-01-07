; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_table_count.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_table_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pfr_table = type { i64* }
%struct.pf_ruleset = type { i32 }

@PFR_FLAG_ALLRSETS = common dso_local global i32 0, align 4
@pfr_ktable_cnt = common dso_local global i32 0, align 4
@pf_main_ruleset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfr_table*, i32)* @pfr_table_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfr_table_count(%struct.pfr_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfr_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pf_ruleset*, align 8
  store %struct.pfr_table* %0, %struct.pfr_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @PFR_FLAG_ALLRSETS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @pfr_ktable_cnt, align 4
  store i32 %12, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.pfr_table*, %struct.pfr_table** %4, align 8
  %15 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load %struct.pfr_table*, %struct.pfr_table** %4, align 8
  %22 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = call %struct.pf_ruleset* @pf_find_ruleset(i64* %23)
  store %struct.pf_ruleset* %24, %struct.pf_ruleset** %6, align 8
  %25 = load %struct.pf_ruleset*, %struct.pf_ruleset** %6, align 8
  %26 = icmp ne %struct.pf_ruleset* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.pf_ruleset*, %struct.pf_ruleset** %6, align 8
  %29 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %32

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %30, %27 ], [ -1, %31 ]
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %13
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pf_main_ruleset, i32 0, i32 0), align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %32, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.pf_ruleset* @pf_find_ruleset(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
