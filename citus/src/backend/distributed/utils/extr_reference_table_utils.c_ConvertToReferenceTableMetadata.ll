; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_reference_table_utils.c_ConvertToReferenceTableMetadata.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_reference_table_utils.c_ConvertToReferenceTableMetadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISTRIBUTE_BY_NONE = common dso_local global i32 0, align 4
@REPLICATION_MODEL_2PC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ConvertToReferenceTableMetadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConvertToReferenceTableMetadata(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @TableColocationId(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = call i32 (...) @CreateReferenceTableColocationId()
  store i32 %13, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call signext i8 @ShardStorageType(i32 %14)
  store i8 %15, i8* %8, align 1
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @DeletePartitionRow(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DeleteColocationGroupIfNoTablesBelong(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @DeleteShardRow(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @DISTRIBUTE_BY_NONE, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @REPLICATION_MODEL_2PC, align 4
  %27 = call i32 @InsertIntoPgDistPartition(i32 %22, i32 %23, i32* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i8, i8* %8, align 1
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @InsertShardRow(i32 %28, i32 %29, i8 signext %30, i32* %31, i32* %32)
  ret void
}

declare dso_local i32 @TableColocationId(i32) #1

declare dso_local i32 @CreateReferenceTableColocationId(...) #1

declare dso_local signext i8 @ShardStorageType(i32) #1

declare dso_local i32 @DeletePartitionRow(i32) #1

declare dso_local i32 @DeleteColocationGroupIfNoTablesBelong(i32) #1

declare dso_local i32 @DeleteShardRow(i32) #1

declare dso_local i32 @InsertIntoPgDistPartition(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @InsertShardRow(i32, i32, i8 signext, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
