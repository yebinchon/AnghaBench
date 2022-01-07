; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_pg_get_extensiondef_string.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_pg_get_extensiondef_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i32, i32, i32, i32* }

@ForeignDataWrapperRelationId = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"CREATE EXTENSION IF NOT EXISTS %s WITH SCHEMA %s\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"foreign-data wrapper \22%s\22 does not have an extension defined\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pg_get_extensiondef_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call %struct.TYPE_11__* @GetForeignTable(i32 %13)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %3, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_12__* @GetForeignServer(i32 %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %4, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_13__* @GetForeignDataWrapper(i32 %21)
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %5, align 8
  %23 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 32, i1 false)
  %24 = load i32, i32* @ForeignDataWrapperRelationId, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @getExtensionOfObject(i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @OidIsValid(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %1
  %35 = load i32, i32* %9, align 4
  %36 = call i8* @get_extension_name(i32 %35)
  store i8* %36, i8** %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @get_extension_schema(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i8* @get_namespace_name(i32 %39)
  store i8* %40, i8** %12, align 8
  %41 = call i32 @initStringInfo(%struct.TYPE_10__* %6)
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @quote_identifier(i8* %42)
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @quote_identifier(i8* %44)
  %46 = call i32 @appendStringInfo(%struct.TYPE_10__* %6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45)
  br label %54

47:                                               ; preds = %1
  %48 = load i32, i32* @NOTICE, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = call i32 @ereport(i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %47, %34
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  ret i8* %56
}

declare dso_local %struct.TYPE_11__* @GetForeignTable(i32) #1

declare dso_local %struct.TYPE_12__* @GetForeignServer(i32) #1

declare dso_local %struct.TYPE_13__* @GetForeignDataWrapper(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @getExtensionOfObject(i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i8* @get_extension_name(i32) #1

declare dso_local i32 @get_extension_schema(i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_10__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i32 @quote_identifier(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
