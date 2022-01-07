; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_mapper_reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_mapper_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32* }

@system_hw = common dso_local global i64 0, align 8
@SYSTEM_SG = common dso_local global i64 0, align 8
@cart_rom = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@work_ram = common dso_local global i32* null, align 8
@z80_writemap = common dso_local global i32** null, align 8
@z80_readmap = common dso_local global i32** null, align 8
@slot = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cart = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@read_mapper_default = common dso_local global i32 0, align 4
@z80_readmem = common dso_local global i32 0, align 4
@write_mapper_none = common dso_local global i32 0, align 4
@z80_writemem = common dso_local global i32 0, align 4
@MAPPER_SEGA = common dso_local global i32 0, align 4
@write_mapper_codies = common dso_local global i32 0, align 4
@write_mapper_korea = common dso_local global i32 0, align 4
@read_mapper_korea_8k = common dso_local global i32 0, align 4
@write_mapper_korea_8k = common dso_local global i32 0, align 4
@write_mapper_korea_16k = common dso_local global i32 0, align 4
@write_mapper_msx = common dso_local global i32 0, align 4
@write_mapper_multi = common dso_local global i32 0, align 4
@read_mapper_93c46 = common dso_local global i32 0, align 4
@write_mapper_93c46 = common dso_local global i32 0, align 4
@read_mapper_terebi = common dso_local global i32 0, align 4
@write_mapper_terebi = common dso_local global i32 0, align 4
@write_mapper_sega = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mapper_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapper_reset() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @system_hw, align 8
  %3 = load i64, i64* @SYSTEM_SG, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %55

5:                                                ; preds = %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cart_rom, i32 0, i32 0), align 8
  %7 = icmp eq i64 %6, 129
  br i1 %7, label %8, label %31

8:                                                ; preds = %5
  store i32 48, i32* %1, align 4
  br label %9

9:                                                ; preds = %27, %8
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 64
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i32*, i32** @work_ram, align 8
  %14 = load i32, i32* %1, align 4
  %15 = and i32 %14, 7
  %16 = shl i32 %15, 10
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = load i32**, i32*** @z80_writemap, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  store i32* %18, i32** %22, align 8
  %23 = load i32**, i32*** @z80_readmap, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  store i32* %18, i32** %26, align 8
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %9

30:                                               ; preds = %9
  br label %54

31:                                               ; preds = %5
  store i32 48, i32* %1, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 64
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i32*, i32** @work_ram, align 8
  %37 = load i32, i32* %1, align 4
  %38 = and i32 %37, 1
  %39 = shl i32 %38, 10
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32**, i32*** @z80_writemap, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* %41, i32** %45, align 8
  %46 = load i32**, i32*** @z80_readmap, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  store i32* %41, i32** %49, align 8
  br label %50

50:                                               ; preds = %35
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %32

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53, %30
  br label %78

55:                                               ; preds = %0
  store i32 48, i32* %1, align 4
  br label %56

56:                                               ; preds = %74, %55
  %57 = load i32, i32* %1, align 4
  %58 = icmp slt i32 %57, 64
  br i1 %58, label %59, label %77

59:                                               ; preds = %56
  %60 = load i32*, i32** @work_ram, align 8
  %61 = load i32, i32* %1, align 4
  %62 = and i32 %61, 7
  %63 = shl i32 %62, 10
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32**, i32*** @z80_writemap, align 8
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* %65, i32** %69, align 8
  %70 = load i32**, i32*** @z80_readmap, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  store i32* %65, i32** %73, align 8
  br label %74

74:                                               ; preds = %59
  %75 = load i32, i32* %1, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %1, align 4
  br label %56

77:                                               ; preds = %56
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 0), align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %104, label %81

81:                                               ; preds = %78
  store i32 0, i32* %1, align 4
  br label %82

82:                                               ; preds = %98, %81
  %83 = load i32, i32* %1, align 4
  %84 = icmp slt i32 %83, 48
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart, i32 0, i32 0), align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5308416
  %88 = load i32**, i32*** @z80_writemap, align 8
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  store i32* %87, i32** %91, align 8
  %92 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart, i32 0, i32 0), align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 5309440
  %94 = load i32**, i32*** @z80_readmap, align 8
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  store i32* %93, i32** %97, align 8
  br label %98

98:                                               ; preds = %85
  %99 = load i32, i32* %1, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %1, align 4
  br label %82

101:                                              ; preds = %82
  %102 = load i32, i32* @read_mapper_default, align 4
  store i32 %102, i32* @z80_readmem, align 4
  %103 = load i32, i32* @write_mapper_none, align 4
  store i32 %103, i32* @z80_writemem, align 4
  br label %303

104:                                              ; preds = %78
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 1), align 4
  %106 = load i32, i32* @MAPPER_SEGA, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %186

