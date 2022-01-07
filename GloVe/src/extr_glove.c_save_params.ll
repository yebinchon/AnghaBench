; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_glove.c_save_params.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_glove.c_save_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STRING_LENGTH = common dso_local global i32 0, align 4
@use_binary = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.bin\00", align 1
@save_W_file = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%s.%03d.bin\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to open file %s.\0A\00", align 1
@vocab_size = common dso_local global i64 0, align 8
@vector_size = common dso_local global i32 0, align 4
@W = common dso_local global i32* null, align 8
@save_gradsq = common dso_local global i64 0, align 8
@save_gradsq_file = common dso_local global i8* null, align 8
@gradsq = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%s.txt\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s.%03d.txt\00", align 1
@vocab_file = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%%%ds\00", align 1
@write_header = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"%lld %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"<unk>\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@model = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c" %lf\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@use_unk_vec = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @save_params(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %18 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %25 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 1, %26
  %28 = add i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = call i8* @malloc(i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i32, i32* @use_binary, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %120

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** @save_W_file, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %43

39:                                               ; preds = %33
  %40 = load i8*, i8** @save_W_file, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* @stderr, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i32*
  %51 = load i8*, i8** @save_W_file, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %580

53:                                               ; preds = %43
  store i64 0, i64* %4, align 8
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @vocab_size, align 8
  %57 = mul nsw i64 2, %56
  %58 = load i32, i32* @vector_size, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %57, %60
  %62 = icmp slt i64 %55, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load i32*, i32** @W, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @fwrite(i32* %66, i32 4, i32 1, i32* %67)
  br label %69

69:                                               ; preds = %63
  %70 = load i64, i64* %4, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %4, align 8
  br label %54

72:                                               ; preds = %54
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @fclose(i32* %73)
  %75 = load i64, i64* @save_gradsq, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %119

77:                                               ; preds = %72
  %78 = load i32, i32* %3, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i8*, i8** @save_gradsq_file, align 8
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %81)
  br label %87

83:                                               ; preds = %77
  %84 = load i8*, i8** @save_gradsq_file, align 8
  %85 = load i32, i32* %3, align 4
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %80
  %88 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %88, i32** %13, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* @stderr, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i32*
  %95 = load i8*, i8** @save_gradsq_file, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %580

97:                                               ; preds = %87
  store i64 0, i64* %4, align 8
  br label %98

98:                                               ; preds = %113, %97
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @vocab_size, align 8
  %101 = mul nsw i64 2, %100
  %102 = load i32, i32* @vector_size, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %101, %104
  %106 = icmp slt i64 %99, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %98
  %108 = load i32*, i32** @gradsq, align 8
  %109 = load i64, i64* %4, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @fwrite(i32* %110, i32 4, i32 1, i32* %111)
  br label %113

113:                                              ; preds = %107
  %114 = load i64, i64* %4, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %4, align 8
  br label %98

116:                                              ; preds = %98
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @fclose(i32* %117)
  br label %119

119:                                              ; preds = %116, %72
  br label %120

120:                                              ; preds = %119, %1
  %121 = load i32, i32* @use_binary, align 4
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %123, label %579

123:                                              ; preds = %120
  %124 = load i32, i32* %3, align 4
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i8*, i8** @save_W_file, align 8
  %128 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %127)
  br label %133

129:                                              ; preds = %123
  %130 = load i8*, i8** @save_W_file, align 8
  %131 = load i32, i32* %3, align 4
  %132 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i64, i64* @save_gradsq, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %157

136:                                              ; preds = %133
  %137 = load i32, i32* %3, align 4
  %138 = icmp sle i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i8*, i8** @save_gradsq_file, align 8
  %141 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %140)
  br label %146

142:                                              ; preds = %136
  %143 = load i8*, i8** @save_gradsq_file, align 8
  %144 = load i32, i32* %3, align 4
  %145 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %139
  %147 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %147, i32** %13, align 8
  %148 = load i32*, i32** %13, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load i32, i32* @stderr, align 4
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i32*
  %154 = load i8*, i8** @save_gradsq_file, align 8
  %155 = call i32 (i32*, i8*, ...) @fprintf(i32* %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %154)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %580

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %133
  %158 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %158, i32** %12, align 8
  %159 = load i32*, i32** %12, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load i32, i32* @stderr, align 4
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i32*
  %165 = load i8*, i8** @save_W_file, align 8
  %166 = call i32 (i32*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %165)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %580

