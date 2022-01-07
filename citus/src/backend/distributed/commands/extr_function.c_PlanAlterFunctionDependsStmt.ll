; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_PlanAlterFunctionDependsStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_PlanAlterFunctionDependsStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@creating_extension = common dso_local global i64 0, align 8
@NIL = common dso_local global i32* null, align 8
@EnableDependencyCreation = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"distrtibuted functions are not allowed to depend on an extension\00", align 1
@.str.1 = private unnamed_addr constant [139 x i8] c"Function \22%s\22 is already distributed. Functions from extensions are expected to be created on the workers by the extension they depend on.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PlanAlterFunctionDependsStmt(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @AssertObjectTypeIsFunctional(i32 %10)
  %12 = load i64, i64* @creating_extension, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32*, i32** @NIL, align 8
  store i32* %15, i32** %3, align 8
  br label %38

16:                                               ; preds = %2
  %17 = load i32, i32* @EnableDependencyCreation, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** @NIL, align 8
  store i32* %20, i32** %3, align 8
  br label %38

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = bitcast %struct.TYPE_3__* %22 to i32*
  %24 = call i32* @GetObjectAddressFromParseTree(i32* %23, i32 1)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @IsObjectDistributed(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32*, i32** @NIL, align 8
  store i32* %29, i32** %3, align 8
  br label %38

30:                                               ; preds = %21
  %31 = load i32*, i32** %6, align 8
  %32 = call i8* @getObjectIdentity(i32* %31)
  store i8* %32, i8** %7, align 8
  %33 = load i32, i32* @ERROR, align 4
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @errdetail(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = call i32 @ereport(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %30, %28, %19, %14
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

declare dso_local i32 @AssertObjectTypeIsFunctional(i32) #1

declare dso_local i32* @GetObjectAddressFromParseTree(i32*, i32) #1

declare dso_local i32 @IsObjectDistributed(i32*) #1

declare dso_local i8* @getObjectIdentity(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
