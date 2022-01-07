; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_rename.c_PlanRenameStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_rename.c_PlanRenameStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i8*, i32, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@AccessExclusiveLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PlanRenameStmt(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @InvalidOid, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @InvalidOid, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = call i32 @IsAlterTableRenameStmt(%struct.TYPE_10__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = call i32 @IsIndexRenameStmt(%struct.TYPE_10__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @IsPolicyRenameStmt(%struct.TYPE_10__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32*, i32** @NIL, align 8
  store i32* %24, i32** %3, align 8
  br label %76

25:                                               ; preds = %19, %15, %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AccessExclusiveLock, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @RangeVarGetRelid(i32 %28, i32 %29, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @OidIsValid(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %25
  %38 = load i32*, i32** @NIL, align 8
  store i32* %38, i32** %3, align 8
  br label %76

39:                                               ; preds = %25
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %48 [
    i32 128, label %43
    i32 132, label %43
    i32 133, label %43
    i32 129, label %43
    i32 130, label %43
    i32 131, label %45
  ]

43:                                               ; preds = %39, %39, %39, %39, %39
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %7, align 4
  br label %50

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @IndexGetRelation(i32 %46, i32 0)
  store i32 %47, i32* %7, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32*, i32** @NIL, align 8
  store i32* %49, i32** %3, align 8
  br label %76

50:                                               ; preds = %45, %43
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @IsDistributedTable(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** @NIL, align 8
  store i32* %56, i32** %3, align 8
  br label %76

57:                                               ; preds = %50
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = call i32 @ErrorIfUnsupportedRenameStmt(%struct.TYPE_10__* %58)
  %60 = call %struct.TYPE_11__* @palloc0(i32 24)
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %9, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @DDLTaskList(i32 %69, i8* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = call i32* @list_make1(%struct.TYPE_11__* %74)
  store i32* %75, i32** %3, align 8
  br label %76

76:                                               ; preds = %57, %55, %48, %37, %23
  %77 = load i32*, i32** %3, align 8
  ret i32* %77
}

declare dso_local i32 @IsAlterTableRenameStmt(%struct.TYPE_10__*) #1

declare dso_local i32 @IsIndexRenameStmt(%struct.TYPE_10__*) #1

declare dso_local i32 @IsPolicyRenameStmt(%struct.TYPE_10__*) #1

declare dso_local i32 @RangeVarGetRelid(i32, i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @IndexGetRelation(i32, i32) #1

declare dso_local i32 @IsDistributedTable(i32) #1

declare dso_local i32 @ErrorIfUnsupportedRenameStmt(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @palloc0(i32) #1

declare dso_local i32 @DDLTaskList(i32, i8*) #1

declare dso_local i32* @list_make1(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
