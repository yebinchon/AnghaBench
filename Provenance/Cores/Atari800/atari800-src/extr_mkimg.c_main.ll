; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mkimg.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mkimg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"-input\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"-image\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"-header\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.4 = private unnamed_addr constant [87 x i8] c"Usage: %s -input in_fname {-image image_fname|-header header_fname} hexaddr1 hexaddr2\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Error: Expecting Header1\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Error: Expecting Header2\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"StartAddr = %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Oops thats a header\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"FinishAddr = %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Error: Invalid State\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"#ifndef _%s_\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"#define _%s_\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"static unsigned char %s[] =\0A{\0A\09\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"0x%02x,\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"0x%02x\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"\0A#endif\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [65536 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 131, i32* %18, align 4
  store i32 1, i32* %17, align 4
  br label %23

23:                                               ; preds = %98, %2
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %101

27:                                               ; preds = %23
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %17, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %17, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %7, align 8
  br label %97

42:                                               ; preds = %27
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %17, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %8, align 8
  br label %96

57:                                               ; preds = %42
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load i8**, i8*** %5, align 8
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %9, align 8
  br label %95

72:                                               ; preds = %57
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @sscanf(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %13)
  br label %94

82:                                               ; preds = %72
  %83 = load i32, i32* %14, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @sscanf(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %14)
  br label %93

92:                                               ; preds = %82
  store i32 1, i32* %10, align 4
  br label %93

93:                                               ; preds = %92, %85
  br label %94

94:                                               ; preds = %93, %75
  br label %95

95:                                               ; preds = %94, %65
  br label %96

96:                                               ; preds = %95, %50
  br label %97

97:                                               ; preds = %96, %35
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  br label %23

101:                                              ; preds = %23
  %102 = load i8*, i8** %7, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i8*, i8** %9, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %13, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %14, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %124

119:                                              ; preds = %116, %113, %110, %107, %101
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.4, i64 0, i64 0), i8* %122)
  store i32 0, i32* %3, align 4
  br label %334

124:                                              ; preds = %116
  %125 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 0
  %126 = call i32 @memset(i8* %125, i32 0, i32 65536)
  %127 = load i8*, i8** %7, align 8
  %128 = call i32* @fopen(i8* %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %128, i32** %16, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %124
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @perror(i8* %132)
  store i32 1, i32* %3, align 4
  br label %334

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134, %207
  %136 = load i32*, i32** %16, align 8
  %137 = call i32 @fread(i8* %19, i32 1, i32 1, i32* %136)
  %138 = icmp ne i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %208

140:                                              ; preds = %135
  %141 = load i32, i32* %18, align 4
  switch i32 %141, label %205 [
    i32 131, label %142
    i32 130, label %150
    i32 128, label %158
    i32 129, label %164
    i32 132, label %178
    i32 133, label %184
    i32 134, label %194
  ]

142:                                              ; preds = %140
  %143 = load i8, i8* %19, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 255
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 130, i32* %18, align 4
  br label %149

147:                                              ; preds = %142
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %146
  br label %207

150:                                              ; preds = %140
  %151 = load i8, i8* %19, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 255
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 128, i32* %18, align 4
  br label %157

155:                                              ; preds = %150
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %154
  br label %207

158:                                              ; preds = %140
  %159 = load i32, i32* %11, align 4
  %160 = and i32 %159, 65280
  %161 = load i8, i8* %19, align 1
  %162 = zext i8 %161 to i32
  %163 = or i32 %160, %162
  store i32 %163, i32* %11, align 4
  store i32 129, i32* %18, align 4
  br label %207

164:                                              ; preds = %140
  %165 = load i32, i32* %11, align 4
  %166 = and i32 %165, 255
  %167 = load i8, i8* %19, align 1
  %168 = zext i8 %167 to i32
  %169 = shl i32 %168, 8
  %170 = or i32 %166, %169
  store i32 %170, i32* %11, align 4
  store i32 132, i32* %18, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %11, align 4
  %174 = icmp eq i32 %173, 65535
  br i1 %174, label %175, label %177

175:                                              ; preds = %164
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i32 128, i32* %18, align 4
  br label %177

177:                                              ; preds = %175, %164
  br label %207

178:                                              ; preds = %140
  %179 = load i32, i32* %12, align 4
  %180 = and i32 %179, 65280
  %181 = load i8, i8* %19, align 1
  %182 = zext i8 %181 to i32
  %183 = or i32 %180, %182
  store i32 %183, i32* %12, align 4
  store i32 133, i32* %18, align 4
  br label %207

184:                                              ; preds = %140
  %185 = load i32, i32* %12, align 4
  %186 = and i32 %185, 255
  %187 = load i8, i8* %19, align 1
  %188 = zext i8 %187 to i32
  %189 = shl i32 %188, 8
  %190 = or i32 %186, %189
  store i32 %190, i32* %12, align 4
  store i32 134, i32* %18, align 4
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %15, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %192)
  br label %207

194:                                              ; preds = %140
  %195 = load i8, i8* %19, align 1
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 %198
  store i8 %195, i8* %199, align 1
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  store i32 128, i32* %18, align 4
  br label %204

204:                                              ; preds = %203, %194
  br label %207

205:                                              ; preds = %140
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %334

207:                                              ; preds = %204, %184, %178, %177, %158, %157, %149
  br label %135

208:                                              ; preds = %139
  %209 = load i32*, i32** %16, align 8
  %210 = call i32 @fclose(i32* %209)
  %211 = load i8*, i8** %8, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %233

