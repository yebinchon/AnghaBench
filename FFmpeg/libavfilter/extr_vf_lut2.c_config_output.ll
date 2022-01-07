; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut2.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut2.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, double**, i32*, i32*, i32**, i8* }

@lut2_16_16_16 = common dso_local global i8* null, align 8
@lut2_8_8_8 = common dso_local global i8* null, align 8
@lut2_16_8_8 = common dso_local global i8* null, align 8
@lut2_16_16_8 = common dso_local global i8* null, align 8
@lut2_16_8_16 = common dso_local global i8* null, align 8
@lut2_8_16_8 = common dso_local global i8* null, align 8
@lut2_8_8_16 = common dso_local global i8* null, align 8
@lut2_8_16_16 = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@var_names = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Error when parsing the expression '%s' for the component %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VAR_Y = common dso_local global i64 0, align 8
@VAR_X = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"Error when evaluating the expression '%s' for the values %d and %d for the component %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_output(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %4, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 16
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i8*, i8** @lut2_16_16_16, align 8
  br label %39

37:                                               ; preds = %1
  %38 = load i8*, i8** @lut2_8_8_8, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i8* [ %36, %35 ], [ %38, %37 ]
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 10
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %181

47:                                               ; preds = %39
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 8
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i8*, i8** @lut2_16_8_8, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 10
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %62, %57, %52, %47
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 8
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 8
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i8*, i8** @lut2_16_16_8, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 10
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %76, %71, %66
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 8
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 8
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 8
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i8*, i8** @lut2_16_8_16, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 10
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %100, %95, %90, %85
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 8
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 8
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 8
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i8*, i8** @lut2_8_8_8, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 10
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %119, %114, %109, %104
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 8
  br i1 %127, label %128, label %142

128:                                              ; preds = %123
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 8
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 8
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i8*, i8** @lut2_8_16_8, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 10
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %138, %133, %128, %123
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 8
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp sgt i32 %150, 8
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 8
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load i8*, i8** @lut2_8_8_16, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 10
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %157, %152, %147, %142
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 8
  br i1 %165, label %166, label %180

166:                                              ; preds = %161
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %169, 8
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 8
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i8*, i8** @lut2_8_16_16, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 10
  store i8* %177, i8** %179, align 8
  br label %180

180:                                              ; preds = %176, %171, %166, %161
  br label %187

181:                                              ; preds = %39
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 5
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %181, %180
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %218, %187
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %221

194:                                              ; preds = %188
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = shl i32 1, %197
  %199 = call double* @av_malloc_array(i32 %198, i32 4)
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 6
  %202 = load double**, double*** %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds double*, double** %202, i64 %204
  store double* %199, double** %205, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 6
  %208 = load double**, double*** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds double*, double** %208, i64 %210
  %212 = load double*, double** %211, align 8
  %213 = icmp ne double* %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %194
  %215 = load i32, i32* @ENOMEM, align 4
  %216 = call i32 @AVERROR(i32 %215)
  store i32 %216, i32* %2, align 4
  br label %365

217:                                              ; preds = %194
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %6, align 4
  br label %188

221:                                              ; preds = %188
  store i32 0, i32* %6, align 4
  br label %222

222:                                              ; preds = %361, %221
  %223 = load i32, i32* %6, align 4
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = icmp slt i32 %223, %226
  br i1 %227, label %228, label %364

228:                                              ; preds = %222
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 9
  %231 = load i32**, i32*** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32*, i32** %231, i64 %233
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @av_expr_free(i32* %235)
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 9
  %239 = load i32**, i32*** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32*, i32** %239, i64 %241
  store i32* null, i32** %242, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 9
  %245 = load i32**, i32*** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %245, i64 %247
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 8
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @var_names, align 4
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %258 = call i32 @av_expr_parse(i32** %248, i32 %255, i32 %256, i32* null, i32* null, i32* null, i32* null, i32 0, %struct.TYPE_10__* %257)
  store i32 %258, i32* %7, align 4
  %259 = load i32, i32* %7, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %275

