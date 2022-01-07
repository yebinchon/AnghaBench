; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_tensor_multiview.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_tensor_multiview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32*, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }

@CCV_NNC_LONG_DOT_GRAPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"multiview%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" (t)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"|%d\00", align 1
@CCV_NNC_MAX_DIM_ALLOC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"x%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_18__*, i32, i32, i32*, i32*)* @_ccv_nnc_graph_dot_tensor_multiview to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_dot_tensor_multiview(%struct.TYPE_16__* %0, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32* %5, i32** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @fputc(i8 signext 123, i32* %19)
  br label %21

21:                                               ; preds = %18, %6
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i64 %31
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %12, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fprintf(i32* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %49, %21
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @fputc(i8 signext 39, i32* %47)
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %42

52:                                               ; preds = %42
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @CCV_GET_TAPE_ALLOC(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %59)
  br label %61

61:                                               ; preds = %58, %52
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %125

65:                                               ; preds = %61
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @_ccv_nnc_graph_dot_tensor_multiview_one(%struct.TYPE_16__* %66, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %1, i32 %67, i32* %68, i32* %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %72 = bitcast %struct.TYPE_16__* %71 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %14, align 8
  br label %73

73:                                               ; preds = %77, %65
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %75 = call i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_15__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %79 = bitcast %struct.TYPE_15__* %78 to %struct.TYPE_16__*
  %80 = call %struct.TYPE_15__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_16__* %79)
  %81 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %80, i64 0
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %14, align 8
  br label %73

83:                                               ; preds = %73
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @fprintf(i32* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  store i32 1, i32* %13, align 4
  br label %92

92:                                               ; preds = %119, %83
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br label %106

106:                                              ; preds = %96, %92
  %107 = phi i1 [ false, %92 ], [ %105, %96 ]
  br i1 %107, label %108, label %122

108:                                              ; preds = %106
  %109 = load i32*, i32** %11, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @fprintf(i32* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %92

122:                                              ; preds = %106
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @fputc(i8 signext 125, i32* %123)
  br label %133

125:                                              ; preds = %61
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %127 = call i64 @_ccv_nnc_graph_dot_tensor_multiview_count(%struct.TYPE_16__* %126)
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %127
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 4
  br label %133

133:                                              ; preds = %125, %122
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i64 @CCV_GET_TAPE_ALLOC(i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @_ccv_nnc_graph_dot_tensor_multiview_one(%struct.TYPE_16__*, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8, i32, i32*, i32*) #1

declare dso_local i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_16__*) #1

declare dso_local i64 @_ccv_nnc_graph_dot_tensor_multiview_count(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
