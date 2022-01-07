; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_write_cc_buffer_as_ssa.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_write_cc_buffer_as_ssa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eia608_screen = type { i64, i32*, i64* }
%struct.s_write = type { i32, i32, i32*, i32, i64*, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { double, double }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i64, i64, i32, i8* }

@subs_delay = common dso_local global i64 0, align 8
@debug_608 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%u\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\0A- - - SSA caption - - -\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FONT_REGULAR = common dso_local global i32 0, align 4
@COL_WHITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"{\\an1\\pos(%d,%d)}\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@SSA_PREAMBLE_LEN = common dso_local global i32 0, align 4
@HB_FRAME_SUBTITLE = common dso_local global i8* null, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"%d,,Default,,0,0,0,,\00", align 1
@HB_BUF_FLAG_EOS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"- - - - - - - - - - - -\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eia608_screen*, %struct.s_write*)* @write_cc_buffer_as_ssa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_cc_buffer_as_ssa(%struct.eia608_screen* %0, %struct.s_write* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eia608_screen*, align 8
  %5 = alloca %struct.s_write*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_10__*, align 8
  %39 = alloca i32, align 4
  %40 = alloca %struct.TYPE_10__*, align 8
  store %struct.eia608_screen* %0, %struct.eia608_screen** %4, align 8
  store %struct.s_write* %1, %struct.s_write** %5, align 8
  store i32 0, i32* %6, align 4
  %41 = load %struct.s_write*, %struct.s_write** %5, align 8
  %42 = getelementptr inbounds %struct.s_write, %struct.s_write* %41, i32 0, i32 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* @subs_delay, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %573

52:                                               ; preds = %2
  %53 = load i64, i64* @debug_608, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.s_write*, %struct.s_write** %5, align 8
  %57 = getelementptr inbounds %struct.s_write, %struct.s_write* %56, i32 0, i32 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %63 = load %struct.s_write*, %struct.s_write** %5, align 8
  %64 = getelementptr inbounds %struct.s_write, %struct.s_write* %63, i32 0, i32 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %71 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %55, %52
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 15, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 41, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %133, %72
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 15
  br i1 %75, label %76, label %136

76:                                               ; preds = %73
  %77 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %78 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %132

85:                                               ; preds = %76
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  %88 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %89 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @find_limit_characters(i32 %94, i32* %16, i32* %17)
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %16, align 4
  %98 = sub nsw i32 %96, %97
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* %11, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %85
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %16, align 4
  %105 = sub nsw i32 %103, %104
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %102, %85
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %111, %107
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %117, %113
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %17, align 4
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %123, %119
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %129, %125
  br label %132

132:                                              ; preds = %131, %76
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %73

136:                                              ; preds = %73
  %137 = load i32, i32* @FONT_REGULAR, align 4
  %138 = load %struct.s_write*, %struct.s_write** %5, align 8
  %139 = getelementptr inbounds %struct.s_write, %struct.s_write* %138, i32 0, i32 11
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @COL_WHITE, align 4
  %141 = load %struct.s_write*, %struct.s_write** %5, align 8
  %142 = getelementptr inbounds %struct.s_write, %struct.s_write* %141, i32 0, i32 10
  store i32 %140, i32* %142, align 8
  %143 = load %struct.s_write*, %struct.s_write** %5, align 8
  %144 = getelementptr inbounds %struct.s_write, %struct.s_write* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  %145 = load %struct.s_write*, %struct.s_write** %5, align 8
  %146 = getelementptr inbounds %struct.s_write, %struct.s_write* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.s_write*, %struct.s_write** %5, align 8
  %149 = getelementptr inbounds %struct.s_write, %struct.s_write* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %147, %152
  %154 = load %struct.s_write*, %struct.s_write** %5, align 8
  %155 = getelementptr inbounds %struct.s_write, %struct.s_write* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %153, %158
  store i32 %159, i32* %19, align 4
  %160 = load %struct.s_write*, %struct.s_write** %5, align 8
  %161 = getelementptr inbounds %struct.s_write, %struct.s_write* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.s_write*, %struct.s_write** %5, align 8
  %164 = getelementptr inbounds %struct.s_write, %struct.s_write* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %162, %167
  %169 = load %struct.s_write*, %struct.s_write** %5, align 8
  %170 = getelementptr inbounds %struct.s_write, %struct.s_write* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %168, %173
  store i32 %174, i32* %18, align 4
  %175 = load %struct.s_write*, %struct.s_write** %5, align 8
  %176 = getelementptr inbounds %struct.s_write, %struct.s_write* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = sitofp i32 %177 to double
  %179 = load %struct.s_write*, %struct.s_write** %5, align 8
  %180 = getelementptr inbounds %struct.s_write, %struct.s_write* %179, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load double, double* %181, align 8
  %183 = fmul double %178, %182
  %184 = load %struct.s_write*, %struct.s_write** %5, align 8
  %185 = getelementptr inbounds %struct.s_write, %struct.s_write* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sitofp i32 %186 to double
  %188 = load %struct.s_write*, %struct.s_write** %5, align 8
  %189 = getelementptr inbounds %struct.s_write, %struct.s_write* %188, i32 0, i32 9
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  %191 = load double, double* %190, align 8
  %192 = fmul double %187, %191
  %193 = fdiv double %183, %192
  store double %193, double* %27, align 8
  store i32 32, i32* %28, align 4
  %194 = load double, double* %27, align 8
  %195 = fcmp oge double %194, 1.600000e+00
  br i1 %195, label %196, label %197

