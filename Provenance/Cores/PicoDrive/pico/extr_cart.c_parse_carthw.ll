; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_cart.c_parse_carthw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_cart.c_parse_carthw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@builtin_carthw_cfg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"pico/carthw.cfg\00", align 1
@EL_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"couldn't open carthw.cfg!\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"check_str\00", align 1
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"carthw:%d: check_str offs out of range: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"check_size_gt\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"check_csum\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"check_crc32\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"svp\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"pico\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"prot\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"ssf2_mapper\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"x_in_1_mapper\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"realtec_mapper\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"radica_mapper\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"piersolar_mapper\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"prot_lk3\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"carthw:%d: unsupported mapper: %s\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"sram_range\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"carthw:%d: bad sram_range: %08x - %08x\00", align 1
@SRam = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"prop\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"no_sram\00", align 1
@SRF_ENABLED = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"no_eeprom\00", align 1
@SRF_EEPROM = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"filled_sram\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"force_6btn\00", align 1
@PQUIRK_FORCE_6BTN = common dso_local global i32 0, align 4
@PicoQuirks = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [32 x i8] c"carthw:%d: unsupported prop: %s\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"game prop: %s\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"eeprom_type\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"eeprom_lines\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"prot_ro_value16\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"prot_rw_value16\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"carthw:%d: unrecognized expression: %s\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"carthw:%d: command without any checks before it: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @parse_carthw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_carthw(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %29 = load i8*, i8** @builtin_carthw_cfg, align 8
  store i8* %29, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32* @fopen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %35, i32** %15, align 8
  br label %36

36:                                               ; preds = %34, %2
  %37 = load i32*, i32** %15, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EL_STATUS, align 4
  %41 = call i32 (i32, i8*, ...) @elprintf(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %539, %538, %519, %498, %460, %436, %384, %331, %251, %228, %205, %184, %132, %128, %122, %42
  %44 = load i32*, i32** %15, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %48 = load i32*, i32** %15, align 8
  %49 = call i8* @fgets(i8* %47, i32 256, i32* %48)
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %544

53:                                               ; preds = %46
  br label %108

54:                                               ; preds = %43
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %544

60:                                               ; preds = %54
  %61 = load i8*, i8** %9, align 8
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %75, %60
  %63 = load i8*, i8** %8, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 10
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i1 [ false, %62 ], [ %71, %67 ]
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %8, align 8
  br label %62

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %84, %78
  %80 = load i8*, i8** %8, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %8, align 8
  br label %79

87:                                               ; preds = %79
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ugt i64 %95, 255
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  store i32 255, i32* %10, align 4
  br label %98

98:                                               ; preds = %97, %87
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @memcpy(i8* %99, i8* %100, i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 %104
  store i8 0, i8* %105, align 1
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8* %106, i8** %13, align 8
  %107 = load i8*, i8** %8, align 8
  store i8* %107, i8** %9, align 8
  br label %108

108:                                              ; preds = %98, %53
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  %111 = load i8*, i8** %13, align 8
  %112 = call i8* @sskip(i8* %111)
  store i8* %112, i8** %13, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %108
  %118 = load i8*, i8** %13, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 35
  br i1 %121, label %122, label %123

122:                                              ; preds = %117, %108
  br label %43

123:                                              ; preds = %117
  %124 = load i8*, i8** %13, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 91
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %43

129:                                              ; preds = %123
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %43

133:                                              ; preds = %129
  %134 = call i32 @is_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %13)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %185

136:                                              ; preds = %133
  %137 = load i8*, i8** %13, align 8
  %138 = call i8* @strtoul(i8* %137, i8** %14, i32 0)
  %139 = ptrtoint i8* %138 to i32
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %142, %136
  %147 = load i32, i32* @EL_STATUS, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %16, align 4
  %150 = call i32 (i32, i8*, ...) @elprintf(i32 %147, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %148, i32 %149)
  br label %533

151:                                              ; preds = %142
  %152 = load i8*, i8** %14, align 8
  %153 = call i8* @sskip(i8* %152)
  store i8* %153, i8** %13, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 44
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %533

159:                                              ; preds = %151
  %160 = load i8*, i8** %13, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = call i8* @sskip(i8* %161)
  store i8* %162, i8** %13, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 34
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %533

168:                                              ; preds = %159
  %169 = load i8*, i8** %13, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %13, align 8
  %171 = load i8*, i8** %13, align 8
  %172 = call i8* @strchr(i8* %171, i8 signext 34)
  store i8* %172, i8** %14, align 8
  %173 = load i8*, i8** %14, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  br label %533

176:                                              ; preds = %168
  %177 = load i8*, i8** %14, align 8
  store i8 0, i8* %177, align 1
  %178 = load i32, i32* %16, align 4
  %179 = load i8*, i8** %13, align 8
  %180 = call i64 @rom_strcmp(i32 %178, i8* %179)
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  store i32 1, i32* %6, align 4
  br label %184

183:                                              ; preds = %176
  store i32 1, i32* %7, align 4
  br label %184

184:                                              ; preds = %183, %182
  br label %43

185:                                              ; preds = %133
  %186 = call i32 @is_expr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %13)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %206

188:                                              ; preds = %185
  %189 = load i8*, i8** %13, align 8
  %190 = call i8* @strtoul(i8* %189, i8** %14, i32 0)
  %191 = ptrtoint i8* %190 to i32
  store i32 %191, i32* %17, align 4
  %192 = load i8*, i8** %14, align 8
  %193 = load i8*, i8** %13, align 8
  %194 = icmp eq i8* %192, %193
  br i1 %194, label %198, label %195

195:                                              ; preds = %188
  %196 = load i32, i32* %17, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195, %188
  br label %533

199:                                              ; preds = %195
  %200 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 4
  %201 = load i32, i32* %17, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i32 1, i32* %6, align 4
  br label %205

204:                                              ; preds = %199
  store i32 1, i32* %7, align 4
  br label %205

205:                                              ; preds = %204, %203
  br label %43

206:                                              ; preds = %185
  %207 = call i32 @is_expr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %13)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %229

