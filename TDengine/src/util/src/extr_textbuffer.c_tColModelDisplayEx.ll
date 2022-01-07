; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_tColModelDisplayEx.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_tColModelDisplayEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"type:%d\09\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%lld\09\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lf\09\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%f\09\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tColModelDisplayEx(%struct.TYPE_6__* %0, i8* %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [128 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %124, %5
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %127

19:                                               ; preds = %15
  store i64 0, i64* %12, align 8
  br label %20

20:                                               ; preds = %119, %19
  %21 = load i64, i64* %12, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %122

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i8* @COLMODEL_GET_VAL(i8* %27, %struct.TYPE_6__* %28, i64 %29, i64 %30, i64 %31)
  store i8* %32, i8** %13, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %116 [
    i32 137, label %48
    i32 132, label %53
    i32 131, label %58
    i32 136, label %72
    i32 134, label %85
    i32 129, label %90
    i32 128, label %95
    i32 130, label %100
    i32 135, label %105
    i32 133, label %110
  ]

48:                                               ; preds = %26
  %49 = load i8*, i8** %13, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %118

53:                                               ; preds = %26
  %54 = load i8*, i8** %13, align 8
  %55 = bitcast i8* %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  br label %118

58:                                               ; preds = %26
  %59 = bitcast [128 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 0, i64 128, i1 false)
  %60 = load i8*, i8** %13, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %69 = call i32 @taosUcs4ToMbs(i8* %60, i32 %67, i8* %68)
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %26, %58
  %73 = load i8*, i8** %13, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = call i32 @printBinaryDataEx(i8* %73, i32 %80, i32* %83)
  br label %118

85:                                               ; preds = %26
  %86 = load i8*, i8** %13, align 8
  %87 = bitcast i8* %86 to double*
  %88 = load double, double* %87, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double %88)
  br label %118

90:                                               ; preds = %26
  %91 = load i8*, i8** %13, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %118

95:                                               ; preds = %26
  %96 = load i8*, i8** %13, align 8
  %97 = bitcast i8* %96 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %118

100:                                              ; preds = %26
  %101 = load i8*, i8** %13, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %118

105:                                              ; preds = %26
  %106 = load i8*, i8** %13, align 8
  %107 = bitcast i8* %106 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %118

110:                                              ; preds = %26
  %111 = load i8*, i8** %13, align 8
  %112 = bitcast i8* %111 to float*
  %113 = load float, float* %112, align 4
  %114 = fpext float %113 to double
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %114)
  br label %118

116:                                              ; preds = %26
  %117 = call i32 @assert(i32 0)
  br label %118

118:                                              ; preds = %116, %110, %105, %100, %95, %90, %85, %72, %53, %48
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %12, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %12, align 8
  br label %20

122:                                              ; preds = %20
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122
  %125 = load i64, i64* %11, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %11, align 8
  br label %15

127:                                              ; preds = %15
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i8* @COLMODEL_GET_VAL(i8*, %struct.TYPE_6__*, i64, i64, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @taosUcs4ToMbs(i8*, i32, i8*) #1

declare dso_local i32 @printBinaryDataEx(i8*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
