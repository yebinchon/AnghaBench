; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/input_hw/extr_input.c_input_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/input_hw/extr_input.c_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i8**, i64* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@MAX_DEVICES = common dso_local global i32 0, align 4
@NO_DEVICE = common dso_local global i8* null, align 8
@input = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_PICO = common dso_local global i64 0, align 8
@DEVICE_PICO = common dso_local global i8* null, align 8
@cart = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@HW_TEREBI_OEKAKI = common dso_local global i32 0, align 4
@DEVICE_TEREBI = common dso_local global i8* null, align 8
@DEVICE_PAD2B = common dso_local global i8* null, align 8
@config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@DEVICE_MOUSE = common dso_local global i8* null, align 8
@DEVICE_ACTIVATOR = common dso_local global i8* null, align 8
@DEVICE_XE_A1P = common dso_local global i8* null, align 8
@MAX_INPUTS = common dso_local global i32 0, align 4
@DEVICE_LIGHTGUN = common dso_local global i8* null, align 8
@DEVICE_PADDLE = common dso_local global i8* null, align 8
@DEVICE_SPORTSPAD = common dso_local global i8* null, align 8
@HW_J_CART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %17, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @MAX_DEVICES, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load i8*, i8** @NO_DEVICE, align 8
  %9 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %9, i64 %11
  store i8* %8, i8** %12, align 8
  %13 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %7
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %3

20:                                               ; preds = %3
  %21 = load i64, i64* @system_hw, align 8
  %22 = load i64, i64* @SYSTEM_PICO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** @DEVICE_PICO, align 8
  %26 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  store i8* %25, i8** %27, align 8
  br label %294

28:                                               ; preds = %20
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cart, i32 0, i32 0), align 4
  %30 = load i32, i32* @HW_TEREBI_OEKAKI, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i8*, i8** @DEVICE_TEREBI, align 8
  %35 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %34, i8** %36, align 8
  br label %294

37:                                               ; preds = %28
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 0), align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %147 [
    i32 133, label %41
    i32 136, label %47
    i32 134, label %58
    i32 139, label %64
    i32 128, label %70
    i32 129, label %76
    i32 130, label %102
    i32 137, label %129
    i32 132, label %135
    i32 131, label %141
  ]

41:                                               ; preds = %37
  %42 = load i8*, i8** @DEVICE_PAD2B, align 8
  %43 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %147

47:                                               ; preds = %37
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %147

58:                                               ; preds = %37
  %59 = load i8*, i8** @DEVICE_MOUSE, align 8
  %60 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %2, align 4
  br label %147

64:                                               ; preds = %37
  %65 = load i8*, i8** @DEVICE_ACTIVATOR, align 8
  %66 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %147

70:                                               ; preds = %37
  %71 = load i8*, i8** @DEVICE_XE_A1P, align 8
  %72 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  br label %147

76:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %77

77:                                               ; preds = %98, %76
  %78 = load i32, i32* %1, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %101

80:                                               ; preds = %77
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @MAX_INPUTS, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %92 = load i32, i32* %1, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %90, i8** %94, align 8
  %95 = load i32, i32* %2, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %84, %80
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %1, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %1, align 4
  br label %77

101:                                              ; preds = %77
  br label %147

102:                                              ; preds = %37
  store i32 0, i32* %1, align 4
  br label %103

103:                                              ; preds = %124, %102
  %104 = load i32, i32* %1, align 4
  %105 = icmp slt i32 %104, 4
  br i1 %105, label %106, label %127

106:                                              ; preds = %103
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* @MAX_INPUTS, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %112 = load i32, i32* %2, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %118 = load i32, i32* %1, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* %116, i8** %120, align 8
  %121 = load i32, i32* %2, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %110, %106
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %1, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %1, align 4
  br label %103

127:                                              ; preds = %103
  %128 = call i32 @teamplayer_init(i32 0)
  br label %147

129:                                              ; preds = %37
  %130 = load i8*, i8** @DEVICE_LIGHTGUN, align 8
  %131 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 0
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* %2, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %2, align 4
  br label %147

135:                                              ; preds = %37
  %136 = load i8*, i8** @DEVICE_PADDLE, align 8
  %137 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  store i8* %136, i8** %138, align 8
  %139 = load i32, i32* %2, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %2, align 4
  br label %147

141:                                              ; preds = %37
  %142 = load i8*, i8** @DEVICE_SPORTSPAD, align 8
  %143 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 0
  store i8* %142, i8** %144, align 8
  %145 = load i32, i32* %2, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %37, %141, %135, %129, %127, %101, %70, %64, %58, %47, %41
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* @MAX_INPUTS, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %294

152:                                              ; preds = %147
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 0), align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  switch i32 %155, label %263 [
    i32 133, label %156
    i32 136, label %162
    i32 134, label %173
    i32 139, label %179
    i32 128, label %185
    i32 135, label %191
    i32 138, label %197
    i32 130, label %218
    i32 137, label %245
    i32 132, label %251
    i32 131, label %257
  ]