108:                                              ; preds = %104
  store i32 0, i32* %1, align 4
  br label %109

109:                                              ; preds = %128, %108
  %110 = load i32, i32* %1, align 4
  %111 = icmp slt i32 %110, 48
  br i1 %111, label %112, label %131

112:                                              ; preds = %109
  %113 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 3), align 8
  %114 = load i32, i32* %1, align 4
  %115 = shl i32 %114, 10
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32**, i32*** @z80_readmap, align 8
  %119 = load i32, i32* %1, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  store i32* %117, i32** %121, align 8
  %122 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart, i32 0, i32 0), align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 5308416
  %124 = load i32**, i32*** @z80_writemap, align 8
  %125 = load i32, i32* %1, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  store i32* %123, i32** %127, align 8
  br label %128

128:                                              ; preds = %112
  %129 = load i32, i32* %1, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %1, align 4
  br label %109

131:                                              ; preds = %109
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 0), align 8
  %133 = icmp sle i32 %132, 32
  br i1 %133, label %134, label %158

134:                                              ; preds = %131
  store i32 32, i32* %1, align 4
  br label %135

135:                                              ; preds = %154, %134
  %136 = load i32, i32* %1, align 4
  %137 = icmp slt i32 %136, 48
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = load i32*, i32** @work_ram, align 8
  %140 = load i32, i32* %1, align 4
  %141 = and i32 %140, 7
  %142 = shl i32 %141, 10
  %143 = add nsw i32 8192, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %139, i64 %144
  %146 = load i32**, i32*** @z80_writemap, align 8
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  store i32* %145, i32** %149, align 8
  %150 = load i32**, i32*** @z80_readmap, align 8
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  store i32* %145, i32** %153, align 8
  br label %154

154:                                              ; preds = %138
  %155 = load i32, i32* %1, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %1, align 4
  br label %135

157:                                              ; preds = %135
  br label %158

158:                                              ; preds = %157, %131
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 1), align 4
  %160 = icmp eq i32 %159, 130
  br i1 %160, label %161, label %185

161:                                              ; preds = %158
  store i32 8, i32* %1, align 4
  br label %162

162:                                              ; preds = %181, %161
  %163 = load i32, i32* %1, align 4
  %164 = icmp slt i32 %163, 16
  br i1 %164, label %165, label %184

165:                                              ; preds = %162
  %166 = load i32*, i32** @work_ram, align 8
  %167 = load i32, i32* %1, align 4
  %168 = and i32 %167, 7
  %169 = shl i32 %168, 10
  %170 = add nsw i32 8192, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %166, i64 %171
  %173 = load i32**, i32*** @z80_writemap, align 8
  %174 = load i32, i32* %1, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  store i32* %172, i32** %176, align 8
  %177 = load i32**, i32*** @z80_readmap, align 8
  %178 = load i32, i32* %1, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  store i32* %172, i32** %180, align 8
  br label %181

181:                                              ; preds = %165
  %182 = load i32, i32* %1, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %1, align 4
  br label %162

184:                                              ; preds = %162
  br label %185

185:                                              ; preds = %184, %158
  br label %271

186:                                              ; preds = %104
  store i32 0, i32* %1, align 4
  br label %187

187:                                              ; preds = %206, %186
  %188 = load i32, i32* %1, align 4
  %189 = icmp slt i32 %188, 48
  br i1 %189, label %190, label %209

190:                                              ; preds = %187
  %191 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 3), align 8
  %192 = load i32, i32* %1, align 4
  %193 = shl i32 %192, 10
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32**, i32*** @z80_readmap, align 8
  %197 = load i32, i32* %1, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  store i32* %195, i32** %199, align 8
  %200 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart, i32 0, i32 0), align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 5308416
  %202 = load i32**, i32*** @z80_writemap, align 8
  %203 = load i32, i32* %1, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %202, i64 %204
  store i32* %201, i32** %205, align 8
  br label %206

206:                                              ; preds = %190
  %207 = load i32, i32* %1, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %1, align 4
  br label %187

209:                                              ; preds = %187
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 1), align 4
  %211 = and i32 %210, 135
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %253

213:                                              ; preds = %209
  %214 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 2), align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @mapper_8k_w(i32 0, i32 %216)
  %218 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 2), align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @mapper_8k_w(i32 1, i32 %220)
  %222 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 2), align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @mapper_8k_w(i32 2, i32 %224)
  %226 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 2), align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @mapper_8k_w(i32 3, i32 %228)
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 1), align 4
  %231 = icmp eq i32 %230, 133
  br i1 %231, label %232, label %252

232:                                              ; preds = %213
  store i32 0, i32* %1, align 4
  br label %233

233:                                              ; preds = %248, %232
  %234 = load i32, i32* %1, align 4
  %235 = icmp slt i32 %234, 8
  br i1 %235, label %236, label %251

