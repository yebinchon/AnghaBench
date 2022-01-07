; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2DrawScrollBitmap.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2DrawScrollBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 (%struct.TYPE_9__*, i32)*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"vdp2 bitmap 4 bpp draw\0A\00", align 1
@Vdp2Ram = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"vdp2 bitmap 16bpp palette draw\0A\00", align 1
@vdp2_fb = common dso_local global i32* null, align 8
@vdp2width = common dso_local global i32 0, align 4
@vdp2_prio = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp2DrawScrollBitmap(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = call i32 @HandleClipping(%struct.TYPE_9__* %10, %struct.TYPE_10__* %5)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %295 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %102
    i32 3, label %104
    i32 4, label %202
  ]

15:                                               ; preds = %1
  %16 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %296

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %98, %17
  %27 = load i32, i32* %3, align 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %101

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %88, %31
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %34
  %40 = load i32, i32* @Vdp2Ram, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @T1ReadByte(i32 %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %39
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @vdp2putpixel(i32 %57, i32 %58, i32 0, i32 %61)
  br label %87

63:                                               ; preds = %51, %39
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %69, %70
  %72 = add nsw i32 %66, %71
  %73 = call i32 @Vdp2ColorRamGetColor(i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  %78 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 %78(%struct.TYPE_9__* %79, i32 %80)
  %82 = or i32 %81, 32768
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @vdp2putpixel(i32 %74, i32 %75, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %63, %56
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %34

91:                                               ; preds = %34
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %26

101:                                              ; preds = %26
  br label %296

102:                                              ; preds = %1
  %103 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %296

104:                                              ; preds = %1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %106, 2
  store i32 %107, i32* %105, align 4
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 2
  store i32 %110, i32* %108, align 4
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %198, %104
  %120 = load i32, i32* %3, align 4
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %201

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %188, %124
  %128 = load i32, i32* %4, align 4
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %132, label %191

132:                                              ; preds = %127
  %133 = load i32, i32* @Vdp2Ram, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @T1ReadWord(i32 %133, i32 %136)
  store i32 %137, i32* %7, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 2
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %7, align 4
  %143 = and i32 %142, 32768
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %132
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load i32*, i32** @vdp2_fb, align 8
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @vdp2width, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %151, i64 %157
  store i32 0, i32* %158, align 4
  br label %176

159:                                              ; preds = %145, %132
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 4
  %162 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %161, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @SAT2YAB1(i32 %164)
  %166 = call i32 %162(%struct.TYPE_9__* %163, i32 %165)
  %167 = or i32 %166, 32768
  %168 = load i32*, i32** @vdp2_fb, align 8
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* @vdp2width, align 4
  %171 = mul nsw i32 %169, %170
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %168, i64 %174
  store i32 %167, i32* %175, align 4
  br label %176

176:                                              ; preds = %159, %150
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load i32**, i32*** @vdp2_prio, align 8
  %181 = load i32, i32* %3, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %179, i32* %187, align 4
  br label %188

188:                                              ; preds = %176
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %4, align 4
  br label %127

191:                                              ; preds = %127
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %191
  %199 = load i32, i32* %3, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %3, align 4
  br label %119

201:                                              ; preds = %119
  br label %296

202:                                              ; preds = %1
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %204, 4
  store i32 %205, i32* %203, align 4
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = mul nsw i32 %207, 4
  store i32 %208, i32* %206, align 4
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %3, align 4
  br label %217

217:                                              ; preds = %291, %202
  %218 = load i32, i32* %3, align 4
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = icmp slt i32 %218, %220
  br i1 %221, label %222, label %294

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %281, %222
  %226 = load i32, i32* %4, align 4
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %226, %228
  br i1 %229, label %230, label %284

230:                                              ; preds = %225
  %231 = load i32, i32* @Vdp2Ram, align 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @T1ReadLong(i32 %231, i32 %234)
  store i32 %235, i32* %8, align 4
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 4
  store i32 %239, i32* %237, align 4
  %240 = load i32, i32* %8, align 4
  %241 = and i32 %240, -2147483648
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %255

243:                                              ; preds = %230
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %243
  %249 = load i32, i32* %4, align 4
  %250 = load i32, i32* %3, align 4
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @vdp2putpixel(i32 %249, i32 %250, i32 0, i32 %253)
  br label %280

255:                                              ; preds = %243, %230
  %256 = load i32, i32* %8, align 4
  %257 = and i32 %256, 16252928
  %258 = ashr i32 %257, 19
  %259 = load i32, i32* %8, align 4
  %260 = and i32 %259, 63488
  %261 = ashr i32 %260, 6
  %262 = or i32 %258, %261
  %263 = load i32, i32* %8, align 4
  %264 = and i32 %263, 248
  %265 = shl i32 %264, 7
  %266 = or i32 %262, %265
  %267 = or i32 %266, 32768
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* %3, align 4
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 4
  %272 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %271, align 8
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %274 = load i32, i32* %9, align 4
  %275 = call i32 %272(%struct.TYPE_9__* %273, i32 %274)
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @vdp2putpixel(i32 %268, i32 %269, i32 %275, i32 %278)
  br label %280

280:                                              ; preds = %255, %248
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %4, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %4, align 4
  br label %225

284:                                              ; preds = %225
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 5
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, %286
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %284
  %292 = load i32, i32* %3, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %3, align 4
  br label %217

294:                                              ; preds = %217
  br label %296

295:                                              ; preds = %1
  br label %296

296:                                              ; preds = %15, %101, %201, %294, %295, %102
  ret void
}

declare dso_local i32 @HandleClipping(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @T1ReadByte(i32, i32) #1

declare dso_local i32 @vdp2putpixel(i32, i32, i32, i32) #1

declare dso_local i32 @Vdp2ColorRamGetColor(i32) #1

declare dso_local i32 @T1ReadWord(i32, i32) #1

declare dso_local i32 @SAT2YAB1(i32) #1

declare dso_local i32 @T1ReadLong(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
