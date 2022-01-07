; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscPrepare.c_normalStmtPrepare.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscPrepare.c_normalStmtPrepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_9__ = type { i64, i64, i32 }

@TK_QUESTION = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @normalStmtPrepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @normalStmtPrepare(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %73, %1
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %78

26:                                               ; preds = %19
  %27 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %32 = call i64 @tSQLGetToken(i8* %30, i64* %31)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TK_QUESTION, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %73

38:                                               ; preds = %26
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %38
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %50, %51
  %53 = call i32 @normalStmtAddPart(%struct.TYPE_10__* %46, i32 0, i8* %49, i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %2, align 4
  br label %118

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %38
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = call i32 @normalStmtAddPart(%struct.TYPE_10__* %61, i32 1, i8* null, i64 0)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %2, align 4
  br label %118

68:                                               ; preds = %60
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %69, %71
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %68, %26
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %19

78:                                               ; preds = %19
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = sub i64 %87, %88
  %90 = call i32 @normalStmtAddPart(%struct.TYPE_10__* %83, i32 0, i8* %86, i64 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %2, align 4
  br label %118

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %78
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %97
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32* @calloc(i64 %105, i32 4)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = load i32, i32* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 4
  store i32 %114, i32* %2, align 4
  br label %118

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %97
  %117 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %113, %94, %66, %57
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @tSQLGetToken(i8*, i64*) #2

declare dso_local i32 @normalStmtAddPart(%struct.TYPE_10__*, i32, i8*, i64) #2

declare dso_local i32* @calloc(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