209:                                              ; preds = %206
  %210 = load i8*, i8** %13, align 8
  %211 = call i8* @strtoul(i8* %210, i8** %14, i32 0)
  %212 = ptrtoint i8* %211 to i32
  store i32 %212, i32* %18, align 4
  %213 = load i8*, i8** %14, align 8
  %214 = load i8*, i8** %13, align 8
  %215 = icmp eq i8* %213, %214
  br i1 %215, label %220, label %216

216:                                              ; preds = %209
  %217 = load i32, i32* %18, align 4
  %218 = and i32 %217, -65536
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216, %209
  br label %533

221:                                              ; preds = %216
  %222 = load i32, i32* %18, align 4
  %223 = call i32 @rom_read32(i32 396)
  %224 = and i32 %223, 65535
  %225 = icmp eq i32 %222, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  store i32 1, i32* %6, align 4
  br label %228

227:                                              ; preds = %221
  store i32 1, i32* %7, align 4
  br label %228

228:                                              ; preds = %227, %226
  br label %43

229:                                              ; preds = %206
  %230 = call i32 @is_expr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %13)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %252

232:                                              ; preds = %229
  %233 = load i8*, i8** %13, align 8
  %234 = call i8* @strtoul(i8* %233, i8** %14, i32 0)
  %235 = ptrtoint i8* %234 to i32
  store i32 %235, i32* %19, align 4
  %236 = load i8*, i8** %14, align 8
  %237 = load i8*, i8** %13, align 8
  %238 = icmp eq i8* %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  br label %533

240:                                              ; preds = %232
  %241 = load i32, i32* %11, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = call i32 (...) @rom_crc32()
  store i32 %244, i32* %11, align 4
  br label %245

245:                                              ; preds = %243, %240
  %246 = load i32, i32* %19, align 4
  %247 = load i32, i32* %11, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  store i32 1, i32* %6, align 4
  br label %251

