; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_format_collate.c_FormatCollateExtended.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_format_collate.c_FormatCollateExtended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@InvalidOid = common dso_local global i64 0, align 8
@FORMAT_COLLATE_ALLOW_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@COLLOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"cache lookup failed for collate %u\00", align 1
@FORMAT_COLLATE_FORCE_QUALIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FormatCollateExtended(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @InvalidOid, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @FORMAT_COLLATE_ALLOW_INVALID, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i8* @pstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %3, align 8
  br label %70

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @COLLOID, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @ObjectIdGetDatum(i64 %23)
  %25 = call i32* @SearchSysCache1(i32 %22, i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @HeapTupleIsValid(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @FORMAT_COLLATE_ALLOW_INVALID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i8* @pstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %35, i8** %3, align 8
  br label %70

36:                                               ; preds = %29
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @GETSTRUCT(i32* %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %44, %struct.TYPE_2__** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @FORMAT_COLLATE_FORCE_QUALIFY, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @CollationIsVisible(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i8* null, i8** %9, align 8
  br label %59

54:                                               ; preds = %49, %41
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @get_namespace_name_or_temp(i32 %57)
  store i8* %58, i8** %9, align 8
  br label %59

59:                                               ; preds = %54, %53
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @NameStr(i32 %62)
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i8* @quote_qualified_identifier(i8* %64, i8* %65)
  store i8* %66, i8** %8, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @ReleaseSysCache(i32* %67)
  %69 = load i8*, i8** %8, align 8
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %59, %34, %19
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i64 @CollationIsVisible(i64) #1

declare dso_local i8* @get_namespace_name_or_temp(i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i8* @quote_qualified_identifier(i8*, i8*) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
