; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_drop_distributed_table.c_MasterRemoveDistributedTableMetadataFromWorkers.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_drop_distributed_table.c_MasterRemoveDistributedTableMetadataFromWorkers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EnableDDLPropagation = common dso_local global i32 0, align 4
@WORKERS_WITH_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @MasterRemoveDistributedTableMetadataFromWorkers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MasterRemoveDistributedTableMetadataFromWorkers(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @IsDistributedTable(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EnableDDLPropagation, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  br label %28

15:                                               ; preds = %11
  %16 = call i32 (...) @EnsureCoordinator()
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ShouldSyncTableMetadata(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %28

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @DistributionDeleteCommand(i8* %22, i8* %23)
  store i8* %24, i8** %7, align 8
  %25 = load i32, i32* @WORKERS_WITH_METADATA, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @SendCommandToWorkers(i32 %25, i8* %26)
  br label %28

28:                                               ; preds = %21, %20, %14
  ret void
}

declare dso_local i32 @IsDistributedTable(i32) #1

declare dso_local i32 @EnsureCoordinator(...) #1

declare dso_local i32 @ShouldSyncTableMetadata(i32) #1

declare dso_local i8* @DistributionDeleteCommand(i8*, i8*) #1

declare dso_local i32 @SendCommandToWorkers(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