213:                                              ; preds = %208
  %214 = load i8*, i8** %8, align 8
  %215 = call i32* @fopen(i8* %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store i32* %215, i32** %16, align 8
  %216 = load i32*, i32** %16, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %213
  %219 = load i8*, i8** %8, align 8
  %220 = call i32 @perror(i8* %219)
  store i32 1, i32* %3, align 4
  br label %334

221:                                              ; preds = %213
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 %223
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* %13, align 4
  %227 = sub nsw i32 %225, %226
  %228 = add nsw i32 %227, 1
  %229 = load i32*, i32** %16, align 8
  %230 = call i32 @fwrite(i8* %224, i32 1, i32 %228, i32* %229)
  %231 = load i32*, i32** %16, align 8
  %232 = call i32 @fclose(i32* %231)
  br label %233

233:                                              ; preds = %221, %208
  %234 = load i8*, i8** %9, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %333

236:                                              ; preds = %233
  %237 = load i8*, i8** %9, align 8
  %238 = call i32* @fopen(i8* %237, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store i32* %238, i32** %20, align 8
  %239 = load i32*, i32** %20, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %244, label %241

241:                                              ; preds = %236
  %242 = load i8*, i8** %9, align 8
  %243 = call i32 @perror(i8* %242)
  store i32 1, i32* %3, align 4
  br label %334

244:                                              ; preds = %236
  %245 = load i8*, i8** %9, align 8
  store i8* %245, i8** %21, align 8
  br label %246

246:                                              ; preds = %283, %244
  %247 = load i8*, i8** %21, align 8
  %248 = load i8, i8* %247, align 1
  %249 = icmp ne i8 %248, 0
  br i1 %249, label %250, label %286

250:                                              ; preds = %246
  %251 = load i8*, i8** %21, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp sge i32 %253, 97
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load i8*, i8** %21, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp sle i32 %258, 122
  br i1 %259, label %282, label %260

260:                                              ; preds = %255, %250
  %261 = load i8*, i8** %21, align 8
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp sge i32 %263, 65
  br i1 %264, label %265, label %270

265:                                              ; preds = %260
  %266 = load i8*, i8** %21, align 8
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp sle i32 %268, 90
  br i1 %269, label %282, label %270

270:                                              ; preds = %265, %260
  %271 = load i8*, i8** %21, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp sge i32 %273, 48
  br i1 %274, label %275, label %280

275:                                              ; preds = %270
  %276 = load i8*, i8** %21, align 8
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp sle i32 %278, 57
  br i1 %279, label %282, label %280

280:                                              ; preds = %275, %270
  %281 = load i8*, i8** %21, align 8
  store i8 95, i8* %281, align 1
  br label %282

282:                                              ; preds = %280, %275, %265, %255
  br label %283

283:                                              ; preds = %282
  %284 = load i8*, i8** %21, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %21, align 8
  br label %246

286:                                              ; preds = %246
  %287 = load i32*, i32** %20, align 8
  %288 = load i8*, i8** %9, align 8
  %289 = call i32 (i32*, i8*, ...) @fprintf(i32* %287, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %288)
  %290 = load i32*, i32** %20, align 8
  %291 = load i8*, i8** %9, align 8
  %292 = call i32 (i32*, i8*, ...) @fprintf(i32* %290, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %291)
  %293 = load i32*, i32** %20, align 8
  %294 = load i8*, i8** %9, align 8
  %295 = call i32 (i32*, i8*, ...) @fprintf(i32* %293, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* %294)
  %296 = load i32, i32* %13, align 4
  store i32 %296, i32* %17, align 4
  store i32 0, i32* %22, align 4
  br label %297

297:                                              ; preds = %316, %286
  %298 = load i32, i32* %17, align 4
  %299 = load i32, i32* %14, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %319

301:                                              ; preds = %297
  %302 = load i32*, i32** %20, align 8
  %303 = load i32, i32* %17, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 %304
  %306 = load i8, i8* %305, align 1
  %307 = zext i8 %306 to i32
  %308 = call i32 (i32*, i8*, ...) @fprintf(i32* %302, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %307)
  %309 = load i32, i32* %22, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %22, align 4
  %311 = icmp eq i32 %310, 8
  br i1 %311, label %312, label %315

312:                                              ; preds = %301
  %313 = load i32*, i32** %20, align 8
  %314 = call i32 (i32*, i8*, ...) @fprintf(i32* %313, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %22, align 4
  br label %315

315:                                              ; preds = %312, %301
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %17, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %17, align 4
  br label %297

319:                                              ; preds = %297
  %320 = load i32*, i32** %20, align 8
  %321 = load i32, i32* %14, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = call i32 (i32*, i8*, ...) @fprintf(i32* %320, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %325)
  %327 = load i32*, i32** %20, align 8
  %328 = call i32 (i32*, i8*, ...) @fprintf(i32* %327, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %329 = load i32*, i32** %20, align 8
  %330 = call i32 (i32*, i8*, ...) @fprintf(i32* %329, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %331 = load i32*, i32** %20, align 8
  %332 = call i32 @fclose(i32* %331)
  br label %333

333:                                              ; preds = %319, %233
  store i32 0, i32* %3, align 4
  br label %334

334:                                              ; preds = %333, %241, %218, %205, %131, %119
  %335 = load i32, i32* %3, align 4
  ret i32 %335
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
