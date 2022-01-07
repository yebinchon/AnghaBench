; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_CalcVis.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_CalcVis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numportals = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@BasePortalVis = common dso_local global i32 0, align 4
@fastvis = common dso_local global i64 0, align 8
@noPassageVis = common dso_local global i64 0, align 8
@passageVisOnly = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"creating leaf vis...\0A\00", align 1
@portalclusters = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Total visible clusters: %i\0A\00", align 1
@totalvis = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Average clusters visible: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CalcVis() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @numportals, align 4
  %3 = mul nsw i32 %2, 2
  %4 = load i32, i32* @qtrue, align 4
  %5 = load i32, i32* @BasePortalVis, align 4
  %6 = call i32 @RunThreadsOnIndividual(i32 %3, i32 %4, i32 %5)
  %7 = call i32 (...) @SortPortals()
  %8 = load i64, i64* @fastvis, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @CalcFastVis()
  br label %26

12:                                               ; preds = %0
  %13 = load i64, i64* @noPassageVis, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @CalcPortalVis()
  br label %25

17:                                               ; preds = %12
  %18 = load i64, i64* @passageVisOnly, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (...) @CalcPassageVis()
  br label %24

22:                                               ; preds = %17
  %23 = call i32 (...) @CalcPassagePortalVis()
  br label %24

24:                                               ; preds = %22, %20
  br label %25

25:                                               ; preds = %24, %15
  br label %26

26:                                               ; preds = %25, %10
  %27 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %35, %26
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @portalclusters, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @ClusterMerge(i32 %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %28

38:                                               ; preds = %28
  %39 = load i32, i32* @totalvis, align 4
  %40 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @totalvis, align 4
  %42 = load i32, i32* @portalclusters, align 4
  %43 = sdiv i32 %41, %42
  %44 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  ret void
}

declare dso_local i32 @RunThreadsOnIndividual(i32, i32, i32) #1

declare dso_local i32 @SortPortals(...) #1

declare dso_local i32 @CalcFastVis(...) #1

declare dso_local i32 @CalcPortalVis(...) #1

declare dso_local i32 @CalcPassageVis(...) #1

declare dso_local i32 @CalcPassagePortalVis(...) #1

declare dso_local i32 @_printf(i8*, ...) #1

declare dso_local i32 @ClusterMerge(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
