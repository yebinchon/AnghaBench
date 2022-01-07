; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_table.c_AlterInvolvesPartitionColumn.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_table.c_AlterInvolvesPartitionColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @AlterInvolvesPartitionColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AlterInvolvesPartitionColumn(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  store i32* null, i32** %8, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AlterTableGetLockLevel(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @AlterTableLookupRelation(%struct.TYPE_11__* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @OidIsValid(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

27:                                               ; preds = %2
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.TYPE_9__* @DistPartitionKey(i32 %28)
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32* @SearchSysCacheAttName(i32 %30, i8* %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @HeapTupleIsValid(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %27
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @GETSTRUCT(i32* %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %12, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %43, %36
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @ReleaseSysCache(i32* %53)
  br label %55

55:                                               ; preds = %52, %27
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %26
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @AlterTableGetLockLevel(i32) #1

declare dso_local i32 @AlterTableLookupRelation(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local %struct.TYPE_9__* @DistPartitionKey(i32) #1

declare dso_local i32* @SearchSysCacheAttName(i32, i8*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
