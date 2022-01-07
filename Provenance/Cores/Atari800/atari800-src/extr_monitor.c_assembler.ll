; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_assembler.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_assembler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"Simple assembler (enter empty line to exit)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%04X: \00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" \09$@#(),\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Invalid operand!\0A\00", align 1
@instr6502 = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Branch out of range!\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ASL\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"LSR\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ROL\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ROR\00", align 1
@.str.9 = private unnamed_addr constant [82 x i8] c"\22%s A\22 is ambiguous.\0AUse \22%s\22 for accumulator mode or \22%s 0A\22 for zeropage mode.\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Invalid instruction!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @assembler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assembler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [7 x i8], align 1
  store i32 %0, i32* %2, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %288, %150, %1
  store i32 0, i32* %11, align 4
  %15 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @snprintf(i8* %15, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %19 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %20 = call i32 @safe_gets(i8* %18, i32 128, i8* %19)
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %22 = load i8, i8* %21, align 16
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26

27:                                               ; preds = %14
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %29 = call i32 @Util_strupper(i8* %28)
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  store i8* %30, i8** %5, align 8
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  store i8* %31, i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %48, %27
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ false, %32 ], [ %39, %35 ]
  br i1 %41, label %42, label %51

42:                                               ; preds = %40
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  %45 = load i8, i8* %43, align 1
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  store i8 %45, i8* %46, align 1
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %32

51:                                               ; preds = %40
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  store i8 32, i8* %52, align 1
  store i8* null, i8** %8, align 8
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %132, %51
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %133

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %74 [
    i32 32, label %64
    i32 9, label %64
    i32 36, label %64
    i32 64, label %64
    i32 35, label %67
    i32 40, label %67
    i32 41, label %67
    i32 44, label %67
  ]

64:                                               ; preds = %60, %60, %60, %60
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  br label %132

67:                                               ; preds = %60, %60, %60, %60
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %10, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  %71 = load i8, i8* %69, align 1
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  store i8 %71, i8* %72, align 1
  br label %132

74:                                               ; preds = %60
  %75 = load i8*, i8** %8, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i8*, i8** %5, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 88
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 89
  br i1 %86, label %87, label %93

87:                                               ; preds = %82, %77
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %5, align 8
  %90 = load i8, i8* %88, align 1
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %6, align 8
  store i8 %90, i8* %91, align 1
  br label %132

93:                                               ; preds = %82
  br label %286

94:                                               ; preds = %74
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  store i8* %95, i8** %7, align 8
  br label %96

96:                                               ; preds = %112, %94
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %5, align 8
  %99 = load i8, i8* %97, align 1
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %7, align 8
  store i8 %99, i8* %100, align 1
  br label %102

102:                                              ; preds = %96
  %103 = load i8*, i8** %5, align 8
  %104 = load i8, i8* %103, align 1
  %105 = call i32* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8 signext %104)
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8*, i8** %5, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %107, %102
  %113 = phi i1 [ false, %102 ], [ %111, %107 ]
  br i1 %113, label %96, label %114

114:                                              ; preds = %112
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %7, align 8
  store i8 0, i8* %115, align 1
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 8
  store i8* %117, i8** %8, align 8
  %119 = load i8*, i8** %8, align 8
  store i8 48, i8* %119, align 1
  %120 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %121 = load i8, i8* %120, align 16
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 65
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br label %129

129:                                              ; preds = %124, %114
  %130 = phi i1 [ false, %114 ], [ %128, %124 ]
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %129, %87, %67, %64
  br label %55

133:                                              ; preds = %55
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 -1
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 32
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 -1
  store i8* %141, i8** %6, align 8
  br label %142

142:                                              ; preds = %139, %133
  %143 = load i8*, i8** %6, align 8
  store i8 0, i8* %143, align 1
  %144 = load i8*, i8** %8, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %148 = call i32 @parse_hex(i8* %147, i32* %11)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %14

152:                                              ; preds = %146, %142
  br label %153

153:                                              ; preds = %284, %152
  store i32 0, i32* %9, align 4
  br label %154

154:                                              ; preds = %261, %153
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %155, 256
  br i1 %156, label %157, label %264