196:                                              ; preds = %136
  store i32 42, i32* %28, align 4
  br label %197

197:                                              ; preds = %196, %136
  %198 = load %struct.s_write*, %struct.s_write** %5, align 8
  %199 = getelementptr inbounds %struct.s_write, %struct.s_write* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = sitofp i32 %200 to double
  %202 = fmul double %201, 8.000000e-01
  %203 = fmul double %202, 8.000000e-02
  %204 = fptosi double %203 to i32
  store i32 %204, i32* %20, align 4
  %205 = load %struct.s_write*, %struct.s_write** %5, align 8
  %206 = getelementptr inbounds %struct.s_write, %struct.s_write* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = sitofp i32 %207 to double
  %209 = fmul double 1.000000e-01, %208
  %210 = fptosi double %209 to i32
  store i32 %210, i32* %23, align 4
  %211 = load %struct.s_write*, %struct.s_write** %5, align 8
  %212 = getelementptr inbounds %struct.s_write, %struct.s_write* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sitofp i32 %213 to double
  %215 = fmul double 1.000000e-01, %214
  %216 = fptosi double %215 to i32
  store i32 %216, i32* %24, align 4
  %217 = load i32, i32* %18, align 4
  %218 = sitofp i32 %217 to double
  %219 = fmul double 2.500000e-02, %218
  %220 = fptosi double %219 to i32
  store i32 %220, i32* %25, align 4
  %221 = load i32, i32* %19, align 4
  %222 = sitofp i32 %221 to double
  %223 = fmul double 2.500000e-02, %222
  %224 = fptosi double %223 to i32
  store i32 %224, i32* %26, align 4
  %225 = load %struct.s_write*, %struct.s_write** %5, align 8
  %226 = getelementptr inbounds %struct.s_write, %struct.s_write* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %24, align 4
  %229 = mul nsw i32 2, %228
  %230 = sub nsw i32 %227, %229
  %231 = sdiv i32 %230, 16
  store i32 %231, i32* %22, align 4
  %232 = load %struct.s_write*, %struct.s_write** %5, align 8
  %233 = getelementptr inbounds %struct.s_write, %struct.s_write* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %23, align 4
  %236 = mul nsw i32 2, %235
  %237 = sub nsw i32 %234, %236
  %238 = load i32, i32* %28, align 4
  %239 = sdiv i32 %237, %238
  store i32 %239, i32* %21, align 4
  %240 = load i32, i32* %14, align 4
  store i32 %240, i32* %33, align 4
  %241 = load double, double* %27, align 8
  %242 = fcmp oge double %241, 1.600000e+00
  br i1 %242, label %243, label %246

243:                                              ; preds = %197
  %244 = load i32, i32* %33, align 4
  %245 = add nsw i32 %244, 5
  store i32 %245, i32* %33, align 4
  br label %246

