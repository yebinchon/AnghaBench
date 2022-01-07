; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_MapActiveCart.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_MapActiveCart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_5200 = common dso_local global i64 0, align 8
@active_cart = common dso_local global %struct.TYPE_2__* null, align 8
@Atari800_MACHINE_800 = common dso_local global i64 0, align 8
@Atari800_disable_basic = common dso_local global i32 0, align 4
@BINLOAD_loading_basic = common dso_local global i32 0, align 4
@MEMORY_have_basic = common dso_local global i32 0, align 4
@MEMORY_basic = common dso_local global i32 0, align 4
@Atari800_builtin_basic = common dso_local global i32 0, align 4
@CARTRIDGE_BountyBob1GetByte = common dso_local global i32 0, align 4
@CARTRIDGE_BountyBob1PutByte = common dso_local global i32 0, align 4
@CARTRIDGE_BountyBob2GetByte = common dso_local global i32 0, align 4
@CARTRIDGE_BountyBob2PutByte = common dso_local global i32 0, align 4
@MEMORY_readmap = common dso_local global i32* null, align 8
@MEMORY_writemap = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @MapActiveCart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MapActiveCart() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @Atari800_machine_type, align 8
  %3 = load i64, i64* @Atari800_MACHINE_5200, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %99

5:                                                ; preds = %0
  %6 = call i32 @MEMORY_SetROM(i32 20470, i32 20473)
  %7 = call i32 @MEMORY_SetROM(i32 24566, i32 24569)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %96 [
    i32 194, label %11
    i32 190, label %16
    i32 192, label %30
    i32 189, label %65
    i32 191, label %70
    i32 193, label %79
  ]

11:                                               ; preds = %5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MEMORY_CopyROM(i32 16384, i32 49151, i32 %14)
  br label %98

16:                                               ; preds = %5
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @MEMORY_CopyROM(i32 16384, i32 24575, i32 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MEMORY_CopyROM(i32 24576, i32 40959, i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 8192
  %29 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %28)
  br label %98

30:                                               ; preds = %5
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 3
  %38 = mul nsw i32 %37, 4096
  %39 = add nsw i32 %33, %38
  %40 = call i32 @MEMORY_CopyROM(i32 16384, i32 20479, i32 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 16384
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 12
  %49 = ashr i32 %48, 2
  %50 = mul nsw i32 %49, 4096
  %51 = add nsw i32 %44, %50
  %52 = call i32 @MEMORY_CopyROM(i32 20480, i32 24575, i32 %51)
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 32768
  %57 = call i32 @MEMORY_CopyROM(i32 32768, i32 40959, i32 %56)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 32768
  %62 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %61)
  %63 = call i32 @MEMORY_SetHARDWARE(i32 20470, i32 20473)
  %64 = call i32 @MEMORY_SetHARDWARE(i32 24566, i32 24569)
  br label %98

65:                                               ; preds = %5
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @MEMORY_CopyROM(i32 32768, i32 49151, i32 %68)
  br label %98

70:                                               ; preds = %5
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @MEMORY_CopyROM(i32 32768, i32 40959, i32 %73)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %77)
  br label %98

79:                                               ; preds = %5
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @MEMORY_CopyROM(i32 32768, i32 36863, i32 %82)
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @MEMORY_CopyROM(i32 36864, i32 40959, i32 %86)
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @MEMORY_CopyROM(i32 40960, i32 45055, i32 %90)
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @MEMORY_CopyROM(i32 45056, i32 49151, i32 %94)
  br label %98

96:                                               ; preds = %5
  %97 = call i32 @MEMORY_dFillMem(i32 16384, i32 0, i32 32768)
  br label %98

98:                                               ; preds = %96, %79, %70, %65, %30, %16, %11
  br label %407

