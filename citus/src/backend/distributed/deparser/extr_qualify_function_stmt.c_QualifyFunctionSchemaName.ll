; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_qualify_function_stmt.c_QualifyFunctionSchemaName.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_qualify_function_stmt.c_QualifyFunctionSchemaName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@PROCOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @QualifyFunctionSchemaName(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i32, i32* @InvalidOid, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = call i32 @LookupFuncWithArgs(i32 %11, %struct.TYPE_5__* %12, i32 1)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @PROCOID, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @ObjectIdGetDatum(i32 %15)
  %17 = call i32 @SearchSysCache1(i32 %14, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @HeapTupleIsValid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @GETSTRUCT(i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %9, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @get_namespace_name(i32 %27)
  store i8* %28, i8** %5, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @NameStr(i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @pstrdup(i8* %33)
  store i8* %34, i8** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ReleaseSysCache(i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @makeString(i8* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @makeString(i8* %39)
  %41 = call i32 @list_make2(i32 %38, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @LookupFuncWithArgs(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @list_make2(i32, i32) #1

declare dso_local i32 @makeString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
