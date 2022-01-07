; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_classifier.c_run_classifier.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_classifier.c_run_classifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"usage: %s %s [train/test/valid] [cfg] [weights (optional)]\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-gpus\00", align 1
@gpu_index = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-clear\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"predict\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"fout\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"demo\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"gun\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"threat\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"csv\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"validmulti\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"valid10\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"validcrop\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"validfull\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_classifier(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %26)
  br label %279

28:                                               ; preds = %2
  %29 = load i32, i32* %3, align 4
  %30 = load i8**, i8*** %4, align 8
  %31 = call i8* @find_char_arg(i32 %29, i8** %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @gpu_index, align 4
  %34 = call i32* @read_intlist(i8* %32, i32* %6, i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i8**, i8*** %4, align 8
  %37 = call i32 @find_int_arg(i32 %35, i8** %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i8**, i8*** %4, align 8
  %40 = call i32 @find_int_arg(i32 %38, i8** %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i8**, i8*** %4, align 8
  %43 = call i32 @find_arg(i32 %41, i8** %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %43, i32* %10, align 4
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 3
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %11, align 8
  %47 = load i8**, i8*** %4, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 4
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %12, align 8
  %50 = load i32, i32* %3, align 4
  %51 = icmp sgt i32 %50, 5
  br i1 %51, label %52, label %56

52:                                               ; preds = %28
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 5
  %55 = load i8*, i8** %54, align 8
  br label %57

56:                                               ; preds = %28
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i8* [ %55, %52 ], [ null, %56 ]
  store i8* %58, i8** %13, align 8
  %59 = load i32, i32* %3, align 4
  %60 = icmp sgt i32 %59, 6
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i8**, i8*** %4, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 6
  %64 = load i8*, i8** %63, align 8
  br label %66

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i8* [ %64, %61 ], [ null, %65 ]
  store i8* %67, i8** %14, align 8
  %68 = load i32, i32* %3, align 4
  %69 = icmp sgt i32 %68, 7
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8**, i8*** %4, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 7
  %73 = load i8*, i8** %72, align 8
  br label %75

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i8* [ %73, %70 ], [ null, %74 ]
  store i8* %76, i8** %15, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @atoi(i8* %80)
  br label %83

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %79
  %84 = phi i32 [ %81, %79 ], [ -1, %82 ]
  store i32 %84, i32* %16, align 4
  %85 = load i8**, i8*** %4, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %89 = icmp eq i64 0, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load i8*, i8** %11, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @predict_classifier(i8* %91, i8* %92, i8* %93, i8* %94, i32 %95)
  br label %279

97:                                               ; preds = %83
  %98 = load i8**, i8*** %4, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %102 = icmp eq i64 0, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i8*, i8** %11, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 @file_output_classifier(i8* %104, i8* %105, i8* %106, i8* %107)
  br label %278

109:                                              ; preds = %97
  %110 = load i8**, i8*** %4, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 2
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %114 = icmp eq i64 0, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load i8*, i8** %11, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @atoi(i8* %120)
  %122 = call i32 @try_classifier(i8* %116, i8* %117, i8* %118, i8* %119, i32 %121)
  br label %277

123:                                              ; preds = %109
  %124 = load i8**, i8*** %4, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 2
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %128 = icmp eq i64 0, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load i8*, i8** %11, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @train_classifier(i8* %130, i8* %131, i8* %132, i32* %133, i32 %134, i32 %135)
  br label %276

137:                                              ; preds = %123
  %138 = load i8**, i8*** %4, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 2
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %142 = icmp eq i64 0, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load i8*, i8** %11, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = load i8*, i8** %13, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i8*, i8** %14, align 8
  %149 = call i32 @demo_classifier(i8* %144, i8* %145, i8* %146, i32 %147, i8* %148)
  br label %275

150:                                              ; preds = %137
  %151 = load i8**, i8*** %4, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 2
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @strcmp(i8* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %155 = icmp eq i64 0, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %150
  %157 = load i8*, i8** %11, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = load i8*, i8** %13, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i8*, i8** %14, align 8
  %162 = call i32 @gun_classifier(i8* %157, i8* %158, i8* %159, i32 %160, i8* %161)
  br label %274

163:                                              ; preds = %150
  %164 = load i8**, i8*** %4, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 2
  %166 = load i8*, i8** %165, align 8
  %167 = call i64 @strcmp(i8* %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %168 = icmp eq i64 0, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load i8*, i8** %11, align 8
  %171 = load i8*, i8** %12, align 8
  %172 = load i8*, i8** %13, align 8
  %173 = load i32, i32* %8, align 4
  %174 = load i8*, i8** %14, align 8
  %175 = call i32 @threat_classifier(i8* %170, i8* %171, i8* %172, i32 %173, i8* %174)
  br label %273

176:                                              ; preds = %163
  %177 = load i8**, i8*** %4, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 2
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @strcmp(i8* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %181 = icmp eq i64 0, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %176
  %183 = load i8*, i8** %11, align 8
  %184 = load i8*, i8** %12, align 8
  %185 = load i8*, i8** %13, align 8
  %186 = load i32, i32* %16, align 4
  %187 = call i32 @test_classifier(i8* %183, i8* %184, i8* %185, i32 %186)
  br label %272

188:                                              ; preds = %176
  %189 = load i8**, i8*** %4, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 2
  %191 = load i8*, i8** %190, align 8
  %192 = call i64 @strcmp(i8* %191, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %193 = icmp eq i64 0, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = load i8*, i8** %11, align 8
  %196 = load i8*, i8** %12, align 8
  %197 = load i8*, i8** %13, align 8
  %198 = call i32 @csv_classifier(i8* %195, i8* %196, i8* %197)
  br label %271

199:                                              ; preds = %188
  %200 = load i8**, i8*** %4, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 2
  %202 = load i8*, i8** %201, align 8
  %203 = call i64 @strcmp(i8* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %204 = icmp eq i64 0, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %199
  %206 = load i8*, i8** %11, align 8
  %207 = load i8*, i8** %12, align 8
  %208 = load i8*, i8** %13, align 8
  %209 = call i32 @label_classifier(i8* %206, i8* %207, i8* %208)
  br label %270

210:                                              ; preds = %199
  %211 = load i8**, i8*** %4, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 2
  %213 = load i8*, i8** %212, align 8
  %214 = call i64 @strcmp(i8* %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %215 = icmp eq i64 0, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %210
  %217 = load i8*, i8** %11, align 8
  %218 = load i8*, i8** %12, align 8
  %219 = load i8*, i8** %13, align 8
  %220 = call i32 @validate_classifier_single(i8* %217, i8* %218, i8* %219)
  br label %269

221:                                              ; preds = %210
  %222 = load i8**, i8*** %4, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 2
  %224 = load i8*, i8** %223, align 8
  %225 = call i64 @strcmp(i8* %224, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %226 = icmp eq i64 0, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %221
  %228 = load i8*, i8** %11, align 8
  %229 = load i8*, i8** %12, align 8
  %230 = load i8*, i8** %13, align 8
  %231 = call i32 @validate_classifier_multi(i8* %228, i8* %229, i8* %230)
  br label %268

232:                                              ; preds = %221
  %233 = load i8**, i8*** %4, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 2
  %235 = load i8*, i8** %234, align 8
  %236 = call i64 @strcmp(i8* %235, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %237 = icmp eq i64 0, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %232
  %239 = load i8*, i8** %11, align 8
  %240 = load i8*, i8** %12, align 8
  %241 = load i8*, i8** %13, align 8
  %242 = call i32 @validate_classifier_10(i8* %239, i8* %240, i8* %241)
  br label %267

243:                                              ; preds = %232
  %244 = load i8**, i8*** %4, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 2
  %246 = load i8*, i8** %245, align 8
  %247 = call i64 @strcmp(i8* %246, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %248 = icmp eq i64 0, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %243
  %250 = load i8*, i8** %11, align 8
  %251 = load i8*, i8** %12, align 8
  %252 = load i8*, i8** %13, align 8
  %253 = call i32 @validate_classifier_crop(i8* %250, i8* %251, i8* %252)
  br label %266

254:                                              ; preds = %243
  %255 = load i8**, i8*** %4, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 2
  %257 = load i8*, i8** %256, align 8
  %258 = call i64 @strcmp(i8* %257, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %259 = icmp eq i64 0, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %254
  %261 = load i8*, i8** %11, align 8
  %262 = load i8*, i8** %12, align 8
  %263 = load i8*, i8** %13, align 8
  %264 = call i32 @validate_classifier_full(i8* %261, i8* %262, i8* %263)
  br label %265

265:                                              ; preds = %260, %254
  br label %266

266:                                              ; preds = %265, %249
  br label %267

267:                                              ; preds = %266, %238
  br label %268

268:                                              ; preds = %267, %227
  br label %269

269:                                              ; preds = %268, %216
  br label %270

270:                                              ; preds = %269, %205
  br label %271

271:                                              ; preds = %270, %194
  br label %272

272:                                              ; preds = %271, %182
  br label %273

273:                                              ; preds = %272, %169
  br label %274

274:                                              ; preds = %273, %156
  br label %275

275:                                              ; preds = %274, %143
  br label %276

276:                                              ; preds = %275, %129
  br label %277

277:                                              ; preds = %276, %115
  br label %278

278:                                              ; preds = %277, %103
  br label %279

279:                                              ; preds = %19, %278, %90
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @find_char_arg(i32, i8**, i8*, i32) #1

declare dso_local i32* @read_intlist(i8*, i32*, i32) #1

declare dso_local i32 @find_int_arg(i32, i8**, i8*, i32) #1

declare dso_local i32 @find_arg(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @predict_classifier(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @file_output_classifier(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @try_classifier(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @train_classifier(i8*, i8*, i8*, i32*, i32, i32) #1

declare dso_local i32 @demo_classifier(i8*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @gun_classifier(i8*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @threat_classifier(i8*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @test_classifier(i8*, i8*, i8*, i32) #1

declare dso_local i32 @csv_classifier(i8*, i8*, i8*) #1

declare dso_local i32 @label_classifier(i8*, i8*, i8*) #1

declare dso_local i32 @validate_classifier_single(i8*, i8*, i8*) #1

declare dso_local i32 @validate_classifier_multi(i8*, i8*, i8*) #1

declare dso_local i32 @validate_classifier_10(i8*, i8*, i8*) #1

declare dso_local i32 @validate_classifier_crop(i8*, i8*, i8*) #1

declare dso_local i32 @validate_classifier_full(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
