; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_EnsureTableCanBeColocatedWith.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_EnsureTableCanBeColocatedWith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, i8 }
%struct.TYPE_5__ = type { i64 }

@InvalidOid = common dso_local global i64 0, align 8
@DISTRIBUTE_BY_HASH = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot distribute relation\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"Currently, colocate_with option is only supported for hash distributed tables.\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot colocate tables %s and %s\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Replication models don't match for %s and %s.\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Distribution column types don't match for %s and %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8, i64, i64)* @EnsureTableCanBeColocatedWith to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EnsureTableCanBeColocatedWith(i64 %0, i8 signext %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i8 %1, i8* %6, align 1
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.TYPE_6__* @DistributedTableCacheEntry(i64 %18)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %10, align 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %11, align 1
  %26 = load i64, i64* %8, align 8
  %27 = call %struct.TYPE_5__* @DistPartitionKey(i64 %26)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %12, align 8
  %28 = load i64, i64* @InvalidOid, align 8
  store i64 %28, i64* %13, align 8
  %29 = load i8, i8* %10, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %4
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @ereport(i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %34, %4
  %42 = load i8, i8* %11, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* %6, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i64, i64* %5, align 8
  %49 = call i8* @get_rel_name(i64 %48)
  store i8* %49, i8** %14, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i8* @get_rel_name(i64 %50)
  store i8* %51, i8** %15, align 8
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i8*, i8** %15, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %54)
  %56 = load i8*, i8** %15, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %56, i8* %57)
  %59 = call i32 @ereport(i32 %52, i32 %58)
  br label %60

60:                                               ; preds = %47, %41
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %60
  %68 = load i64, i64* %5, align 8
  %69 = call i8* @get_rel_name(i64 %68)
  store i8* %69, i8** %16, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i8* @get_rel_name(i64 %70)
  store i8* %71, i8** %17, align 8
  %72 = load i32, i32* @ERROR, align 4
  %73 = load i8*, i8** %17, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %73, i8* %74)
  %76 = load i8*, i8** %17, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %76, i8* %77)
  %79 = call i32 @ereport(i32 %72, i32 %78)
  br label %80

80:                                               ; preds = %67, %60
  ret void
}

declare dso_local %struct.TYPE_6__* @DistributedTableCacheEntry(i64) #1

declare dso_local %struct.TYPE_5__* @DistPartitionKey(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i8* @get_rel_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
