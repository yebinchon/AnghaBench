; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_tensor_multiview_one.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_tensor_multiview_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32*, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"|{\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"{%d\00", align 1
@CCV_NNC_MULTIVIEW_K0N = common dso_local global i32 0, align 4
@CCV_NNC_MULTIVIEW_K1N = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"}|\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"|zone%d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"|{%#010x|%#010x}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_15__*, i32, i32*, i32*)* @_ccv_nnc_graph_dot_tensor_multiview_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_dot_tensor_multiview_one(%struct.TYPE_13__* %0, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32* %4, i32** %9, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %188, %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %191

29:                                               ; preds = %25
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = call %struct.TYPE_16__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_13__* %30)
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %31, i64 %33
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = call i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_16__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %29
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CCV_NNC_MULTIVIEW_K0N, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CCV_NNC_MULTIVIEW_K1N, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %38
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @fputc(i8 signext 42, i32* %57)
  br label %59

59:                                               ; preds = %56, %53, %47
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = call %struct.TYPE_16__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_13__* %60)
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %61, i64 %63
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = bitcast %struct.TYPE_16__* %65 to %struct.TYPE_13__*
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %9, align 8
  call void @_ccv_nnc_graph_dot_tensor_multiview_one(%struct.TYPE_13__* %66, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %1, i32 %67, i32* %68, i32* %69)
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %59
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @fputc(i8 signext 125, i32* %75)
  br label %80

77:                                               ; preds = %59
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %78)
  br label %80

80:                                               ; preds = %77, %74
  br label %187

81:                                               ; preds = %29
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CCV_NNC_MULTIVIEW_K0N, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %99, label %90

90:                                               ; preds = %81
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CCV_NNC_MULTIVIEW_K1N, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i32, i32* %11, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96, %81
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @fputc(i8 signext 42, i32* %100)
  br label %102

102:                                              ; preds = %99, %96, %90
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 2
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 %112
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %13, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %130, %102
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @fputc(i8 signext 39, i32* %128)
  br label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %123

133:                                              ; preds = %123
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %135 = call %struct.TYPE_16__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_13__* %134)
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %135, i64 %137
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %14, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %145 = call %struct.TYPE_16__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_13__* %144)
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %145, i64 %147
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @ccv_nnc_dimension_count(i32 %152)
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %155 = call %struct.TYPE_16__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_13__* %154)
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %155, i64 %157
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @CCV_GET_DATA_TYPE_SIZE(i32 %161)
  %163 = mul i64 %153, %162
  store i64 %163, i64* %15, align 8
  %164 = load i32*, i32** %9, align 8
  %165 = load i64, i64* %14, align 8
  %166 = trunc i64 %165 to i32
  %167 = load i64, i64* %14, align 8
  %168 = load i64, i64* %15, align 8
  %169 = add i64 %167, %168
  %170 = sub i64 %169, 1
  %171 = trunc i64 %170 to i32
  %172 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %166, i32 %171)
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %10, align 4
  %178 = sub nsw i32 %177, 1
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %133
  %181 = load i32*, i32** %9, align 8
  %182 = call i32 @fputc(i8 signext 125, i32* %181)
  br label %186

183:                                              ; preds = %133
  %184 = load i32*, i32** %9, align 8
  %185 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %184)
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %80
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %11, align 4
  br label %25

191:                                              ; preds = %25
  %192 = load i32*, i32** %9, align 8
  %193 = call i32 @fputc(i8 signext 125, i32* %192)
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_13__*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, ...) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i64 @ccv_nnc_dimension_count(i32) #1

declare dso_local i64 @CCV_GET_DATA_TYPE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
