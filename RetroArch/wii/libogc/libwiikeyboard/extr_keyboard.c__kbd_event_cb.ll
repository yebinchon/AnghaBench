; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_keyboard.c__kbd_event_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_keyboard.c__kbd_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i8*, i32 }
%struct.wscons_keymap = type { i32*, i8** }

@KEYBOARD_DISCONNECTED = common dso_local global i64 0, align 8
@KEYBOARD_PRESSED = common dso_local global i64 0, align 8
@KEYBOARD_RELEASED = common dso_local global i64 0, align 8
@_ukbd_keymapdata = common dso_local global i32 0, align 4
@MOD_SHIFT_L = common dso_local global i32 0, align 4
@MOD_SHIFT_R = common dso_local global i32 0, align 4
@MOD_SHIFTLOCK = common dso_local global i32 0, align 4
@MOD_CAPSLOCK = common dso_local global i32 0, align 4
@USBKEYBOARD_LEDCAPS = common dso_local global i32 0, align 4
@_modifiers = common dso_local global i32 0, align 4
@MOD_CONTROL_L = common dso_local global i32 0, align 4
@MOD_CONTROL_R = common dso_local global i32 0, align 4
@MOD_META_L = common dso_local global i32 0, align 4
@MOD_META_R = common dso_local global i32 0, align 4
@MOD_MODESHIFT = common dso_local global i32 0, align 4
@MOD_MODELOCK = common dso_local global i32 0, align 4
@MOD_NUMLOCK = common dso_local global i32 0, align 4
@USBKEYBOARD_LEDNUM = common dso_local global i32 0, align 4
@MOD_HOLDSCREEN = common dso_local global i32 0, align 4
@USBKEYBOARD_LEDSCROLL = common dso_local global i32 0, align 4
@MOD_ANYCONTROL = common dso_local global i32 0, align 4
@MOD_ANYSHIFT = common dso_local global i32 0, align 4
@KS_Multi_key = common dso_local global i8* null, align 8
@MOD_COMPOSE = common dso_local global i32 0, align 4
@_composelen = common dso_local global i32 0, align 4
@_composebuf = common dso_local global i8** null, align 8
@MAXHELD = common dso_local global i32 0, align 4
@_held = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @_kbd_event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_kbd_event_cb(i64 %0) #0 {
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.wscons_keymap, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_7__* %2 to i64*
  store i64 %0, i64* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %25 [
    i32 130, label %12
    i32 129, label %19
    i32 128, label %22
  ]

12:                                               ; preds = %1
  %13 = load i64, i64* @KEYBOARD_DISCONNECTED, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i8* null, i8** %17, align 8
  %18 = call i32 @_kbd_addEvent(%struct.TYPE_6__* %3)
  br label %349

19:                                               ; preds = %1
  %20 = load i64, i64* @KEYBOARD_PRESSED, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  br label %26

22:                                               ; preds = %1
  %23 = load i64, i64* @KEYBOARD_RELEASED, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  br label %26

25:                                               ; preds = %1
  br label %349

26:                                               ; preds = %22, %19
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @wskbd_get_mapentry(i32* @_ukbd_keymapdata, i32 %31, %struct.wscons_keymap* %4)
  %33 = getelementptr inbounds %struct.wscons_keymap, %struct.wscons_keymap* %4, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %112 [
    i32 133, label %37
    i32 131, label %42
    i32 132, label %47
    i32 145, label %52
    i32 144, label %62
    i32 143, label %67
    i32 147, label %72
    i32 146, label %77
    i32 135, label %82
    i32 136, label %87
    i32 134, label %92
    i32 137, label %102
  ]

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @MOD_SHIFT_L, align 4
  %41 = call i32 @update_modifier(i64 %39, i32 0, i32 %40)
  br label %112

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @MOD_SHIFT_R, align 4
  %46 = call i32 @update_modifier(i64 %44, i32 0, i32 %45)
  br label %112

