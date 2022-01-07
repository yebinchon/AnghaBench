; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_table.c_ErrorIfUnsupportedAlterAddConstraintStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_table.c_ErrorIfUnsupportedAlterAddConstraintStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ExclusiveLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @ErrorIfUnsupportedAlterAddConstraintStmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ErrorIfUnsupportedAlterAddConstraintStmt(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @AlterTableGetLockLevel(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @AlterTableLookupRelation(%struct.TYPE_4__* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call signext i8 @PartitionMethod(i32 %16)
  store i8 %17, i8* %5, align 1
  %18 = load i32, i32* %4, align 4
  %19 = call i32* @DistPartitionKey(i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @TableColocationId(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ExclusiveLock, align 4
  %24 = call i32 @relation_open(i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i8, i8* %5, align 1
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ErrorIfUnsupportedConstraint(i32 %25, i8 signext %26, i32* %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @NoLock, align 4
  %32 = call i32 @relation_close(i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @AlterTableGetLockLevel(i32) #1

declare dso_local i32 @AlterTableLookupRelation(%struct.TYPE_4__*, i32) #1

declare dso_local signext i8 @PartitionMethod(i32) #1

declare dso_local i32* @DistPartitionKey(i32) #1

declare dso_local i32 @TableColocationId(i32) #1

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local i32 @ErrorIfUnsupportedConstraint(i32, i8 signext, i32*, i32) #1

declare dso_local i32 @relation_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
