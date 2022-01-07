; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_add_depth_to_space_layer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_add_depth_to_space_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32* }

@NAME_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"depth_to_space%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"DepthToSpace\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@TF_FLOAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1
@TF_OK = common dso_local global i64 0, align 8
@DNN_ERROR = common dso_local global i32 0, align 4
@DNN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32**, %struct.TYPE_9__*, i32)* @add_depth_to_space_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_depth_to_space_layer(%struct.TYPE_8__* %0, i32** %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @NAME_BUFFER_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* @NAME_BUFFER_SIZE, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @snprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @TF_NewOperation(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32* %25, i32** %10, align 8
  %26 = load i32**, i32*** %7, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32* %27, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = bitcast %struct.TYPE_7__* %11 to { i64, i32* }*
  %32 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %31, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @TF_AddInput(i32* %30, i64 %33, i32* %35)
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* @TF_FLOAT, align 4
  %39 = call i32 @TF_SetAttrType(i32* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @TF_SetAttrInt(i32* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @TF_FinishOperation(i32* %45, i32 %48)
  %50 = load i32**, i32*** %7, align 8
  store i32* %49, i32** %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @TF_GetCode(i32 %53)
  %55 = load i64, i64* @TF_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %4
  %58 = load i32, i32* @DNN_ERROR, align 4
  store i32 %58, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %61

59:                                               ; preds = %4
  %60 = load i32, i32* @DNN_SUCCESS, align 4
  store i32 %60, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32* @TF_NewOperation(i32, i8*, i8*) #2

declare dso_local i32 @TF_AddInput(i32*, i64, i32*) #2

declare dso_local i32 @TF_SetAttrType(i32*, i8*, i32) #2

declare dso_local i32 @TF_SetAttrInt(i32*, i8*, i32) #2

declare dso_local i32* @TF_FinishOperation(i32*, i32) #2

declare dso_local i64 @TF_GetCode(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
