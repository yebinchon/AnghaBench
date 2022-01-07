; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_deparse_function_stmts.c_AppendFunctionName.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_deparse_function_stmts.c_AppendFunctionName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@PROCOID = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@pg_get_function_identity_arguments = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*, i32)* @AppendFunctionName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AppendFunctionName(i32 %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* @InvalidOid, align 4
  store i32 %17, i32* %7, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = call i32 @LookupFuncWithArgs(i32 %18, %struct.TYPE_9__* %19, i32 1)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @PROCOID, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ObjectIdGetDatum(i32 %22)
  %24 = call i32 @SearchSysCache1(i32 %21, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @HeapTupleIsValid(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DeconstructQualifiedName(i32 %31, i8** %10, i8** %9)
  br label %49

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @GETSTRUCT(i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %12, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @NameStr(i32 %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i8* @pstrdup(i8* %41)
  store i8* %42, i8** %9, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @get_namespace_name(i32 %45)
  store i8* %46, i8** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ReleaseSysCache(i32 %47)
  br label %49

49:                                               ; preds = %33, %28
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i8* @quote_qualified_identifier(i8* %50, i8* %51)
  store i8* %52, i8** %11, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @appendStringInfoString(i32 %53, i8* %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @OidIsValid(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %49
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %60 = load i32, i32* @CurrentMemoryContext, align 4
  %61 = call %struct.TYPE_8__* @GetOverrideSearchPath(i32 %60)
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %13, align 8
  %62 = load i32, i32* @NIL, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = call i32 @PushOverrideSearchPath(%struct.TYPE_8__* %67)
  %69 = load i32, i32* @pg_get_function_identity_arguments, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @ObjectIdGetDatum(i32 %70)
  %72 = call i32 @DirectFunctionCall1(i32 %69, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = call i32 (...) @PopOverrideSearchPath()
  %74 = load i32, i32* %14, align 4
  %75 = call i8* @TextDatumGetCString(i32 %74)
  store i8* %75, i8** %15, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @appendStringInfo(i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %77)
  br label %93

79:                                               ; preds = %49
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  store i8* null, i8** %16, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @TypeNameListToString(i32 %87)
  store i8* %88, i8** %16, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i8*, i8** %16, align 8
  %91 = call i32 @appendStringInfo(i32 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %84, %79
  br label %93

93:                                               ; preds = %92, %59
  ret void
}

declare dso_local i32 @LookupFuncWithArgs(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @DeconstructQualifiedName(i32, i8**, i8**) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i8* @quote_qualified_identifier(i8*, i8*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local %struct.TYPE_8__* @GetOverrideSearchPath(i32) #1

declare dso_local i32 @PushOverrideSearchPath(%struct.TYPE_8__*) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @PopOverrideSearchPath(...) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*) #1

declare dso_local i8* @TypeNameListToString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
