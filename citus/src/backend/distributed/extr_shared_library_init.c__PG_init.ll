; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/extr_shared_library_init.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/extr_shared_library_init.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@process_shared_preload_libraries_in_progress = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Citus can only be loaded via shared_preload_libraries\00", align 1
@.str.1 = private unnamed_addr constant [175 x i8] c"Add citus to shared_preload_libraries configuration variable in postgresql.conf in master and workers. Note that citus should be at the beginning of shared_preload_libraries.\00", align 1
@planner_hook = common dso_local global i32* null, align 8
@ProcessUtility_hook = common dso_local global i32* null, align 8
@ExecutorStart_hook = common dso_local global i32* null, align 8
@ExecutorRun_hook = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Citus has to be loaded first\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Place citus at the beginning of shared_preload_libraries.\00", align 1
@IsUnderPostmaster = common dso_local global i32 0, align 4
@distributed_planner = common dso_local global i32* null, align 8
@multi_ProcessUtility = common dso_local global i32* null, align 8
@multi_relation_restriction_hook = common dso_local global i32 0, align 4
@set_rel_pathlist_hook = common dso_local global i32 0, align 4
@multi_join_restriction_hook = common dso_local global i32 0, align 4
@set_join_pathlist_hook = common dso_local global i32 0, align 4
@CitusExecutorStart = common dso_local global i32* null, align 8
@CitusExecutorRun = common dso_local global i32* null, align 8
@multi_log_hook = common dso_local global i32 0, align 4
@emit_log_hook = common dso_local global i32 0, align 4
@IsBinaryUpgrade = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"allow_system_table_mods\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@PGC_POSTMASTER = common dso_local global i32 0, align 4
@PGC_S_OVERRIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = load i32, i32* @process_shared_preload_libraries_in_progress, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @ERROR, align 4
  %5 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @errhint(i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @ereport(i32 %4, i32 %6)
  br label %8

8:                                                ; preds = %3, %0
  %9 = load i32*, i32** @planner_hook, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = load i32*, i32** @ProcessUtility_hook, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i32*, i32** @ExecutorStart_hook, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** @ExecutorRun_hook, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17, %14, %11, %8
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @errhint(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @ereport(i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %20, %17
  %26 = call i32 (...) @ResizeStackToMaximumDepth()
  %27 = load i32, i32* @IsUnderPostmaster, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call i32 (...) @CreateRequiredDirectories()
  br label %31

31:                                               ; preds = %29, %25
  %32 = call i32 (...) @InitConnParams()
  %33 = call i32 (...) @RegisterCitusConfigVariables()
  %34 = call i32 (...) @RegisterNodes()
  %35 = call i32 (...) @RegisterCitusCustomScanMethods()
  %36 = load i32*, i32** @distributed_planner, align 8
  store i32* %36, i32** @planner_hook, align 8
  %37 = load i32*, i32** @multi_ProcessUtility, align 8
  store i32* %37, i32** @ProcessUtility_hook, align 8
  %38 = load i32, i32* @multi_relation_restriction_hook, align 4
  store i32 %38, i32* @set_rel_pathlist_hook, align 4
  %39 = load i32, i32* @multi_join_restriction_hook, align 4
  store i32 %39, i32* @set_join_pathlist_hook, align 4
  %40 = load i32*, i32** @CitusExecutorStart, align 8
  store i32* %40, i32** @ExecutorStart_hook, align 8
  %41 = load i32*, i32** @CitusExecutorRun, align 8
  store i32* %41, i32** @ExecutorRun_hook, align 8
  %42 = load i32, i32* @multi_log_hook, align 4
  store i32 %42, i32* @emit_log_hook, align 4
  %43 = call i32 (...) @InitializeMaintenanceDaemon()
  %44 = call i32 (...) @TaskTrackerRegister()
  %45 = call i32 (...) @InitializeTransactionManagement()
  %46 = call i32 (...) @InitializeBackendManagement()
  %47 = call i32 (...) @InitializeConnectionManagement()
  %48 = call i32 (...) @InitPlacementConnectionManagement()
  %49 = call i32 (...) @InitializeCitusQueryStats()
  %50 = load i64, i64* @IsBinaryUpgrade, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %31
  %53 = load i32, i32* @PGC_POSTMASTER, align 4
  %54 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %55 = call i32 @SetConfigOption(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %31
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @ResizeStackToMaximumDepth(...) #1

declare dso_local i32 @CreateRequiredDirectories(...) #1

declare dso_local i32 @InitConnParams(...) #1

declare dso_local i32 @RegisterCitusConfigVariables(...) #1

declare dso_local i32 @RegisterNodes(...) #1

declare dso_local i32 @RegisterCitusCustomScanMethods(...) #1

declare dso_local i32 @InitializeMaintenanceDaemon(...) #1

declare dso_local i32 @TaskTrackerRegister(...) #1

declare dso_local i32 @InitializeTransactionManagement(...) #1

declare dso_local i32 @InitializeBackendManagement(...) #1

declare dso_local i32 @InitializeConnectionManagement(...) #1

declare dso_local i32 @InitPlacementConnectionManagement(...) #1

declare dso_local i32 @InitializeCitusQueryStats(...) #1

declare dso_local i32 @SetConfigOption(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