246:                                              ; preds = %243, %197
  %247 = load i32, i32* %22, align 4
  %248 = load i32, i32* %12, align 4
  %249 = add nsw i32 %248, 1
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %249, %250
  %252 = mul nsw i32 %247, %251
  %253 = load i32, i32* %24, align 4
  %254 = add nsw i32 %252, %253
  %255 = load %struct.s_write*, %struct.s_write** %5, align 8
  %256 = getelementptr inbounds %struct.s_write, %struct.s_write* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 %254, %259
  store i32 %260, i32* %30, align 4
  %261 = load i32, i32* %21, align 4
  %262 = load i32, i32* %33, align 4
  %263 = mul nsw i32 %261, %262
  %264 = load i32, i32* %23, align 4
  %265 = add nsw i32 %263, %264
  %266 = load %struct.s_write*, %struct.s_write** %5, align 8
  %267 = getelementptr inbounds %struct.s_write, %struct.s_write* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 2
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 %265, %270
  store i32 %271, i32* %31, align 4
  %272 = load i32, i32* %30, align 4
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %20, align 4
  %275 = mul nsw i32 %273, %274
  %276 = sub nsw i32 %272, %275
  store i32 %276, i32* %32, align 4
  %277 = load i32, i32* %32, align 4
  %278 = load i32, i32* %26, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %286

280:                                              ; preds = %246
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* %20, align 4
  %283 = mul nsw i32 %281, %282
  %284 = load i32, i32* %26, align 4
  %285 = add nsw i32 %283, %284
  store i32 %285, i32* %30, align 4
  br label %286

286:                                              ; preds = %280, %246
  %287 = load i32, i32* %30, align 4
  %288 = load i32, i32* %19, align 4
  %289 = load i32, i32* %26, align 4
  %290 = sub nsw i32 %288, %289
  %291 = icmp sgt i32 %287, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %286
  %293 = load i32, i32* %19, align 4
  %294 = load i32, i32* %26, align 4
  %295 = sub nsw i32 %293, %294
  store i32 %295, i32* %30, align 4
  br label %296

296:                                              ; preds = %292, %286
  %297 = load i32, i32* %31, align 4
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* %21, align 4
  %300 = mul nsw i32 %298, %299
  %301 = add nsw i32 %297, %300
  %302 = load i32, i32* %18, align 4
  %303 = load i32, i32* %25, align 4
  %304 = sub nsw i32 %302, %303
  %305 = icmp sgt i32 %301, %304
  br i1 %305, label %306, label %314

306:                                              ; preds = %296
  %307 = load i32, i32* %18, align 4
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* %21, align 4
  %310 = mul nsw i32 %308, %309
  %311 = sub nsw i32 %307, %310
  %312 = load i32, i32* %25, align 4
  %313 = sub nsw i32 %311, %312
  store i32 %313, i32* %31, align 4
  br label %314

314:                                              ; preds = %306, %296
  %315 = load i32, i32* %31, align 4
  %316 = load i32, i32* %25, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %314
  %319 = load i32, i32* %25, align 4
  store i32 %319, i32* %31, align 4
  br label %320

320:                                              ; preds = %318, %314
  %321 = load i32, i32* %31, align 4
  %322 = load i32, i32* %30, align 4
  %323 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %321, i32 %322)
  store i8* %323, i8** %29, align 8
  store i32 1, i32* %34, align 4
  store i32 0, i32* %7, align 4
  br label %324

324:                                              ; preds = %442, %320
  %325 = load i32, i32* %7, align 4
  %326 = icmp slt i32 %325, 15
  br i1 %326, label %327, label %445

327:                                              ; preds = %324
  %328 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %329 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %328, i32 0, i32 2
  %330 = load i64*, i64** %329, align 8
  %331 = load i32, i32* %7, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i64, i64* %330, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %441

336:                                              ; preds = %327
  %337 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %338 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %7, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @find_limit_characters(i32 %343, i32* %35, i32* %36)
  %345 = load i32, i32* %35, align 4
  %346 = load i32, i32* %14, align 4
  %347 = sub nsw i32 %345, %346
  store i32 %347, i32* %37, align 4
  %348 = load i32, i32* %34, align 4
  %349 = icmp eq i32 %348, 1
  br i1 %349, label %350, label %396