156:                                              ; preds = %152
  %157 = load i8*, i8** @DEVICE_PAD2B, align 8
  %158 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 4
  store i8* %157, i8** %159, align 8
  %160 = load i32, i32* %2, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %2, align 4
  br label %263

162:                                              ; preds = %152
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %164 = load i32, i32* %2, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 4
  store i8* %168, i8** %170, align 8
  %171 = load i32, i32* %2, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %2, align 4
  br label %263

173:                                              ; preds = %152
  %174 = load i8*, i8** @DEVICE_MOUSE, align 8
  %175 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 4
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* %2, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %2, align 4
  br label %263

179:                                              ; preds = %152
  %180 = load i8*, i8** @DEVICE_ACTIVATOR, align 8
  %181 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 4
  store i8* %180, i8** %182, align 8
  %183 = load i32, i32* %2, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %2, align 4
  br label %263

185:                                              ; preds = %152
  %186 = load i8*, i8** @DEVICE_XE_A1P, align 8
  %187 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 4
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* %2, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %2, align 4
  br label %263

191:                                              ; preds = %152
  %192 = load i8*, i8** @DEVICE_LIGHTGUN, align 8
  %193 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 4
  store i8* %192, i8** %194, align 8
  %195 = load i32, i32* %2, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %2, align 4
  br label %263

197:                                              ; preds = %152
  store i32 4, i32* %1, align 4
  br label %198

198:                                              ; preds = %214, %197
  %199 = load i32, i32* %1, align 4
  %200 = icmp slt i32 %199, 6
  br i1 %200, label %201, label %217

201:                                              ; preds = %198
  %202 = load i32, i32* %2, align 4
  %203 = load i32, i32* @MAX_INPUTS, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %201
  %206 = load i8*, i8** @DEVICE_LIGHTGUN, align 8
  %207 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %208 = load i32, i32* %1, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %207, i64 %209
  store i8* %206, i8** %210, align 8
  %211 = load i32, i32* %2, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %205, %201
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %1, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %1, align 4
  br label %198

217:                                              ; preds = %198
  br label %263

218:                                              ; preds = %152
  store i32 4, i32* %1, align 4
  br label %219

219:                                              ; preds = %240, %218
  %220 = load i32, i32* %1, align 4
  %221 = icmp slt i32 %220, 8
  br i1 %221, label %222, label %243

222:                                              ; preds = %219
  %223 = load i32, i32* %2, align 4
  %224 = load i32, i32* @MAX_INPUTS, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %239

226:                                              ; preds = %222
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %228 = load i32, i32* %2, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %234 = load i32, i32* %1, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %233, i64 %235
  store i8* %232, i8** %236, align 8
  %237 = load i32, i32* %2, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %2, align 4
  br label %239

239:                                              ; preds = %226, %222
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %1, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %1, align 4
  br label %219

243:                                              ; preds = %219
  %244 = call i32 @teamplayer_init(i32 1)
  br label %263

245:                                              ; preds = %152
  %246 = load i8*, i8** @DEVICE_LIGHTGUN, align 8
  %247 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 4
  store i8* %246, i8** %248, align 8
  %249 = load i32, i32* %2, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %2, align 4
  br label %263

251:                                              ; preds = %152
  %252 = load i8*, i8** @DEVICE_PADDLE, align 8
  %253 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 4
  store i8* %252, i8** %254, align 8
  %255 = load i32, i32* %2, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %2, align 4
  br label %263

257:                                              ; preds = %152
  %258 = load i8*, i8** @DEVICE_SPORTSPAD, align 8
  %259 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %260 = getelementptr inbounds i8*, i8** %259, i64 4
  store i8* %258, i8** %260, align 8
  %261 = load i32, i32* %2, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %152, %257, %251, %245, %243, %217, %191, %185, %179, %173, %162, %156
  %264 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cart, i32 0, i32 0), align 4
  %265 = load i32, i32* @HW_J_CART, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %294

268:                                              ; preds = %263
  store i32 5, i32* %1, align 4
  br label %269

269:                                              ; preds = %290, %268
  %270 = load i32, i32* %1, align 4
  %271 = icmp slt i32 %270, 7
  br i1 %271, label %272, label %293

272:                                              ; preds = %269
  %273 = load i32, i32* %2, align 4
  %274 = load i32, i32* @MAX_INPUTS, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %289

276:                                              ; preds = %272
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %278 = load i32, i32* %2, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %284 = load i32, i32* %1, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %283, i64 %285
  store i8* %282, i8** %286, align 8
  %287 = load i32, i32* %2, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %2, align 4
  br label %289

289:                                              ; preds = %276, %272
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %1, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %1, align 4
  br label %269

293:                                              ; preds = %269
  br label %294

294:                                              ; preds = %24, %33, %151, %293, %263
  ret void
}

declare dso_local i32 @teamplayer_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
