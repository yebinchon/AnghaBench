; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_clr_tstats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_clr_tstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktableworkq = type { i32 }
%struct.pfr_ktable = type { i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PFR_FLAG_ATOMIC = common dso_local global i32 0, align 4
@PFR_FLAG_DUMMY = common dso_local global i32 0, align 4
@PFR_FLAG_ADDRSTOO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pfr_ktablehead = common dso_local global i32 0, align 4
@pfr_ktables = common dso_local global i32 0, align 4
@pfrkt_workq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_clr_tstats(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfr_ktableworkq, align 4
  %11 = alloca %struct.pfr_ktable*, align 8
  %12 = alloca %struct.pfr_ktable, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %16 = call i32 (...) @pf_calendar_time_second()
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* @pf_lock, align 4
  %18 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %19 = call i32 @LCK_MTX_ASSERT(i32 %17, i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @PFR_FLAG_ATOMIC, align 4
  %22 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PFR_FLAG_ADDRSTOO, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ACCEPT_FLAGS(i32 %20, i32 %25)
  %27 = call i32 @SLIST_INIT(%struct.pfr_ktableworkq* %10)
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %60, %4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %12, i32 0, i32 0
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @COPYIN(i32 %33, i32* %34, i32 4, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @EFAULT, align 4
  store i32 %39, i32* %5, align 4
  br label %85

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %12, i32 0, i32 0
  %42 = call i32 @pfr_table_copyin_cleanup(i32* %41)
  %43 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %12, i32 0, i32 0
  %44 = call i64 @pfr_validate_table(i32* %43, i32 0, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %5, align 4
  br label %85

48:                                               ; preds = %40
  %49 = load i32, i32* @pfr_ktablehead, align 4
  %50 = call %struct.pfr_ktable* @RB_FIND(i32 %49, i32* @pfr_ktables, %struct.pfr_ktable* %12)
  store %struct.pfr_ktable* %50, %struct.pfr_ktable** %11, align 8
  %51 = load %struct.pfr_ktable*, %struct.pfr_ktable** %11, align 8
  %52 = icmp ne %struct.pfr_ktable* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.pfr_ktable*, %struct.pfr_ktable** %11, align 8
  %55 = load i32, i32* @pfrkt_workq, align 4
  %56 = call i32 @SLIST_INSERT_HEAD(%struct.pfr_ktableworkq* %10, %struct.pfr_ktable* %54, i32 %55)
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %53, %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %6, align 4
  br label %28

67:                                               ; preds = %28
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @PFR_FLAG_ADDRSTOO, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @pfr_clstats_ktables(%struct.pfr_ktableworkq* %10, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32*, i32** %8, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %14, align 4
  %83 = load i32*, i32** %8, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %78
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %46, %38
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @pf_calendar_time_second(...) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i32 @SLIST_INIT(%struct.pfr_ktableworkq*) #1

declare dso_local i64 @COPYIN(i32, i32*, i32, i32) #1

declare dso_local i32 @pfr_table_copyin_cleanup(i32*) #1

declare dso_local i64 @pfr_validate_table(i32*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @RB_FIND(i32, i32*, %struct.pfr_ktable*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.pfr_ktableworkq*, %struct.pfr_ktable*, i32) #1

declare dso_local i32 @pfr_clstats_ktables(%struct.pfr_ktableworkq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
