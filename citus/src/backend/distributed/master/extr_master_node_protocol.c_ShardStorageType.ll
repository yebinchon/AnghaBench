; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_node_protocol.c_ShardStorageType.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_node_protocol.c_ShardStorageType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHARD_STORAGE_TABLE = common dso_local global i8 0, align 1
@RELKIND_FOREIGN_TABLE = common dso_local global i8 0, align 1
@SHARD_STORAGE_COLUMNAR = common dso_local global i8 0, align 1
@SHARD_STORAGE_FOREIGN = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unexpected relation type: %c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @ShardStorageType(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8 0, i8* %3, align 1
  %6 = load i32, i32* %2, align 4
  %7 = call signext i8 @get_rel_relkind(i32 %6)
  store i8 %7, i8* %4, align 1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @RegularTable(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i8, i8* @SHARD_STORAGE_TABLE, align 1
  store i8 %12, i8* %3, align 1
  br label %37

13:                                               ; preds = %1
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @RELKIND_FOREIGN_TABLE, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @CStoreTable(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8, i8* @SHARD_STORAGE_COLUMNAR, align 1
  store i8 %25, i8* %3, align 1
  br label %28

26:                                               ; preds = %19
  %27 = load i8, i8* @SHARD_STORAGE_FOREIGN, align 1
  store i8 %27, i8* %3, align 1
  br label %28

28:                                               ; preds = %26, %24
  br label %36

29:                                               ; preds = %13
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i8, i8* %4, align 1
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8 signext %33)
  %35 = call i32 @ereport(i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %29, %28
  br label %37

37:                                               ; preds = %36, %11
  %38 = load i8, i8* %3, align 1
  ret i8 %38
}

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i64 @RegularTable(i32) #1

declare dso_local i32 @CStoreTable(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
