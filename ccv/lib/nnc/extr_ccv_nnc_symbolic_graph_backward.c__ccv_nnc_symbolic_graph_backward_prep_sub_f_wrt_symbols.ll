; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_backward.c__ccv_nnc_symbolic_graph_backward_prep_sub_f_wrt_symbols.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_backward.c__ccv_nnc_symbolic_graph_backward_prep_sub_f_wrt_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_21__* }

@NO_TENSOR_SYMBOL = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32, %struct.TYPE_18__*, i32*, i32*, %struct.TYPE_21__*, %struct.TYPE_21__*)* @_ccv_nnc_symbolic_graph_backward_prep_sub_f_wrt_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_symbolic_graph_backward_prep_sub_f_wrt_symbols(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, i32 %2, %struct.TYPE_18__* %3, i32* %4, i32* %5, %struct.TYPE_21__* %6, %struct.TYPE_21__* %7) #0 {
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_21__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_17__, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_17__, align 8
  %32 = alloca %struct.TYPE_18__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_17__, align 8
  %36 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_21__* %6, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %7, %struct.TYPE_21__** %16, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %38 = call i32 @ccv_array_clear(%struct.TYPE_21__* %37)
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ccv_max(i32 1, i32 %41)
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %19, align 8
  %45 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %20, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ccv_max(i32 1, i32 %48)
  %50 = zext i32 %49 to i64
  %51 = alloca i32, i64 %50, align 16
  store i64 %50, i64* %21, align 8
  store i32* %45, i32** %22, align 8
  store i32* %51, i32** %23, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %53 = call i32 @_ccv_nnc_symbolic_graph_backward_exec_io(%struct.TYPE_20__* %52, i32** %22, i32** %23, i32* %24, i32* %25)
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %114, %8
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %25, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %117

58:                                               ; preds = %54
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %17, align 4
  %61 = ashr i32 %60, 6
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %17, align 4
  %66 = and i32 %65, 63
  %67 = shl i32 1, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %113

70:                                               ; preds = %58
  %71 = load i32*, i32** %23, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %26, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %77 = load i32, i32* %26, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  store %struct.TYPE_21__* %81, %struct.TYPE_21__** %27, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %83 = icmp ne %struct.TYPE_21__* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %70
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i64 @ccv_array_get(%struct.TYPE_21__* %91, i32 %92)
  %94 = inttoptr i64 %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1
  br label %98

97:                                               ; preds = %84, %70
  br label %98

98:                                               ; preds = %97, %90
  %99 = phi i32 [ %96, %90 ], [ -1, %97 ]
  store i32 %99, i32* %28, align 4
  %100 = load i32, i32* %28, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %104 = load i32, i32* %28, align 4
  store i32 %104, i32* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %106, %struct.TYPE_19__** %105, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %108 = call i32 @ccv_array_push(%struct.TYPE_21__* %107, %struct.TYPE_17__* %29)
  br label %112

109:                                              ; preds = %98
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %111 = call i32 @ccv_array_push(%struct.TYPE_21__* %110, %struct.TYPE_17__* @NO_TENSOR_SYMBOL)
  br label %112

112:                                              ; preds = %109, %102
  br label %113

113:                                              ; preds = %112, %58
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %54

117:                                              ; preds = %54
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %119 = call i32 @ccv_array_clear(%struct.TYPE_21__* %118)
  store i32 0, i32* %17, align 4
  br label %120

120:                                              ; preds = %159, %117
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %24, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %162

124:                                              ; preds = %120
  %125 = load i32*, i32** %13, align 8
  %126 = load i32, i32* %17, align 4
  %127 = ashr i32 %126, 6
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %17, align 4
  %132 = and i32 %131, 63
  %133 = shl i32 1, %132
  %134 = and i32 %130, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %124
  %137 = load i32*, i32** %22, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %30, align 4
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %144 = load i32, i32* %30, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = call i64 @ccv_array_get(%struct.TYPE_21__* %148, i32 %149)
  %151 = inttoptr i64 %150 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %142, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %155, %struct.TYPE_19__** %154, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %157 = call i32 @ccv_array_push(%struct.TYPE_21__* %156, %struct.TYPE_17__* %31)
  br label %158

