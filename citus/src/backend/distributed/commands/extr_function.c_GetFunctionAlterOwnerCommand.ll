; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_GetFunctionAlterOwnerCommand.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_GetFunctionAlterOwnerCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@PROCOID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"FUNCTION\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@PROKIND_PROCEDURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"PROCEDURE\00", align 1
@PROKIND_AGGREGATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"AGGREGATE\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"cannot find function with oid: %d\00", align 1
@CurrentMemoryContext = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@regprocedureout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"ALTER %s %s OWNER TO %s;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @GetFunctionAlterOwnerCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GetFunctionAlterOwnerCommand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* @PROCOID, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @ObjectIdGetDatum(i32 %13)
  %15 = call i32 @SearchSysCache1(i32 %12, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = call %struct.TYPE_8__* (...) @makeStringInfo()
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %4, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %17 = load i32, i32* @InvalidOid, align 4
  store i32 %17, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @HeapTupleIsValid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @GETSTRUCT(i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %11, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PROKIND_PROCEDURE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %42

34:                                               ; preds = %21
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PROKIND_AGGREGATE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %41

41:                                               ; preds = %40, %34
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @ReleaseSysCache(i32 %43)
  br label %59

45:                                               ; preds = %1
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @OidIsValid(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @HeapTupleIsValid(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = call i32 @ereport(i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %53, %49
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i32, i32* @CurrentMemoryContext, align 4
  %61 = call %struct.TYPE_9__* @GetOverrideSearchPath(i32 %60)
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %9, align 8
  %62 = load i32, i32* @NIL, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = call i32 @PushOverrideSearchPath(%struct.TYPE_9__* %67)
  %69 = load i32, i32* @regprocedureout, align 4
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @ObjectIdGetDatum(i32 %70)
  %72 = call i32 @DirectFunctionCall1(i32 %69, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = call i32 (...) @PopOverrideSearchPath()
  %74 = load i32, i32* %10, align 4
  %75 = call i8* @DatumGetCString(i32 %74)
  store i8* %75, i8** %7, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i8* @GetUserNameFromId(i32 %76, i32 0)
  store i8* %77, i8** %8, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @quote_identifier(i8* %81)
  %83 = call i32 @appendStringInfo(%struct.TYPE_8__* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %79, i8* %80, i32 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  ret i8* %86
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local %struct.TYPE_8__* @makeStringInfo(...) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local %struct.TYPE_9__* @GetOverrideSearchPath(i32) #1

declare dso_local i32 @PushOverrideSearchPath(%struct.TYPE_9__*) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @PopOverrideSearchPath(...) #1

declare dso_local i8* @DatumGetCString(i32) #1

declare dso_local i8* @GetUserNameFromId(i32, i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_8__*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @quote_identifier(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