350:                                              ; preds = %336
  %351 = load %struct.s_write*, %struct.s_write** %5, align 8
  %352 = getelementptr inbounds %struct.s_write, %struct.s_write* %351, i32 0, i32 4
  %353 = load i64*, i64** %352, align 8
  %354 = load %struct.s_write*, %struct.s_write** %5, align 8
  %355 = getelementptr inbounds %struct.s_write, %struct.s_write* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i64, i64* %353, i64 %357
  %359 = load i8*, i8** %29, align 8
  %360 = bitcast i8* %359 to i32*
  %361 = call i32 @encode_line(i64* %358, i32* %360)
  %362 = load %struct.s_write*, %struct.s_write** %5, align 8
  %363 = getelementptr inbounds %struct.s_write, %struct.s_write* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = add nsw i32 %364, %361
  store i32 %365, i32* %363, align 8
  %366 = load %struct.s_write*, %struct.s_write** %5, align 8
  %367 = getelementptr inbounds %struct.s_write, %struct.s_write* %366, i32 0, i32 4
  %368 = load i64*, i64** %367, align 8
  %369 = load %struct.s_write*, %struct.s_write** %5, align 8
  %370 = getelementptr inbounds %struct.s_write, %struct.s_write* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i64, i64* %368, i64 %372
  %374 = load i32, i32* %37, align 4
  %375 = call i32 @stuff_space(i64* %373, i32 %374)
  %376 = load %struct.s_write*, %struct.s_write** %5, align 8
  %377 = getelementptr inbounds %struct.s_write, %struct.s_write* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = add nsw i32 %378, %375
  store i32 %379, i32* %377, align 8
  %380 = load %struct.s_write*, %struct.s_write** %5, align 8
  %381 = load %struct.s_write*, %struct.s_write** %5, align 8
  %382 = getelementptr inbounds %struct.s_write, %struct.s_write* %381, i32 0, i32 4
  %383 = load i64*, i64** %382, align 8
  %384 = load %struct.s_write*, %struct.s_write** %5, align 8
  %385 = getelementptr inbounds %struct.s_write, %struct.s_write* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i64, i64* %383, i64 %387
  %389 = load i32, i32* %7, align 4
  %390 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %391 = call i32 @get_decoder_line_encoded(%struct.s_write* %380, i64* %388, i32 %389, %struct.eia608_screen* %390)
  %392 = load %struct.s_write*, %struct.s_write** %5, align 8
  %393 = getelementptr inbounds %struct.s_write, %struct.s_write* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = add nsw i32 %394, %391
  store i32 %395, i32* %393, align 8
  store i32 2, i32* %34, align 4
  br label %440

396:                                              ; preds = %336
  %397 = load %struct.s_write*, %struct.s_write** %5, align 8
  %398 = getelementptr inbounds %struct.s_write, %struct.s_write* %397, i32 0, i32 4
  %399 = load i64*, i64** %398, align 8
  %400 = load %struct.s_write*, %struct.s_write** %5, align 8
  %401 = getelementptr inbounds %struct.s_write, %struct.s_write* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i64, i64* %399, i64 %403
  %405 = call i32 @encode_line(i64* %404, i32* bitcast ([3 x i8]* @.str.4 to i32*))
  %406 = load %struct.s_write*, %struct.s_write** %5, align 8
  %407 = getelementptr inbounds %struct.s_write, %struct.s_write* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = add nsw i32 %408, %405
  store i32 %409, i32* %407, align 8
  %410 = load %struct.s_write*, %struct.s_write** %5, align 8
  %411 = getelementptr inbounds %struct.s_write, %struct.s_write* %410, i32 0, i32 4
  %412 = load i64*, i64** %411, align 8
  %413 = load %struct.s_write*, %struct.s_write** %5, align 8
  %414 = getelementptr inbounds %struct.s_write, %struct.s_write* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i64, i64* %412, i64 %416
  %418 = load i32, i32* %37, align 4
  %419 = call i32 @stuff_space(i64* %417, i32 %418)
  %420 = load %struct.s_write*, %struct.s_write** %5, align 8
  %421 = getelementptr inbounds %struct.s_write, %struct.s_write* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, %419
  store i32 %423, i32* %421, align 8
  %424 = load %struct.s_write*, %struct.s_write** %5, align 8
  %425 = load %struct.s_write*, %struct.s_write** %5, align 8
  %426 = getelementptr inbounds %struct.s_write, %struct.s_write* %425, i32 0, i32 4
  %427 = load i64*, i64** %426, align 8
  %428 = load %struct.s_write*, %struct.s_write** %5, align 8
  %429 = getelementptr inbounds %struct.s_write, %struct.s_write* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i64, i64* %427, i64 %431
  %433 = load i32, i32* %7, align 4
  %434 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %435 = call i32 @get_decoder_line_encoded(%struct.s_write* %424, i64* %432, i32 %433, %struct.eia608_screen* %434)
  %436 = load %struct.s_write*, %struct.s_write** %5, align 8
  %437 = getelementptr inbounds %struct.s_write, %struct.s_write* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = add nsw i32 %438, %435
  store i32 %439, i32* %437, align 8
  br label %440

