; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_pg_get_indexclusterdef_string.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_pg_get_indexclusterdef_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32* }

@InvalidOid = common dso_local global i32 0, align 4
@INDEXRELID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cache lookup failed for index %u\00", align 1
@NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ALTER TABLE %s CLUSTER ON %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pg_get_indexclusterdef_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  %9 = load i32, i32* @InvalidOid, align 4
  store i32 %9, i32* %5, align 4
  %10 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = load i32, i32* @INDEXRELID, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = call i32* @SearchSysCache(i32 %11, i32 %13, i32 0, i32 0, i32 0)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @HeapTupleIsValid(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 @ereport(i32 %19, i32 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @GETSTRUCT(i32* %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %4, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NIL, align 4
  %37 = call i8* @generate_relation_name(i32 %35, i32 %36)
  store i8* %37, i8** %7, align 8
  %38 = load i32, i32* %2, align 4
  %39 = call i8* @get_rel_name(i32 %38)
  store i8* %39, i8** %8, align 8
  %40 = call i32 @initStringInfo(%struct.TYPE_5__* %6)
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @quote_identifier(i8* %42)
  %44 = call i32 @appendStringInfo(%struct.TYPE_5__* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %43)
  br label %45

45:                                               ; preds = %34, %23
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @ReleaseSysCache(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  ret i8* %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @SearchSysCache(i32, i32, i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @HeapTupleIsValid(i32*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i64 @GETSTRUCT(i32*) #2

declare dso_local i8* @generate_relation_name(i32, i32) #2

declare dso_local i8* @get_rel_name(i32) #2

declare dso_local i32 @initStringInfo(%struct.TYPE_5__*) #2

declare dso_local i32 @appendStringInfo(%struct.TYPE_5__*, i8*, i8*, i32) #2

declare dso_local i32 @quote_identifier(i8*) #2

declare dso_local i32 @ReleaseSysCache(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
