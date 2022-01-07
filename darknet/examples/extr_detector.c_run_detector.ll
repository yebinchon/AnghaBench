; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_detector.c_run_detector.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_detector.c_run_detector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"-prefix\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"-thresh\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-hier\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"-avg\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"usage: %s %s [train/test/valid] [cfg] [weights (optional)]\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"-gpus\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-out\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@gpu_index = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"-clear\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"-fullscreen\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"-fps\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"valid2\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"recall\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"demo\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"data/names.list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_detector(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i8**, i8*** %4, align 8
  %33 = call i8* @find_char_arg(i32 %31, i8** %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8* %33, i8** %5, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i8**, i8*** %4, align 8
  %36 = call float @find_float_arg(i32 %34, i8** %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), double 5.000000e-01)
  store float %36, float* %6, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i8**, i8*** %4, align 8
  %39 = call float @find_float_arg(i32 %37, i8** %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), double 5.000000e-01)
  store float %39, float* %7, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i8**, i8*** %4, align 8
  %42 = call i32 @find_int_arg(i32 %40, i8** %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i8**, i8*** %4, align 8
  %45 = call i32 @find_int_arg(i32 %43, i8** %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i8**, i8*** %4, align 8
  %48 = call i32 @find_int_arg(i32 %46, i8** %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 3)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %60

51:                                               ; preds = %2
  %52 = load i32, i32* @stderr, align 4
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8**, i8*** %4, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i8* %55, i8* %58)
  br label %255

60:                                               ; preds = %2
  %61 = load i32, i32* %3, align 4
  %62 = load i8**, i8*** %4, align 8
  %63 = call i8* @find_char_arg(i32 %61, i8** %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 0)
  store i8* %63, i8** %11, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i8**, i8*** %4, align 8
  %66 = call i8* @find_char_arg(i32 %64, i8** %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 0)
  store i8* %66, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %114

69:                                               ; preds = %60
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %70)
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @strlen(i8* %72)
  store i32 %73, i32* %16, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %74

74:                                               ; preds = %90, %69
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 44
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %86, %78
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %74

93:                                               ; preds = %74
  %94 = load i32, i32* %15, align 4
  %95 = call i32* @calloc(i32 %94, i32 4)
  store i32* %95, i32** %13, align 8
  store i32 0, i32* %17, align 4
  br label %96

96:                                               ; preds = %110, %93
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 @atoi(i8* %101)
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %102, i32* %106, align 4
  %107 = load i8*, i8** %11, align 8
  %108 = call i8* @strchr(i8* %107, i8 signext 44)
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  store i8* %109, i8** %11, align 8
  br label %110

110:                                              ; preds = %100
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %17, align 4
  br label %96

113:                                              ; preds = %96
  br label %116

114:                                              ; preds = %60
  %115 = load i32, i32* @gpu_index, align 4
  store i32 %115, i32* %14, align 4
  store i32* %14, i32** %13, align 8
  store i32 1, i32* %15, align 4
  br label %116

