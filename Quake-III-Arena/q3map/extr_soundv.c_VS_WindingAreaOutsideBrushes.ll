; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_WindingAreaOutsideBrushes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_WindingAreaOutsideBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@dbrushes = common dso_local global %struct.TYPE_11__* null, align 8
@dshaders = common dso_local global %struct.TYPE_12__* null, align 8
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_FOG = common dso_local global i32 0, align 4
@CONTENTS_AREAPORTAL = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@CONTENTS_MONSTERCLIP = common dso_local global i32 0, align 4
@CONTENTS_CLUSTERPORTAL = common dso_local global i32 0, align 4
@CONTENTS_DONOTENTER = common dso_local global i32 0, align 4
@CONTENTS_BODY = common dso_local global i32 0, align 4
@CONTENTS_CORPSE = common dso_local global i32 0, align 4
@CONTENTS_TRANSLUCENT = common dso_local global i32 0, align 4
@CONTENTS_TRIGGER = common dso_local global i32 0, align 4
@CONTENTS_NODROP = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @VS_WindingAreaOutsideBrushes(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x [64 x %struct.TYPE_10__]], align 16
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = getelementptr inbounds [2 x [64 x %struct.TYPE_10__]], [2 x [64 x %struct.TYPE_10__]]* %12, i64 0, i64 0
  %16 = getelementptr inbounds [64 x %struct.TYPE_10__], [64 x %struct.TYPE_10__]* %15, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memcpy(i32 %18, i32 %21, i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [2 x [64 x %struct.TYPE_10__]], [2 x [64 x %struct.TYPE_10__]]* %12, i64 0, i64 0
  %33 = getelementptr inbounds [64 x %struct.TYPE_10__], [64 x %struct.TYPE_10__]* %32, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 16
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 1, i32* %35, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %219, %3
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %222

40:                                               ; preds = %36
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dbrushes, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i64 %47
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %13, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dshaders, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CONTENTS_LAVA, align 4
  %57 = load i32, i32* @CONTENTS_SLIME, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @CONTENTS_WATER, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @CONTENTS_FOG, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CONTENTS_AREAPORTAL, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CONTENTS_MONSTERCLIP, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CONTENTS_CLUSTERPORTAL, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @CONTENTS_DONOTENTER, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @CONTENTS_BODY, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @CONTENTS_CORPSE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @CONTENTS_TRANSLUCENT, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @CONTENTS_TRIGGER, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CONTENTS_NODROP, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %55, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %173, label %85

85:                                               ; preds = %40
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dshaders, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CONTENTS_SOLID, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %173

96:                                               ; preds = %85
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %102
  store i32 0, i32* %103, align 4
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %158, %96
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %105, %110
  br i1 %111, label %112, label %161

112:                                              ; preds = %104
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [2 x [64 x %struct.TYPE_10__]], [2 x [64 x %struct.TYPE_10__]]* %12, i64 0, i64 %115
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [64 x %struct.TYPE_10__], [64 x %struct.TYPE_10__]* %116, i64 0, i64 %118
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, 1
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [2 x [64 x %struct.TYPE_10__]], [2 x [64 x %struct.TYPE_10__]]* %12, i64 0, i64 %126
  %128 = load i32, i32* %8, align 4
  %129 = and i32 %128, 1
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [64 x %struct.TYPE_10__], [64 x %struct.TYPE_10__]* %127, i64 0, i64 %136
  %138 = load i32, i32* %8, align 4
  %139 = and i32 %138, 1
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 64, %145
  %147 = call i32 @VS_ChopWindingWithBrush(%struct.TYPE_10__* %119, %struct.TYPE_11__* %120, %struct.TYPE_10__* %137, i32 %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %8, align 4
  %150 = and i32 %149, 1
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, %148
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %112
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %104

161:                                              ; preds = %104
  %162 = load i32, i32* %8, align 4
  %163 = and i32 %162, 1
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %161
  store float 0.000000e+00, float* %4, align 4
  br label %248

172:                                              ; preds = %161
  br label %218

173:                                              ; preds = %85, %40
  store i32 0, i32* %9, align 4
  br label %174

174:                                              ; preds = %202, %173
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %8, align 4
  %177 = and i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %175, %180
  br i1 %181, label %182, label %205

182:                                              ; preds = %174
  %183 = load i32, i32* %8, align 4
  %184 = and i32 %183, 1
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [2 x [64 x %struct.TYPE_10__]], [2 x [64 x %struct.TYPE_10__]]* %12, i64 0, i64 %188
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [64 x %struct.TYPE_10__], [64 x %struct.TYPE_10__]* %189, i64 0, i64 %191
  %193 = load i32, i32* %8, align 4
  %194 = and i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [2 x [64 x %struct.TYPE_10__]], [2 x [64 x %struct.TYPE_10__]]* %12, i64 0, i64 %195
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [64 x %struct.TYPE_10__], [64 x %struct.TYPE_10__]* %196, i64 0, i64 %198
  %200 = bitcast %struct.TYPE_10__* %192 to i8*
  %201 = bitcast %struct.TYPE_10__* %199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %201, i64 8, i1 false)
  br label %202

202:                                              ; preds = %182
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %9, align 4
  br label %174

205:                                              ; preds = %174
  %206 = load i32, i32* %8, align 4
  %207 = and i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %8, align 4
  %212 = and i32 %211, 1
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  %215 = zext i1 %214 to i32
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %216
  store i32 %210, i32* %217, align 4
  br label %218

218:                                              ; preds = %205, %172
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %36

222:                                              ; preds = %36
  store float 0.000000e+00, float* %14, align 4
  store i32 0, i32* %9, align 4
  br label %223

223:                                              ; preds = %243, %222
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %8, align 4
  %226 = and i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %224, %229
  br i1 %230, label %231, label %246

231:                                              ; preds = %223
  %232 = load i32, i32* %8, align 4
  %233 = and i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [2 x [64 x %struct.TYPE_10__]], [2 x [64 x %struct.TYPE_10__]]* %12, i64 0, i64 %234
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [64 x %struct.TYPE_10__], [64 x %struct.TYPE_10__]* %235, i64 0, i64 %237
  %239 = call i64 @WindingArea(%struct.TYPE_10__* %238)
  %240 = sitofp i64 %239 to float
  %241 = load float, float* %14, align 4
  %242 = fadd float %241, %240
  store float %242, float* %14, align 4
  br label %243

243:                                              ; preds = %231
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %9, align 4
  br label %223

246:                                              ; preds = %223
  %247 = load float, float* %14, align 4
  store float %247, float* %4, align 4
  br label %248

248:                                              ; preds = %246, %171
  %249 = load float, float* %4, align 4
  ret float %249
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @VS_ChopWindingWithBrush(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @WindingArea(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