99:                                               ; preds = %0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %382 [
    i32 151, label %103
    i32 150, label %111
    i32 179, label %119
    i32 149, label %130
    i32 160, label %130
    i32 175, label %137
    i32 152, label %144
    i32 181, label %144
    i32 164, label %151
    i32 163, label %151
    i32 161, label %165
    i32 162, label %165
    i32 135, label %178
    i32 176, label %178
    i32 177, label %178
    i32 156, label %178
    i32 185, label %178
    i32 136, label %178
    i32 186, label %178
    i32 187, label %178
    i32 157, label %178
    i32 183, label %178
    i32 184, label %178
    i32 138, label %178
    i32 139, label %178
    i32 137, label %178
    i32 180, label %178
    i32 142, label %178
    i32 141, label %178
    i32 140, label %178
    i32 178, label %180
    i32 130, label %180
    i32 145, label %180
    i32 134, label %194
    i32 143, label %194
    i32 128, label %194
    i32 132, label %208
    i32 147, label %208
    i32 131, label %222
    i32 146, label %222
    i32 129, label %236
    i32 144, label %236
    i32 133, label %250
    i32 148, label %250
    i32 182, label %264
    i32 159, label %296
    i32 158, label %326
    i32 188, label %358
    i32 171, label %381
    i32 168, label %381
    i32 165, label %381
    i32 172, label %381
    i32 169, label %381
    i32 166, label %381
    i32 173, label %381
    i32 170, label %381
    i32 167, label %381
    i32 155, label %381
    i32 154, label %381
    i32 153, label %381
    i32 174, label %381
  ]

103:                                              ; preds = %99
  %104 = call i32 (...) @MEMORY_Cart809fDisable()
  %105 = call i32 (...) @MEMORY_CartA0bfEnable()
  %106 = call i32 @MEMORY_dFillMem(i32 40960, i32 255, i32 6144)
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @MEMORY_CopyROM(i32 47104, i32 49151, i32 %109)
  br label %402

111:                                              ; preds = %99
  %112 = call i32 (...) @MEMORY_Cart809fDisable()
  %113 = call i32 (...) @MEMORY_CartA0bfEnable()
  %114 = call i32 @MEMORY_dFillMem(i32 40960, i32 255, i32 4096)
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @MEMORY_CopyROM(i32 45056, i32 49151, i32 %117)
  br label %402

119:                                              ; preds = %99
  %120 = call i32 (...) @MEMORY_Cart809fDisable()
  %121 = call i32 (...) @MEMORY_CartA0bfEnable()
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @MEMORY_CopyROM(i32 40960, i32 45055, i32 %124)
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @MEMORY_CopyROM(i32 45056, i32 49151, i32 %128)
  br label %402

130:                                              ; preds = %99, %99
  %131 = call i32 (...) @MEMORY_Cart809fDisable()
  %132 = call i32 (...) @MEMORY_CartA0bfEnable()
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %135)
  br label %402

137:                                              ; preds = %99
  %138 = call i32 (...) @MEMORY_Cart809fEnable()
  %139 = call i32 (...) @MEMORY_CartA0bfDisable()
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @MEMORY_CopyROM(i32 32768, i32 40959, i32 %142)
  br label %402

144:                                              ; preds = %99, %99
  %145 = call i32 (...) @MEMORY_Cart809fEnable()
  %146 = call i32 (...) @MEMORY_CartA0bfEnable()
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @MEMORY_CopyROM(i32 32768, i32 49151, i32 %149)
  br label %402

151:                                              ; preds = %99, %99
  %152 = call i32 (...) @MEMORY_Cart809fDisable()
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = call i32 (...) @MEMORY_CartA0bfEnable()
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 12288
  %163 = call i32 @MEMORY_CopyROM(i32 45056, i32 49151, i32 %162)
  br label %164

164:                                              ; preds = %157, %151
  br label %402

165:                                              ; preds = %99, %99
  %166 = call i32 (...) @MEMORY_Cart809fDisable()
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = call i32 (...) @MEMORY_CartA0bfEnable()
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @MEMORY_CopyROM(i32 45056, i32 49151, i32 %175)
  br label %177

177:                                              ; preds = %171, %165
  br label %402

178:                                              ; preds = %99, %99, %99, %99, %99, %99, %99, %99, %99, %99, %99, %99, %99, %99, %99, %99, %99, %99
  %179 = call i32 (...) @MEMORY_Cart809fDisable()
  br label %402

