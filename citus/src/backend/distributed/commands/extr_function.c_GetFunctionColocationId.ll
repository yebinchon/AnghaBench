; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_GetFunctionColocationId.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_GetFunctionColocationId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_COLOCATION_ID = common dso_local global i32 0, align 4
@ShareLock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@ShardCount = common dso_local global i32 0, align 4
@ShardReplicationFactor = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"cannot distribute the function \22%s\22 since there is no table to colocate with\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"Provide a distributed table via \22colocate_with\22 option to create_distributed_function()\00", align 1
@ReplicationModel = common dso_local global i64 0, align 8
@REPLICATION_MODEL_COORDINATOR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [98 x i8] c"cannot create a function with a distribution argument when citus.replication_model is 'statement'\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"Set citus.replication_model to 'streaming' before creating distributed tables\00", align 1
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i64)* @GetFunctionColocationId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetFunctionColocationId(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @INVALID_COLOCATION_ID, align 4
  store i32 %12, i32* %7, align 4
  %13 = call i32 (...) @DistColocationRelationId()
  %14 = load i32, i32* @ShareLock, align 4
  %15 = call i32 @heap_open(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @NAMEDATALEN, align 4
  %18 = call i64 @pg_strncasecmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %3
  %21 = load i64, i64* @InvalidOid, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i32, i32* @ShardCount, align 4
  %23 = load i32, i32* @ShardReplicationFactor, align 4
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @ColocationId(i32 %22, i32 %23, i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @INVALID_COLOCATION_ID, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load i64, i64* %4, align 8
  %31 = call i8* @get_func_name(i64 %30)
  store i8* %31, i8** %10, align 8
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = call i32 @errhint(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @ereport(i32 %32, i32 %37)
  br label %39

39:                                               ; preds = %29, %20
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @ColocatedTableId(i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @InvalidOid, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @EnsureFunctionCanBeColocatedWithTable(i64 %46, i64 %47, i64 %48)
  br label %60

50:                                               ; preds = %39
  %51 = load i64, i64* @ReplicationModel, align 8
  %52 = load i64, i64* @REPLICATION_MODEL_COORDINATOR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @ERROR, align 4
  %56 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 @errhint(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0))
  %58 = call i32 @ereport(i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  br label %60

60:                                               ; preds = %59, %45
  br label %71

61:                                               ; preds = %3
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @cstring_to_text(i8* %62)
  %64 = call i64 @ResolveRelationId(i32 %63, i32 0)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @EnsureFunctionCanBeColocatedWithTable(i64 %65, i64 %66, i64 %67)
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @TableColocationId(i64 %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %61, %60
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @NoLock, align 4
  %74 = call i32 @heap_close(i32 %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @DistColocationRelationId(...) #1

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @ColocationId(i32, i32, i64) #1

declare dso_local i8* @get_func_name(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @ColocatedTableId(i32) #1

declare dso_local i32 @EnsureFunctionCanBeColocatedWithTable(i64, i64, i64) #1

declare dso_local i64 @ResolveRelationId(i32, i32) #1

declare dso_local i32 @cstring_to_text(i8*) #1

declare dso_local i32 @TableColocationId(i64) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