440:                                              ; preds = %396, %350
  br label %441

441:                                              ; preds = %440, %327
  br label %442

442:                                              ; preds = %441
  %443 = load i32, i32* %7, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %7, align 4
  br label %324

445:                                              ; preds = %324
  %446 = load i8*, i8** %29, align 8
  %447 = call i32 @free(i8* %446)
  %448 = load %struct.s_write*, %struct.s_write** %5, align 8
  %449 = getelementptr inbounds %struct.s_write, %struct.s_write* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %528

452:                                              ; preds = %445
  %453 = load %struct.s_write*, %struct.s_write** %5, align 8
  %454 = getelementptr inbounds %struct.s_write, %struct.s_write* %453, i32 0, i32 4
  %455 = load i64*, i64** %454, align 8
  %456 = getelementptr inbounds i64, i64* %455, i64 0
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %528

459:                                              ; preds = %452
  %460 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %461 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %528

464:                                              ; preds = %459
  %465 = load %struct.s_write*, %struct.s_write** %5, align 8
  %466 = getelementptr inbounds %struct.s_write, %struct.s_write* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %466, align 8
  %469 = load %struct.s_write*, %struct.s_write** %5, align 8
  %470 = getelementptr inbounds %struct.s_write, %struct.s_write* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = load i32, i32* @SSA_PREAMBLE_LEN, align 4
  %473 = add nsw i32 %471, %472
  %474 = call %struct.TYPE_10__* @hb_buffer_init(i32 %473)
  store %struct.TYPE_10__* %474, %struct.TYPE_10__** %38, align 8
  %475 = load i8*, i8** @HB_FRAME_SUBTITLE, align 8
  %476 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %477 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %477, i32 0, i32 4
  store i8* %475, i8** %478, align 8
  %479 = load i64, i64* %8, align 8
  %480 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %481 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %481, i32 0, i32 2
  store i64 %479, i64* %482, align 8
  %483 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %484 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %485, i32 0, i32 1
  store i64 %483, i64* %486, align 8
  %487 = load %struct.s_write*, %struct.s_write** %5, align 8
  %488 = getelementptr inbounds %struct.s_write, %struct.s_write* %487, i32 0, i32 8
  %489 = load %struct.TYPE_9__*, %struct.TYPE_9__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %493 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %493, i32 0, i32 0
  store i32 %491, i32* %494, align 8
  %495 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %496 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %495, i32 0, i32 1
  %497 = load i64, i64* %496, align 8
  %498 = inttoptr i64 %497 to i8*
  %499 = load %struct.s_write*, %struct.s_write** %5, align 8
  %500 = getelementptr inbounds %struct.s_write, %struct.s_write* %499, i32 0, i32 5
  %501 = load i32, i32* %500, align 8
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %500, align 8
  %503 = call i32 @sprintf(i8* %498, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %502)
  %504 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 1
  %506 = load i64, i64* %505, align 8
  %507 = inttoptr i64 %506 to i8*
  %508 = call i32 @strlen(i8* %507)
  store i32 %508, i32* %39, align 4
  %509 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %510 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %509, i32 0, i32 1
  %511 = load i64, i64* %510, align 8
  %512 = load i32, i32* %39, align 4
  %513 = sext i32 %512 to i64
  %514 = add nsw i64 %511, %513
  %515 = load %struct.s_write*, %struct.s_write** %5, align 8
  %516 = getelementptr inbounds %struct.s_write, %struct.s_write* %515, i32 0, i32 4
  %517 = load i64*, i64** %516, align 8
  %518 = load %struct.s_write*, %struct.s_write** %5, align 8
  %519 = getelementptr inbounds %struct.s_write, %struct.s_write* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = call i32 @memcpy(i64 %514, i64* %517, i32 %520)
  %522 = load %struct.s_write*, %struct.s_write** %5, align 8
  %523 = getelementptr inbounds %struct.s_write, %struct.s_write* %522, i32 0, i32 7
  %524 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %525 = call i32 @hb_buffer_list_append(i32* %523, %struct.TYPE_10__* %524)
  store i32 1, i32* %6, align 4
  %526 = load %struct.s_write*, %struct.s_write** %5, align 8
  %527 = getelementptr inbounds %struct.s_write, %struct.s_write* %526, i32 0, i32 6
  store i32 1, i32* %527, align 4
  br label %566

