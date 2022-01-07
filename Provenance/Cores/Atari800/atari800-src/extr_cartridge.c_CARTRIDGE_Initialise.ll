; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_CARTRIDGE_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_CARTRIDGE_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"-cart\00", align 1
@CARTRIDGE_main = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CARTRIDGE_UNKNOWN = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"-cart-type\00", align 1
@CARTRIDGE_LAST_SUPPORTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"-cart2\00", align 1
@CARTRIDGE_piggyback = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"-cart2-type\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"-cart-autoreboot\00", align 1
@CARTRIDGE_autoreboot = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"-no-cart-autoreboot\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"\09-cart <file>         Install cartridge (raw or CART format)\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"\09-cart-type <num>     Set cartridge type (0..%i)\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"\09-cart2 <file>        Install piggyback cartridge\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"\09-cart2-type <num>    Set piggyback cartridge type (0..%i)\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"\09-cart-autoreboot     Reboot when cartridge is inserted/removed\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"\09-no-cart-autoreboot  Don't reboot after changing cartridge\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Missing argument for '%s'\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Invalid argument for '%s'\00", align 1
@CARTRIDGE_NONE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARTRIDGE_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %10, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %233, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %236

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %24, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %22
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 0), align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @Util_strlcpy(i8* %42, i8* %48, i32 8)
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i8*, i8** @CARTRIDGE_UNKNOWN, align 8
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 1), align 8
  br label %55

55:                                               ; preds = %52, %41
  br label %58

56:                                               ; preds = %38
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %56, %55
  br label %208

59:                                               ; preds = %22
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %59
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %71, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @Util_sscansdec(i8* %76, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 1))
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 1), align 8
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %70
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 1), align 8
  %82 = load i64, i64* @CARTRIDGE_LAST_SUPPORTED, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80, %70
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %13, align 4
  br label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %84
  br label %91

89:                                               ; preds = %67
  %90 = load i32, i32* @TRUE, align 4
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %89, %88
  br label %207

92:                                               ; preds = %59
  %93 = load i8**, i8*** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %92
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_piggyback, i32 0, i32 0), align 8
  %105 = load i8**, i8*** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @Util_strlcpy(i8* %104, i8* %110, i32 8)
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %103
  %115 = load i8*, i8** @CARTRIDGE_UNKNOWN, align 8
  %116 = ptrtoint i8* %115 to i64
  store i64 %116, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_piggyback, i32 0, i32 1), align 8
  br label %117

117:                                              ; preds = %114, %103
  br label %120

118:                                              ; preds = %100
  %119 = load i32, i32* @TRUE, align 4
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %118, %117
  br label %206

121:                                              ; preds = %92
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %154

129:                                              ; preds = %121
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %129
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %133, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @Util_sscansdec(i8* %138, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_piggyback, i32 0, i32 1))
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_piggyback, i32 0, i32 1), align 8
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %132
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_piggyback, i32 0, i32 1), align 8
  %144 = load i64, i64* @CARTRIDGE_LAST_SUPPORTED, align 8
  %145 = icmp sgt i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142, %132
  %147 = load i32, i32* @TRUE, align 4
  store i32 %147, i32* %13, align 4
  br label %150

148:                                              ; preds = %142
  %149 = load i32, i32* @TRUE, align 4
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %148, %146
  br label %153

151:                                              ; preds = %129
  %152 = load i32, i32* @TRUE, align 4
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %151, %150
  br label %205

154:                                              ; preds = %121
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @strcmp(i8* %159, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = load i32, i32* @TRUE, align 4
  store i32 %163, i32* @CARTRIDGE_autoreboot, align 4
  br label %204

164:                                              ; preds = %154
  %165 = load i8**, i8*** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @strcmp(i8* %169, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %164
  %173 = load i32, i32* @FALSE, align 4
  store i32 %173, i32* @CARTRIDGE_autoreboot, align 4
  br label %203

174:                                              ; preds = %164
  %175 = load i8**, i8*** %5, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @strcmp(i8* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %174
  %183 = load i32, i32* @TRUE, align 4
  store i32 %183, i32* %8, align 4
  %184 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  %185 = load i64, i64* @CARTRIDGE_LAST_SUPPORTED, align 8
  %186 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i64 %185)
  %187 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %188 = load i64, i64* @CARTRIDGE_LAST_SUPPORTED, align 8
  %189 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0), i64 %188)
  %190 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0))
  %191 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0))
  br label %192

192:                                              ; preds = %182, %174
  %193 = load i8**, i8*** %5, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = load i8**, i8*** %5, align 8
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8*, i8** %198, i64 %201
  store i8* %197, i8** %202, align 8
  br label %203

203:                                              ; preds = %192, %172
  br label %204

204:                                              ; preds = %203, %162
  br label %205

205:                                              ; preds = %204, %153
  br label %206

206:                                              ; preds = %205, %120
  br label %207

207:                                              ; preds = %206, %91
  br label %208

208:                                              ; preds = %207, %58
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = load i8**, i8*** %5, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %212, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* %216)
  %218 = load i32, i32* @FALSE, align 4
  store i32 %218, i32* %3, align 4
  br label %270

219:                                              ; preds = %208
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %219
  %223 = load i8**, i8*** %5, align 8
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %223, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* %228)
  %230 = load i32, i32* @FALSE, align 4
  store i32 %230, i32* %3, align 4
  br label %270

231:                                              ; preds = %219
  br label %232

232:                                              ; preds = %231
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %6, align 4
  br label %17

236:                                              ; preds = %17
  %237 = load i32, i32* %7, align 4
  %238 = load i32*, i32** %4, align 8
  store i32 %237, i32* %238, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = load i32, i32* @TRUE, align 4
  store i32 %242, i32* %3, align 4
  br label %270

243:                                              ; preds = %236
  %244 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 0), align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 0
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %243
  %250 = load i8*, i8** @CARTRIDGE_NONE, align 8
  %251 = ptrtoint i8* %250 to i64
  store i64 %251, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 1), align 8
  br label %252

252:                                              ; preds = %249, %243
  %253 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_piggyback, i32 0, i32 0), align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 0
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %252
  %259 = load i8*, i8** @CARTRIDGE_NONE, align 8
  %260 = ptrtoint i8* %259 to i64
  store i64 %260, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_piggyback, i32 0, i32 1), align 8
  br label %261

261:                                              ; preds = %258, %252
  %262 = call i32 @InitInsert(%struct.TYPE_4__* @CARTRIDGE_main)
  %263 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 1), align 8
  %264 = call i64 @CartIsPassthrough(i64 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = call i32 @InitInsert(%struct.TYPE_4__* @CARTRIDGE_piggyback)
  br label %268

268:                                              ; preds = %266, %261
  %269 = load i32, i32* @TRUE, align 4
  store i32 %269, i32* %3, align 4
  br label %270

270:                                              ; preds = %268, %241, %222, %211
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Util_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @Util_sscansdec(i8*, i64*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i32 @InitInsert(%struct.TYPE_4__*) #1

declare dso_local i64 @CartIsPassthrough(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
