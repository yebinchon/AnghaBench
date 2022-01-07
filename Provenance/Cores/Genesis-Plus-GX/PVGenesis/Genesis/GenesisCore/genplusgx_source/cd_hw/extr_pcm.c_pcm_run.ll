; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_pcm.c_pcm_run.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_pcm.c_pcm_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i16*, i32*, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32, i16, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i8* }

@pcm = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@blip = common dso_local global i32* null, align 8
@PCM_SCYCLES_RATIO = common dso_local global i32 0, align 4
@s68k = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@v_counter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcm_run(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store i32 %0, i32* %2, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 5), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %214

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %210, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %213

15:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %148, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %151

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 1), align 4
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %147

25:                                               ; preds = %19
  %26 = load i16*, i16** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 2), align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 4), align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 11
  %34 = and i32 %33, 65535
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %26, i64 %35
  %37 = load i16, i16* %36, align 2
  store i16 %37, i16* %7, align 2
  %38 = load i16, i16* %7, align 2
  %39 = sext i16 %38 to i32
  %40 = icmp eq i32 %39, 255
  br i1 %40, label %41, label %66

41:                                               ; preds = %25
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 4), align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 11
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 4), align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 8
  %55 = load i16*, i16** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 2), align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 4), align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16* %55, i64 %63
  %65 = load i16, i16* %64, align 2
  store i16 %65, i16* %7, align 2
  br label %83

66:                                               ; preds = %25
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 4), align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 4), align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %73
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  br label %83

83:                                               ; preds = %66, %41
  %84 = load i16, i16* %7, align 2
  %85 = sext i16 %84 to i32
  %86 = icmp ne i32 %85, 255
  br i1 %86, label %87, label %146

87:                                               ; preds = %83
  %88 = load i16, i16* %7, align 2
  %89 = sext i16 %88 to i32
  %90 = and i32 %89, 128
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i16, i16* %7, align 2
  %94 = sext i16 %93 to i32
  %95 = and i32 %94, 127
  %96 = trunc i32 %95 to i16
  store i16 %96, i16* %7, align 2
  br label %103

97:                                               ; preds = %87
  %98 = load i16, i16* %7, align 2
  %99 = sext i16 %98 to i32
  %100 = and i32 %99, 127
  %101 = sub nsw i32 0, %100
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* %7, align 2
  br label %103

103:                                              ; preds = %97, %92
  %104 = load i16, i16* %7, align 2
  %105 = sext i16 %104 to i32
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 4), align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i16, i16* %110, align 4
  %112 = sext i16 %111 to i32
  %113 = mul nsw i32 %105, %112
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 4), align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, 15
  %121 = mul nsw i32 %113, %120
  %122 = ashr i32 %121, 5
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %5, align 4
  %125 = load i16, i16* %7, align 2
  %126 = sext i16 %125 to i32
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 4), align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i16, i16* %131, align 4
  %133 = sext i16 %132 to i32
  %134 = mul nsw i32 %126, %133
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 4), align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = ashr i32 %140, 4
  %142 = mul nsw i32 %134, %141
  %143 = ashr i32 %142, 5
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %103, %83
  br label %147

147:                                              ; preds = %146, %19
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %16

151:                                              ; preds = %16
  %152 = load i32, i32* %5, align 4
  %153 = icmp slt i32 %152, -32768
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 -32768, i32* %5, align 4
  br label %160

155:                                              ; preds = %151
  %156 = load i32, i32* %5, align 4
  %157 = icmp sgt i32 %156, 32767
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 32767, i32* %5, align 4
  br label %159

159:                                              ; preds = %158, %155
  br label %160

160:                                              ; preds = %159, %154
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %161, -32768
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 -32768, i32* %6, align 4
  br label %169

164:                                              ; preds = %160
  %165 = load i32, i32* %6, align 4
  %166 = icmp sgt i32 %165, 32767
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 32767, i32* %6, align 4
  br label %168

168:                                              ; preds = %167, %164
  br label %169

169:                                              ; preds = %168, %163
  %170 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 3), align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %169
  %176 = load i32*, i32** @blip, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* %5, align 4
  %181 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 3), align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %180, %183
  %185 = call i32 @blip_add_delta_fast(i32 %178, i32 %179, i32 %184)
  %186 = load i32, i32* %5, align 4
  %187 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 3), align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %175, %169
  %190 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 3), align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %189
  %196 = load i32*, i32** @blip, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %3, align 4
  %200 = load i32, i32* %6, align 4
  %201 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 3), align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %200, %203
  %205 = call i32 @blip_add_delta_fast(i32 %198, i32 %199, i32 %204)
  %206 = load i32, i32* %6, align 4
  %207 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 3), align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %195, %189
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %3, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %3, align 4
  br label %11

213:                                              ; preds = %11
  br label %247

214:                                              ; preds = %1
  %215 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 3), align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %214
  %220 = load i32*, i32** @blip, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 3), align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = sub nsw i32 0, %225
  %227 = call i32 @blip_add_delta_fast(i32 %222, i32 0, i32 %226)
  %228 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 3), align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  store i32 0, i32* %229, align 4
  br label %230

230:                                              ; preds = %219, %214
  %231 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 3), align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %246

235:                                              ; preds = %230
  %236 = load i32*, i32** @blip, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 3), align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 0, %241
  %243 = call i32 @blip_add_delta_fast(i32 %238, i32 0, i32 %242)
  %244 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 3), align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  store i32 0, i32* %245, align 4
  br label %246

246:                                              ; preds = %235, %230
  br label %247

247:                                              ; preds = %246, %213
  %248 = load i32*, i32** @blip, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %2, align 4
  %252 = call i32 @blip_end_frame(i32 %250, i32 %251)
  %253 = load i32*, i32** @blip, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %2, align 4
  %257 = call i32 @blip_end_frame(i32 %255, i32 %256)
  %258 = load i32, i32* %2, align 4
  %259 = load i32, i32* @PCM_SCYCLES_RATIO, align 4
  %260 = mul i32 %258, %259
  %261 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 0), align 8
  %262 = add i32 %261, %260
  store i32 %262, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pcm, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @blip_add_delta_fast(i32, i32, i32) #1

declare dso_local i32 @blip_end_frame(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
