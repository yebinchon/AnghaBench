; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_get_astats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_get_astats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_ktable = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, %struct.pfr_walktree*)* }
%struct.pfr_walktree = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, %struct.pfr_walktree*)* }
%struct.pfr_kentryworkq = type { i32 }

@PFR_FLAG_ATOMIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PFRW_GET_ASTATS = common dso_local global i32 0, align 4
@pfr_walktree = common dso_local global i32 0, align 4
@PFR_FLAG_CLSTATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pfr_get_astats: corruption detected (%d).\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_get_astats(%struct.pfr_table* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfr_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfr_ktable*, align 8
  %11 = alloca %struct.pfr_walktree, align 4
  %12 = alloca %struct.pfr_kentryworkq, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pfr_table* %0, %struct.pfr_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = call i32 (...) @pf_calendar_time_second()
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @PFR_FLAG_ATOMIC, align 4
  %18 = call i32 @ACCEPT_FLAGS(i32 %16, i32 %17)
  %19 = load %struct.pfr_table*, %struct.pfr_table** %6, align 8
  %20 = call i64 @pfr_validate_table(%struct.pfr_table* %19, i32 0, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %117

24:                                               ; preds = %4
  %25 = load %struct.pfr_table*, %struct.pfr_table** %6, align 8
  %26 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %25)
  store %struct.pfr_ktable* %26, %struct.pfr_ktable** %10, align 8
  %27 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %28 = icmp eq %struct.pfr_ktable* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %31 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29, %24
  %37 = load i32, i32* @ESRCH, align 4
  store i32 %37, i32* %5, align 4
  br label %117

38:                                               ; preds = %29
  %39 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %40 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %47 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %117

50:                                               ; preds = %38
  %51 = call i32 @bzero(%struct.pfr_walktree* %11, i32 16)
  %52 = load i32, i32* @PFRW_GET_ASTATS, align 4
  %53 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 2
  store i32 %54, i32* %55, align 4
  %56 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %57 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %63 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_4__*, i32, %struct.pfr_walktree*)*, i32 (%struct.TYPE_4__*, i32, %struct.pfr_walktree*)** %65, align 8
  %67 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %68 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* @pfr_walktree, align 4
  %71 = call i32 %66(%struct.TYPE_4__* %69, i32 %70, %struct.pfr_walktree* %11)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %50
  %75 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %76 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_3__*, i32, %struct.pfr_walktree*)*, i32 (%struct.TYPE_3__*, i32, %struct.pfr_walktree*)** %78, align 8
  %80 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %81 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* @pfr_walktree, align 4
  %84 = call i32 %79(%struct.TYPE_3__* %82, i32 %83, %struct.pfr_walktree* %11)
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %74, %50
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @PFR_FLAG_CLSTATS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %95 = call i32 @pfr_enqueue_addrs(%struct.pfr_ktable* %94, %struct.pfr_kentryworkq* %12, i32* null, i32 0)
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @pfr_clstats_kentries(%struct.pfr_kentryworkq* %12, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %93, %88, %85
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %5, align 4
  br label %117

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @ENOTTY, align 4
  store i32 %111, i32* %5, align 4
  br label %117

112:                                              ; preds = %103
  %113 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %114 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %8, align 8
  store i32 %115, i32* %116, align 4
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %112, %107, %101, %45, %36, %22
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @pf_calendar_time_second(...) #1

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i64 @pfr_validate_table(%struct.pfr_table*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local i32 @bzero(%struct.pfr_walktree*, i32) #1

declare dso_local i32 @pfr_enqueue_addrs(%struct.pfr_ktable*, %struct.pfr_kentryworkq*, i32*, i32) #1

declare dso_local i32 @pfr_clstats_kentries(%struct.pfr_kentryworkq*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
