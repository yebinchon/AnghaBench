; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_tensor.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_tensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

@CCV_NNC_LONG_DOT_GRAPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"tensorview%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tensor%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" (t)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"|d%d|zone%d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"|{%#010x|%#010x}|%d\00", align 1
@CCV_NNC_MAX_DIM_ALLOC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"x%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_10__*, i32, i32, i32, i32*)* @_ccv_nnc_graph_dot_tensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_dot_tensor(i32 %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @fputc(i8 signext 123, i32* %23)
  br label %25

25:                                               ; preds = %22, %6
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_10__* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %38

34:                                               ; preds = %25
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %46, %38
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @fputc(i8 signext 39, i32* %44)
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %39

49:                                               ; preds = %39
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @CCV_GET_TAPE_ALLOC(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %56)
  br label %58

58:                                               ; preds = %55, %49
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @CCV_NNC_LONG_DOT_GRAPH, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %169

62:                                               ; preds = %58
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @CCV_TENSOR_GET_DEVICE_ID(i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %70)
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %79, %62
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @fputc(i8 signext 39, i32* %77)
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %72

82:                                               ; preds = %72
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %16, align 8
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = bitcast %struct.TYPE_10__* %91 to %struct.TYPE_9__*
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  br label %100

95:                                               ; preds = %82
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  br label %100

100:                                              ; preds = %95, %90
  %101 = phi i32* [ %94, %90 ], [ %99, %95 ]
  store i32* %101, i32** %17, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = call i32 @ccv_nnc_dimension_count(i32* %102)
  %104 = load i32*, i32** %17, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %103, %106
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %107, %113
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @CCV_GET_DATA_TYPE_SIZE(i32 %117)
  %119 = mul nsw i32 %114, %118
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %18, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = load i64, i64* %16, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* %18, align 8
  %126 = add i64 %124, %125
  %127 = sub i64 %126, 1
  %128 = trunc i64 %127 to i32
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32 %128, i32 %134)
  store i32 1, i32* %14, align 4
  br label %136

136:                                              ; preds = %163, %100
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %136
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br label %150

150:                                              ; preds = %140, %136
  %151 = phi i1 [ false, %136 ], [ %149, %140 ]
  br i1 %151, label %152, label %166

152:                                              ; preds = %150
  %153 = load i32*, i32** %12, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %152
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %136

166:                                              ; preds = %150
  %167 = load i32*, i32** %12, align 8
  %168 = call i32 @fputc(i8 signext 125, i32* %167)
  br label %169

169:                                              ; preds = %166, %58
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_10__*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, ...) #1

declare dso_local i64 @CCV_GET_TAPE_ALLOC(i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @CCV_TENSOR_GET_DEVICE_ID(i32) #1

declare dso_local i32 @ccv_nnc_dimension_count(i32*) #1

declare dso_local i32 @CCV_GET_DATA_TYPE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
