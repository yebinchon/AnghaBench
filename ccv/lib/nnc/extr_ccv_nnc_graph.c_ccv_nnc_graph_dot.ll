; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c_ccv_nnc_graph_dot.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c_ccv_nnc_graph_dot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@.str = private unnamed_addr constant [28 x i8] c"digraph G {\0Acompound=true;\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"node%d -> node%d [ltail=cluster%d,lhead=cluster%d];\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"node%d -> node%d [ltail=cluster%d];\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"node%d -> node%d [lhead=cluster%d];\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"node%d -> node%d;\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_graph_dot(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = call i32 @_ccv_nnc_graph_tensor_dot_recovery(%struct.TYPE_9__* %19)
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i64 @ccmalloc(i32 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %12, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %78, %3
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @ccv_array_get(%struct.TYPE_11__* %47, i32 %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %13, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %52 = call i64* @CCV_NNC_GRAPH_REF(%struct.TYPE_10__* %51)
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %39
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @_ccv_nnc_graph_dot_sub_graphs(%struct.TYPE_10__* %57, i32 %58, i32 %61, i32 %62, i32 1, i32* %63, i32* %10, i32* %11)
  br label %77

65:                                               ; preds = %39
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @_ccv_nnc_graph_dot_node(%struct.TYPE_10__* %66, i32 %67, i32 %70, i32 %71, i32 %72, i32 0, i32* %73, i32* %10)
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %65, %56
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %31

81:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %239, %81
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %83, %88
  br i1 %89, label %90, label %242

90:                                               ; preds = %82
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i64 @ccv_array_get(%struct.TYPE_11__* %93, i32 %94)
  %96 = inttoptr i64 %95 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %14, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = icmp ne %struct.TYPE_11__* %99, null
  br i1 %100, label %101, label %238

101:                                              ; preds = %90
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %234, %101
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %103, %108
  br i1 %109, label %110, label %237

110:                                              ; preds = %102
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i64 @ccv_array_get(%struct.TYPE_11__* %113, i32 %114)
  %116 = inttoptr i64 %115 to i32*
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %15, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = call i64 @ccv_array_get(%struct.TYPE_11__* %120, i32 %121)
  %123 = inttoptr i64 %122 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %123, %struct.TYPE_10__** %16, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %125 = call i64* @CCV_NNC_GRAPH_REF(%struct.TYPE_10__* %124)
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %158

129:                                              ; preds = %110
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %131 = call i64* @CCV_NNC_GRAPH_REF(%struct.TYPE_10__* %130)
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %129
  %136 = load i32*, i32** %6, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %12, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 %146, i32 %151, i32 %156)
  br label %233

158:                                              ; preds = %129, %110
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %160 = call i64* @CCV_NNC_GRAPH_REF(%struct.TYPE_10__* %159)
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %188

164:                                              ; preds = %158
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %166 = call i64* @CCV_NNC_GRAPH_REF(%struct.TYPE_10__* %165)
  %167 = getelementptr inbounds i64, i64* %166, i64 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %188, label %170

170:                                              ; preds = %164
  %171 = load i32*, i32** %6, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %12, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %171, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %176, i32 %181, i32 %186)
  br label %232

188:                                              ; preds = %164, %158
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %190 = call i64* @CCV_NNC_GRAPH_REF(%struct.TYPE_10__* %189)
  %191 = getelementptr inbounds i64, i64* %190, i64 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %218, label %194

194:                                              ; preds = %188
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %196 = call i64* @CCV_NNC_GRAPH_REF(%struct.TYPE_10__* %195)
  %197 = getelementptr inbounds i64, i64* %196, i64 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %218

200:                                              ; preds = %194
  %201 = load i32*, i32** %6, align 8
  %202 = load i32*, i32** %12, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %12, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %12, align 8
  %213 = load i32, i32* %15, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %201, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %206, i32 %211, i32 %216)
  br label %231

218:                                              ; preds = %194, %188
  %219 = load i32*, i32** %6, align 8
  %220 = load i32*, i32** %12, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %12, align 8
  %226 = load i32, i32* %15, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %219, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %224, i32 %229)
  br label %231

231:                                              ; preds = %218, %200
  br label %232

232:                                              ; preds = %231, %170
  br label %233

233:                                              ; preds = %232, %135
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %9, align 4
  br label %102

237:                                              ; preds = %102
  br label %238

238:                                              ; preds = %237, %90
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %82

242:                                              ; preds = %82
  %243 = load i32*, i32** %6, align 8
  %244 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %243)
  %245 = load i32, i32* %7, align 4
  %246 = call i32 @_ccv_nnc_graph_tensor_dot_recovery_free(i32 %245)
  %247 = load i32*, i32** %12, align 8
  %248 = call i32 @ccfree(i32* %247)
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @_ccv_nnc_graph_tensor_dot_recovery(%struct.TYPE_9__*) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_11__*, i32) #1

declare dso_local i64* @CCV_NNC_GRAPH_REF(%struct.TYPE_10__*) #1

declare dso_local i32 @_ccv_nnc_graph_dot_sub_graphs(%struct.TYPE_10__*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @_ccv_nnc_graph_dot_node(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @_ccv_nnc_graph_tensor_dot_recovery_free(i32) #1

declare dso_local i32 @ccfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