167:                                              ; preds = %157
  %168 = load i8*, i8** @vocab_file, align 8
  %169 = call i32* @fopen(i8* %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %169, i32** %11, align 8
  %170 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %171 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %172 = call i32 (i8*, i8*, ...) @sprintf(i8* %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %171)
  %173 = load i32*, i32** %11, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = load i32, i32* @stderr, align 4
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i32*
  %179 = load i8*, i8** @vocab_file, align 8
  %180 = call i32 (i32*, i8*, ...) @fprintf(i32* %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %179)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %580

181:                                              ; preds = %167
  %182 = load i64, i64* @write_header, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load i32*, i32** %12, align 8
  %186 = load i64, i64* @vocab_size, align 8
  %187 = load i32, i32* @vector_size, align 4
  %188 = call i32 (i32*, i8*, ...) @fprintf(i32* %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 %186, i32 %187)
  br label %189

189:                                              ; preds = %184, %181
  store i64 0, i64* %4, align 8
  br label %190

190:                                              ; preds = %393, %189
  %191 = load i64, i64* %4, align 8
  %192 = load i64, i64* @vocab_size, align 8
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %194, label %396

194:                                              ; preds = %190
  %195 = load i32*, i32** %11, align 8
  %196 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %197 = load i8*, i8** %10, align 8
  %198 = call i64 @fscanf(i32* %195, i8* %196, i8* %197)
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %580

201:                                              ; preds = %194
  %202 = load i8*, i8** %10, align 8
  %203 = call i64 @strcmp(i8* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %580

206:                                              ; preds = %201
  %207 = load i32*, i32** %12, align 8
  %208 = load i8*, i8** %10, align 8
  %209 = call i32 (i32*, i8*, ...) @fprintf(i32* %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %208)
  %210 = load i32, i32* @model, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %261

212:                                              ; preds = %206
  store i64 0, i64* %5, align 8
  br label %213

213:                                              ; preds = %232, %212
  %214 = load i64, i64* %5, align 8
  %215 = load i32, i32* @vector_size, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = icmp slt i64 %214, %217
  br i1 %218, label %219, label %235

219:                                              ; preds = %213
  %220 = load i32*, i32** %12, align 8
  %221 = load i32*, i32** @W, align 8
  %222 = load i64, i64* %4, align 8
  %223 = load i32, i32* @vector_size, align 4
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = mul nsw i64 %222, %225
  %227 = load i64, i64* %5, align 8
  %228 = add nsw i64 %226, %227
  %229 = getelementptr inbounds i32, i32* %221, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i32*, i8*, ...) @fprintf(i32* %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %219
  %233 = load i64, i64* %5, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %5, align 8
  br label %213

235:                                              ; preds = %213
  store i64 0, i64* %5, align 8
  br label %236

236:                                              ; preds = %257, %235
  %237 = load i64, i64* %5, align 8
  %238 = load i32, i32* @vector_size, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = icmp slt i64 %237, %240
  br i1 %241, label %242, label %260

242:                                              ; preds = %236
  %243 = load i32*, i32** %12, align 8
  %244 = load i32*, i32** @W, align 8
  %245 = load i64, i64* @vocab_size, align 8
  %246 = load i64, i64* %4, align 8
  %247 = add nsw i64 %245, %246
  %248 = load i32, i32* @vector_size, align 4
  %249 = add nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = mul nsw i64 %247, %250
  %252 = load i64, i64* %5, align 8
  %253 = add nsw i64 %251, %252
  %254 = getelementptr inbounds i32, i32* %244, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (i32*, i8*, ...) @fprintf(i32* %243, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %242
  %258 = load i64, i64* %5, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* %5, align 8
  br label %236

260:                                              ; preds = %236
  br label %261

261:                                              ; preds = %260, %206
  %262 = load i32, i32* @model, align 4
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %287

264:                                              ; preds = %261
  store i64 0, i64* %5, align 8
  br label %265

265:                                              ; preds = %283, %264
  %266 = load i64, i64* %5, align 8
  %267 = load i32, i32* @vector_size, align 4
  %268 = sext i32 %267 to i64
  %269 = icmp slt i64 %266, %268
  br i1 %269, label %270, label %286

270:                                              ; preds = %265
  %271 = load i32*, i32** %12, align 8
  %272 = load i32*, i32** @W, align 8
  %273 = load i64, i64* %4, align 8
  %274 = load i32, i32* @vector_size, align 4
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = mul nsw i64 %273, %276
  %278 = load i64, i64* %5, align 8
  %279 = add nsw i64 %277, %278
  %280 = getelementptr inbounds i32, i32* %272, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i32*, i8*, ...) @fprintf(i32* %271, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %281)
  br label %283

283:                                              ; preds = %270
  %284 = load i64, i64* %5, align 8
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %5, align 8
  br label %265

286:                                              ; preds = %265
  br label %287

287:                                              ; preds = %286, %261
  %288 = load i32, i32* @model, align 4
  %289 = icmp eq i32 %288, 2
  br i1 %289, label %290, label %326

290:                                              ; preds = %287
  store i64 0, i64* %5, align 8
  br label %291

291:                                              ; preds = %322, %290
  %292 = load i64, i64* %5, align 8
  %293 = load i32, i32* @vector_size, align 4
  %294 = sext i32 %293 to i64
  %295 = icmp slt i64 %292, %294
  br i1 %295, label %296, label %325

296:                                              ; preds = %291
  %297 = load i32*, i32** %12, align 8
  %298 = load i32*, i32** @W, align 8
  %299 = load i64, i64* %4, align 8
  %300 = load i32, i32* @vector_size, align 4
  %301 = add nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = mul nsw i64 %299, %302
  %304 = load i64, i64* %5, align 8
  %305 = add nsw i64 %303, %304
  %306 = getelementptr inbounds i32, i32* %298, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32*, i32** @W, align 8
  %309 = load i64, i64* @vocab_size, align 8
  %310 = load i64, i64* %4, align 8
  %311 = add nsw i64 %309, %310
  %312 = load i32, i32* @vector_size, align 4
  %313 = add nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = mul nsw i64 %311, %314
  %316 = load i64, i64* %5, align 8
  %317 = add nsw i64 %315, %316
  %318 = getelementptr inbounds i32, i32* %308, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %307, %319
  %321 = call i32 (i32*, i8*, ...) @fprintf(i32* %297, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %320)
  br label %322

322:                                              ; preds = %296
  %323 = load i64, i64* %5, align 8
  %324 = add nsw i64 %323, 1
  store i64 %324, i64* %5, align 8
  br label %291

325:                                              ; preds = %291
  br label %326

326:                                              ; preds = %325, %287
  %327 = load i32*, i32** %12, align 8
  %328 = call i32 (i32*, i8*, ...) @fprintf(i32* %327, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %329 = load i64, i64* @save_gradsq, align 8
  %330 = icmp sgt i64 %329, 0
  br i1 %330, label %331, label %385

331:                                              ; preds = %326
  %332 = load i32*, i32** %13, align 8
  %333 = load i8*, i8** %10, align 8
  %334 = call i32 (i32*, i8*, ...) @fprintf(i32* %332, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %333)
  store i64 0, i64* %5, align 8
  br label %335

335:                                              ; preds = %354, %331
  %336 = load i64, i64* %5, align 8
  %337 = load i32, i32* @vector_size, align 4
  %338 = add nsw i32 %337, 1
  %339 = sext i32 %338 to i64
  %340 = icmp slt i64 %336, %339
  br i1 %340, label %341, label %357

341:                                              ; preds = %335
  %342 = load i32*, i32** %13, align 8
  %343 = load i32*, i32** @gradsq, align 8
  %344 = load i64, i64* %4, align 8
  %345 = load i32, i32* @vector_size, align 4
  %346 = add nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = mul nsw i64 %344, %347
  %349 = load i64, i64* %5, align 8
  %350 = add nsw i64 %348, %349
  %351 = getelementptr inbounds i32, i32* %343, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = call i32 (i32*, i8*, ...) @fprintf(i32* %342, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %352)
  br label %354

354:                                              ; preds = %341
  %355 = load i64, i64* %5, align 8
  %356 = add nsw i64 %355, 1
  store i64 %356, i64* %5, align 8
  br label %335

357:                                              ; preds = %335
  store i64 0, i64* %5, align 8
  br label %358

358:                                              ; preds = %379, %357
  %359 = load i64, i64* %5, align 8
  %360 = load i32, i32* @vector_size, align 4
  %361 = add nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = icmp slt i64 %359, %362
  br i1 %363, label %364, label %382

364:                                              ; preds = %358
  %365 = load i32*, i32** %13, align 8
  %366 = load i32*, i32** @gradsq, align 8
  %367 = load i64, i64* @vocab_size, align 8
  %368 = load i64, i64* %4, align 8
  %369 = add nsw i64 %367, %368
  %370 = load i32, i32* @vector_size, align 4
  %371 = add nsw i32 %370, 1
  %372 = sext i32 %371 to i64
  %373 = mul nsw i64 %369, %372
  %374 = load i64, i64* %5, align 8
  %375 = add nsw i64 %373, %374
  %376 = getelementptr inbounds i32, i32* %366, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = call i32 (i32*, i8*, ...) @fprintf(i32* %365, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %377)
  br label %379

379:                                              ; preds = %364
  %380 = load i64, i64* %5, align 8
  %381 = add nsw i64 %380, 1
  store i64 %381, i64* %5, align 8
  br label %358

382:                                              ; preds = %358
  %383 = load i32*, i32** %13, align 8
  %384 = call i32 (i32*, i8*, ...) @fprintf(i32* %383, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %385

385:                                              ; preds = %382, %326
  %386 = load i32*, i32** %11, align 8
  %387 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %388 = load i8*, i8** %10, align 8
  %389 = call i64 @fscanf(i32* %386, i8* %387, i8* %388)
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %385
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %580

392:                                              ; preds = %385
  br label %393

393:                                              ; preds = %392
  %394 = load i64, i64* %4, align 8
  %395 = add nsw i64 %394, 1
  store i64 %395, i64* %4, align 8
  br label %190

396:                                              ; preds = %190
  %397 = load i64, i64* @use_unk_vec, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %568

399:                                              ; preds = %396
  %400 = load i32, i32* @vector_size, align 4
  %401 = add nsw i32 %400, 1
  %402 = call i64 @calloc(i32 %401, i32 4)
  %403 = inttoptr i64 %402 to i32*
  store i32* %403, i32** %15, align 8
  %404 = load i32, i32* @vector_size, align 4
  %405 = add nsw i32 %404, 1
  %406 = call i64 @calloc(i32 %405, i32 4)
  %407 = inttoptr i64 %406 to i32*
  store i32* %407, i32** %16, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  %408 = load i64, i64* @vocab_size, align 8
  %409 = icmp slt i64 %408, 100
  br i1 %409, label %410, label %412

410:                                              ; preds = %399
  %411 = load i64, i64* @vocab_size, align 8
  br label %413

412:                                              ; preds = %399
  br label %413

413:                                              ; preds = %412, %410
  %414 = phi i64 [ %411, %410 ], [ 100, %412 ]
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %17, align 4
  %416 = load i64, i64* @vocab_size, align 8
  %417 = load i32, i32* %17, align 4
  %418 = sext i32 %417 to i64
  %419 = sub nsw i64 %416, %418
  store i64 %419, i64* %4, align 8
  br label %420

420:                                              ; preds = %472, %413
  %421 = load i64, i64* %4, align 8
  %422 = load i64, i64* @vocab_size, align 8
  %423 = icmp slt i64 %421, %422
  br i1 %423, label %424, label %475

424:                                              ; preds = %420
  store i64 0, i64* %5, align 8
  br label %425

425:                                              ; preds = %468, %424
  %426 = load i64, i64* %5, align 8
  %427 = load i32, i32* @vector_size, align 4
  %428 = add nsw i32 %427, 1
  %429 = sext i32 %428 to i64
  %430 = icmp slt i64 %426, %429
  br i1 %430, label %431, label %471

431:                                              ; preds = %425
  %432 = load i32*, i32** @W, align 8
  %433 = load i64, i64* %4, align 8
  %434 = load i32, i32* @vector_size, align 4
  %435 = add nsw i32 %434, 1
  %436 = sext i32 %435 to i64
  %437 = mul nsw i64 %433, %436
  %438 = load i64, i64* %5, align 8
  %439 = add nsw i64 %437, %438
  %440 = getelementptr inbounds i32, i32* %432, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* %17, align 4
  %443 = sdiv i32 %441, %442
  %444 = load i32*, i32** %15, align 8
  %445 = load i64, i64* %5, align 8
  %446 = getelementptr inbounds i32, i32* %444, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %447, %443
  store i32 %448, i32* %446, align 4
  %449 = load i32*, i32** @W, align 8
  %450 = load i64, i64* @vocab_size, align 8
  %451 = load i64, i64* %4, align 8
  %452 = add nsw i64 %450, %451
  %453 = load i32, i32* @vector_size, align 4
  %454 = add nsw i32 %453, 1
  %455 = sext i32 %454 to i64
  %456 = mul nsw i64 %452, %455
  %457 = load i64, i64* %5, align 8
  %458 = add nsw i64 %456, %457
  %459 = getelementptr inbounds i32, i32* %449, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* %17, align 4
  %462 = sdiv i32 %460, %461
  %463 = load i32*, i32** %16, align 8
  %464 = load i64, i64* %5, align 8
  %465 = getelementptr inbounds i32, i32* %463, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = add nsw i32 %466, %462
  store i32 %467, i32* %465, align 4
  br label %468

468:                                              ; preds = %431
  %469 = load i64, i64* %5, align 8
  %470 = add nsw i64 %469, 1
  store i64 %470, i64* %5, align 8
  br label %425

471:                                              ; preds = %425
  br label %472

472:                                              ; preds = %471
  %473 = load i64, i64* %4, align 8
  %474 = add nsw i64 %473, 1
  store i64 %474, i64* %4, align 8
  br label %420

475:                                              ; preds = %420
  %476 = load i32*, i32** %12, align 8
  %477 = load i8*, i8** %10, align 8
  %478 = call i32 (i32*, i8*, ...) @fprintf(i32* %476, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %477)
  %479 = load i32, i32* @model, align 4
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %516

481:                                              ; preds = %475
  store i64 0, i64* %5, align 8
  br label %482

482:                                              ; preds = %495, %481
  %483 = load i64, i64* %5, align 8
  %484 = load i32, i32* @vector_size, align 4
  %485 = add nsw i32 %484, 1
  %486 = sext i32 %485 to i64
  %487 = icmp slt i64 %483, %486
  br i1 %487, label %488, label %498

488:                                              ; preds = %482
  %489 = load i32*, i32** %12, align 8
  %490 = load i32*, i32** %15, align 8
  %491 = load i64, i64* %5, align 8
  %492 = getelementptr inbounds i32, i32* %490, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = call i32 (i32*, i8*, ...) @fprintf(i32* %489, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %493)
  br label %495

495:                                              ; preds = %488
  %496 = load i64, i64* %5, align 8
  %497 = add nsw i64 %496, 1
  store i64 %497, i64* %5, align 8
  br label %482

498:                                              ; preds = %482
  store i64 0, i64* %5, align 8
  br label %499

499:                                              ; preds = %512, %498
  %500 = load i64, i64* %5, align 8
  %501 = load i32, i32* @vector_size, align 4
  %502 = add nsw i32 %501, 1
  %503 = sext i32 %502 to i64
  %504 = icmp slt i64 %500, %503
  br i1 %504, label %505, label %515

505:                                              ; preds = %499
  %506 = load i32*, i32** %12, align 8
  %507 = load i32*, i32** %16, align 8
  %508 = load i64, i64* %5, align 8
  %509 = getelementptr inbounds i32, i32* %507, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = call i32 (i32*, i8*, ...) @fprintf(i32* %506, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %510)
  br label %512

512:                                              ; preds = %505
  %513 = load i64, i64* %5, align 8
  %514 = add nsw i64 %513, 1
  store i64 %514, i64* %5, align 8
  br label %499

515:                                              ; preds = %499
  br label %516

516:                                              ; preds = %515, %475
  %517 = load i32, i32* @model, align 4
  %518 = icmp eq i32 %517, 1
  br i1 %518, label %519, label %536

519:                                              ; preds = %516
  store i64 0, i64* %5, align 8
  br label %520

520:                                              ; preds = %532, %519
  %521 = load i64, i64* %5, align 8
  %522 = load i32, i32* @vector_size, align 4
  %523 = sext i32 %522 to i64
  %524 = icmp slt i64 %521, %523
  br i1 %524, label %525, label %535

525:                                              ; preds = %520
  %526 = load i32*, i32** %12, align 8
  %527 = load i32*, i32** %15, align 8
  %528 = load i64, i64* %5, align 8
  %529 = getelementptr inbounds i32, i32* %527, i64 %528
  %530 = load i32, i32* %529, align 4
  %531 = call i32 (i32*, i8*, ...) @fprintf(i32* %526, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %530)
  br label %532

532:                                              ; preds = %525
  %533 = load i64, i64* %5, align 8
  %534 = add nsw i64 %533, 1
  store i64 %534, i64* %5, align 8
  br label %520

535:                                              ; preds = %520
  br label %536

536:                                              ; preds = %535, %516
  %537 = load i32, i32* @model, align 4
  %538 = icmp eq i32 %537, 2
  br i1 %538, label %539, label %561

539:                                              ; preds = %536
  store i64 0, i64* %5, align 8
  br label %540

540:                                              ; preds = %557, %539
  %541 = load i64, i64* %5, align 8
  %542 = load i32, i32* @vector_size, align 4
  %543 = sext i32 %542 to i64
  %544 = icmp slt i64 %541, %543
  br i1 %544, label %545, label %560

545:                                              ; preds = %540
  %546 = load i32*, i32** %12, align 8
  %547 = load i32*, i32** %15, align 8
  %548 = load i64, i64* %5, align 8
  %549 = getelementptr inbounds i32, i32* %547, i64 %548
  %550 = load i32, i32* %549, align 4
  %551 = load i32*, i32** %16, align 8
  %552 = load i64, i64* %5, align 8
  %553 = getelementptr inbounds i32, i32* %551, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = add nsw i32 %550, %554
  %556 = call i32 (i32*, i8*, ...) @fprintf(i32* %546, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %555)
  br label %557

557:                                              ; preds = %545
  %558 = load i64, i64* %5, align 8
  %559 = add nsw i64 %558, 1
  store i64 %559, i64* %5, align 8
  br label %540

560:                                              ; preds = %540
  br label %561

561:                                              ; preds = %560, %536
  %562 = load i32*, i32** %12, align 8
  %563 = call i32 (i32*, i8*, ...) @fprintf(i32* %562, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %564 = load i32*, i32** %15, align 8
  %565 = call i32 @free(i32* %564)
  %566 = load i32*, i32** %16, align 8
  %567 = call i32 @free(i32* %566)
  br label %568

568:                                              ; preds = %561, %396
  %569 = load i32*, i32** %11, align 8
  %570 = call i32 @fclose(i32* %569)
  %571 = load i32*, i32** %12, align 8
  %572 = call i32 @fclose(i32* %571)
  %573 = load i64, i64* @save_gradsq, align 8
  %574 = icmp sgt i64 %573, 0
  br i1 %574, label %575, label %578

575:                                              ; preds = %568
  %576 = load i32*, i32** %13, align 8
  %577 = call i32 @fclose(i32* %576)
  br label %578

578:                                              ; preds = %575, %568
  br label %579

579:                                              ; preds = %578, %120
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %580

580:                                              ; preds = %579, %391, %205, %200, %175, %161, %150, %91, %47
  %581 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %581)
  %582 = load i32, i32* %2, align 4
  ret i32 %582
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @fscanf(i32*, i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
