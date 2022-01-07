; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_distribution_column.c_BuildDistributionKeyFromColumnName.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_distribution_column.c_BuildDistributionKeyFromColumnName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"column \22%s\22 of relation \22%s\22 does not exist\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"cannot reference system column \22%s\22 in relation \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BuildDistributionKeyFromColumnName(i32 %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @RelationGetRelationName(i32 %10)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %68

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = call i32 @truncate_identifier(i8* %16, i32 %18, i32 1)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @RelationGetRelid(i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32* @SearchSysCacheAttName(i32 %21, i8* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @HeapTupleIsValid(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %15
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32)
  %34 = call i32 @ereport(i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %27, %15
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @GETSTRUCT(i32* %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %7, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %47, i8* %48)
  %50 = call i32 @ereport(i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %43, %35
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @makeVar(i32 1, i64 %54, i32 %57, i32 %60, i32 %63, i32 0)
  store i32* %64, i32** %8, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @ReleaseSysCache(i32* %65)
  %67 = load i32*, i32** %8, align 8
  store i32* %67, i32** %3, align 8
  br label %68

68:                                               ; preds = %51, %14
  %69 = load i32*, i32** %3, align 8
  ret i32* %69
}

declare dso_local i8* @RelationGetRelationName(i32) #1

declare dso_local i32 @truncate_identifier(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @SearchSysCacheAttName(i32, i8*) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32* @makeVar(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
