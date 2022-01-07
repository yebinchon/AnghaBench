; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_ProcessAlterEnumStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_ProcessAlterEnumStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@DISABLE_DDL_PROPAGATION = common dso_local global i32 0, align 4
@ALL_WORKERS = common dso_local global i32 0, align 4
@RESPONSE_OKAY = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"not all workers applied change to enum\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"retry with: %s\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"make sure the coordinators can communicate with all workers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessAlterEnumStmt(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = bitcast %struct.TYPE_4__* %11 to i32*
  %13 = call i32* @GetObjectAddressFromParseTree(i32* %12, i32 0)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @ShouldPropagateAlterType(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %55

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = call i64 @AlterEnumIsAddValue(%struct.TYPE_4__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  %23 = load i32*, i32** @NIL, align 8
  store i32* %23, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = bitcast %struct.TYPE_4__* %24 to i32*
  %26 = call i8* @DeparseTreeNode(i32* %25)
  store i8* %26, i8** %8, align 8
  %27 = load i32, i32* @DISABLE_DDL_PROPAGATION, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32* @list_make2(i32 %27, i8* %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* @ALL_WORKERS, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @SendBareOptionalCommandListToWorkersAsUser(i32 %30, i32* %31, i32* null)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @RESPONSE_OKAY, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %22
  store i8* null, i8** %9, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = bitcast %struct.TYPE_4__* %42 to i32*
  %44 = call i8* @DeparseTreeNode(i32* %43)
  store i8* %44, i8** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @WARNING, align 4
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @errdetail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = call i32 @errhint(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 @ereport(i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %36, %22
  br label %55

55:                                               ; preds = %17, %54, %18
  ret void
}

declare dso_local i32* @GetObjectAddressFromParseTree(i32*, i32) #1

declare dso_local i32 @ShouldPropagateAlterType(i32*) #1

declare dso_local i64 @AlterEnumIsAddValue(%struct.TYPE_4__*) #1

declare dso_local i8* @DeparseTreeNode(i32*) #1

declare dso_local i32* @list_make2(i32, i8*) #1

declare dso_local i32 @SendBareOptionalCommandListToWorkersAsUser(i32, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
