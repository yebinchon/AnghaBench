; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c_ccv_nnc_symbolic_graph_dot.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c_ccv_nnc_symbolic_graph_dot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"digraph G {\0Acompound=true;\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"node%d -> node%d [ltail=cluster%d,lhead=cluster%d];\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"node%d -> node%d [ltail=cluster%d];\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"node%d -> node%d [lhead=cluster%d];\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"node%d -> node%d;\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_symbolic_graph_dot(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %15)
  store i32 0, i32* %9, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = call i64 @ccmalloc(i32 %24)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %81, %3
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %84

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @ccv_array_get(%struct.TYPE_9__* %43, i32 %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %11, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @CCV_NNC_GRAPH_EXEC_IS_DEAD(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  br label %81

53:                                               ; preds = %35
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @_ccv_nnc_symbolic_graph_dot_sub_graphs(%struct.TYPE_8__* %59, i32 %62, i32 %65, i32 %66, i32* %67, i32* %9)
  br label %80

69:                                               ; preds = %53
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @_ccv_nnc_symbolic_graph_dot_node(%struct.TYPE_8__* %70, i32 %71, i32 %74, i32 %75, i32* %76)
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %69, %58
  br label %81

81:                                               ; preds = %80, %52
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %27

84:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %243, %84
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %86, %91
  br i1 %92, label %93, label %246

93:                                               ; preds = %85
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i64 @ccv_array_get(%struct.TYPE_9__* %96, i32 %97)
  %99 = inttoptr i64 %98 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %12, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @CCV_NNC_GRAPH_EXEC_IS_DEAD(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  br label %243

106:                                              ; preds = %93
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = icmp ne %struct.TYPE_9__* %109, null
  br i1 %110, label %111, label %242

111:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %238, %111
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %113, %118
  br i1 %119, label %120, label %241

120:                                              ; preds = %112
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i64 @ccv_array_get(%struct.TYPE_9__* %123, i32 %124)
  %126 = inttoptr i64 %125 to i32*
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %13, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i64 @ccv_array_get(%struct.TYPE_9__* %130, i32 %131)
  %133 = inttoptr i64 %132 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %14, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %166

138:                                              ; preds = %120
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %166

143:                                              ; preds = %138
  %144 = load i32*, i32** %6, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %144, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %154, i32 %159, i32 %164)
  br label %237

166:                                              ; preds = %138, %120
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %194

171:                                              ; preds = %166
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %194, label %176

176:                                              ; preds = %171
  %177 = load i32*, i32** %6, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %10, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %10, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %177, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %182, i32 %187, i32 %192)
  br label %236

194:                                              ; preds = %171, %166
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %222, label %199

199:                                              ; preds = %194
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %222

204:                                              ; preds = %199
  %205 = load i32*, i32** %6, align 8
  %206 = load i32*, i32** %10, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %10, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %10, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %205, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %210, i32 %215, i32 %220)
  br label %235

222:                                              ; preds = %199, %194
  %223 = load i32*, i32** %6, align 8
  %224 = load i32*, i32** %10, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** %10, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i32*, i8*, i32, i32, ...) @fprintf(i32* %223, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %228, i32 %233)
  br label %235

235:                                              ; preds = %222, %204
  br label %236

236:                                              ; preds = %235, %176
  br label %237

237:                                              ; preds = %236, %143
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %8, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %8, align 4
  br label %112

241:                                              ; preds = %112
  br label %242

242:                                              ; preds = %241, %106
  br label %243

243:                                              ; preds = %242, %105
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %7, align 4
  br label %85

246:                                              ; preds = %85
  %247 = load i32*, i32** %6, align 8
  %248 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %247)
  %249 = load i32*, i32** %10, align 8
  %250 = call i32 @ccfree(i32* %249)
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @CCV_NNC_GRAPH_EXEC_IS_DEAD(i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_dot_sub_graphs(%struct.TYPE_8__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_dot_node(%struct.TYPE_8__*, i32, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @ccfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
