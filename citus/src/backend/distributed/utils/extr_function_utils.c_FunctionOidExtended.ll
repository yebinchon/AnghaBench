; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_function_utils.c_FunctionOidExtended.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_function_utils.c_FunctionOidExtended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@InvalidOid = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"function \22%s\22 does not exist\00", align 1
@ERRCODE_AMBIGUOUS_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"more than one function named \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FunctionOidExtended(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %10, align 8
  %17 = load i32, i32* @InvalidOid, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @quote_qualified_identifier(i8* %18, i8* %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = call i32* @stringToQualifiedNameList(i8* %21)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** @NIL, align 8
  store i32* %23, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = call %struct.TYPE_3__* @FuncnameGetCandidates(i32* %24, i32 %25, i32* %26, i32 0, i32 0, i32 1)
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %10, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = icmp eq %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @InvalidOid, align 4
  store i32 %34, i32* %5, align 4
  br label %60

35:                                               ; preds = %30
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = call i32 @ereport(i32 %36, i32 %40)
  br label %55

42:                                               ; preds = %4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_AMBIGUOUS_FUNCTION, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = call i32 @ereport(i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %47, %42
  br label %55

55:                                               ; preds = %54, %35
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %55, %33
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i8* @quote_qualified_identifier(i8*, i8*) #1

declare dso_local i32* @stringToQualifiedNameList(i8*) #1

declare dso_local %struct.TYPE_3__* @FuncnameGetCandidates(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
