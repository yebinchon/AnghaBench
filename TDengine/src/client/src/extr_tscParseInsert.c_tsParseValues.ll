; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tsParseValues.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tsParseValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"primary timestamp column can not be null\00", align 1
@TK_LP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"client out of memory\00", align 1
@TK_RP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"no any data points\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsParseValues(i8** %0, %struct.TYPE_13__* %1, %struct.TYPE_16__* %2, i32 %3, %struct.TYPE_15__* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_14__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_14__, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_14__, align 8
  store i8** %0, i8*** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %24 = call i32* @tsGetSchema(%struct.TYPE_16__* %23)
  store i32* %24, i32** %17, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %18, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @strcpy(i8* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %154

37:                                               ; preds = %6
  br label %38

38:                                               ; preds = %37, %143
  store i64 0, i64* %14, align 8
  %39 = load i8**, i8*** %8, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call { i64, i64 } @tStrGetToken(i8* %40, i64* %14, i32 0, i32 0, i32* null)
  %42 = bitcast %struct.TYPE_14__* %19 to { i64, i64 }*
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %42, i32 0, i32 0
  %44 = extractvalue { i64, i64 } %41, 0
  store i64 %44, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %42, i32 0, i32 1
  %46 = extractvalue { i64, i64 } %41, 1
  store i64 %46, i64* %45, align 8
  %47 = bitcast %struct.TYPE_14__* %15 to i8*
  %48 = bitcast %struct.TYPE_14__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %38
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TK_LP, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %38
  br label %146

58:                                               ; preds = %52
  %59 = load i64, i64* %14, align 8
  %60 = load i8**, i8*** %8, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %59
  store i8* %62, i8** %60, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %58
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %73, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %66, %58
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @tscAllocateMemIfNeed(%struct.TYPE_13__* %79, i64 %82)
  store i64 %83, i64* %20, align 8
  %84 = load i64, i64* %20, align 8
  %85 = icmp eq i64 0, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 @strcpy(i8* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %154

89:                                               ; preds = %78
  %90 = load i64, i64* %20, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %89, %66
  %96 = load i8**, i8*** %8, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load i64, i64* %18, align 8
  %102 = call i64 @tsParseOneRowData(i8** %96, %struct.TYPE_13__* %97, i32* %98, %struct.TYPE_15__* %99, i8* %100, i64 %101)
  store i64 %102, i64* %21, align 8
  %103 = load i64, i64* %21, align 8
  %104 = icmp sle i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %95
  %106 = load i8*, i8** %13, align 8
  %107 = load i8**, i8*** %8, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @setErrMsg(i8* %106, i8* %108)
  store i32 -1, i32* %7, align 4
  br label %154

110:                                              ; preds = %95
  %111 = load i64, i64* %21, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  store i64 0, i64* %14, align 8
  %116 = load i8**, i8*** %8, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = call { i64, i64 } @tStrGetToken(i8* %117, i64* %14, i32 0, i32 0, i32* null)
  %119 = bitcast %struct.TYPE_14__* %22 to { i64, i64 }*
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %119, i32 0, i32 0
  %121 = extractvalue { i64, i64 } %118, 0
  store i64 %121, i64* %120, align 8
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %119, i32 0, i32 1
  %123 = extractvalue { i64, i64 } %118, 1
  store i64 %123, i64* %122, align 8
  %124 = bitcast %struct.TYPE_14__* %15 to i8*
  %125 = bitcast %struct.TYPE_14__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 16, i1 false)
  %126 = load i64, i64* %14, align 8
  %127 = load i8**, i8*** %8, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 %126
  store i8* %129, i8** %127, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %110
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @TK_RP, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %133, %110
  %139 = load i8*, i8** %13, align 8
  %140 = load i8**, i8*** %8, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @setErrMsg(i8* %139, i8* %141)
  store i32 -1, i32* %7, align 4
  br label %154

143:                                              ; preds = %133
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %38

146:                                              ; preds = %57
  %147 = load i32, i32* %16, align 4
  %148 = icmp sle i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i8*, i8** %13, align 8
  %151 = call i32 @strcpy(i8* %150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %154

152:                                              ; preds = %146
  %153 = load i32, i32* %16, align 4
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %152, %149, %138, %105, %86, %34
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i32* @tsGetSchema(%struct.TYPE_16__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local { i64, i64 } @tStrGetToken(i8*, i64*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @tscAllocateMemIfNeed(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @tsParseOneRowData(i8**, %struct.TYPE_13__*, i32*, %struct.TYPE_15__*, i8*, i64) #1

declare dso_local i32 @setErrMsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