116:                                              ; preds = %114, %113
  %117 = load i32, i32* %3, align 4
  %118 = load i8**, i8*** %4, align 8
  %119 = call i32 @find_arg(i32 %117, i8** %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %3, align 4
  %121 = load i8**, i8*** %4, align 8
  %122 = call i32 @find_arg(i32 %120, i8** %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  store i32 %122, i32* %19, align 4
  %123 = load i32, i32* %3, align 4
  %124 = load i8**, i8*** %4, align 8
  %125 = call i32 @find_int_arg(i32 %123, i8** %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 0)
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %3, align 4
  %127 = load i8**, i8*** %4, align 8
  %128 = call i32 @find_int_arg(i32 %126, i8** %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 0)
  store i32 %128, i32* %21, align 4
  %129 = load i32, i32* %3, align 4
  %130 = load i8**, i8*** %4, align 8
  %131 = call i32 @find_int_arg(i32 %129, i8** %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 0)
  store i32 %131, i32* %22, align 4
  %132 = load i8**, i8*** %4, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 3
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %23, align 8
  %135 = load i8**, i8*** %4, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 4
  %137 = load i8*, i8** %136, align 8
  store i8* %137, i8** %24, align 8
  %138 = load i32, i32* %3, align 4
  %139 = icmp sgt i32 %138, 5
  br i1 %139, label %140, label %144

140:                                              ; preds = %116
  %141 = load i8**, i8*** %4, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 5
  %143 = load i8*, i8** %142, align 8
  br label %145

144:                                              ; preds = %116
  br label %145

145:                                              ; preds = %144, %140
  %146 = phi i8* [ %143, %140 ], [ null, %144 ]
  store i8* %146, i8** %25, align 8
  %147 = load i32, i32* %3, align 4
  %148 = icmp sgt i32 %147, 6
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i8**, i8*** %4, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 6
  %152 = load i8*, i8** %151, align 8
  br label %154

153:                                              ; preds = %145
  br label %154

154:                                              ; preds = %153, %149
  %155 = phi i8* [ %152, %149 ], [ null, %153 ]
  store i8* %155, i8** %26, align 8
  %156 = load i8**, i8*** %4, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 2
  %158 = load i8*, i8** %157, align 8
  %159 = call i64 @strcmp(i8* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %160 = icmp eq i64 0, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %154
  %162 = load i8*, i8** %23, align 8
  %163 = load i8*, i8** %24, align 8
  %164 = load i8*, i8** %25, align 8
  %165 = load i8*, i8** %26, align 8
  %166 = load float, float* %6, align 4
  %167 = load float, float* %7, align 4
  %168 = load i8*, i8** %12, align 8
  %169 = load i32, i32* %19, align 4
  %170 = call i32 @test_detector(i8* %162, i8* %163, i8* %164, i8* %165, float %166, float %167, i8* %168, i32 %169)
  br label %255

171:                                              ; preds = %154
  %172 = load i8**, i8*** %4, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 2
  %174 = load i8*, i8** %173, align 8
  %175 = call i64 @strcmp(i8* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %176 = icmp eq i64 0, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %171
  %178 = load i8*, i8** %23, align 8
  %179 = load i8*, i8** %24, align 8
  %180 = load i8*, i8** %25, align 8
  %181 = load i32*, i32** %13, align 8
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %18, align 4
  %184 = call i32 @train_detector(i8* %178, i8* %179, i8* %180, i32* %181, i32 %182, i32 %183)
  br label %254

185:                                              ; preds = %171
  %186 = load i8**, i8*** %4, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 2
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %190 = icmp eq i64 0, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %185
  %192 = load i8*, i8** %23, align 8
  %193 = load i8*, i8** %24, align 8
  %194 = load i8*, i8** %25, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = call i32 @validate_detector(i8* %192, i8* %193, i8* %194, i8* %195)
  br label %253

197:                                              ; preds = %185
  %198 = load i8**, i8*** %4, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 2
  %200 = load i8*, i8** %199, align 8
  %201 = call i64 @strcmp(i8* %200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %202 = icmp eq i64 0, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %197
  %204 = load i8*, i8** %23, align 8
  %205 = load i8*, i8** %24, align 8
  %206 = load i8*, i8** %25, align 8
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 @validate_detector_flip(i8* %204, i8* %205, i8* %206, i8* %207)
  br label %252

209:                                              ; preds = %197
  %210 = load i8**, i8*** %4, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 2
  %212 = load i8*, i8** %211, align 8
  %213 = call i64 @strcmp(i8* %212, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %214 = icmp eq i64 0, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %209
  %216 = load i8*, i8** %24, align 8
  %217 = load i8*, i8** %25, align 8
  %218 = call i32 @validate_detector_recall(i8* %216, i8* %217)
  br label %251

219:                                              ; preds = %209
  %220 = load i8**, i8*** %4, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 2
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 @strcmp(i8* %222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %224 = icmp eq i64 0, %223
  br i1 %224, label %225, label %250

225:                                              ; preds = %219
  %226 = load i8*, i8** %23, align 8
  %227 = call i32* @read_data_cfg(i8* %226)
  store i32* %227, i32** %27, align 8
  %228 = load i32*, i32** %27, align 8
  %229 = call i32 @option_find_int(i32* %228, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 20)
  store i32 %229, i32* %28, align 4
  %230 = load i32*, i32** %27, align 8
  %231 = call i8* @option_find_str(i32* %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  store i8* %231, i8** %29, align 8
  %232 = load i8*, i8** %29, align 8
  %233 = call i8** @get_labels(i8* %232)
  store i8** %233, i8*** %30, align 8
  %234 = load i8*, i8** %24, align 8
  %235 = load i8*, i8** %25, align 8
  %236 = load float, float* %6, align 4
  %237 = load i32, i32* %8, align 4
  %238 = load i8*, i8** %26, align 8
  %239 = load i8**, i8*** %30, align 8
  %240 = load i32, i32* %28, align 4
  %241 = load i32, i32* %9, align 4
  %242 = load i8*, i8** %5, align 8
  %243 = load i32, i32* %10, align 4
  %244 = load float, float* %7, align 4
  %245 = load i32, i32* %20, align 4
  %246 = load i32, i32* %21, align 4
  %247 = load i32, i32* %22, align 4
  %248 = load i32, i32* %19, align 4
  %249 = call i32 @demo(i8* %234, i8* %235, float %236, i32 %237, i8* %238, i8** %239, i32 %240, i32 %241, i8* %242, i32 %243, float %244, i32 %245, i32 %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %225, %219
  br label %251

251:                                              ; preds = %250, %215
  br label %252

252:                                              ; preds = %251, %203
  br label %253

253:                                              ; preds = %252, %191
  br label %254

254:                                              ; preds = %253, %177
  br label %255

255:                                              ; preds = %51, %254, %161
  ret void
}

declare dso_local i8* @find_char_arg(i32, i8**, i8*, i32) #1

declare dso_local float @find_float_arg(i32, i8**, i8*, double) #1

declare dso_local i32 @find_int_arg(i32, i8**, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @find_arg(i32, i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @test_detector(i8*, i8*, i8*, i8*, float, float, i8*, i32) #1

declare dso_local i32 @train_detector(i8*, i8*, i8*, i32*, i32, i32) #1

declare dso_local i32 @validate_detector(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @validate_detector_flip(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @validate_detector_recall(i8*, i8*) #1

declare dso_local i32* @read_data_cfg(i8*) #1

declare dso_local i32 @option_find_int(i32*, i8*, i32) #1

declare dso_local i8* @option_find_str(i32*, i8*, i8*) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local i32 @demo(i8*, i8*, float, i32, i8*, i8**, i32, i32, i8*, i32, float, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
