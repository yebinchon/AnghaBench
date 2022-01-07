; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_signature_lookup.c_evaluate_parameters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_signature_lookup.c_evaluate_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, double }
%struct.TYPE_12__ = type { double, i32, i32, %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@DIR_NEXT = common dso_local global i32 0, align 4
@STATUS_NULL = common dso_local global i32 0, align 4
@DIR_PREV = common dso_local global i32 0, align 4
@DIR_NEXT_END = common dso_local global i32 0, align 4
@STATUS_END_REACHED = common dso_local global i32 0, align 4
@DIR_PREV_END = common dso_local global i32 0, align 4
@STATUS_BEGIN_REACHED = common dso_local global i32 0, align 4
@MODE_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32)* @evaluate_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evaluate_parameters(%struct.TYPE_12__* noalias sret %0, i32* %1, %struct.TYPE_11__* %2, %struct.TYPE_12__* %3, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca %struct.TYPE_13__*, align 8
  %25 = alloca %struct.TYPE_13__*, align 8
  %26 = alloca i32, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  store i32 %5, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %27 = load i32, i32* @DIR_NEXT, align 4
  store i32 %27, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %29 = load double, double* %28, align 8
  store double %29, double* %20, align 8
  store i32 0, i32* %21, align 4
  %30 = load i32, i32* @STATUS_NULL, align 4
  store i32 %30, i32* %26, align 4
  br label %31

31:                                               ; preds = %250, %6
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %254

34:                                               ; preds = %31
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %22, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %23, align 8
  br label %41

41:                                               ; preds = %34, %159
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @get_l1dist(i32* %42, %struct.TYPE_11__* %43, i32 %46, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %41
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 1
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %21, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %21, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %21, align 4
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %22, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %23, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @DIR_NEXT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  store %struct.TYPE_13__* %81, %struct.TYPE_13__** %22, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %23, align 8
  %85 = load i32, i32* @DIR_PREV, align 4
  store i32 %85, i32* %14, align 4
  br label %87

86:                                               ; preds = %72
  br label %160

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %69
  br label %113

89:                                               ; preds = %41
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  store i32 0, i32* %21, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %24, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %25, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %104

101:                                              ; preds = %89
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %17, align 4
  br label %104

104:                                              ; preds = %101, %89
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 1
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %18, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %18, align 4
  br label %112

112:                                              ; preds = %109, %104
  br label %113

113:                                              ; preds = %112, %88
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @iterate_frame(i32 %118, %struct.TYPE_13__** %22, %struct.TYPE_13__** %23, i32 %119, i32* %13, i32 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @DIR_NEXT_END, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %113
  %126 = load i32, i32* @STATUS_END_REACHED, align 4
  store i32 %126, i32* %26, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  store %struct.TYPE_13__* %129, %struct.TYPE_13__** %22, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  store %struct.TYPE_13__* %132, %struct.TYPE_13__** %23, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* @DIR_PREV, align 4
  %138 = call i32 @iterate_frame(i32 %135, %struct.TYPE_13__** %22, %struct.TYPE_13__** %23, i32 %136, i32* %13, i32 %137)
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %125, %113
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @DIR_PREV_END, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* @STATUS_BEGIN_REACHED, align 4
  %145 = load i32, i32* %26, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %26, align 4
  br label %160

147:                                              ; preds = %139
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %147
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp sge i32 %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %160

159:                                              ; preds = %152, %147
  br label %41

160:                                              ; preds = %158, %143, %86
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %250

167:                                              ; preds = %160
  %168 = load i32, i32* %16, align 4
  %169 = sitofp i32 %168 to double
  %170 = load i32, i32* %15, align 4
  %171 = sitofp i32 %170 to double
  %172 = fdiv double %169, %171
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  %175 = load double, double* %174, align 8
  %176 = fcmp olt double %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  br label %250

178:                                              ; preds = %167
  %179 = load i32, i32* %16, align 4
  %180 = sitofp i32 %179 to double
  %181 = fmul double %180, 5.000000e-01
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* %18, align 4
  %184 = call double @FFMAX(i32 %182, i32 %183)
  %185 = fcmp olt double %181, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  br label %250

187:                                              ; preds = %178
  %188 = load i32, i32* %16, align 4
  %189 = sitofp i32 %188 to double
  %190 = load i32, i32* %12, align 4
  %191 = sitofp i32 %190 to double
  %192 = fdiv double %189, %191
  store double %192, double* %19, align 8
  %193 = load double, double* %19, align 8
  %194 = load double, double* %20, align 8
  %195 = fcmp olt double %193, %194
  br i1 %195, label %208, label %196

196:                                              ; preds = %187
  %197 = load i32, i32* %26, align 4
  %198 = load i32, i32* @STATUS_END_REACHED, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* @STATUS_BEGIN_REACHED, align 4
  %202 = or i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %196
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @MODE_FAST, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %236

208:                                              ; preds = %204, %196, %187
  %209 = load double, double* %19, align 8
  store double %209, double* %20, align 8
  %210 = load double, double* %19, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store double %210, double* %211, align 8
  %212 = load i32, i32* %13, align 4
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  store i32 %212, i32* %213, align 8
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 8
  store i32 %216, i32* %217, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 7
  store i32 %220, i32* %221, align 4
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 6
  store i32 %224, i32* %225, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 5
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 5
  store %struct.TYPE_13__* %228, %struct.TYPE_13__** %229, align 8
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 4
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 4
  store %struct.TYPE_13__* %232, %struct.TYPE_13__** %233, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  store i32 0, i32* %234, align 4
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %235, align 8
  br label %236

236:                                              ; preds = %208, %204
  %237 = load i32, i32* %26, align 4
  %238 = load i32, i32* @STATUS_END_REACHED, align 4
  %239 = load i32, i32* @STATUS_BEGIN_REACHED, align 4
  %240 = or i32 %238, %239
  %241 = icmp eq i32 %237, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  store i32 1, i32* %243, align 4
  br label %254

244:                                              ; preds = %236
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* @MODE_FAST, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %244
  br label %254

249:                                              ; preds = %244
  br label %250

250:                                              ; preds = %249, %186, %177, %166
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 3
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  store %struct.TYPE_12__* %253, %struct.TYPE_12__** %9, align 8
  br label %31

254:                                              ; preds = %248, %242, %31
  %255 = bitcast %struct.TYPE_12__* %0 to i8*
  %256 = bitcast %struct.TYPE_12__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %255, i8* align 8 %256, i64 56, i1 false)
  ret void
}

declare dso_local i32 @get_l1dist(i32*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @iterate_frame(i32, %struct.TYPE_13__**, %struct.TYPE_13__**, i32, i32*, i32) #1

declare dso_local double @FFMAX(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