157:                                              ; preds = %154
  %158 = load i8**, i8*** @instr6502, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %164 = call i64 @strcmp(i8* %162, i8* %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %260

166:                                              ; preds = %157
  %167 = load i8*, i8** %8, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i32, i32* %2, align 4
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @MEMORY_dPutByte(i32 %170, i32 %171)
  %173 = load i32, i32* %2, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %2, align 4
  br label %259

175:                                              ; preds = %166
  %176 = load i8*, i8** %8, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 48
  br i1 %179, label %180, label %204

180:                                              ; preds = %175
  %181 = load i32, i32* %2, align 4
  %182 = add nsw i32 %181, 2
  %183 = load i32, i32* %11, align 4
  %184 = sub nsw i32 %183, %182
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp slt i32 %185, -128
  br i1 %186, label %190, label %187

187:                                              ; preds = %180
  %188 = load i32, i32* %11, align 4
  %189 = icmp sgt i32 %188, 127
  br i1 %189, label %190, label %192

190:                                              ; preds = %187, %180
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %203

192:                                              ; preds = %187
  %193 = load i32, i32* %2, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @MEMORY_dPutByte(i32 %193, i32 %194)
  %196 = load i32, i32* %2, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %2, align 4
  %198 = load i32, i32* %2, align 4
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @MEMORY_dPutByte(i32 %198, i32 %199)
  %201 = load i32, i32* %2, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %192, %190
  br label %258

204:                                              ; preds = %175
  %205 = load i8*, i8** %8, align 8
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 49
  br i1 %208, label %209, label %246

209:                                              ; preds = %204
  %210 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 3
  store i8 0, i8* %210, align 1
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %234

213:                                              ; preds = %209
  %214 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %215 = call i64 @strcmp(i8* %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %229, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %219 = call i64 @strcmp(i8* %218, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %223 = call i64 @strcmp(i8* %222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %227 = call i64 @strcmp(i8* %226, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %225, %221, %217, %213
  %230 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %231 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %232 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.9, i64 0, i64 0), i8* %230, i8* %231, i8* %232)
  br label %245

234:                                              ; preds = %225, %209
  %235 = load i32, i32* %2, align 4
  %236 = load i32, i32* %9, align 4
  %237 = call i32 @MEMORY_dPutByte(i32 %235, i32 %236)
  %238 = load i32, i32* %2, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %2, align 4
  %240 = load i32, i32* %2, align 4
  %241 = load i32, i32* %11, align 4
  %242 = call i32 @MEMORY_dPutByte(i32 %240, i32 %241)
  %243 = load i32, i32* %2, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %234, %229
  br label %257

246:                                              ; preds = %204
  %247 = load i32, i32* %2, align 4
  %248 = load i32, i32* %9, align 4
  %249 = call i32 @MEMORY_dPutByte(i32 %247, i32 %248)
  %250 = load i32, i32* %2, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %2, align 4
  %252 = load i32, i32* %2, align 4
  %253 = load i32, i32* %11, align 4
  %254 = call i32 @MEMORY_dPutWord(i32 %252, i32 %253)
  %255 = load i32, i32* %2, align 4
  %256 = add nsw i32 %255, 2
  store i32 %256, i32* %2, align 4
  br label %257

257:                                              ; preds = %246, %245
  br label %258

258:                                              ; preds = %257, %203
  br label %259

259:                                              ; preds = %258, %169
  br label %288

260:                                              ; preds = %157
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %9, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %9, align 4
  br label %154

264:                                              ; preds = %154
  %265 = load i8*, i8** %8, align 8
  %266 = icmp eq i8* %265, null
  br i1 %266, label %272, label %267

267:                                              ; preds = %264
  %268 = load i8*, i8** %8, align 8
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 50
  br i1 %271, label %272, label %273

272:                                              ; preds = %267, %264
  br label %285

273:                                              ; preds = %267
  %274 = load i8*, i8** %8, align 8
  %275 = load i8, i8* %274, align 1
  %276 = add i8 %275, 1
  store i8 %276, i8* %274, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %277, 49
  br i1 %278, label %279, label %284

279:                                              ; preds = %273
  %280 = load i32, i32* %11, align 4
  %281 = icmp sgt i32 %280, 255
  br i1 %281, label %282, label %284

282:                                              ; preds = %279
  %283 = load i8*, i8** %8, align 8
  store i8 50, i8* %283, align 1
  br label %284

284:                                              ; preds = %282, %279, %273
  br label %153

285:                                              ; preds = %272
  br label %286

286:                                              ; preds = %285, %93
  %287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %288

288:                                              ; preds = %286, %259
  br label %14
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @safe_gets(i8*, i32, i8*) #1

declare dso_local i32 @Util_strupper(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_hex(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @MEMORY_dPutByte(i32, i32) #1

declare dso_local i32 @MEMORY_dPutWord(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