261:                                              ; preds = %228
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %263 = load i32, i32* @AV_LOG_ERROR, align 4
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 8
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %6, align 4
  %272 = call i32 (%struct.TYPE_10__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_10__* %262, i32 %263, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %270, i32 %271)
  %273 = load i32, i32* @EINVAL, align 4
  %274 = call i32 @AVERROR(i32 %273)
  store i32 %274, i32* %2, align 4
  br label %365

275:                                              ; preds = %228
  store i32 0, i32* %10, align 4
  br label %276

276:                                              ; preds = %357, %275
  %277 = load i32, i32* %10, align 4
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = shl i32 1, %280
  %282 = icmp slt i32 %277, %281
  br i1 %282, label %283, label %360

283:                                              ; preds = %276
  %284 = load i32, i32* %10, align 4
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 7
  %287 = load i32*, i32** %286, align 8
  %288 = load i64, i64* @VAR_Y, align 8
  %289 = getelementptr inbounds i32, i32* %287, i64 %288
  store i32 %284, i32* %289, align 4
  store i32 0, i32* %9, align 4
  br label %290

290:                                              ; preds = %353, %283
  %291 = load i32, i32* %9, align 4
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = shl i32 1, %294
  %296 = icmp slt i32 %291, %295
  br i1 %296, label %297, label %356

297:                                              ; preds = %290
  %298 = load i32, i32* %9, align 4
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 7
  %301 = load i32*, i32** %300, align 8
  %302 = load i64, i64* @VAR_X, align 8
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  store i32 %298, i32* %303, align 4
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 9
  %306 = load i32**, i32*** %305, align 8
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32*, i32** %306, i64 %308
  %310 = load i32*, i32** %309, align 8
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 7
  %313 = load i32*, i32** %312, align 8
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %315 = call double @av_expr_eval(i32* %310, i32* %313, %struct.TYPE_8__* %314)
  store double %315, double* %8, align 8
  %316 = load double, double* %8, align 8
  %317 = call i64 @isnan(double %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %335

319:                                              ; preds = %297
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %321 = load i32, i32* @AV_LOG_ERROR, align 4
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 8
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %6, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %9, align 4
  %330 = load i32, i32* %10, align 4
  %331 = load i32, i32* %6, align 4
  %332 = call i32 (%struct.TYPE_10__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_10__* %320, i32 %321, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %328, i32 %329, i32 %330, i32 %331)
  %333 = load i32, i32* @EINVAL, align 4
  %334 = call i32 @AVERROR(i32 %333)
  store i32 %334, i32* %2, align 4
  br label %365

335:                                              ; preds = %297
  %336 = load double, double* %8, align 8
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 6
  %339 = load double**, double*** %338, align 8
  %340 = load i32, i32* %6, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds double*, double** %339, i64 %341
  %343 = load double*, double** %342, align 8
  %344 = load i32, i32* %10, align 4
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = shl i32 %344, %347
  %349 = load i32, i32* %9, align 4
  %350 = add nsw i32 %348, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds double, double* %343, i64 %351
  store double %336, double* %352, align 8
  br label %353

353:                                              ; preds = %335
  %354 = load i32, i32* %9, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %9, align 4
  br label %290

356:                                              ; preds = %290
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %10, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %10, align 4
  br label %276

360:                                              ; preds = %276
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %6, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %6, align 4
  br label %222

364:                                              ; preds = %222
  store i32 0, i32* %2, align 4
  br label %365

365:                                              ; preds = %364, %319, %261, %214
  %366 = load i32, i32* %2, align 4
  ret i32 %366
}

declare dso_local double* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_expr_free(i32*) #1

declare dso_local i32 @av_expr_parse(i32**, i32, i32, i32*, i32*, i32*, i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i32, i32, ...) #1

declare dso_local double @av_expr_eval(i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @isnan(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
