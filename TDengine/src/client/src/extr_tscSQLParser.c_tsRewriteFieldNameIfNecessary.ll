; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_tsRewriteFieldNameIfNecessary.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_tsRewriteFieldNameIfNecessary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i8* }

@__const.tsRewriteFieldNameIfNecessary.rep = private unnamed_addr constant [11 x i8] c"()*,./\\+-% ", align 1
@TSDB_COL_NAME_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"duplicated column name in new table\00", align 1
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tsRewriteFieldNameIfNecessary(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [11 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %13 = bitcast [11 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.tsRewriteFieldNameIfNecessary.rep, i32 0, i32 0), i64 11, i1 false)
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %74, %1
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %15, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %14
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.TYPE_9__* @tscFieldInfoGetField(%struct.TYPE_8__* %22, i64 %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %66, %21
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @TSDB_COL_NAME_LEN, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %31, %27
  %39 = phi i1 [ false, %27 ], [ %37, %31 ]
  br i1 %39, label %40, label %69

40:                                               ; preds = %38
  store i64 0, i64* %8, align 8
  br label %41

41:                                               ; preds = %62, %40
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %44 = call i64 @tListLen(i8* %43)
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 95, i8* %60, align 1
  br label %65

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %8, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %8, align 8
  br label %41

65:                                               ; preds = %57, %41
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %27

69:                                               ; preds = %38
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* @TSDB_COL_NAME_LEN, align 8
  %72 = sub nsw i64 %71, 1
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %69
  %75 = load i64, i64* %5, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %5, align 8
  br label %14

77:                                               ; preds = %14
  store i64 0, i64* %9, align 8
  br label %78

78:                                               ; preds = %120, %77
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %79, %83
  br i1 %84, label %85, label %123

85:                                               ; preds = %78
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call %struct.TYPE_9__* @tscFieldInfoGetField(%struct.TYPE_8__* %86, i64 %87)
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %10, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %116, %85
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp slt i64 %94, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %93
  %101 = load i8*, i8** %10, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call %struct.TYPE_9__* @tscFieldInfoGetField(%struct.TYPE_8__* %102, i64 %103)
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* @TSDB_COL_NAME_LEN, align 8
  %108 = call i64 @strncasecmp(i8* %101, i8* %106, i64 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %100
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @setErrMsg(%struct.TYPE_8__* %111, i8* %112)
  %114 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %114, i64* %2, align 8
  br label %125

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %11, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %11, align 8
  br label %93

119:                                              ; preds = %93
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %9, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %9, align 8
  br label %78

123:                                              ; preds = %78
  %124 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %124, i64* %2, align 8
  br label %125

125:                                              ; preds = %123, %110
  %126 = load i64, i64* %2, align 8
  ret i64 %126
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_9__* @tscFieldInfoGetField(%struct.TYPE_8__*, i64) #2

declare dso_local i64 @tListLen(i8*) #2

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #2

declare dso_local i32 @setErrMsg(%struct.TYPE_8__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
