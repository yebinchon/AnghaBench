; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_ErrorIfNotSuitableToGetSize.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_ErrorIfNotSuitableToGetSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TABLE_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"cannot calculate the size because relation %s is not distributed\00", align 1
@DISTRIBUTE_BY_HASH = common dso_local global i64 0, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"cannot calculate the size because replication factor is greater than 1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ErrorIfNotSuitableToGetSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ErrorIfNotSuitableToGetSize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @IsDistributedTable(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i8* @get_rel_name(i32 %9)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @quote_literal_cstr(i8* %11)
  store i8* %12, i8** %4, align 8
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %15 = call i32 @errcode(i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 @ereport(i32 %13, i32 %17)
  br label %19

19:                                               ; preds = %8, %1
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @PartitionMethod(i32 %20)
  %22 = load i64, i64* @DISTRIBUTE_BY_HASH, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @SingleReplicatedTable(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @ereport(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %24, %19
  ret void
}

declare dso_local i32 @IsDistributedTable(i32) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i8* @quote_literal_cstr(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @PartitionMethod(i32) #1

declare dso_local i32 @SingleReplicatedTable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
