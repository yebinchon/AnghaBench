; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscPrepare.c_normalStmtBindParam.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscPrepare.c_normalStmtBindParam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, float, i8*, i8* }
%struct.TYPE_9__ = type { i32, i64*, i64, i64* }

@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"param %d: type mismatch or invalid\00", align 1
@TSDB_CODE_INVALID_VALUE = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @normalStmtBindParam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @normalStmtBindParam(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %168, %2
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %171

18:                                               ; preds = %12
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %20
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %8, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %25
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %9, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = call i32 @tVariantDestroy(%struct.TYPE_8__* %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  store i8* null, i8** %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i64*, i64** %32, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %18
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 131, i32* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %168

46:                                               ; preds = %35, %18
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %163 [
    i32 131, label %55
    i32 136, label %58
    i32 128, label %69
    i32 130, label %77
    i32 133, label %85
    i32 138, label %94
    i32 129, label %94
    i32 134, label %102
    i32 135, label %110
    i32 137, label %119
    i32 132, label %119
  ]

55:                                               ; preds = %46
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  br label %167

58:                                               ; preds = %46
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %167

69:                                               ; preds = %46
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %167

77:                                               ; preds = %46
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %167

85:                                               ; preds = %46
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8**
  %90 = load i8*, i8** %89, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %167

94:                                               ; preds = %46, %46
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %167

102:                                              ; preds = %46
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to float*
  %107 = load float, float* %106, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  store float %107, float* %109, align 8
  br label %167

110:                                              ; preds = %46
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to double*
  %115 = load double, double* %114, align 8
  %116 = fptrunc double %115 to float
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store float %116, float* %118, align 8
  br label %167

119:                                              ; preds = %46, %46
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, 1
  %125 = trunc i64 %124 to i32
  %126 = call i64 @malloc(i32 %125)
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %119
  %135 = load i32, i32* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 4
  store i32 %135, i32* %3, align 4
  br label %173

136:                                              ; preds = %119
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @memcpy(i8* %139, i64 %142, i64 %146)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds i8, i8* %150, i64 %154
  store i8 0, i8* %155, align 1
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  br label %167

163:                                              ; preds = %46
  %164 = load i64, i64* %7, align 8
  %165 = call i32 @tscTrace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %164)
  %166 = load i32, i32* @TSDB_CODE_INVALID_VALUE, align 4
  store i32 %166, i32* %3, align 4
  br label %173

167:                                              ; preds = %136, %110, %102, %94, %85, %77, %69, %58, %55
  br label %168

168:                                              ; preds = %167, %41
  %169 = load i64, i64* %7, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %7, align 8
  br label %12

171:                                              ; preds = %12
  %172 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %163, %134
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @tVariantDestroy(%struct.TYPE_8__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @tscTrace(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