47:                                               ; preds = %26
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @MOD_SHIFTLOCK, align 4
  %51 = call i32 @update_modifier(i64 %49, i32 1, i32 %50)
  br label %112

52:                                               ; preds = %26
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @MOD_CAPSLOCK, align 4
  %56 = call i32 @update_modifier(i64 %54, i32 1, i32 %55)
  %57 = load i32, i32* @USBKEYBOARD_LEDCAPS, align 4
  %58 = load i32, i32* @_modifiers, align 4
  %59 = load i32, i32* @MOD_CAPSLOCK, align 4
  %60 = call i32 @MOD_ONESET(i32 %58, i32 %59)
  %61 = call i32 @USBKeyboard_SetLed(i32 %57, i32 %60)
  br label %112

62:                                               ; preds = %26
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @MOD_CONTROL_L, align 4
  %66 = call i32 @update_modifier(i64 %64, i32 0, i32 %65)
  br label %112

67:                                               ; preds = %26
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @MOD_CONTROL_R, align 4
  %71 = call i32 @update_modifier(i64 %69, i32 0, i32 %70)
  br label %112

72:                                               ; preds = %26
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @MOD_META_L, align 4
  %76 = call i32 @update_modifier(i64 %74, i32 0, i32 %75)
  br label %112

77:                                               ; preds = %26
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @MOD_META_R, align 4
  %81 = call i32 @update_modifier(i64 %79, i32 0, i32 %80)
  br label %112

82:                                               ; preds = %26
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @MOD_MODESHIFT, align 4
  %86 = call i32 @update_modifier(i64 %84, i32 0, i32 %85)
  br label %112

87:                                               ; preds = %26
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @MOD_MODELOCK, align 4
  %91 = call i32 @update_modifier(i64 %89, i32 1, i32 %90)
  br label %112

92:                                               ; preds = %26
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @MOD_NUMLOCK, align 4
  %96 = call i32 @update_modifier(i64 %94, i32 1, i32 %95)
  %97 = load i32, i32* @USBKEYBOARD_LEDNUM, align 4
  %98 = load i32, i32* @_modifiers, align 4
  %99 = load i32, i32* @MOD_NUMLOCK, align 4
  %100 = call i32 @MOD_ONESET(i32 %98, i32 %99)
  %101 = call i32 @USBKeyboard_SetLed(i32 %97, i32 %100)
  br label %112

