; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_usbkeyboard.c_USBKeyboard_Open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_usbkeyboard.c_USBKeyboard_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ukbd = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32 }

@hId = common dso_local global i32 0, align 4
@DEVLIST_MAXSIZE = common dso_local global i32 0, align 4
@USB_CLASS_HID = common dso_local global i64 0, align 8
@_kbd = common dso_local global %struct.ukbd* null, align 8
@USB_SUBCLASS_BOOT = common dso_local global i64 0, align 8
@USB_PROTOCOL_KEYBOARD = common dso_local global i64 0, align 8
@USB_ENDPOINT_INTERRUPT = common dso_local global i64 0, align 8
@USB_ENDPOINT_IN = common dso_local global i32 0, align 4
@_disconnect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBKeyboard_Open(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ukbd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @hId, align 4
  %20 = load i32, i32* @DEVLIST_MAXSIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 64
  %23 = trunc i64 %22 to i32
  %24 = call i64 @iosAlloc(i32 %19, i32 %23)
  %25 = inttoptr i64 %24 to %struct.ukbd*
  store %struct.ukbd* %25, %struct.ukbd** %4, align 8
  %26 = load %struct.ukbd*, %struct.ukbd** %4, align 8
  %27 = icmp eq %struct.ukbd* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %314

29:                                               ; preds = %1
  %30 = load %struct.ukbd*, %struct.ukbd** %4, align 8
  %31 = load i32, i32* @DEVLIST_MAXSIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 64
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(%struct.ukbd* %30, i32 0, i32 %34)
  %36 = load %struct.ukbd*, %struct.ukbd** %4, align 8
  %37 = load i32, i32* @DEVLIST_MAXSIZE, align 4
  %38 = load i64, i64* @USB_CLASS_HID, align 8
  %39 = call i64 @USB_GetDeviceList(%struct.ukbd* %36, i32 %37, i64 %38, i64* %5)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i32, i32* @hId, align 4
  %43 = load %struct.ukbd*, %struct.ukbd** %4, align 8
  %44 = call i32 @iosFree(i32 %42, %struct.ukbd* %43)
  store i32 -2, i32* %2, align 4
  br label %314

45:                                               ; preds = %29
  %46 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %47 = icmp ne %struct.ukbd* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %50 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %55 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %54, i32 0, i32 0
  %56 = call i32 @USB_CloseDevice(i32* %55)
  br label %57

57:                                               ; preds = %53, %48
  br label %65

58:                                               ; preds = %45
  %59 = call i64 @malloc(i32 64)
  %60 = inttoptr i64 %59 to %struct.ukbd*
  store %struct.ukbd* %60, %struct.ukbd** @_kbd, align 8
  %61 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %62 = icmp ne %struct.ukbd* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 -1, i32* %2, align 4
  br label %314

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %57
  %66 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %67 = call i32 @memset(%struct.ukbd* %66, i32 0, i32 64)
  %68 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %69 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  store i64 0, i64* %6, align 8
  br label %70

70:                                               ; preds = %235, %65
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %238

74:                                               ; preds = %70
  %75 = load %struct.ukbd*, %struct.ukbd** %4, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %75, i64 %76
  %78 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  %80 = load %struct.ukbd*, %struct.ukbd** %4, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %80, i64 %81
  %83 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %74
  %88 = load i64, i64* %9, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %74
  br label %235

91:                                               ; preds = %87
  store i32 0, i32* %18, align 4
  %92 = load %struct.ukbd*, %struct.ukbd** %4, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %92, i64 %93
  %95 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i64 @USB_OpenDevice(i32 %96, i64 %97, i64 %98, i32* %18)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %235

102:                                              ; preds = %91
  %103 = load i32, i32* %18, align 4
  %104 = call i64 @USB_GetDescriptors(i32 %103, %struct.TYPE_9__* %14)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = call i32 @USB_CloseDevice(i32* %18)
  br label %235

108:                                              ; preds = %102
  store i64 0, i64* %11, align 8
  br label %109

109:                                              ; preds = %224, %108
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %110, %112
  br i1 %113, label %114, label %227

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 %117
  store %struct.TYPE_10__* %118, %struct.TYPE_10__** %15, align 8
  store i64 0, i64* %12, align 8
  br label %119

119:                                              ; preds = %216, %114
  %120 = load i64, i64* %12, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %219

125:                                              ; preds = %119
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %129
  store %struct.TYPE_7__* %130, %struct.TYPE_7__** %16, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @USB_CLASS_HID, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %211

136:                                              ; preds = %125
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @USB_SUBCLASS_BOOT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %211

142:                                              ; preds = %136
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @USB_PROTOCOL_KEYBOARD, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %211

148:                                              ; preds = %142
  store i64 0, i64* %13, align 8
  br label %149

149:                                              ; preds = %207, %148
  %150 = load i64, i64* %13, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ult i64 %150, %153
  br i1 %154, label %155, label %210

155:                                              ; preds = %149
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 6
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i64, i64* %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %159
  store %struct.TYPE_8__* %160, %struct.TYPE_8__** %17, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @USB_ENDPOINT_INTERRUPT, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %155
  br label %207

167:                                              ; preds = %155
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @USB_ENDPOINT_IN, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %167
  br label %207

175:                                              ; preds = %167
  %176 = load i32, i32* %18, align 4
  %177 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %178 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %3, align 4
  %180 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %181 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %180, i32 0, i32 9
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %186 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %185, i32 0, i32 3
  store i64 %184, i64* %186, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %191 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %190, i32 0, i32 7
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %196 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %195, i32 0, i32 4
  store i64 %194, i64* %196, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %201 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %200, i32 0, i32 5
  store i32 %199, i32* %201, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %206 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %205, i32 0, i32 8
  store i32 %204, i32* %206, align 4
  store i32 1, i32* %10, align 4
  br label %210

207:                                              ; preds = %174, %166
  %208 = load i64, i64* %13, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %13, align 8
  br label %149

210:                                              ; preds = %175, %149
  br label %211

211:                                              ; preds = %210, %142, %136, %125
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %219

215:                                              ; preds = %211
  br label %216

216:                                              ; preds = %215
  %217 = load i64, i64* %12, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %12, align 8
  br label %119

219:                                              ; preds = %214, %119
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  br label %227

223:                                              ; preds = %219
  br label %224

224:                                              ; preds = %223
  %225 = load i64, i64* %11, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %11, align 8
  br label %109

227:                                              ; preds = %222, %109
  %228 = call i32 @USB_FreeDescriptors(%struct.TYPE_9__* %14)
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  br label %238

232:                                              ; preds = %227
  %233 = call i32 @USB_CloseDevice(i32* %18)
  br label %234

234:                                              ; preds = %232
  br label %235

235:                                              ; preds = %234, %106, %101, %90
  %236 = load i64, i64* %6, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %6, align 8
  br label %70

238:                                              ; preds = %231, %70
  %239 = load i32, i32* @hId, align 4
  %240 = load %struct.ukbd*, %struct.ukbd** %4, align 8
  %241 = call i32 @iosFree(i32 %239, %struct.ukbd* %240)
  %242 = load i32, i32* %10, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %238
  store i32 -3, i32* %2, align 4
  br label %314

245:                                              ; preds = %238
  %246 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %247 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i64 @USB_GetConfiguration(i32 %248, i64* %7)
  %250 = icmp slt i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  %252 = call i32 (...) @USBKeyboard_Close()
  store i32 -4, i32* %2, align 4
  br label %314

253:                                              ; preds = %245
  %254 = load i64, i64* %7, align 8
  %255 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %256 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %254, %257
  br i1 %258, label %259, label %270

259:                                              ; preds = %253
  %260 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %261 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %264 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = call i64 @USB_SetConfiguration(i32 %262, i64 %265)
  %267 = icmp slt i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %259
  %269 = call i32 (...) @USBKeyboard_Close()
  store i32 -5, i32* %2, align 4
  br label %314

270:                                              ; preds = %259, %253
  %271 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %272 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %271, i32 0, i32 4
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %289

275:                                              ; preds = %270
  %276 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %277 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %280 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %283 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = call i64 @USB_SetAlternativeInterface(i32 %278, i32 %281, i64 %284)
  %286 = icmp slt i64 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %275
  %288 = call i32 (...) @USBKeyboard_Close()
  store i32 -6, i32* %2, align 4
  br label %314

289:                                              ; preds = %275, %270
  %290 = call i32 (...) @_get_protocol()
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %303

292:                                              ; preds = %289
  %293 = call i64 @_set_protocol(i32 0)
  %294 = icmp slt i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = call i32 (...) @USBKeyboard_Close()
  store i32 -6, i32* %2, align 4
  br label %314

297:                                              ; preds = %292
  %298 = call i32 (...) @_get_protocol()
  %299 = icmp eq i32 %298, 1
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = call i32 (...) @USBKeyboard_Close()
  store i32 -7, i32* %2, align 4
  br label %314

302:                                              ; preds = %297
  br label %303

303:                                              ; preds = %302, %289
  %304 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %305 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = call i64 @USB_DeviceRemovalNotifyAsync(i32 %306, i32* @_disconnect, i32* null)
  %308 = icmp slt i64 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %303
  %310 = call i32 (...) @USBKeyboard_Close()
  store i32 -8, i32* %2, align 4
  br label %314

311:                                              ; preds = %303
  %312 = load %struct.ukbd*, %struct.ukbd** @_kbd, align 8
  %313 = getelementptr inbounds %struct.ukbd, %struct.ukbd* %312, i32 0, i32 6
  store i32 1, i32* %313, align 4
  store i32 1, i32* %2, align 4
  br label %314

314:                                              ; preds = %311, %309, %300, %295, %287, %268, %251, %244, %63, %41, %28
  %315 = load i32, i32* %2, align 4
  ret i32 %315
}

declare dso_local i64 @iosAlloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ukbd*, i32, i32) #1

declare dso_local i64 @USB_GetDeviceList(%struct.ukbd*, i32, i64, i64*) #1

declare dso_local i32 @iosFree(i32, %struct.ukbd*) #1

declare dso_local i32 @USB_CloseDevice(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @USB_OpenDevice(i32, i64, i64, i32*) #1

declare dso_local i64 @USB_GetDescriptors(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @USB_FreeDescriptors(%struct.TYPE_9__*) #1

declare dso_local i64 @USB_GetConfiguration(i32, i64*) #1

declare dso_local i32 @USBKeyboard_Close(...) #1

declare dso_local i64 @USB_SetConfiguration(i32, i64) #1

declare dso_local i64 @USB_SetAlternativeInterface(i32, i32, i64) #1

declare dso_local i32 @_get_protocol(...) #1

declare dso_local i64 @_set_protocol(i32) #1

declare dso_local i64 @USB_DeviceRemovalNotifyAsync(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
