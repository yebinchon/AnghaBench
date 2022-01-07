; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_eeprom.c_EEPROM_write_do.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_eeprom.c_EEPROM_write_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8*, i32 }

@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EL_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"eeprom: scl/sda: %i/%i -> %i/%i, newtime=%i\00", align 1
@last_write = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"eeprom: -start-\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"eeprom: -stop-\00", align 1
@SRam = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"eeprom: scyc: %i\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"eeprom: write done, addr inc to: %x, last byte=%02x\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"eeprom: addr reg done: %x\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"eeprom: slave done: %x\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"eeprom: addr done: %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @EEPROM_write_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EEPROM_write_do(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 1), align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 2), align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 3), align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @EL_EEPROM, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 2
  %16 = lshr i32 %15, 1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 1
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 2
  %21 = lshr i32 %20, 1
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 1
  %24 = call i64 (...) @SekCyclesDone()
  %25 = load i64, i64* @last_write, align 8
  %26 = sub nsw i64 %24, %25
  %27 = call i32 (i32, i8*, ...) @elprintf(i32 %13, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18, i32 %21, i32 %23, i64 %26)
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 8191
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %2, align 4
  %32 = and i32 %30, %31
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EL_EEPROM, align 4
  %45 = call i32 (i32, i8*, ...) @elprintf(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, 8
  store i32 %47, i32* %3, align 4
  br label %62

48:                                               ; preds = %39, %35
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %2, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* @EL_EEPROM, align 4
  %58 = call i32 (i32, i8*, ...) @elprintf(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, -9
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %52, %48
  br label %62

62:                                               ; preds = %61, %43
  br label %336

63:                                               ; preds = %1
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %124

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %124, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %2, align 4
  %73 = and i32 %72, 2
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %124

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %75
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 18
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  store i32 9, i32* %5, align 4
  %88 = load i32, i32* %4, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 8191
  store i32 %91, i32* %4, align 4
  br label %105

92:                                               ; preds = %84, %80
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, 27
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 18, i32* %5, align 4
  br label %104

99:                                               ; preds = %95, %92
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %100, 36
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 27, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %99
  br label %104

104:                                              ; preds = %103, %98
  br label %105

105:                                              ; preds = %104, %87
  br label %120

106:                                              ; preds = %75
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %107, 18
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  store i32 9, i32* %5, align 4
  %110 = load i32, i32* %4, align 4
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32, i32* %4, align 4
  %115 = add i32 %114, 2
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = and i32 %116, 255
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %113, %109
  br label %119

119:                                              ; preds = %118, %106
  br label %120

120:                                              ; preds = %119, %105
  %121 = load i32, i32* @EL_EEPROM, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 (i32, i8*, ...) @elprintf(i32 %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  br label %335

124:                                              ; preds = %71, %67, %63
  %125 = load i32, i32* %3, align 4
  %126 = and i32 %125, 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %334

128:                                              ; preds = %124
  %129 = load i32, i32* %3, align 4
  %130 = and i32 %129, 2
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %334

132:                                              ; preds = %128
  %133 = load i32, i32* %2, align 4
  %134 = and i32 %133, 2
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %334, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %267

139:                                              ; preds = %136
  %140 = load i32, i32* %5, align 4
  %141 = icmp eq i32 %140, 9
  br i1 %141, label %148, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %5, align 4
  %144 = icmp eq i32 %143, 18
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %5, align 4
  %147 = icmp eq i32 %146, 27
  br i1 %147, label %148, label %149

148:                                              ; preds = %145, %142, %139
  br label %266

149:                                              ; preds = %145
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %151 = icmp eq i32 %150, 3
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %5, align 4
  %154 = icmp ugt i32 %153, 27
  br i1 %154, label %161, label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %157 = icmp eq i32 %156, 2
  br i1 %157, label %158, label %202

158:                                              ; preds = %155
  %159 = load i32, i32* %5, align 4
  %160 = icmp ugt i32 %159, 18
  br i1 %160, label %161, label %202

161:                                              ; preds = %158, %152
  %162 = load i32, i32* %6, align 4
  %163 = and i32 %162, 1
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %201, label %165

165:                                              ; preds = %161
  %166 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 1), align 8
  %167 = load i32, i32* %4, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  store i8* %169, i8** %7, align 8
  %170 = load i8*, i8** %7, align 8
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = shl i32 %172, 1
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %170, align 1
  %175 = load i32, i32* %2, align 4
  %176 = and i32 %175, 1
  %177 = load i8*, i8** %7, align 8
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %179, %176
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %177, align 1
  %182 = load i32, i32* %5, align 4
  %183 = icmp eq i32 %182, 26
  br i1 %183, label %187, label %184

184:                                              ; preds = %165
  %185 = load i32, i32* %5, align 4
  %186 = icmp eq i32 %185, 35
  br i1 %186, label %187, label %200

187:                                              ; preds = %184, %165
  %188 = load i32, i32* %4, align 4
  %189 = and i32 %188, -16
  %190 = load i32, i32* %4, align 4
  %191 = add i32 %190, 1
  %192 = and i32 %191, 15
  %193 = or i32 %189, %192
  store i32 %193, i32* %4, align 4
  %194 = load i32, i32* @EL_EEPROM, align 4
  %195 = load i32, i32* %4, align 4
  %196 = load i8*, i8** %7, align 8
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = call i32 (i32, i8*, ...) @elprintf(i32 %194, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %187, %184
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  br label %201

201:                                              ; preds = %200, %161
  br label %265

202:                                              ; preds = %158, %155
  %203 = load i32, i32* %5, align 4
  %204 = icmp ugt i32 %203, 9
  br i1 %204, label %205, label %250

205:                                              ; preds = %202
  %206 = load i32, i32* %6, align 4
  %207 = and i32 %206, 1
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %249, label %209

209:                                              ; preds = %205
  %210 = load i32, i32* %4, align 4
  %211 = shl i32 %210, 1
  store i32 %211, i32* %4, align 4
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %213 = icmp eq i32 %212, 2
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i32, i32* %4, align 4
  %216 = and i32 %215, 255
  store i32 %216, i32* %4, align 4
  br label %220

217:                                              ; preds = %209
  %218 = load i32, i32* %4, align 4
  %219 = and i32 %218, 8191
  store i32 %219, i32* %4, align 4
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32, i32* %2, align 4
  %222 = and i32 %221, 1
  %223 = load i32, i32* %4, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %4, align 4
  %225 = load i32, i32* %5, align 4
  %226 = icmp eq i32 %225, 17
  br i1 %226, label %230, label %227

227:                                              ; preds = %220
  %228 = load i32, i32* %5, align 4
  %229 = icmp eq i32 %228, 26
  br i1 %229, label %230, label %248

230:                                              ; preds = %227, %220
  %231 = load i32, i32* @EL_EEPROM, align 4
  %232 = load i32, i32* %4, align 4
  %233 = call i32 (i32, i8*, ...) @elprintf(i32 %231, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* %5, align 4
  %235 = icmp eq i32 %234, 17
  br i1 %235, label %236, label %247

236:                                              ; preds = %230
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %238 = icmp eq i32 %237, 2
  br i1 %238, label %239, label %247

239:                                              ; preds = %236
  %240 = load i32, i32* %4, align 4
  %241 = and i32 %240, 255
  store i32 %241, i32* %4, align 4
  %242 = load i32, i32* %6, align 4
  %243 = shl i32 %242, 7
  %244 = and i32 %243, 1792
  %245 = load i32, i32* %4, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %4, align 4
  br label %247

247:                                              ; preds = %239, %236, %230
  br label %248

248:                                              ; preds = %247, %227
  br label %249

249:                                              ; preds = %248, %205
  br label %264

250:                                              ; preds = %202
  %251 = load i32, i32* %6, align 4
  %252 = shl i32 %251, 1
  store i32 %252, i32* %6, align 4
  %253 = load i32, i32* %2, align 4
  %254 = and i32 %253, 1
  %255 = load i32, i32* %6, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %6, align 4
  %257 = load i32, i32* %5, align 4
  %258 = icmp eq i32 %257, 8
  br i1 %258, label %259, label %263

259:                                              ; preds = %250
  %260 = load i32, i32* @EL_EEPROM, align 4
  %261 = load i32, i32* %6, align 4
  %262 = call i32 (i32, i8*, ...) @elprintf(i32 %260, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %261)
  br label %263

263:                                              ; preds = %259, %250
  br label %264

264:                                              ; preds = %263, %249
  br label %265

265:                                              ; preds = %264, %201
  br label %266

266:                                              ; preds = %265, %148
  br label %333

267:                                              ; preds = %136
  %268 = load i32, i32* %5, align 4
  %269 = icmp eq i32 %268, 9
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  br label %332

271:                                              ; preds = %267
  %272 = load i32, i32* %5, align 4
  %273 = icmp ugt i32 %272, 9
  br i1 %273, label %274, label %314

274:                                              ; preds = %271
  %275 = load i32, i32* %4, align 4
  %276 = and i32 %275, 1
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %313, label %278

278:                                              ; preds = %274
  %279 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 1), align 8
  %280 = load i32, i32* %4, align 4
  %281 = lshr i32 %280, 1
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %279, i64 %282
  store i8* %283, i8** %8, align 8
  %284 = load i8*, i8** %8, align 8
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = shl i32 %286, 1
  %288 = trunc i32 %287 to i8
  store i8 %288, i8* %284, align 1
  %289 = load i32, i32* %2, align 4
  %290 = and i32 %289, 1
  %291 = load i8*, i8** %8, align 8
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = or i32 %293, %290
  %295 = trunc i32 %294 to i8
  store i8 %295, i8* %291, align 1
  %296 = load i32, i32* %5, align 4
  %297 = icmp eq i32 %296, 17
  br i1 %297, label %298, label %312

298:                                              ; preds = %278
  %299 = load i32, i32* %4, align 4
  %300 = and i32 %299, 249
  %301 = load i32, i32* %4, align 4
  %302 = add i32 %301, 2
  %303 = and i32 %302, 6
  %304 = or i32 %300, %303
  store i32 %304, i32* %4, align 4
  %305 = load i32, i32* @EL_EEPROM, align 4
  %306 = load i32, i32* %4, align 4
  %307 = lshr i32 %306, 1
  %308 = load i8*, i8** %8, align 8
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i32
  %311 = call i32 (i32, i8*, ...) @elprintf(i32 %305, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %307, i32 %310)
  br label %312

312:                                              ; preds = %298, %278
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  br label %313

313:                                              ; preds = %312, %274
  br label %331

314:                                              ; preds = %271
  %315 = load i32, i32* %4, align 4
  %316 = shl i32 %315, 1
  store i32 %316, i32* %4, align 4
  %317 = load i32, i32* %2, align 4
  %318 = and i32 %317, 1
  %319 = load i32, i32* %4, align 4
  %320 = or i32 %319, %318
  store i32 %320, i32* %4, align 4
  %321 = load i32, i32* %4, align 4
  %322 = and i32 %321, 255
  store i32 %322, i32* %4, align 4
  %323 = load i32, i32* %5, align 4
  %324 = icmp eq i32 %323, 8
  br i1 %324, label %325, label %330

325:                                              ; preds = %314
  %326 = load i32, i32* @EL_EEPROM, align 4
  %327 = load i32, i32* %4, align 4
  %328 = lshr i32 %327, 1
  %329 = call i32 (i32, i8*, ...) @elprintf(i32 %326, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %328)
  br label %330

330:                                              ; preds = %325, %314
  br label %331

331:                                              ; preds = %330, %313
  br label %332

332:                                              ; preds = %331, %270
  br label %333

333:                                              ; preds = %332, %266
  br label %334

334:                                              ; preds = %333, %132, %128, %124
  br label %335

335:                                              ; preds = %334, %120
  br label %336

336:                                              ; preds = %335, %62
  %337 = load i32, i32* %3, align 4
  %338 = and i32 %337, -4
  store i32 %338, i32* %3, align 4
  %339 = load i32, i32* %2, align 4
  %340 = and i32 %339, 3
  %341 = load i32, i32* %3, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %3, align 4
  %343 = load i32, i32* %3, align 4
  %344 = trunc i32 %343 to i8
  %345 = zext i8 %344 to i32
  store i32 %345, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 4
  %346 = load i32, i32* %5, align 4
  %347 = trunc i32 %346 to i8
  %348 = zext i8 %347 to i32
  store i32 %348, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 2), align 4
  %349 = load i32, i32* %6, align 4
  %350 = trunc i32 %349 to i8
  %351 = zext i8 %350 to i32
  store i32 %351, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 3), align 4
  %352 = load i32, i32* %4, align 4
  %353 = trunc i32 %352 to i16
  %354 = zext i16 %353 to i32
  store i32 %354, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 1), align 4
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, ...) #1

declare dso_local i64 @SekCyclesDone(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