102:                                              ; preds = %26
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @MOD_HOLDSCREEN, align 4
  %106 = call i32 @update_modifier(i64 %104, i32 1, i32 %105)
  %107 = load i32, i32* @USBKEYBOARD_LEDSCROLL, align 4
  %108 = load i32, i32* @_modifiers, align 4
  %109 = load i32, i32* @MOD_HOLDSCREEN, align 4
  %110 = call i32 @MOD_ONESET(i32 %108, i32 %109)
  %111 = call i32 @USBKeyboard_SetLed(i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %26, %102, %92, %87, %82, %77, %72, %67, %62, %52, %47, %42, %37
  %113 = load i32, i32* @_modifiers, align 4
  %114 = load i32, i32* @MOD_MODESHIFT, align 4
  %115 = load i32, i32* @MOD_MODELOCK, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %113, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load i32, i32* @_modifiers, align 4
  %121 = load i32, i32* @MOD_ANYCONTROL, align 4
  %122 = call i32 @MOD_ONESET(i32 %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.wscons_keymap, %struct.wscons_keymap* %4, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 0
  store i8** %127, i8*** %5, align 8
  br label %133

128:                                              ; preds = %119, %112
  %129 = getelementptr inbounds %struct.wscons_keymap, %struct.wscons_keymap* %4, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = bitcast i32* %131 to i8**
  store i8** %132, i8*** %5, align 8
  br label %133

133:                                              ; preds = %128, %124
  %134 = load i32, i32* @_modifiers, align 4
  %135 = load i32, i32* @MOD_NUMLOCK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %133
  %139 = load i8**, i8*** %5, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @KS_GROUP(i8* %141)
  %143 = icmp eq i32 %142, 139
  br i1 %143, label %144, label %156

144:                                              ; preds = %138
  %145 = load i32, i32* @_modifiers, align 4
  %146 = load i32, i32* @MOD_ANYSHIFT, align 4
  %147 = call i32 @MOD_ONESET(i32 %145, i32 %146)
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %6, align 4
  %151 = load i8**, i8*** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  store i8* %155, i8** %7, align 8
  br label %179

156:                                              ; preds = %138, %133
  %157 = load i32, i32* @_modifiers, align 4
  %158 = load i32, i32* @MOD_CAPSLOCK, align 4
  %159 = load i32, i32* @MOD_ANYSHIFT, align 4
  %160 = or i32 %158, %159
  %161 = and i32 %157, %160
  %162 = load i32, i32* @MOD_CAPSLOCK, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %156
  store i32 0, i32* %6, align 4
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i8* @ksym_upcase(i8* %167)
  store i8* %168, i8** %7, align 8
  br label %178

169:                                              ; preds = %156
  %170 = load i32, i32* @_modifiers, align 4
  %171 = load i32, i32* @MOD_ANYSHIFT, align 4
  %172 = call i32 @MOD_ONESET(i32 %170, i32 %171)
  store i32 %172, i32* %6, align 4
  %173 = load i8**, i8*** %5, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  store i8* %177, i8** %7, align 8
  br label %178

178:                                              ; preds = %169, %164
  br label %179

179:                                              ; preds = %178, %144
  %180 = load i8*, i8** %7, align 8
  %181 = call i32 @KS_GROUP(i8* %180)
  switch i32 %181, label %208 [
    i32 138, label %182
    i32 141, label %191
  ]

182:                                              ; preds = %179
  %183 = load i8*, i8** %7, align 8
  %184 = load i8*, i8** @KS_Multi_key, align 8
  %185 = icmp eq i8* %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load i64, i64* @KEYBOARD_PRESSED, align 8
  %188 = load i32, i32* @MOD_COMPOSE, align 4
  %189 = call i32 @update_modifier(i64 %187, i32 0, i32 %188)
  store i32 2, i32* @_composelen, align 4
  br label %190

190:                                              ; preds = %186, %182
  br label %208

191:                                              ; preds = %179
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @KEYBOARD_PRESSED, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %349

197:                                              ; preds = %191
  %198 = load i32, i32* @_composelen, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = load i64, i64* @KEYBOARD_PRESSED, align 8
  %202 = load i32, i32* @MOD_COMPOSE, align 4
  %203 = call i32 @update_modifier(i64 %201, i32 0, i32 %202)
  store i32 1, i32* @_composelen, align 4
  %204 = load i8*, i8** %7, align 8
  %205 = load i8**, i8*** @_composebuf, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 0
  store i8* %204, i8** %206, align 8
  br label %349

207:                                              ; preds = %197
  br label %208

208:                                              ; preds = %179, %207, %190
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @KEYBOARD_PRESSED, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %265

213:                                              ; preds = %208
  %214 = load i32, i32* @_composelen, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %265

216:                                              ; preds = %213
  %217 = load i32, i32* @_composelen, align 4
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %219, label %243

219:                                              ; preds = %216
  %220 = load i8**, i8*** %5, align 8
  %221 = getelementptr inbounds %struct.wscons_keymap, %struct.wscons_keymap* %4, i32 0, i32 1
  %222 = load i8**, i8*** %221, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 0
  %224 = icmp eq i8** %220, %223
  br i1 %224, label %225, label %243

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.wscons_keymap, %struct.wscons_keymap* %4, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i8*
  %234 = getelementptr inbounds %struct.wscons_keymap, %struct.wscons_keymap* %4, i32 0, i32 1
  %235 = load i8**, i8*** %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  %239 = load i8*, i8** %238, align 8
  %240 = icmp ne i8* %233, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %225
  store i32 0, i32* @_composelen, align 4
  br label %242

242:                                              ; preds = %241, %225
  br label %243

243:                                              ; preds = %242, %219, %216
  %244 = load i32, i32* @_composelen, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %264

246:                                              ; preds = %243
  %247 = load i8*, i8** %7, align 8
  %248 = load i8**, i8*** @_composebuf, align 8
  %249 = load i32, i32* @_composelen, align 4
  %250 = sub nsw i32 2, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %248, i64 %251
  store i8* %247, i8** %252, align 8
  %253 = load i32, i32* @_composelen, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* @_composelen, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %246
  %257 = load i8**, i8*** @_composebuf, align 8
  %258 = call i8* @wskbd_compose_value(i8** %257)
  store i8* %258, i8** %7, align 8
  %259 = load i64, i64* @KEYBOARD_RELEASED, align 8
  %260 = load i32, i32* @MOD_COMPOSE, align 4
  %261 = call i32 @update_modifier(i64 %259, i32 0, i32 %260)
  br label %263

262:                                              ; preds = %246
  br label %349

263:                                              ; preds = %256
  br label %264

264:                                              ; preds = %263, %243
  br label %265

265:                                              ; preds = %264, %213, %208
  %266 = load i8*, i8** %7, align 8
  %267 = call i32 @KS_GROUP(i8* %266)
  switch i32 %267, label %343 [
    i32 142, label %268
    i32 139, label %268
    i32 140, label %268
  ]

268:                                              ; preds = %265, %265, %265
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @KEYBOARD_PRESSED, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %305

273:                                              ; preds = %268
  store i32 0, i32* %8, align 4
  br label %274

274:                                              ; preds = %301, %273
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* @MAXHELD, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %304

278:                                              ; preds = %274
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_held, align 8
  %280 = load i32, i32* %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %300

286:                                              ; preds = %278
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_held, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  store i32 %288, i32* %293, align 8
  %294 = load i8*, i8** %7, align 8
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_held, align 8
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 0
  store i8* %294, i8** %299, align 8
  br label %304

300:                                              ; preds = %278
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %8, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %8, align 4
  br label %274

304:                                              ; preds = %286, %274
  br label %342

305:                                              ; preds = %268
  store i32 0, i32* %8, align 4
  br label %306

306:                                              ; preds = %338, %305
  %307 = load i32, i32* %8, align 4
  %308 = load i32, i32* @MAXHELD, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %341

310:                                              ; preds = %306
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_held, align 8
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %318 = load i32, i32* %317, align 8
  %319 = icmp eq i32 %316, %318
  br i1 %319, label %320, label %337

320:                                              ; preds = %310
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_held, align 8
  %322 = load i32, i32* %8, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  store i8* %326, i8** %7, align 8
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_held, align 8
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 1
  store i32 0, i32* %331, align 8
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_held, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 0
  store i8* null, i8** %336, align 8
  br label %341

337:                                              ; preds = %310
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %8, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %8, align 4
  br label %306

341:                                              ; preds = %320, %306
  br label %342

342:                                              ; preds = %341, %304
  br label %343

343:                                              ; preds = %265, %342
  %344 = load i8*, i8** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i8* %344, i8** %345, align 8
  %346 = load i32, i32* @_modifiers, align 4
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %346, i32* %347, align 8
  %348 = call i32 @_kbd_addEvent(%struct.TYPE_6__* %3)
  br label %349

349:                                              ; preds = %343, %262, %200, %196, %25, %12
  ret void
}

declare dso_local i32 @_kbd_addEvent(%struct.TYPE_6__*) #1

declare dso_local i32 @wskbd_get_mapentry(i32*, i32, %struct.wscons_keymap*) #1

declare dso_local i32 @update_modifier(i64, i32, i32) #1

declare dso_local i32 @USBKeyboard_SetLed(i32, i32) #1

declare dso_local i32 @MOD_ONESET(i32, i32) #1

declare dso_local i32 @KS_GROUP(i8*) #1

declare dso_local i8* @ksym_upcase(i8*) #1

declare dso_local i8* @wskbd_compose_value(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
