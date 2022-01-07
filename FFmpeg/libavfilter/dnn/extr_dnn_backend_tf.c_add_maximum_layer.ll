; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_add_maximum_layer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_add_maximum_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float }
%struct.TYPE_9__ = type { i32*, i64 }

@NAME_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"maximum/y%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Const\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"dtype\00", align 1
@TF_FLOAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@TF_OK = common dso_local global i64 0, align 8
@DNN_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"maximum%d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Maximum\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@DNN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32**, %struct.TYPE_11__*, i32)* @add_maximum_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_maximum_layer(%struct.TYPE_10__* %0, i32** %1, %struct.TYPE_11__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca float*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @NAME_BUFFER_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load i32, i32* @NAME_BUFFER_SIZE, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @snprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @TF_NewOperation(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* @TF_FLOAT, align 4
  %31 = call i32 @TF_SetAttrType(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @TF_FLOAT, align 4
  %33 = load i32, i32* @TF_FLOAT, align 4
  %34 = call i32 @TF_DataTypeSize(i32 %33)
  %35 = call i32* @TF_AllocateTensor(i32 %32, i32* null, i32 0, i32 %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i64 @TF_TensorData(i32* %36)
  %38 = inttoptr i64 %37 to float*
  store float* %38, float** %14, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load float, float* %41, align 4
  %43 = load float*, float** %14, align 8
  store float %42, float* %43, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @TF_SetAttrTensor(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %45, i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @TF_GetCode(i32 %52)
  %54 = load i64, i64* @TF_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %4
  %57 = load i32, i32* @DNN_ERROR, align 4
  store i32 %57, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %119

58:                                               ; preds = %4
  %59 = load i32*, i32** %12, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32* @TF_FinishOperation(i32* %59, i32 %62)
  store i32* %63, i32** %10, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @TF_GetCode(i32 %66)
  %68 = load i64, i64* @TF_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* @DNN_ERROR, align 4
  store i32 %71, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %119

72:                                               ; preds = %58
  %73 = load i32, i32* @NAME_BUFFER_SIZE, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @snprintf(i8* %21, i32 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32* @TF_NewOperation(i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %21)
  store i32* %79, i32** %12, align 8
  %80 = load i32**, i32*** %7, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32* %81, i32** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = bitcast %struct.TYPE_9__* %13 to { i32*, i64 }*
  %86 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %85, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @TF_AddInput(i32* %84, i32* %87, i64 %89)
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32* %91, i32** %92, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = bitcast %struct.TYPE_9__* %13 to { i32*, i64 }*
  %95 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %94, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @TF_AddInput(i32* %93, i32* %96, i64 %98)
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* @TF_FLOAT, align 4
  %102 = call i32 @TF_SetAttrType(i32* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %12, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32* @TF_FinishOperation(i32* %103, i32 %106)
  %108 = load i32**, i32*** %7, align 8
  store i32* %107, i32** %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @TF_GetCode(i32 %111)
  %113 = load i64, i64* @TF_OK, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %72
  %116 = load i32, i32* @DNN_ERROR, align 4
  store i32 %116, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %119

117:                                              ; preds = %72
  %118 = load i32, i32* @DNN_SUCCESS, align 4
  store i32 %118, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %119

119:                                              ; preds = %117, %115, %70, %56
  %120 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32* @TF_NewOperation(i32, i8*, i8*) #2

declare dso_local i32 @TF_SetAttrType(i32*, i8*, i32) #2

declare dso_local i32* @TF_AllocateTensor(i32, i32*, i32, i32) #2

declare dso_local i32 @TF_DataTypeSize(i32) #2

declare dso_local i64 @TF_TensorData(i32*) #2

declare dso_local i32 @TF_SetAttrTensor(i32*, i8*, i32*, i32) #2

declare dso_local i64 @TF_GetCode(i32) #2

declare dso_local i32* @TF_FinishOperation(i32*, i32) #2

declare dso_local i32 @TF_AddInput(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
