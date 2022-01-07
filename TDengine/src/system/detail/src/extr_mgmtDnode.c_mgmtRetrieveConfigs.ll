; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnode.c_mgmtRetrieveConfigs.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnode.c_mgmtRetrieveConfigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i64 }
%struct.TYPE_6__ = type { i32*, i32*, i32 }

@tsGlobalConfigNum = common dso_local global i32 0, align 4
@tsGlobalConfig = common dso_local global %struct.TYPE_7__* null, align 8
@TSDB_CFG_OPTION_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TSDB_CFG_VALUE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtRetrieveConfigs(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @tsGlobalConfigNum, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %149, %4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  br i1 %24, label %25, label %152

25:                                               ; preds = %23
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tsGlobalConfig, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %28
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %11, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = call i32 @mgmtCheckConfigShow(%struct.TYPE_7__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %149

34:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %35, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %46, i64 %56
  store i8* %57, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* @TSDB_CFG_OPTION_LEN, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %58, i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %66, i64 %76
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %77, i64 %87
  store i8* %88, i8** %12, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %147 [
    i32 130, label %92
    i32 132, label %103
    i32 128, label %114
    i32 133, label %125
    i32 129, label %137
    i32 131, label %137
    i32 134, label %137
  ]

92:                                               ; preds = %34
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* @TSDB_CFG_VALUE_LEN, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %93, i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %148

103:                                              ; preds = %34
  %104 = load i8*, i8** %12, align 8
  %105 = load i32, i32* @TSDB_CFG_VALUE_LEN, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %104, i32 %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %148

114:                                              ; preds = %34
  %115 = load i8*, i8** %12, align 8
  %116 = load i32, i32* @TSDB_CFG_VALUE_LEN, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %115, i32 %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %148

125:                                              ; preds = %34
  %126 = load i8*, i8** %12, align 8
  %127 = load i32, i32* @TSDB_CFG_VALUE_LEN, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to float*
  %132 = load float, float* %131, align 4
  %133 = fpext float %132 to double
  %134 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %126, i32 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %133)
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %148

137:                                              ; preds = %34, %34, %34
  %138 = load i8*, i8** %12, align 8
  %139 = load i32, i32* @TSDB_CFG_VALUE_LEN, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %138, i32 %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %143)
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %148

147:                                              ; preds = %34
  br label %148

148:                                              ; preds = %147, %137, %125, %114, %103, %92
  br label %149

149:                                              ; preds = %148, %33
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %10, align 4
  br label %16

152:                                              ; preds = %23
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load i32, i32* %9, align 4
  ret i32 %158
}

declare dso_local i32 @mgmtCheckConfigShow(%struct.TYPE_7__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