180:                                              ; preds = %99, %99, %99
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 128
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %180
  %187 = call i32 (...) @MEMORY_CartA0bfEnable()
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 24576
  %192 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %191)
  br label %193

193:                                              ; preds = %186, %180
  br label %402

194:                                              ; preds = %99, %99, %99
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 128
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %194
  %201 = call i32 (...) @MEMORY_CartA0bfEnable()
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 57344
  %206 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %205)
  br label %207

207:                                              ; preds = %200, %194
  br label %402

208:                                              ; preds = %99, %99
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 128
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %208
  %215 = call i32 (...) @MEMORY_CartA0bfEnable()
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 122880
  %220 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %219)
  br label %221

221:                                              ; preds = %214, %208
  br label %402

222:                                              ; preds = %99, %99
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 128
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %222
  %229 = call i32 (...) @MEMORY_CartA0bfEnable()
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 253952
  %234 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %233)
  br label %235

235:                                              ; preds = %228, %222
  br label %402

236:                                              ; preds = %99, %99
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 128
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %249, label %242

242:                                              ; preds = %236
  %243 = call i32 (...) @MEMORY_CartA0bfEnable()
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 516096
  %248 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %247)
  br label %249

249:                                              ; preds = %242, %236
  br label %402

250:                                              ; preds = %99, %99
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, 128
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %263, label %256

256:                                              ; preds = %250
  %257 = call i32 (...) @MEMORY_CartA0bfEnable()
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, 1040384
  %262 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %261)
  br label %263

263:                                              ; preds = %256, %250
  br label %402

264:                                              ; preds = %99
  %265 = call i32 (...) @MEMORY_Cart809fEnable()
  %266 = call i32 (...) @MEMORY_CartA0bfEnable()
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, 3
  %274 = mul nsw i32 %273, 4096
  %275 = add nsw i32 %269, %274
  %276 = call i32 @MEMORY_CopyROM(i32 32768, i32 36863, i32 %275)
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, 16384
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = and i32 %283, 12
  %285 = ashr i32 %284, 2
  %286 = mul nsw i32 %285, 4096
  %287 = add nsw i32 %280, %286
  %288 = call i32 @MEMORY_CopyROM(i32 36864, i32 40959, i32 %287)
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %291, 32768
  %293 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %292)
  %294 = call i32 @MEMORY_SetHARDWARE(i32 36854, i32 36857)
  %295 = call i32 @MEMORY_SetHARDWARE(i32 40950, i32 40953)
  br label %407

296:                                              ; preds = %99
  %297 = load i64, i64* @Atari800_machine_type, align 8
  %298 = load i64, i64* @Atari800_MACHINE_800, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %322

300:                                              ; preds = %296
  %301 = call i32 (...) @MEMORY_Cart809fEnable()
  %302 = call i32 @MEMORY_dFillMem(i32 32768, i32 255, i32 4096)
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @MEMORY_CopyROM(i32 36864, i32 40959, i32 %305)
  %307 = load i32, i32* @Atari800_disable_basic, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %300
  %310 = load i32, i32* @BINLOAD_loading_basic, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %319

312:                                              ; preds = %309, %300
  %313 = load i32, i32* @MEMORY_have_basic, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %312
  %316 = call i32 (...) @MEMORY_CartA0bfEnable()
  %317 = load i32, i32* @MEMORY_basic, align 4
  %318 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %317)
  br label %321

319:                                              ; preds = %312, %309
  %320 = call i32 (...) @MEMORY_CartA0bfDisable()
  br label %321

321:                                              ; preds = %319, %315
  br label %325

322:                                              ; preds = %296
  %323 = call i32 (...) @MEMORY_Cart809fDisable()
  %324 = call i32 (...) @MEMORY_CartA0bfDisable()
  br label %325

325:                                              ; preds = %322, %321
  br label %407

326:                                              ; preds = %99
  %327 = load i64, i64* @Atari800_machine_type, align 8
  %328 = load i64, i64* @Atari800_MACHINE_800, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %354

330:                                              ; preds = %326
  %331 = call i32 (...) @MEMORY_Cart809fEnable()
  %332 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @MEMORY_CopyROM(i32 32768, i32 40959, i32 %334)
  %336 = load i32, i32* @Atari800_builtin_basic, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %351, label %338

