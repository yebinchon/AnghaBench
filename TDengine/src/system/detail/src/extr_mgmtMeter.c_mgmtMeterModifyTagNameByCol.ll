; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterModifyTagNameByCol.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterModifyTagNameByCol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@TSDB_COL_NAME_LEN = common dso_local global i64 0, align 8
@TSDB_CODE_APP_ERROR = common dso_local global i64 0, align 8
@TSDB_MAX_BYTES_PER_ROW = common dso_local global i32 0, align 4
@meterSdb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to modify table %s tag column\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Succeed to modify table %s tag column\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mgmtMeterModifyTagNameByCol(%struct.TYPE_7__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i64, i64* %6, align 8
  %15 = icmp sge i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = call i32 @mgmtIsMetric(%struct.TYPE_7__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @TSDB_COL_NAME_LEN, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @mgmtFindTagCol(%struct.TYPE_7__* %37, i8* %38)
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %32, %26, %22, %3
  %42 = load i64, i64* @TSDB_CODE_APP_ERROR, align 8
  store i64 %42, i64* %4, align 8
  br label %100

43:                                               ; preds = %36
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %49, %50
  %52 = mul i64 %51, 4
  %53 = add i64 %46, %52
  %54 = inttoptr i64 %53 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %10, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* @TSDB_COL_NAME_LEN, align 8
  %60 = call i32 @strncpy(i32 %57, i8* %58, i64 %59)
  %61 = load i32, i32* @TSDB_MAX_BYTES_PER_ROW, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 33, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @malloc(i32 %65)
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %43
  %71 = load i64, i64* @TSDB_CODE_APP_ERROR, align 8
  store i64 %71, i64* %4, align 8
  br label %100

72:                                               ; preds = %43
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @memset(i8* %73, i32 0, i32 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @mgmtMeterActionEncode(%struct.TYPE_7__* %76, i8* %77, i32 %78, i32* %8)
  %80 = load i32, i32* @meterSdb, align 4
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @sdbUpdateRow(i32 %80, i8* %81, i32 %82, i32 1)
  store i64 %83, i64* %13, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @tfree(i8* %84)
  %86 = load i64, i64* %13, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %72
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @mError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i64, i64* @TSDB_CODE_APP_ERROR, align 8
  store i64 %93, i64* %4, align 8
  br label %100

94:                                               ; preds = %72
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @mTrace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %99, i64* %4, align 8
  br label %100

100:                                              ; preds = %94, %88, %70, %41
  %101 = load i64, i64* %4, align 8
  ret i64 %101
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mgmtIsMetric(%struct.TYPE_7__*) #1

declare dso_local i64 @mgmtFindTagCol(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mgmtMeterActionEncode(%struct.TYPE_7__*, i8*, i32, i32*) #1

declare dso_local i64 @sdbUpdateRow(i32, i8*, i32, i32) #1

declare dso_local i32 @tfree(i8*) #1

declare dso_local i32 @mError(i8*, i32) #1

declare dso_local i32 @mTrace(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
