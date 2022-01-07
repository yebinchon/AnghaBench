; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_add_pad_layer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_add_pad_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32** }
%struct.TYPE_7__ = type { i32*, i64 }

@__const.add_pad_layer.pads_shape = private unnamed_addr constant [2 x i32] [i32 4, i32 2], align 4
@NAME_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pad%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Const\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"dtype\00", align 1
@TF_INT32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@TF_OK = common dso_local global i64 0, align 8
@DNN_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"MirrorPad\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"mirror_pad\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@TF_FLOAT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"Tpaddings\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"SYMMETRIC\00", align 1
@DNN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32**, %struct.TYPE_9__*, i32)* @add_pad_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_pad_layer(%struct.TYPE_8__* %0, i32** %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [2 x i32], align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = bitcast [2 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([2 x i32]* @__const.add_pad_layer.pads_shape to i8*), i64 8, i1 false)
  %20 = load i32, i32* @NAME_BUFFER_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  %24 = load i32, i32* @NAME_BUFFER_SIZE, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @TF_NewOperation(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* @TF_INT32, align 4
  %33 = call i32 @TF_SetAttrType(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @TF_INT32, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %36 = call i32* @TF_AllocateTensor(i32 %34, i32* %35, i32 2, i32 32)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i64 @TF_TensorData(i32* %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %14, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %14, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %14, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %14, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 5
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32**, i32*** %95, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 3
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %14, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 6
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 3
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %14, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 7
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @TF_SetAttrTensor(i32* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %113, i32 %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @TF_GetCode(i32 %120)
  %122 = load i64, i64* @TF_OK, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %4
  %125 = load i32, i32* @DNN_ERROR, align 4
  store i32 %125, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %189

126:                                              ; preds = %4
  %127 = load i32*, i32** %12, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32* @TF_FinishOperation(i32* %127, i32 %130)
  store i32* %131, i32** %10, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @TF_GetCode(i32 %134)
  %136 = load i64, i64* @TF_OK, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %126
  %139 = load i32, i32* @DNN_ERROR, align 4
  store i32 %139, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %189

140:                                              ; preds = %126
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32* @TF_NewOperation(i32 %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32* %144, i32** %12, align 8
  %145 = load i32**, i32*** %7, align 8
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32* %146, i32** %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i64 0, i64* %148, align 8
  %149 = load i32*, i32** %12, align 8
  %150 = bitcast %struct.TYPE_7__* %13 to { i32*, i64 }*
  %151 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %150, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @TF_AddInput(i32* %149, i32* %152, i64 %154)
  %156 = load i32*, i32** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32* %156, i32** %157, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = bitcast %struct.TYPE_7__* %13 to { i32*, i64 }*
  %160 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %159, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @TF_AddInput(i32* %158, i32* %161, i64 %163)
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* @TF_FLOAT, align 4
  %167 = call i32 @TF_SetAttrType(i32* %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %166)
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* @TF_INT32, align 4
  %170 = call i32 @TF_SetAttrType(i32* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %169)
  %171 = load i32*, i32** %12, align 8
  %172 = call i32 @TF_SetAttrString(i32* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 9)
  %173 = load i32*, i32** %12, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32* @TF_FinishOperation(i32* %173, i32 %176)
  %178 = load i32**, i32*** %7, align 8
  store i32* %177, i32** %178, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @TF_GetCode(i32 %181)
  %183 = load i64, i64* @TF_OK, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %140
  %186 = load i32, i32* @DNN_ERROR, align 4
  store i32 %186, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %189

187:                                              ; preds = %140
  %188 = load i32, i32* @DNN_SUCCESS, align 4
  store i32 %188, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %189

189:                                              ; preds = %187, %185, %138, %124
  %190 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #3

declare dso_local i32* @TF_NewOperation(i32, i8*, i8*) #3

declare dso_local i32 @TF_SetAttrType(i32*, i8*, i32) #3

declare dso_local i32* @TF_AllocateTensor(i32, i32*, i32, i32) #3

declare dso_local i64 @TF_TensorData(i32*) #3

declare dso_local i32 @TF_SetAttrTensor(i32*, i8*, i32*, i32) #3

declare dso_local i64 @TF_GetCode(i32) #3

declare dso_local i32* @TF_FinishOperation(i32*, i32) #3

declare dso_local i32 @TF_AddInput(i32*, i32*, i64) #3

declare dso_local i32 @TF_SetAttrString(i32*, i8*, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
