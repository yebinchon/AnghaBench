; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_schema.c_PlanAlterTableSchemaStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_schema.c_PlanAlterTableSchemaStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@InvalidOid = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@AccessExclusiveLock = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"not propagating ALTER ... SET SCHEMA commands to worker nodes\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"Connect to worker nodes directly to manually change schemas of affected objects.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PlanAlterTableSchemaStmt(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @InvalidOid, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** @NIL, align 8
  store i32* %13, i32** %3, align 8
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @AccessExclusiveLock, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @RangeVarGetRelid(i32* %17, i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @OidIsValid(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @IsDistributedTable(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26, %14
  %31 = load i32*, i32** @NIL, align 8
  store i32* %31, i32** %3, align 8
  br label %38

32:                                               ; preds = %26
  %33 = load i32, i32* @WARNING, align 4
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @errhint(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @ereport(i32 %33, i32 %35)
  %37 = load i32*, i32** @NIL, align 8
  store i32* %37, i32** %3, align 8
  br label %38

38:                                               ; preds = %32, %30, %12
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

declare dso_local i32 @RangeVarGetRelid(i32*, i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @IsDistributedTable(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