250:                                              ; preds = %245
  store i32 1, i32* %7, align 4
  br label %251

251:                                              ; preds = %250, %249
  br label %43

252:                                              ; preds = %229
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253
  br label %255

255:                                              ; preds = %254
  %256 = call i32 @is_expr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %13)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %332

258:                                              ; preds = %255
  %259 = load i32, i32* %6, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %258
  br label %539

262:                                              ; preds = %258
  %263 = load i8*, i8** %13, align 8
  %264 = call i32 @rstrip(i8* %263)
  %265 = load i8*, i8** %13, align 8
  %266 = call i64 @strcmp(i8* %265, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %262
  %269 = call i32 (...) @PicoSVPStartup()
  br label %331

270:                                              ; preds = %262
  %271 = load i8*, i8** %13, align 8
  %272 = call i64 @strcmp(i8* %271, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %270
  %275 = call i32 (...) @PicoInitPico()
  br label %330

276:                                              ; preds = %270
  %277 = load i8*, i8** %13, align 8
  %278 = call i64 @strcmp(i8* %277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = call i32 (...) @carthw_sprot_startup()
  br label %329

282:                                              ; preds = %276
  %283 = load i8*, i8** %13, align 8
  %284 = call i64 @strcmp(i8* %283, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = call i32 (...) @carthw_ssf2_startup()
  br label %328

288:                                              ; preds = %282
  %289 = load i8*, i8** %13, align 8
  %290 = call i64 @strcmp(i8* %289, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = call i32 (...) @carthw_Xin1_startup()
  br label %327

294:                                              ; preds = %288
  %295 = load i8*, i8** %13, align 8
  %296 = call i64 @strcmp(i8* %295, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %294
  %299 = call i32 (...) @carthw_realtec_startup()
  br label %326

300:                                              ; preds = %294
  %301 = load i8*, i8** %13, align 8
  %302 = call i64 @strcmp(i8* %301, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %300
  %305 = call i32 (...) @carthw_radica_startup()
  br label %325

306:                                              ; preds = %300
  %307 = load i8*, i8** %13, align 8
  %308 = call i64 @strcmp(i8* %307, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %306
  %311 = call i32 (...) @carthw_pier_startup()
  br label %324

312:                                              ; preds = %306
  %313 = load i8*, i8** %13, align 8
  %314 = call i64 @strcmp(i8* %313, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %312
  %317 = call i32 (...) @carthw_prot_lk3_startup()
  br label %323

318:                                              ; preds = %312
  %319 = load i32, i32* @EL_STATUS, align 4
  %320 = load i32, i32* %5, align 4
  %321 = load i8*, i8** %13, align 8
  %322 = call i32 (i32, i8*, ...) @elprintf(i32 %319, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 %320, i8* %321)
  store i32 1, i32* %7, align 4
  br label %323

323:                                              ; preds = %318, %316
  br label %324

324:                                              ; preds = %323, %310
  br label %325

325:                                              ; preds = %324, %304
  br label %326

326:                                              ; preds = %325, %298
  br label %327

327:                                              ; preds = %326, %292
  br label %328

328:                                              ; preds = %327, %286
  br label %329

329:                                              ; preds = %328, %280
  br label %330

330:                                              ; preds = %329, %274
  br label %331

331:                                              ; preds = %330, %268
  br label %43

332:                                              ; preds = %255
  %333 = call i32 @is_expr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8** %13)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %387

335:                                              ; preds = %332
  %336 = load i32, i32* %6, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %339, label %338

338:                                              ; preds = %335
  br label %539

339:                                              ; preds = %335
  %340 = load i8*, i8** %13, align 8
  %341 = call i32 @rstrip(i8* %340)
  %342 = load i8*, i8** %13, align 8
  %343 = call i8* @strtoul(i8* %342, i8** %14, i32 0)
  %344 = ptrtoint i8* %343 to i32
  store i32 %344, i32* %20, align 4
  %345 = load i8*, i8** %14, align 8
  %346 = load i8*, i8** %13, align 8
  %347 = icmp eq i8* %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %339
  br label %533

349:                                              ; preds = %339
  %350 = load i8*, i8** %14, align 8
  %351 = call i8* @sskip(i8* %350)
  store i8* %351, i8** %13, align 8
  %352 = load i8*, i8** %13, align 8
  %353 = load i8, i8* %352, align 1
  %354 = sext i8 %353 to i32
  %355 = icmp ne i32 %354, 44
  br i1 %355, label %356, label %357

356:                                              ; preds = %349
  br label %533

357:                                              ; preds = %349
  %358 = load i8*, i8** %13, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 1
  %360 = call i8* @sskip(i8* %359)
  store i8* %360, i8** %13, align 8
  %361 = load i8*, i8** %13, align 8
  %362 = call i8* @strtoul(i8* %361, i8** %14, i32 0)
  %363 = ptrtoint i8* %362 to i32
  store i32 %363, i32* %21, align 4
  %364 = load i8*, i8** %14, align 8
  %365 = load i8*, i8** %13, align 8
  %366 = icmp eq i8* %364, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %357
  br label %533

368:                                              ; preds = %357
  %369 = load i32, i32* %20, align 4
  %370 = load i32, i32* %21, align 4
  %371 = or i32 %369, %370
  %372 = and i32 %371, -16777216
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %368
  %375 = load i32, i32* %20, align 4
  %376 = load i32, i32* %21, align 4
  %377 = icmp sgt i32 %375, %376
  br i1 %377, label %378, label %384

378:                                              ; preds = %374, %368
  %379 = load i32, i32* @EL_STATUS, align 4
  %380 = load i32, i32* %5, align 4
  %381 = load i32, i32* %20, align 4
  %382 = load i32, i32* %21, align 4
  %383 = call i32 (i32, i8*, ...) @elprintf(i32 %379, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), i32 %380, i32 %381, i32 %382)
  br label %538

384:                                              ; preds = %374
  %385 = load i32, i32* %20, align 4
  store i32 %385, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 0), align 4
  %386 = load i32, i32* %21, align 4
  store i32 %386, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 1), align 4
  br label %43

387:                                              ; preds = %332
  %388 = call i32 @is_expr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8** %13)
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %440

390:                                              ; preds = %387
  %391 = load i32, i32* %6, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %394, label %393

393:                                              ; preds = %390
  br label %539

394:                                              ; preds = %390
  %395 = load i8*, i8** %13, align 8
  %396 = call i32 @rstrip(i8* %395)
  %397 = load i8*, i8** %13, align 8
  %398 = call i64 @strcmp(i8* %397, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %394
  %401 = load i32, i32* @SRF_ENABLED, align 4
  %402 = xor i32 %401, -1
  %403 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 6), align 4
  %404 = and i32 %403, %402
  store i32 %404, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 6), align 4
  br label %436

405:                                              ; preds = %394
  %406 = load i8*, i8** %13, align 8
  %407 = call i64 @strcmp(i8* %406, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %408 = icmp eq i64 %407, 0
  br i1 %408, label %409, label %414

409:                                              ; preds = %405
  %410 = load i32, i32* @SRF_EEPROM, align 4
  %411 = xor i32 %410, -1
  %412 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 6), align 4
  %413 = and i32 %412, %411
  store i32 %413, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 6), align 4
  br label %435

414:                                              ; preds = %405
  %415 = load i8*, i8** %13, align 8
  %416 = call i64 @strcmp(i8* %415, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  %417 = icmp eq i64 %416, 0
  br i1 %417, label %418, label %420

418:                                              ; preds = %414
  %419 = load i32*, i32** %4, align 8
  store i32 1, i32* %419, align 4
  br label %434

420:                                              ; preds = %414
  %421 = load i8*, i8** %13, align 8
  %422 = call i64 @strcmp(i8* %421, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  %423 = icmp eq i64 %422, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %420
  %425 = load i32, i32* @PQUIRK_FORCE_6BTN, align 4
  %426 = load i32, i32* @PicoQuirks, align 4
  %427 = or i32 %426, %425
  store i32 %427, i32* @PicoQuirks, align 4
  br label %433

428:                                              ; preds = %420
  %429 = load i32, i32* @EL_STATUS, align 4
  %430 = load i32, i32* %5, align 4
  %431 = load i8*, i8** %13, align 8
  %432 = call i32 (i32, i8*, ...) @elprintf(i32 %429, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0), i32 %430, i8* %431)
  br label %538

433:                                              ; preds = %424
  br label %434

434:                                              ; preds = %433, %418
  br label %435

435:                                              ; preds = %434, %409
  br label %436

436:                                              ; preds = %435, %400
  %437 = load i32, i32* @EL_STATUS, align 4
  %438 = load i8*, i8** %13, align 8
  %439 = call i32 (i32, i8*, ...) @elprintf(i32 %437, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %438)
  br label %43

440:                                              ; preds = %387
  %441 = call i32 @is_expr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8** %13)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %465

443:                                              ; preds = %440
  %444 = load i32, i32* %6, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %447, label %446

446:                                              ; preds = %443
  br label %539

447:                                              ; preds = %443
  %448 = load i8*, i8** %13, align 8
  %449 = call i32 @rstrip(i8* %448)
  %450 = load i8*, i8** %13, align 8
  %451 = call i8* @strtoul(i8* %450, i8** %14, i32 0)
  %452 = ptrtoint i8* %451 to i32
  store i32 %452, i32* %22, align 4
  %453 = load i8*, i8** %14, align 8
  %454 = load i8*, i8** %13, align 8
  %455 = icmp eq i8* %453, %454
  br i1 %455, label %459, label %456

456:                                              ; preds = %447
  %457 = load i32, i32* %22, align 4
  %458 = icmp slt i32 %457, 0
  br i1 %458, label %459, label %460

459:                                              ; preds = %456, %447
  br label %533

460:                                              ; preds = %456
  %461 = load i32, i32* %22, align 4
  store i32 %461, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 2), align 4
  %462 = load i32, i32* @SRF_EEPROM, align 4
  %463 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 6), align 4
  %464 = or i32 %463, %462
  store i32 %464, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 6), align 4
  br label %43

