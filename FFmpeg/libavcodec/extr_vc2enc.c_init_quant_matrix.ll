; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc.c_init_quant_matrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc.c_init_quant_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i64, i8*** }

@VC2_QM_DEF = common dso_local global i64 0, align 8
@ff_dirac_default_qmat = common dso_local global i8**** null, align 8
@vc2_qm_col_tab = common dso_local global i8*** null, align 8
@VC2_QM_COL = common dso_local global i64 0, align 8
@vc2_qm_flat_tab = common dso_local global i8*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @init_quant_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_quant_matrix(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sle i32 %7, 4
  br i1 %8, label %9, label %109

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VC2_QM_DEF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %109

15:                                               ; preds = %9
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32 0, i32* %17, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %105, %15
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %108

24:                                               ; preds = %18
  %25 = load i8****, i8***** @ff_dirac_default_qmat, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8***, i8**** %25, i64 %28
  %30 = load i8***, i8**** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8**, i8*** %30, i64 %32
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  %39 = load i8***, i8**** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8**, i8*** %39, i64 %41
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  store i8* %36, i8** %44, align 8
  %45 = load i8****, i8***** @ff_dirac_default_qmat, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i8***, i8**** %45, i64 %48
  %50 = load i8***, i8**** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8**, i8*** %50, i64 %52
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i8***, i8**** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8**, i8*** %59, i64 %61
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  store i8* %56, i8** %64, align 8
  %65 = load i8****, i8***** @ff_dirac_default_qmat, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i8***, i8**** %65, i64 %68
  %70 = load i8***, i8**** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8**, i8*** %70, i64 %72
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  %79 = load i8***, i8**** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8**, i8*** %79, i64 %81
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 2
  store i8* %76, i8** %84, align 8
  %85 = load i8****, i8***** @ff_dirac_default_qmat, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i8***, i8**** %85, i64 %88
  %90 = load i8***, i8**** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8**, i8*** %90, i64 %92
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 3
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  %99 = load i8***, i8**** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8**, i8*** %99, i64 %101
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 3
  store i8* %96, i8** %104, align 8
  br label %105

105:                                              ; preds = %24
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %18

108:                                              ; preds = %18
  br label %270

109:                                              ; preds = %9, %1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @VC2_QM_DEF, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %185

117:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %181, %117
  %119 = load i32, i32* %3, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %184

124:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %177, %124
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %126, 4
  br i1 %127, label %128, label %180

128:                                              ; preds = %125
  %129 = load i32, i32* %3, align 4
  %130 = icmp sle i32 %129, 3
  br i1 %130, label %131, label %156

131:                                              ; preds = %128
  %132 = load i8****, i8***** @ff_dirac_default_qmat, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i8***, i8**** %132, i64 %135
  %137 = load i8***, i8**** %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8**, i8*** %137, i64 %139
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 4
  %148 = load i8***, i8**** %147, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8**, i8*** %148, i64 %150
  %152 = load i8**, i8*** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  store i8* %145, i8** %155, align 8
  br label %176

156:                                              ; preds = %128
  %157 = load i8***, i8**** @vc2_qm_col_tab, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8**, i8*** %157, i64 %159
  %161 = load i8**, i8*** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 4
  %168 = load i8***, i8**** %167, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8**, i8*** %168, i64 %170
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  store i8* %165, i8** %175, align 8
  br label %176

176:                                              ; preds = %156, %131
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %4, align 4
  br label %125

180:                                              ; preds = %125
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %3, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %3, align 4
  br label %118

184:                                              ; preds = %118
  br label %270

185:                                              ; preds = %109
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @VC2_QM_COL, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %230

191:                                              ; preds = %185
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %226, %191
  %193 = load i32, i32* %3, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %229

198:                                              ; preds = %192
  store i32 0, i32* %4, align 4
  br label %199

199:                                              ; preds = %222, %198
  %200 = load i32, i32* %4, align 4
  %201 = icmp slt i32 %200, 4
  br i1 %201, label %202, label %225

202:                                              ; preds = %199
  %203 = load i8***, i8**** @vc2_qm_col_tab, align 8
  %204 = load i32, i32* %3, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8**, i8*** %203, i64 %205
  %207 = load i8**, i8*** %206, align 8
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %207, i64 %209
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 4
  %214 = load i8***, i8**** %213, align 8
  %215 = load i32, i32* %3, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8**, i8*** %214, i64 %216
  %218 = load i8**, i8*** %217, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  store i8* %211, i8** %221, align 8
  br label %222

222:                                              ; preds = %202
  %223 = load i32, i32* %4, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %4, align 4
  br label %199

225:                                              ; preds = %199
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %3, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %3, align 4
  br label %192

229:                                              ; preds = %192
  br label %269

230:                                              ; preds = %185
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %265, %230
  %232 = load i32, i32* %3, align 4
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %268

237:                                              ; preds = %231
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %261, %237
  %239 = load i32, i32* %4, align 4
  %240 = icmp slt i32 %239, 4
  br i1 %240, label %241, label %264

241:                                              ; preds = %238
  %242 = load i8***, i8**** @vc2_qm_flat_tab, align 8
  %243 = load i32, i32* %3, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8**, i8*** %242, i64 %244
  %246 = load i8**, i8*** %245, align 8
  %247 = load i32, i32* %4, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %246, i64 %248
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 4
  %253 = load i8***, i8**** %252, align 8
  %254 = load i32, i32* %3, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8**, i8*** %253, i64 %255
  %257 = load i8**, i8*** %256, align 8
  %258 = load i32, i32* %4, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8*, i8** %257, i64 %259
  store i8* %250, i8** %260, align 8
  br label %261

261:                                              ; preds = %241
  %262 = load i32, i32* %4, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %4, align 4
  br label %238

264:                                              ; preds = %238
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %3, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %3, align 4
  br label %231

268:                                              ; preds = %231
  br label %269

269:                                              ; preds = %268, %229
  br label %270

270:                                              ; preds = %108, %269, %184
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