158:                                              ; preds = %136, %124
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %17, align 4
  br label %120

162:                                              ; preds = %120
  store i32 0, i32* %17, align 4
  br label %163

163:                                              ; preds = %258, %162
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %164, %169
  br i1 %170, label %171, label %261

171:                                              ; preds = %163
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %173, align 8
  %175 = load i32, i32* %17, align 4
  %176 = call i64 @ccv_array_get(%struct.TYPE_21__* %174, i32 %175)
  %177 = inttoptr i64 %176 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %177, %struct.TYPE_18__** %32, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %257

182:                                              ; preds = %171
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sub nsw i32 %185, 1
  store i32 %186, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %18, align 4
  br label %187

187:                                              ; preds = %208, %182
  %188 = load i32, i32* %34, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %18, align 4
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp slt i32 %191, %194
  br label %196

196:                                              ; preds = %190, %187
  %197 = phi i1 [ false, %187 ], [ %195, %190 ]
  br i1 %197, label %198, label %211

198:                                              ; preds = %196
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %200 = load i32, i32* %18, align 4
  %201 = call i64 @ccv_array_get(%struct.TYPE_21__* %199, i32 %200)
  %202 = inttoptr i64 %201 to %struct.TYPE_17__*
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %17, align 4
  %206 = icmp eq i32 %204, %205
  %207 = zext i1 %206 to i32
  store i32 %207, i32* %34, align 4
  br label %208

208:                                              ; preds = %198
  %209 = load i32, i32* %18, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %18, align 4
  br label %187

211:                                              ; preds = %196
  %212 = load i32, i32* %34, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %216 = load i32, i32* %17, align 4
  store i32 %216, i32* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %218, %struct.TYPE_19__** %217, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %220 = call i32 @ccv_array_push(%struct.TYPE_21__* %219, %struct.TYPE_17__* %35)
  br label %221

221:                                              ; preds = %214, %211
  store i32 0, i32* %34, align 4
  store i32 0, i32* %18, align 4
  br label %222

222:                                              ; preds = %243, %221
  %223 = load i32, i32* %34, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %231, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* %18, align 4
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %226, %229
  br label %231

231:                                              ; preds = %225, %222
  %232 = phi i1 [ false, %222 ], [ %230, %225 ]
  br i1 %232, label %233, label %246

233:                                              ; preds = %231
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %235 = load i32, i32* %18, align 4
  %236 = call i64 @ccv_array_get(%struct.TYPE_21__* %234, i32 %235)
  %237 = inttoptr i64 %236 to %struct.TYPE_17__*
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %33, align 4
  %241 = icmp eq i32 %239, %240
  %242 = zext i1 %241 to i32
  store i32 %242, i32* %34, align 4
  br label %243

243:                                              ; preds = %233
  %244 = load i32, i32* %18, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %18, align 4
  br label %222

246:                                              ; preds = %231
  %247 = load i32, i32* %34, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %251 = load i32, i32* %33, align 4
  store i32 %251, i32* %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %253, %struct.TYPE_19__** %252, align 8
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %255 = call i32 @ccv_array_push(%struct.TYPE_21__* %254, %struct.TYPE_17__* %36)
  br label %256

256:                                              ; preds = %249, %246
  br label %257

257:                                              ; preds = %256, %171
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %17, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %17, align 4
  br label %163

261:                                              ; preds = %163
  %262 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %262)
  ret void
}

declare dso_local i32 @ccv_array_clear(%struct.TYPE_21__*) #1

declare dso_local i32 @ccv_max(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @_ccv_nnc_symbolic_graph_backward_exec_io(%struct.TYPE_20__*, i32**, i32**, i32*, i32*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ccv_array_push(%struct.TYPE_21__*, %struct.TYPE_17__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
