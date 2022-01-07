; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ccaption_dec.c_capture_screen.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ccaption_dec.c_capture_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__, %struct.Screen* }
%struct.TYPE_7__ = type { i32, i64* }
%struct.Screen = type { i8**, i8**, i8**, i64 }

@CCFONT_REGULAR = common dso_local global i32 0, align 4
@SCREEN_ROWS = common dso_local global i32 0, align 4
@CCSET_BASIC_AMERICAN = common dso_local global i8 0, align 1
@ASS_DEFAULT_PLAYRESX = common dso_local global double 0.000000e+00, align 8
@ASS_DEFAULT_PLAYRESY = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [20 x i8] c"{\\an7}{\\pos(%d,%d)}\00", align 1
@SCREEN_COLUMNS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"{\\i0}\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"{\\u0}\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"{\\u0}{\\i0}\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"{\\i1}\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"{\\u1}\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"{\\u1}{\\i1}\00", align 1
@charset_overrides = common dso_local global i8*** null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s%s\\h\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s%s%c\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @capture_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_screen(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Screen*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %6, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load %struct.Screen*, %struct.Screen** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.Screen, %struct.Screen* %22, i64 %26
  store %struct.Screen* %27, %struct.Screen** %7, align 8
  %28 = load i32, i32* @CCFONT_REGULAR, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = call i32 @av_bprint_clear(%struct.TYPE_7__* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %99, %1
  %33 = load %struct.Screen*, %struct.Screen** %7, align 8
  %34 = getelementptr inbounds %struct.Screen, %struct.Screen* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SCREEN_ROWS, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i1 [ false, %32 ], [ %40, %37 ]
  br i1 %42, label %43, label %102

43:                                               ; preds = %41
  %44 = load %struct.Screen*, %struct.Screen** %7, align 8
  %45 = getelementptr inbounds %struct.Screen, %struct.Screen* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @CHECK_FLAG(i64 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %98

50:                                               ; preds = %43
  %51 = load %struct.Screen*, %struct.Screen** %7, align 8
  %52 = getelementptr inbounds %struct.Screen, %struct.Screen* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %9, align 8
  %58 = load %struct.Screen*, %struct.Screen** %7, align 8
  %59 = getelementptr inbounds %struct.Screen, %struct.Screen* %58, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %10, align 8
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %85, %50
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 32
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8, i8* @CCSET_BASIC_AMERICAN, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br label %83

83:                                               ; preds = %73, %65
  %84 = phi i1 [ false, %65 ], [ %82, %73 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %65

88:                                               ; preds = %83
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %95, %91
  br label %98

98:                                               ; preds = %97, %43
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %32

102:                                              ; preds = %41
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %302, %102
  %104 = load %struct.Screen*, %struct.Screen** %7, align 8
  %105 = getelementptr inbounds %struct.Screen, %struct.Screen* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @SCREEN_ROWS, align 4
  %111 = icmp slt i32 %109, %110
  br label %112

112:                                              ; preds = %108, %103
  %113 = phi i1 [ false, %103 ], [ %111, %108 ]
  br i1 %113, label %114, label %305

114:                                              ; preds = %112
  %115 = load %struct.Screen*, %struct.Screen** %7, align 8
  %116 = getelementptr inbounds %struct.Screen, %struct.Screen* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i64 @CHECK_FLAG(i64 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %301

121:                                              ; preds = %114
  %122 = load %struct.Screen*, %struct.Screen** %7, align 8
  %123 = getelementptr inbounds %struct.Screen, %struct.Screen* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %11, align 8
  %129 = load %struct.Screen*, %struct.Screen** %7, align 8
  %130 = getelementptr inbounds %struct.Screen, %struct.Screen* %129, i32 0, i32 2
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %12, align 8
  %136 = load %struct.Screen*, %struct.Screen** %7, align 8
  %137 = getelementptr inbounds %struct.Screen, %struct.Screen* %136, i32 0, i32 1
  %138 = load i8**, i8*** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %167, %121
  %144 = load i8*, i8** %11, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 32
  br i1 %150, label %151, label %165

151:                                              ; preds = %143
  %152 = load i8*, i8** %13, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = load i8, i8* @CCSET_BASIC_AMERICAN, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %151
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp slt i32 %162, %163
  br label %165

165:                                              ; preds = %161, %151, %143
  %166 = phi i1 [ false, %151 ], [ false, %143 ], [ %164, %161 ]
  br i1 %166, label %167, label %170

167:                                              ; preds = %165
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %143

170:                                              ; preds = %165
  %171 = load double, double* @ASS_DEFAULT_PLAYRESX, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sitofp i32 %172 to double
  %174 = fmul double 2.500000e-02, %173
  %175 = fadd double 1.000000e-01, %174
  %176 = fmul double %171, %175
  %177 = fptosi double %176 to i32
  store i32 %177, i32* %15, align 4
  %178 = load double, double* @ASS_DEFAULT_PLAYRESY, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sitofp i32 %179 to double
  %181 = fmul double 5.330000e-02, %180
  %182 = fadd double 1.000000e-01, %181
  %183 = fmul double %178, %182
  %184 = fptosi double %183 to i32
  store i32 %184, i32* %16, align 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %16, align 4
  %189 = call i32 (%struct.TYPE_7__*, i8*, ...) @av_bprintf(%struct.TYPE_7__* %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %294, %170
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* @SCREEN_COLUMNS, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %297

194:                                              ; preds = %190
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %195 = load i8*, i8** %11, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  br label %297

203:                                              ; preds = %194
  %204 = load i32, i32* %8, align 4
  %205 = load i8*, i8** %12, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %204, %210
  br i1 %211, label %212, label %228

212:                                              ; preds = %203
  %213 = load i32, i32* %8, align 4
  switch i32 %213, label %217 [
    i32 130, label %214
    i32 129, label %215
    i32 128, label %216
  ]

214:                                              ; preds = %212
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  br label %217

215:                                              ; preds = %212
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %217

216:                                              ; preds = %212
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %217

217:                                              ; preds = %212, %216, %215, %214
  %218 = load i8*, i8** %12, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  switch i32 %223, label %227 [
    i32 130, label %224
    i32 129, label %225
    i32 128, label %226
  ]

224:                                              ; preds = %217
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %19, align 8
  br label %227

225:                                              ; preds = %217
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %19, align 8
  br label %227

226:                                              ; preds = %217
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %19, align 8
  br label %227

227:                                              ; preds = %217, %226, %225, %224
  br label %228

228:                                              ; preds = %227, %203
  %229 = load i8*, i8** %12, align 8
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  store i32 %234, i32* %8, align 4
  %235 = load i8***, i8**** @charset_overrides, align 8
  %236 = load i8*, i8** %13, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %236, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8**, i8*** %235, i64 %242
  %244 = load i8**, i8*** %243, align 8
  %245 = load i8*, i8** %11, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %244, i64 %251
  %253 = load i8*, i8** %252, align 8
  store i8* %253, i8** %14, align 8
  %254 = load i8*, i8** %14, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %263

256:                                              ; preds = %228
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 2
  %259 = load i8*, i8** %18, align 8
  %260 = load i8*, i8** %19, align 8
  %261 = load i8*, i8** %14, align 8
  %262 = call i32 (%struct.TYPE_7__*, i8*, ...) @av_bprintf(%struct.TYPE_7__* %258, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %259, i8* %260, i8* %261)
  store i32 1, i32* %17, align 4
  br label %293

263:                                              ; preds = %228
  %264 = load i8*, i8** %11, align 8
  %265 = load i32, i32* %5, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 32
  br i1 %270, label %271, label %280

271:                                              ; preds = %263
  %272 = load i32, i32* %17, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %271
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 2
  %277 = load i8*, i8** %18, align 8
  %278 = load i8*, i8** %19, align 8
  %279 = call i32 (%struct.TYPE_7__*, i8*, ...) @av_bprintf(%struct.TYPE_7__* %276, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %277, i8* %278)
  br label %292

280:                                              ; preds = %271, %263
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 2
  %283 = load i8*, i8** %18, align 8
  %284 = load i8*, i8** %19, align 8
  %285 = load i8*, i8** %11, align 8
  %286 = load i32, i32* %5, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %285, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = call i32 (%struct.TYPE_7__*, i8*, ...) @av_bprintf(%struct.TYPE_7__* %282, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %283, i8* %284, i32 %290)
  store i32 1, i32* %17, align 4
  br label %292

292:                                              ; preds = %280, %274
  br label %293

293:                                              ; preds = %292, %256
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %5, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %5, align 4
  br label %190

297:                                              ; preds = %202, %190
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 2
  %300 = call i32 (%struct.TYPE_7__*, i8*, ...) @av_bprintf(%struct.TYPE_7__* %299, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %301

301:                                              ; preds = %297, %114
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %4, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %4, align 4
  br label %103

305:                                              ; preds = %112
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 2
  %308 = call i32 @av_bprint_is_complete(%struct.TYPE_7__* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %305
  %311 = load i32, i32* @ENOMEM, align 4
  %312 = call i32 @AVERROR(i32 %311)
  store i32 %312, i32* %2, align 4
  br label %343

313:                                              ; preds = %305
  %314 = load %struct.Screen*, %struct.Screen** %7, align 8
  %315 = getelementptr inbounds %struct.Screen, %struct.Screen* %314, i32 0, i32 3
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %340

318:                                              ; preds = %313
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = icmp sge i32 %322, 2
  br i1 %323, label %324, label %340

324:                                              ; preds = %318
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = sub nsw i32 %328, 2
  store i32 %329, i32* %327, align 8
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 1
  %333 = load i64*, i64** %332, align 8
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i64, i64* %333, i64 %338
  store i64 0, i64* %339, align 8
  br label %340

340:                                              ; preds = %324, %318, %313
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 1
  store i32 1, i32* %342, align 4
  store i32 0, i32* %2, align 4
  br label %343

343:                                              ; preds = %340, %310
  %344 = load i32, i32* %2, align 4
  ret i32 %344
}

declare dso_local i32 @av_bprint_clear(%struct.TYPE_7__*) #1

declare dso_local i64 @CHECK_FLAG(i64, i32) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @av_bprint_is_complete(%struct.TYPE_7__*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