528:                                              ; preds = %459, %452, %445
  %529 = load %struct.s_write*, %struct.s_write** %5, align 8
  %530 = getelementptr inbounds %struct.s_write, %struct.s_write* %529, i32 0, i32 6
  %531 = load i32, i32* %530, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %565

533:                                              ; preds = %528
  %534 = call %struct.TYPE_10__* @hb_buffer_init(i32 0)
  store %struct.TYPE_10__* %534, %struct.TYPE_10__** %40, align 8
  %535 = load i8*, i8** @HB_FRAME_SUBTITLE, align 8
  %536 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i32 0, i32 4
  store i8* %535, i8** %538, align 8
  %539 = load i32, i32* @HB_BUF_FLAG_EOS, align 4
  %540 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %541 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %541, i32 0, i32 3
  store i32 %539, i32* %542, align 8
  %543 = load i64, i64* %8, align 8
  %544 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %545 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %545, i32 0, i32 2
  store i64 %543, i64* %546, align 8
  %547 = load i64, i64* %8, align 8
  %548 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %549 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %549, i32 0, i32 1
  store i64 %547, i64* %550, align 8
  %551 = load %struct.s_write*, %struct.s_write** %5, align 8
  %552 = getelementptr inbounds %struct.s_write, %struct.s_write* %551, i32 0, i32 8
  %553 = load %struct.TYPE_9__*, %struct.TYPE_9__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 4
  %556 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %557, i32 0, i32 0
  store i32 %555, i32* %558, align 8
  %559 = load %struct.s_write*, %struct.s_write** %5, align 8
  %560 = getelementptr inbounds %struct.s_write, %struct.s_write* %559, i32 0, i32 7
  %561 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %562 = call i32 @hb_buffer_list_append(i32* %560, %struct.TYPE_10__* %561)
  %563 = load %struct.s_write*, %struct.s_write** %5, align 8
  %564 = getelementptr inbounds %struct.s_write, %struct.s_write* %563, i32 0, i32 6
  store i32 0, i32* %564, align 4
  br label %565

565:                                              ; preds = %533, %528
  br label %566

566:                                              ; preds = %565, %464
  %567 = load i64, i64* @debug_608, align 8
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %569, label %571

569:                                              ; preds = %566
  %570 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %571

571:                                              ; preds = %569, %566
  %572 = load i32, i32* %6, align 4
  store i32 %572, i32* %3, align 4
  br label %573

573:                                              ; preds = %571, %51
  %574 = load i32, i32* %3, align 4
  ret i32 %574
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i32 @find_limit_characters(i32, i32*, i32*) #1

declare dso_local i8* @hb_strdup_printf(i8*, i32, i32) #1

declare dso_local i32 @encode_line(i64*, i32*) #1

declare dso_local i32 @stuff_space(i64*, i32) #1

declare dso_local i32 @get_decoder_line_encoded(%struct.s_write*, i64*, i32, %struct.eia608_screen*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_10__* @hb_buffer_init(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i64, i64*, i32) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
