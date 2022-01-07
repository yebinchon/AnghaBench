; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_EnsureFunctionCanBeColocatedWithTable.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_EnsureFunctionCanBeColocatedWithTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, i8 }
%struct.TYPE_5__ = type { i64 }

@InvalidOid = common dso_local global i64 0, align 8
@DISTRIBUTE_BY_HASH = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [121 x i8] c"cannot colocate function \22%s\22 and table \22%s\22 because colocate_with option is only supported for hash distributed tables.\00", align 1
@REPLICATION_MODEL_STREAMING = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot colocate function \22%s\22 and table \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [126 x i8] c"Citus currently only supports colocating function with distributed tables that are created using streaming replication model.\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"When distributing tables make sure that citus.replication_model = 'streaming'\00", align 1
@COERCION_PATH_NONE = common dso_local global i64 0, align 8
@COERCION_EXPLICIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [121 x i8] c"cannot colocate function \22%s\22 and table \22%s\22 because distribution column types don't match and there is no coercion path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @EnsureFunctionCanBeColocatedWithTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EnsureFunctionCanBeColocatedWithTable(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.TYPE_6__* @DistributedTableCacheEntry(i64 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %8, align 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %9, align 1
  %28 = load i64, i64* %6, align 8
  %29 = call %struct.TYPE_5__* @DistPartitionKey(i64 %28)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %10, align 8
  %30 = load i64, i64* @InvalidOid, align 8
  store i64 %30, i64* %11, align 8
  %31 = load i8, i8* %8, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %3
  %37 = load i64, i64* %4, align 8
  %38 = call i8* @get_func_name(i64 %37)
  store i8* %38, i8** %12, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i8* @get_rel_name(i64 %39)
  store i8* %40, i8** %13, align 8
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  %47 = call i32 @ereport(i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %36, %3
  %49 = load i8, i8* %9, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @REPLICATION_MODEL_STREAMING, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load i64, i64* %4, align 8
  %56 = call i8* @get_func_name(i64 %55)
  store i8* %56, i8** %14, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i8* @get_rel_name(i64 %57)
  store i8* %58, i8** %15, align 8
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i8*, i8** %14, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* %61)
  %63 = call i32 @errdetail(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.2, i64 0, i64 0))
  %64 = call i32 @errhint(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 @ereport(i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %54, %48
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  %74 = load i64, i64* @InvalidOid, align 8
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* @COERCION_PATH_NONE, align 8
  store i64 %75, i64* %17, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* @COERCION_EXPLICIT, align 4
  %79 = call i64 @find_coercion_pathway(i64 %76, i64 %77, i32 %78, i64* %16)
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* @COERCION_PATH_NONE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %73
  %84 = load i64, i64* %4, align 8
  %85 = call i8* @get_func_name(i64 %84)
  store i8* %85, i8** %18, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i8* @get_rel_name(i64 %86)
  store i8* %87, i8** %19, align 8
  %88 = load i32, i32* @ERROR, align 4
  %89 = load i8*, i8** %19, align 8
  %90 = load i8*, i8** %18, align 8
  %91 = call i32 @errmsg(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.4, i64 0, i64 0), i8* %89, i8* %90)
  %92 = call i32 @ereport(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %83, %73
  br label %94

94:                                               ; preds = %93, %66
  ret void
}

declare dso_local %struct.TYPE_6__* @DistributedTableCacheEntry(i64) #1

declare dso_local %struct.TYPE_5__* @DistPartitionKey(i64) #1

declare dso_local i8* @get_func_name(i64) #1

declare dso_local i8* @get_rel_name(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @find_coercion_pathway(i64, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