465:                                              ; preds = %440
  %466 = call i32 @is_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8** %13)
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %502

468:                                              ; preds = %465
  %469 = load i32, i32* %6, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %468
  br label %539

472:                                              ; preds = %468
  %473 = load i8*, i8** %13, align 8
  %474 = call i32 @rstrip(i8* %473)
  %475 = load i8*, i8** %13, align 8
  %476 = call i32 @parse_3_vals(i8* %475, i32* %23, i32* %24, i32* %25)
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %479, label %478

478:                                              ; preds = %472
  br label %533

479:                                              ; preds = %472
  %480 = load i32, i32* %23, align 4
  %481 = icmp slt i32 %480, 0
  br i1 %481, label %497, label %482

482:                                              ; preds = %479
  %483 = load i32, i32* %23, align 4
  %484 = icmp sgt i32 %483, 15
  br i1 %484, label %497, label %485

485:                                              ; preds = %482
  %486 = load i32, i32* %24, align 4
  %487 = icmp slt i32 %486, 0
  br i1 %487, label %497, label %488

488:                                              ; preds = %485
  %489 = load i32, i32* %24, align 4
  %490 = icmp sgt i32 %489, 15
  br i1 %490, label %497, label %491

491:                                              ; preds = %488
  %492 = load i32, i32* %25, align 4
  %493 = icmp slt i32 %492, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %491
  %495 = load i32, i32* %25, align 4
  %496 = icmp sgt i32 %495, 15
  br i1 %496, label %497, label %498

