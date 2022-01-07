; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_struct.c_ReadNumber.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_struct.c_ReadNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, double, double }
%struct.TYPE_5__ = type { i64, i32, double, i64, i32 }

@qfalse = common dso_local global i32 0, align 4
@TT_PUNCTUATION = common dso_local global i64 0, align 8
@FT_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"expected unsigned value, found %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unexpected punctuation %s\00", align 1
@qtrue = common dso_local global i32 0, align 4
@TT_NUMBER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"expected number, found %s\00", align 1
@TT_FLOAT = common dso_local global i32 0, align 4
@FT_TYPE = common dso_local global i32 0, align 4
@FT_FLOAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"unexpected float\00", align 1
@FT_BOUNDED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"float out of range [%f, %f]\00", align 1
@FT_CHAR = common dso_local global i32 0, align 4
@FT_INT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"value %d out of range [%d, %d]\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"value %d out of range [%f, %f]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadNumber(i32* %0, %struct.TYPE_6__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @qfalse, align 4
  store i32 %14, i32* %9, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @PC_ExpectAnyToken(i32* %15, %struct.TYPE_5__* %8)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %323

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TT_PUNCTUATION, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FT_UNSIGNED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32*, i8*, ...) @SourceError(i32* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %4, align 4
  br label %323

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @strcmp(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32*, i8*, ...) @SourceError(i32* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  store i32 0, i32* %4, align 4
  br label %323

46:                                               ; preds = %36
  %47 = load i32, i32* @qtrue, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @PC_ExpectAnyToken(i32* %48, %struct.TYPE_5__* %8)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %323

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %19
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TT_NUMBER, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32*, i8*, ...) @SourceError(i32* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  store i32 0, i32* %4, align 4
  br label %323

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @TT_FLOAT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %122

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FT_TYPE, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @FT_FLOAT, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 (i32*, i8*, ...) @SourceError(i32* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %323

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %82 = load double, double* %81, align 8
  store double %82, double* %13, align 8
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load double, double* %13, align 8
  %87 = fneg double %86
  store double %87, double* %13, align 8
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @FT_BOUNDED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %88
  %96 = load double, double* %13, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load double, double* %98, align 8
  %100 = fcmp olt double %96, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load double, double* %13, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load double, double* %104, align 8
  %106 = fcmp ogt double %102, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %101, %95
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load double, double* %110, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load double, double* %113, align 8
  %115 = call i32 (i32*, i8*, ...) @SourceError(i32* %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), double %111, double %114)
  store i32 0, i32* %4, align 4
  br label %323

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116, %88
  %118 = load double, double* %13, align 8
  %119 = fptrunc double %118 to float
  %120 = load i8*, i8** %7, align 8
  %121 = bitcast i8* %120 to float*
  store float %119, float* %121, align 4
  store i32 1, i32* %4, align 4
  br label %323

122:                                              ; preds = %63
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %10, align 8
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i64, i64* %10, align 8
  %129 = sub nsw i64 0, %128
  store i64 %129, i64* %10, align 8
  br label %130

130:                                              ; preds = %127, %122
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @FT_TYPE, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @FT_CHAR, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %130
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @FT_UNSIGNED, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i64 0, i64* %11, align 8
  store i64 255, i64* %12, align 8
  br label %147

146:                                              ; preds = %138
  store i64 -128, i64* %11, align 8
  store i64 127, i64* %12, align 8
  br label %147

147:                                              ; preds = %146, %145
  br label %148

148:                                              ; preds = %147, %130
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @FT_TYPE, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* @FT_INT, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %148
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @FT_UNSIGNED, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  store i64 0, i64* %11, align 8
  store i64 65535, i64* %12, align 8
  br label %165

164:                                              ; preds = %156
  store i64 -32768, i64* %11, align 8
  store i64 32767, i64* %12, align 8
  br label %165

165:                                              ; preds = %164, %163
  br label %166

166:                                              ; preds = %165, %148
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @FT_TYPE, align 4
  %171 = and i32 %169, %170
  %172 = load i32, i32* @FT_CHAR, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %182, label %174

174:                                              ; preds = %166
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @FT_TYPE, align 4
  %179 = and i32 %177, %178
  %180 = load i32, i32* @FT_INT, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %215

182:                                              ; preds = %174, %166
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @FT_BOUNDED, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %182
  %190 = load i64, i64* %11, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load double, double* %192, align 8
  %194 = call i64 @Maximum(i64 %190, double %193)
  store i64 %194, i64* %11, align 8
  %195 = load i64, i64* %12, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load double, double* %197, align 8
  %199 = call i64 @Minimum(i64 %195, double %198)
  store i64 %199, i64* %12, align 8
  br label %200

200:                                              ; preds = %189, %182
  %201 = load i64, i64* %10, align 8
  %202 = load i64, i64* %11, align 8
  %203 = icmp slt i64 %201, %202
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = load i64, i64* %10, align 8
  %206 = load i64, i64* %12, align 8
  %207 = icmp sgt i64 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %204, %200
  %209 = load i32*, i32** %5, align 8
  %210 = load i64, i64* %10, align 8
  %211 = load i64, i64* %11, align 8
  %212 = load i64, i64* %12, align 8
  %213 = call i32 (i32*, i8*, ...) @SourceError(i32* %209, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %210, i64 %211, i64 %212)
  store i32 0, i32* %4, align 4
  br label %323

214:                                              ; preds = %204
  br label %257

215:                                              ; preds = %174
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @FT_TYPE, align 4
  %220 = and i32 %218, %219
  %221 = load i32, i32* @FT_FLOAT, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %256

223:                                              ; preds = %215
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @FT_BOUNDED, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %255

230:                                              ; preds = %223
  %231 = load i64, i64* %10, align 8
  %232 = sitofp i64 %231 to double
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = load double, double* %234, align 8
  %236 = fcmp olt double %232, %235
  br i1 %236, label %244, label %237

237:                                              ; preds = %230
  %238 = load i64, i64* %10, align 8
  %239 = sitofp i64 %238 to double
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 2
  %242 = load double, double* %241, align 8
  %243 = fcmp ogt double %239, %242
  br i1 %243, label %244, label %254

244:                                              ; preds = %237, %230
  %245 = load i32*, i32** %5, align 8
  %246 = load i64, i64* %10, align 8
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load double, double* %248, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 2
  %252 = load double, double* %251, align 8
  %253 = call i32 (i32*, i8*, ...) @SourceError(i32* %245, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i64 %246, double %249, double %252)
  store i32 0, i32* %4, align 4
  br label %323

254:                                              ; preds = %237
  br label %255

255:                                              ; preds = %254, %223
  br label %256

256:                                              ; preds = %255, %215
  br label %257

257:                                              ; preds = %256, %214
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @FT_TYPE, align 4
  %262 = and i32 %260, %261
  %263 = load i32, i32* @FT_CHAR, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %281

265:                                              ; preds = %257
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @FT_UNSIGNED, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %265
  %273 = load i64, i64* %10, align 8
  %274 = trunc i64 %273 to i8
  %275 = load i8*, i8** %7, align 8
  store i8 %274, i8* %275, align 1
  br label %280

276:                                              ; preds = %265
  %277 = load i64, i64* %10, align 8
  %278 = trunc i64 %277 to i8
  %279 = load i8*, i8** %7, align 8
  store i8 %278, i8* %279, align 1
  br label %280

280:                                              ; preds = %276, %272
  br label %322

281:                                              ; preds = %257
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @FT_TYPE, align 4
  %286 = and i32 %284, %285
  %287 = load i32, i32* @FT_INT, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %307

289:                                              ; preds = %281
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @FT_UNSIGNED, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %289
  %297 = load i64, i64* %10, align 8
  %298 = trunc i64 %297 to i32
  %299 = load i8*, i8** %7, align 8
  %300 = bitcast i8* %299 to i32*
  store i32 %298, i32* %300, align 4
  br label %306

301:                                              ; preds = %289
  %302 = load i64, i64* %10, align 8
  %303 = trunc i64 %302 to i32
  %304 = load i8*, i8** %7, align 8
  %305 = bitcast i8* %304 to i32*
  store i32 %303, i32* %305, align 4
  br label %306

306:                                              ; preds = %301, %296
  br label %321

307:                                              ; preds = %281
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @FT_TYPE, align 4
  %312 = and i32 %310, %311
  %313 = load i32, i32* @FT_FLOAT, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %320

315:                                              ; preds = %307
  %316 = load i64, i64* %10, align 8
  %317 = sitofp i64 %316 to float
  %318 = load i8*, i8** %7, align 8
  %319 = bitcast i8* %318 to float*
  store float %317, float* %319, align 4
  br label %320

320:                                              ; preds = %315, %307
  br label %321

321:                                              ; preds = %320, %306
  br label %322

322:                                              ; preds = %321, %280
  store i32 1, i32* %4, align 4
  br label %323

323:                                              ; preds = %322, %244, %208, %117, %107, %77, %58, %51, %41, %31, %18
  %324 = load i32, i32* %4, align 4
  ret i32 %324
}

declare dso_local i32 @PC_ExpectAnyToken(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @SourceError(i32*, i8*, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @Maximum(i64, double) #1

declare dso_local i64 @Minimum(i64, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