338:                                              ; preds = %330
  %339 = load i32, i32* @Atari800_disable_basic, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load i32, i32* @BINLOAD_loading_basic, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %341, %338
  %345 = load i32, i32* @MEMORY_have_basic, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %344
  %348 = call i32 (...) @MEMORY_CartA0bfEnable()
  %349 = load i32, i32* @MEMORY_basic, align 4
  %350 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %349)
  br label %353

351:                                              ; preds = %344, %341, %330
  %352 = call i32 (...) @MEMORY_CartA0bfDisable()
  br label %353

353:                                              ; preds = %351, %347
  br label %357

354:                                              ; preds = %326
  %355 = call i32 (...) @MEMORY_Cart809fDisable()
  %356 = call i32 (...) @MEMORY_CartA0bfDisable()
  br label %357

357:                                              ; preds = %354, %353
  br label %407

358:                                              ; preds = %99
  %359 = call i32 (...) @MEMORY_Cart809fDisable()
  %360 = call i32 (...) @MEMORY_CartA0bfEnable()
  store i32 40960, i32* %1, align 4
  br label %361

361:                                              ; preds = %377, %358
  %362 = load i32, i32* %1, align 4
  %363 = icmp slt i32 %362, 49152
  br i1 %363, label %364, label %380

364:                                              ; preds = %361
  %365 = load i32, i32* %1, align 4
  %366 = load i32, i32* %1, align 4
  %367 = add nsw i32 %366, 255
  %368 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %369 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = and i32 %373, 65535
  %375 = add nsw i32 %370, %374
  %376 = call i32 @MEMORY_CopyROM(i32 %365, i32 %367, i32 %375)
  br label %377

377:                                              ; preds = %364
  %378 = load i32, i32* %1, align 4
  %379 = add nsw i32 %378, 256
  store i32 %379, i32* %1, align 4
  br label %361

380:                                              ; preds = %361
  br label %402

381:                                              ; preds = %99, %99, %99, %99, %99, %99, %99, %99, %99, %99, %99, %99, %99
  br label %402

382:                                              ; preds = %99
  %383 = call i32 (...) @MEMORY_Cart809fDisable()
  %384 = load i32, i32* @Atari800_builtin_basic, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %399, label %386

386:                                              ; preds = %382
  %387 = load i32, i32* @Atari800_disable_basic, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = load i32, i32* @BINLOAD_loading_basic, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %399

392:                                              ; preds = %389, %386
  %393 = load i32, i32* @MEMORY_have_basic, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %392
  %396 = call i32 (...) @MEMORY_CartA0bfEnable()
  %397 = load i32, i32* @MEMORY_basic, align 4
  %398 = call i32 @MEMORY_CopyROM(i32 40960, i32 49151, i32 %397)
  br label %401

399:                                              ; preds = %392, %389, %382
  %400 = call i32 (...) @MEMORY_CartA0bfDisable()
  br label %401

401:                                              ; preds = %399, %395
  br label %407

402:                                              ; preds = %381, %380, %263, %249, %235, %221, %207, %193, %178, %177, %164, %144, %137, %130, %119, %111, %103
  %403 = load %struct.TYPE_2__*, %struct.TYPE_2__** @active_cart, align 8
  %404 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @SwitchBank(i32 %405)
  br label %407

407:                                              ; preds = %264, %325, %357, %401, %402, %98
  ret void
}

declare dso_local i32 @MEMORY_SetROM(i32, i32) #1

declare dso_local i32 @MEMORY_CopyROM(i32, i32, i32) #1

declare dso_local i32 @MEMORY_SetHARDWARE(i32, i32) #1

declare dso_local i32 @MEMORY_dFillMem(i32, i32, i32) #1

declare dso_local i32 @MEMORY_Cart809fDisable(...) #1

declare dso_local i32 @MEMORY_CartA0bfEnable(...) #1

declare dso_local i32 @MEMORY_Cart809fEnable(...) #1

declare dso_local i32 @MEMORY_CartA0bfDisable(...) #1

declare dso_local i32 @SwitchBank(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