497:                                              ; preds = %494, %491, %488, %485, %482, %479
  br label %533

498:                                              ; preds = %494
  %499 = load i32, i32* %23, align 4
  store i32 %499, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 3), align 4
  %500 = load i32, i32* %24, align 4
  store i32 %500, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 4), align 4
  %501 = load i32, i32* %25, align 4
  store i32 %501, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 5), align 4
  br label %43

502:                                              ; preds = %465
  %503 = call i32 @is_expr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8** %13)
  store i32 %503, i32* %10, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %508, label %505

505:                                              ; preds = %502
  %506 = call i32 @is_expr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i8** %13)
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %528

508:                                              ; preds = %505, %502
  %509 = load i32, i32* %6, align 4
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %512, label %511

511:                                              ; preds = %508
  br label %539

512:                                              ; preds = %508
  %513 = load i8*, i8** %13, align 8
  %514 = call i32 @rstrip(i8* %513)
  %515 = load i8*, i8** %13, align 8
  %516 = call i32 @parse_3_vals(i8* %515, i32* %26, i32* %27, i32* %28)
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %519, label %518

518:                                              ; preds = %512
  br label %533

519:                                              ; preds = %512
  %520 = load i32, i32* %26, align 4
  %521 = load i32, i32* %27, align 4
  %522 = load i32, i32* %28, align 4
  %523 = load i32, i32* %10, align 4
  %524 = icmp ne i32 %523, 0
  %525 = zext i1 %524 to i64
  %526 = select i1 %524, i32 1, i32 0
  %527 = call i32 @carthw_sprot_new_location(i32 %520, i32 %521, i32 %522, i32 %526)
  br label %43

