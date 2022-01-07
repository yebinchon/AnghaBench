; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_yadif_filter.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_yadif_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_13__**, %struct.TYPE_18__*, i32, %struct.TYPE_16__**, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32* }

@HB_COMB_HEAVY = common dso_local global i32 0, align 4
@MODE_DECOMB_SELECTIVE = common dso_local global i32 0, align 4
@MODE_DECOMB_BLEND = common dso_local global i32 0, align 4
@HB_COMB_LIGHT = common dso_local global i32 0, align 4
@HB_COMB_NONE = common dso_local global i32 0, align 4
@MODE_DECOMB_EEDI2 = common dso_local global i32 0, align 4
@MODE_DECOMB_YADIF = common dso_local global i32 0, align 4
@DST2PF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32)* @yadif_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yadif_filter(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* @HB_COMB_HEAVY, align 4
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MODE_DECOMB_SELECTIVE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %30, i64 1
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %27, %4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MODE_DECOMB_BLEND, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @HB_COMB_LIGHT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @MODE_DECOMB_BLEND, align 4
  store i32 %48, i32* %10, align 4
  br label %61

49:                                               ; preds = %43, %36
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @HB_COMB_NONE, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MODE_DECOMB_SELECTIVE, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %53, %49
  br label %61

61:                                               ; preds = %60, %47
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @MODE_DECOMB_BLEND, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %84

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %83

78:                                               ; preds = %70
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %83, %65
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @MODE_DECOMB_EEDI2, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = call i32 @eedi2_planer(%struct.TYPE_19__* %94)
  br label %96

96:                                               ; preds = %93, %84
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %245

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @MODE_DECOMB_EEDI2, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %197

104:                                              ; preds = %99
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @MODE_DECOMB_YADIF, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %197, label %109

109:                                              ; preds = %104
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %193, %109
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 3
  br i1 %112, label %113, label %196

113:                                              ; preds = %110
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %115, align 8
  %117 = load i64, i64* @DST2PF, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %116, i64 %117
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %12, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %128, align 8
  %130 = load i64, i64* @DST2PF, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %129, i64 %130
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %13, align 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  store i32* %147, i32** %14, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %15, align 4
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %16, align 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %165, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %172

172:                                              ; preds = %189, %113
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %16, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %172
  %177 = load i32*, i32** %14, align 8
  %178 = load i32*, i32** %12, align 8
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @memcpy(i32* %177, i32* %178, i32 %179)
  %181 = load i32, i32* %17, align 4
  %182 = load i32*, i32** %14, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %14, align 8
  %185 = load i32, i32* %13, align 4
  %186 = load i32*, i32** %12, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %12, align 8
  br label %189

189:                                              ; preds = %176
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %18, align 4
  br label %172

192:                                              ; preds = %172
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  br label %110

196:                                              ; preds = %110
  br label %244

197:                                              ; preds = %104, %99
  store i32 0, i32* %19, align 4
  br label %198

198:                                              ; preds = %237, %197
  %199 = load i32, i32* %19, align 4
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %240

204:                                              ; preds = %198
  %205 = load i32, i32* %7, align 4
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 3
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %207, align 8
  %209 = load i32, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  store i32 %205, i32* %212, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %215, align 8
  %217 = load i32, i32* %19, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 1
  store i32 %213, i32* %220, align 4
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %223, align 8
  %225 = load i32, i32* %19, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 3
  store %struct.TYPE_20__* %221, %struct.TYPE_20__** %228, align 8
  %229 = load i32, i32* %10, align 4
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %231, align 8
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 2
  store i32 %229, i32* %236, align 8
  br label %237

237:                                              ; preds = %204
  %238 = load i32, i32* %19, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %19, align 4
  br label %198

240:                                              ; preds = %198
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 4
  %243 = call i32 @taskset_cycle(i32* %242)
  br label %244

244:                                              ; preds = %240, %196
  br label %259

245:                                              ; preds = %96
  %246 = load i32, i32* %10, align 4
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i64 0
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 2
  store i32 %246, i32* %251, align 8
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %255, i64 1
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = call i32 @hb_buffer_copy(%struct.TYPE_20__* %252, %struct.TYPE_13__* %257)
  br label %259

259:                                              ; preds = %245, %244
  ret void
}

declare dso_local i32 @eedi2_planer(%struct.TYPE_19__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @taskset_cycle(i32*) #1

declare dso_local i32 @hb_buffer_copy(%struct.TYPE_20__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