236:                                              ; preds = %233
  %237 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 3), align 8
  %238 = load i32, i32* %1, align 4
  %239 = and i32 %238, 7
  %240 = shl i32 %239, 10
  %241 = or i32 122880, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %237, i64 %242
  %244 = load i32**, i32*** @z80_readmap, align 8
  %245 = load i32, i32* %1, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32*, i32** %244, i64 %246
  store i32* %243, i32** %247, align 8
  br label %248

248:                                              ; preds = %236
  %249 = load i32, i32* %1, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %1, align 4
  br label %233

251:                                              ; preds = %233
  br label %252

252:                                              ; preds = %251, %213
  br label %270

253:                                              ; preds = %209
  %254 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 2), align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @mapper_16k_w(i32 0, i32 %256)
  %258 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 2), align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @mapper_16k_w(i32 1, i32 %260)
  %262 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 2), align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @mapper_16k_w(i32 2, i32 %264)
  %266 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 2), align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 3
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @mapper_16k_w(i32 3, i32 %268)
  br label %270

270:                                              ; preds = %253, %252
  br label %271

271:                                              ; preds = %270, %185
  %272 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slot, i32 0, i32 1), align 4
  switch i32 %272, label %300 [
    i32 131, label %273
    i32 130, label %273
    i32 129, label %273
    i32 138, label %276
    i32 137, label %279
    i32 135, label %282
    i32 136, label %285
    i32 134, label %288
    i32 133, label %288
    i32 132, label %291
    i32 139, label %294
    i32 128, label %297
  ]

273:                                              ; preds = %271, %271, %271
  %274 = load i32, i32* @read_mapper_default, align 4
  store i32 %274, i32* @z80_readmem, align 4
  %275 = load i32, i32* @write_mapper_none, align 4
  store i32 %275, i32* @z80_writemem, align 4
  br label %303

276:                                              ; preds = %271
  %277 = load i32, i32* @read_mapper_default, align 4
  store i32 %277, i32* @z80_readmem, align 4
  %278 = load i32, i32* @write_mapper_codies, align 4
  store i32 %278, i32* @z80_writemem, align 4
  br label %303

279:                                              ; preds = %271
  %280 = load i32, i32* @read_mapper_default, align 4
  store i32 %280, i32* @z80_readmem, align 4
  %281 = load i32, i32* @write_mapper_korea, align 4
  store i32 %281, i32* @z80_writemem, align 4
  br label %303

282:                                              ; preds = %271
  %283 = load i32, i32* @read_mapper_korea_8k, align 4
  store i32 %283, i32* @z80_readmem, align 4
  %284 = load i32, i32* @write_mapper_korea_8k, align 4
  store i32 %284, i32* @z80_writemem, align 4
  br label %303

285:                                              ; preds = %271
  %286 = load i32, i32* @read_mapper_default, align 4
  store i32 %286, i32* @z80_readmem, align 4
  %287 = load i32, i32* @write_mapper_korea_16k, align 4
  store i32 %287, i32* @z80_writemem, align 4
  br label %303

288:                                              ; preds = %271, %271
  %289 = load i32, i32* @read_mapper_default, align 4
  store i32 %289, i32* @z80_readmem, align 4
  %290 = load i32, i32* @write_mapper_msx, align 4
  store i32 %290, i32* @z80_writemem, align 4
  br label %303

291:                                              ; preds = %271
  %292 = load i32, i32* @read_mapper_default, align 4
  store i32 %292, i32* @z80_readmem, align 4
  %293 = load i32, i32* @write_mapper_multi, align 4
  store i32 %293, i32* @z80_writemem, align 4
  br label %303

294:                                              ; preds = %271
  %295 = load i32, i32* @read_mapper_93c46, align 4
  store i32 %295, i32* @z80_readmem, align 4
  %296 = load i32, i32* @write_mapper_93c46, align 4
  store i32 %296, i32* @z80_writemem, align 4
  br label %303

297:                                              ; preds = %271
  %298 = load i32, i32* @read_mapper_terebi, align 4
  store i32 %298, i32* @z80_readmem, align 4
  %299 = load i32, i32* @write_mapper_terebi, align 4
  store i32 %299, i32* @z80_writemem, align 4
  br label %303

300:                                              ; preds = %271
  %301 = load i32, i32* @read_mapper_default, align 4
  store i32 %301, i32* @z80_readmem, align 4
  %302 = load i32, i32* @write_mapper_sega, align 4
  store i32 %302, i32* @z80_writemem, align 4
  br label %303

303:                                              ; preds = %101, %300, %297, %294, %291, %288, %285, %282, %279, %276, %273
  ret void
}

declare dso_local i32 @mapper_8k_w(i32, i32) #1

declare dso_local i32 @mapper_16k_w(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