528:                                              ; preds = %505
  br label %529

529:                                              ; preds = %528
  br label %530

530:                                              ; preds = %529
  br label %531

531:                                              ; preds = %530
  br label %532

532:                                              ; preds = %531
  br label %533

533:                                              ; preds = %532, %518, %497, %478, %459, %367, %356, %348, %239, %220, %198, %175, %167, %158, %146
  %534 = load i32, i32* @EL_STATUS, align 4
  %535 = load i32, i32* %5, align 4
  %536 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %537 = call i32 (i32, i8*, ...) @elprintf(i32 %534, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0), i32 %535, i8* %536)
  br label %538

538:                                              ; preds = %533, %428, %378
  store i32 1, i32* %7, align 4
  br label %43

539:                                              ; preds = %511, %471, %446, %393, %338, %261
  %540 = load i32, i32* @EL_STATUS, align 4
  %541 = load i32, i32* %5, align 4
  %542 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %543 = call i32 (i32, i8*, ...) @elprintf(i32 %540, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i64 0, i64 0), i32 %541, i8* %542)
  store i32 1, i32* %7, align 4
  br label %43

544:                                              ; preds = %59, %52
  %545 = load i32*, i32** %15, align 8
  %546 = icmp ne i32* %545, null
  br i1 %546, label %547, label %550

547:                                              ; preds = %544
  %548 = load i32*, i32** %15, align 8
  %549 = call i32 @fclose(i32* %548)
  br label %550

550:                                              ; preds = %547, %544
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @elprintf(i32, i8*, ...) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @sskip(i8*) #1

declare dso_local i32 @is_expr(i8*, i8**) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @rom_strcmp(i32, i8*) #1

declare dso_local i32 @rom_read32(i32) #1

declare dso_local i32 @rom_crc32(...) #1

declare dso_local i32 @rstrip(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @PicoSVPStartup(...) #1

declare dso_local i32 @PicoInitPico(...) #1

declare dso_local i32 @carthw_sprot_startup(...) #1

declare dso_local i32 @carthw_ssf2_startup(...) #1

declare dso_local i32 @carthw_Xin1_startup(...) #1

declare dso_local i32 @carthw_realtec_startup(...) #1

declare dso_local i32 @carthw_radica_startup(...) #1

declare dso_local i32 @carthw_pier_startup(...) #1

declare dso_local i32 @carthw_prot_lk3_startup(...) #1

declare dso_local i32 @parse_3_vals(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @carthw_sprot_new_location(i32, i32, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
