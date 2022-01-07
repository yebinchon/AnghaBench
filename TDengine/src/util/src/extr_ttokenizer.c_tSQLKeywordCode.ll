; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_ttokenizer.c_tSQLKeywordCode.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_ttokenizer.c_tSQLKeywordCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@tSQLKeywordCode.needInit = internal global i8 1, align 1
@mutex = common dso_local global i32 0, align 4
@keywordTable = common dso_local global %struct.TYPE_5__* null, align 8
@POINTER_BYTES = common dso_local global i32 0, align 4
@taosHashStringStep1 = common dso_local global i32 0, align 4
@KeywordHashTable = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tSQLKeywordCode(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__**, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8, i8* @tSQLKeywordCode.needInit, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %2
  %15 = call i32 @pthread_mutex_lock(i32* @mutex)
  %16 = load i8, i8* @tSQLKeywordCode.needInit, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @keywordTable, align 8
  %20 = call i32 @tListLen(%struct.TYPE_5__* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @POINTER_BYTES, align 4
  %23 = load i32, i32* @taosHashStringStep1, align 4
  %24 = call i32 @taosInitStrHash(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* @KeywordHashTable, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %57, %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @keywordTable, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @strlen(i64 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @keywordTable, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %36, i32* %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @keywordTable, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = bitcast %struct.TYPE_5__* %45 to i8*
  store i8* %46, i8** %8, align 8
  %47 = load i32, i32* @KeywordHashTable, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @keywordTable, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = bitcast i8** %8 to i8*
  %56 = call i32 @taosAddStrHash(i32 %47, i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %29
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %25

60:                                               ; preds = %25
  store i8 0, i8* @tSQLKeywordCode.needInit, align 1
  br label %61

61:                                               ; preds = %60, %14
  %62 = call i32 @pthread_mutex_unlock(i32* @mutex)
  br label %63

63:                                               ; preds = %61, %2
  %64 = bitcast [128 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 128, i1 false)
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %107, %63
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %110

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sge i32 %75, 97
  br i1 %76, label %77, label %97

77:                                               ; preds = %69
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sle i32 %83, 122
  br i1 %84, label %85, label %97

85:                                               ; preds = %77
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = and i32 %91, 223
  %93 = trunc i32 %92 to i8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %95
  store i8 %93, i8* %96, align 1
  br label %106

97:                                               ; preds = %77, %69
  %98 = load i8*, i8** %4, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %104
  store i8 %102, i8* %105, align 1
  br label %106

106:                                              ; preds = %97, %85
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %65

110:                                              ; preds = %65
  %111 = load i32, i32* @KeywordHashTable, align 4
  %112 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %113 = call i64 @taosGetStrHashData(i32 %111, i8* %112)
  %114 = inttoptr i64 %113 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %114, %struct.TYPE_4__*** %11, align 8
  %115 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %116 = icmp ne %struct.TYPE_4__** %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %3, align 4
  br label %124

122:                                              ; preds = %110
  %123 = load i32, i32* @TK_ID, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %117
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @tListLen(%struct.TYPE_5__*) #1

declare dso_local i32 @taosInitStrHash(i32, i32, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @taosAddStrHash(i32, i8*, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @taosGetStrHashData(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
