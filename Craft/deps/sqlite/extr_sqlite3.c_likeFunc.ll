; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_likeFunc.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_likeFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.compareInfo = type { i32 }

@SQLITE_LIMIT_LIKE_PATTERN_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"LIKE or GLOB pattern too complex\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ESCAPE expression must be a single character\00", align 1
@sqlite3_like_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @likeFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @likeFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.compareInfo*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_3__* @sqlite3_context_db_handle(i32* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %11, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i8* @sqlite3_value_text(i32* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i8* @sqlite3_value_text(i32* %22)
  store i8* %23, i8** %7, align 8
  %24 = load i32**, i32*** %6, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @sqlite3_value_bytes(i32* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @SQLITE_LIMIT_LIKE_PATTERN_LENGTH, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %28, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @testcase(i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @SQLITE_LIMIT_LIKE_PATTERN_LENGTH, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  %46 = icmp eq i32 %38, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @testcase(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @SQLITE_LIMIT_LIKE_PATTERN_LENGTH, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %49, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %3
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @sqlite3_result_error(i32* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %104

60:                                               ; preds = %3
  %61 = load i8*, i8** %8, align 8
  %62 = load i32**, i32*** %6, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i8* @sqlite3_value_text(i32* %64)
  %66 = icmp eq i8* %61, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %88

71:                                               ; preds = %60
  %72 = load i32**, i32*** %6, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i8* @sqlite3_value_text(i32* %74)
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %104

79:                                               ; preds = %71
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @sqlite3Utf8CharLen(i8* %80, i32 -1)
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @sqlite3_result_error(i32* %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  br label %104

86:                                               ; preds = %79
  %87 = call i32 @sqlite3Utf8Read(i8** %12)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %60
  %89 = load i8*, i8** %7, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load i8*, i8** %8, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i32*, i32** %4, align 8
  %96 = call %struct.compareInfo* @sqlite3_user_data(i32* %95)
  store %struct.compareInfo* %96, %struct.compareInfo** %13, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.compareInfo*, %struct.compareInfo** %13, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @patternCompare(i8* %98, i8* %99, %struct.compareInfo* %100, i32 %101)
  %103 = call i32 @sqlite3_result_int(i32* %97, i32 %102)
  br label %104

104:                                              ; preds = %57, %78, %83, %94, %91, %88
  ret void
}

declare dso_local %struct.TYPE_3__* @sqlite3_context_db_handle(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Utf8CharLen(i8*, i32) #1

declare dso_local i32 @sqlite3Utf8Read(i8**) #1

declare dso_local %struct.compareInfo* @sqlite3_user_data(i32*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @patternCompare(i8*, i8*, %struct.compareInfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
