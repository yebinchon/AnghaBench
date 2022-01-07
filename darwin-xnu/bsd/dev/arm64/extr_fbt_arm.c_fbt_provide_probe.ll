; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_fbt_arm.c_fbt_provide_probe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_fbt_arm.c_fbt_provide_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modctl = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i8**, i64, i8*, i8*, i8*, i32, i32, %struct.modctl*, %struct.TYPE_6__*, i32 }

@.str = private unnamed_addr constant [35 x i8] c"dtrace: %s has an invalid address\0A\00", align 1
@fbt_id = common dso_local global i32 0, align 4
@FBT_ENTRY = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@MAX_FBTP_NAME_CHARS = common dso_local global i32 0, align 4
@FBT_AFRAMES_ENTRY = common dso_local global i32 0, align 4
@DTRACE_INVOP_PUSH_FRAME = common dso_local global i32 0, align 4
@FBT_PATCHVAL = common dso_local global i8* null, align 8
@fbt_probetab = common dso_local global i8** null, align 8
@FBT_RETURN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"dtrace: fbt: No return probe for %s, walked to next routine at 0x%016llx\0A\00", align 1
@FBT_AFRAMES_RETURN = common dso_local global i32 0, align 4
@DTRACE_INVOP_RET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fbt_provide_probe(%struct.modctl* %0, i8* %1, i8* %2, i8** %3, i8** %4) #0 {
  %6 = alloca %struct.modctl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8**, align 8
  store %struct.modctl* %0, %struct.modctl** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %11, align 4
  store i8** null, i8*** %17, align 8
  %23 = load i8**, i8*** %9, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load i8**, i8*** %10, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8**, i8*** %10, align 8
  %30 = load i8**, i8*** %9, align 8
  %31 = icmp ult i8** %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %25, %5
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %409

35:                                               ; preds = %28
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  %36 = load i8**, i8*** %10, align 8
  store i8** %36, i8*** %18, align 8
  %37 = call i32 @assert(i32 0)
  %38 = load i8**, i8*** %9, align 8
  store i8** %38, i8*** %16, align 8
  store i8* null, i8** %19, align 8
  br label %39

39:                                               ; preds = %70, %35
  %40 = load i8**, i8*** %16, align 8
  %41 = load i8**, i8*** %10, align 8
  %42 = icmp ult i8** %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load i8**, i8*** %16, align 8
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %19, align 8
  %46 = load i8*, i8** %19, align 8
  %47 = call i64 @FBT_IS_ARM64_FRAME_PUSH(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  store i32 1, i32* %20, align 4
  %50 = load i8**, i8*** %16, align 8
  store i8** %50, i8*** %17, align 8
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i32, i32* %20, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i8*, i8** %19, align 8
  %56 = call i64 @FBT_IS_ARM64_ADD_FP_SP(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %73

59:                                               ; preds = %54, %51
  %60 = load i8*, i8** %19, align 8
  %61 = call i32 @FBT_IS_ARM64_RET(i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %73

64:                                               ; preds = %59
  %65 = load i8*, i8** %19, align 8
  %66 = call i64 @FBT_IS_ARM64_FRAME_POP(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %73

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69
  %71 = load i8**, i8*** %16, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %16, align 8
  br label %39

73:                                               ; preds = %68, %63, %58, %39
  %74 = load i32, i32* %20, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8*, i8** %19, align 8
  %78 = call i64 @FBT_IS_ARM64_ADD_FP_SP(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76, %73
  br label %409

81:                                               ; preds = %76
  %82 = load i32, i32* @fbt_id, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* @FBT_ENTRY, align 4
  %86 = call i64 @dtrace_probe_lookup(i32 %82, i8* %83, i8* %84, i32 %85)
  store i64 %86, i64* %12, align 8
  %87 = load i32, i32* @KM_SLEEP, align 4
  %88 = call %struct.TYPE_6__* @kmem_zalloc(i32 88, i32 %87)
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %13, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 10
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %90, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 11
  %93 = bitcast i32* %92 to i8*
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* @MAX_FBTP_NAME_CHARS, align 4
  %96 = call i32 @strlcpy(i8* %93, i8* %94, i32 %95)
  %97 = load i64, i64* %12, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %141

99:                                               ; preds = %81
  %100 = load i32, i32* @fbt_id, align 4
  %101 = load i64, i64* %12, align 8
  %102 = call %struct.TYPE_6__* @dtrace_probe_arg(i32 %100, i64 %101)
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %15, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %104 = icmp ne %struct.TYPE_6__* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @ASSERT(i32 %105)
  br label %107

107:                                              ; preds = %136, %99
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %109 = icmp ne %struct.TYPE_6__* %108, null
  br i1 %109, label %110, label %140

110:                                              ; preds = %107
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %118, %110
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 10
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = icmp eq %struct.TYPE_6__* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 10
  store %struct.TYPE_6__* %127, %struct.TYPE_6__** %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  br label %140

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 10
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  store %struct.TYPE_6__* %139, %struct.TYPE_6__** %15, align 8
  br label %107

140:                                              ; preds = %126, %107
  br label %151

141:                                              ; preds = %81
  %142 = load i32, i32* @fbt_id, align 4
  %143 = load i8*, i8** %7, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = load i32, i32* @FBT_ENTRY, align 4
  %146 = load i32, i32* @FBT_AFRAMES_ENTRY, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %148 = call i8* @dtrace_probe_create(i32 %142, i8* %143, i8* %144, i32 %145, i32 %146, %struct.TYPE_6__* %147)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  store i8* %148, i8** %150, align 8
  store i32 0, i32* %11, align 4
  br label %151

151:                                              ; preds = %141, %140
  %152 = load i8**, i8*** %16, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  store i8** %152, i8*** %154, align 8
  %155 = load %struct.modctl*, %struct.modctl** %6, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 9
  store %struct.modctl* %155, %struct.modctl** %157, align 8
  %158 = load %struct.modctl*, %struct.modctl** %6, align 8
  %159 = getelementptr inbounds %struct.modctl, %struct.modctl* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 8
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @DTRACE_INVOP_PUSH_FRAME, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 7
  store i32 %163, i32* %165, align 8
  %166 = load i8*, i8** %19, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 6
  store i8* %166, i8** %168, align 8
  %169 = load i8*, i8** @FBT_PATCHVAL, align 8
  %170 = ptrtoint i8* %169 to i64
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i64 0, i64* %174, align 8
  %175 = load i8**, i8*** @fbt_probetab, align 8
  %176 = load i8**, i8*** %16, align 8
  %177 = call i64 @FBT_ADDR2NDX(i8** %176)
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 5
  store i8* %179, i8** %181, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %183 = bitcast %struct.TYPE_6__* %182 to i8*
  %184 = load i8**, i8*** @fbt_probetab, align 8
  %185 = load i8**, i8*** %16, align 8
  %186 = call i64 @FBT_ADDR2NDX(i8** %185)
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186
  store i8* %183, i8** %187, align 8
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %151
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 4
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %195 = call i32 @fbt_enable(i32* null, i8* %193, %struct.TYPE_6__* %194)
  br label %196

196:                                              ; preds = %190, %151
  store i32 0, i32* %11, align 4
  %197 = load i32, i32* @fbt_id, align 4
  %198 = load i8*, i8** %7, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = load i32, i32* @FBT_RETURN, align 4
  %201 = call i64 @dtrace_probe_lookup(i32 %197, i8* %198, i8* %199, i32 %200)
  store i64 %201, i64* %12, align 8
  %202 = load i64, i64* %12, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %238

204:                                              ; preds = %196
  %205 = load i32, i32* @fbt_id, align 4
  %206 = load i64, i64* %12, align 8
  %207 = call %struct.TYPE_6__* @dtrace_probe_arg(i32 %205, i64 %206)
  store %struct.TYPE_6__* %207, %struct.TYPE_6__** %14, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %209 = icmp ne %struct.TYPE_6__* %208, null
  %210 = zext i1 %209 to i32
  %211 = call i32 @ASSERT(i32 %210)
  br label %212

212:                                              ; preds = %233, %204
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %214 = icmp ne %struct.TYPE_6__* %213, null
  br i1 %214, label %215, label %237

215:                                              ; preds = %212
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %218, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %215
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %226

226:                                              ; preds = %223, %215
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 10
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = icmp eq %struct.TYPE_6__* %229, null
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %237

232:                                              ; preds = %226
  br label %233

233:                                              ; preds = %232
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 10
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  store %struct.TYPE_6__* %236, %struct.TYPE_6__** %14, align 8
  br label %212

237:                                              ; preds = %231, %212
  br label %239

238:                                              ; preds = %196
  store i32 0, i32* %11, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %14, align 8
  br label %239

239:                                              ; preds = %238, %237
  %240 = load i8**, i8*** %17, align 8
  %241 = getelementptr inbounds i8*, i8** %240, i64 1
  store i8** %241, i8*** %16, align 8
  br label %242

242:                                              ; preds = %406, %266, %239
  %243 = load i8**, i8*** %16, align 8
  %244 = load i8**, i8*** %18, align 8
  %245 = icmp uge i8** %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  br label %409

247:                                              ; preds = %242
  %248 = load i8**, i8*** %16, align 8
  %249 = load i8*, i8** %248, align 8
  store i8* %249, i8** %19, align 8
  %250 = load i8*, i8** %19, align 8
  %251 = call i64 @FBT_IS_ARM64_FRAME_PUSH(i8* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %247
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %255 = icmp ne %struct.TYPE_6__* %254, null
  br i1 %255, label %261, label %256

256:                                              ; preds = %253
  %257 = load i8*, i8** %8, align 8
  %258 = load i8**, i8*** %16, align 8
  %259 = ptrtoint i8** %258 to i32
  %260 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i8* %257, i32 %259)
  br label %261

261:                                              ; preds = %256, %253
  br label %409

262:                                              ; preds = %247
  %263 = load i8*, i8** %19, align 8
  %264 = call i64 @FBT_IS_ARM64_FRAME_POP(i8* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %262
  %267 = load i8**, i8*** %16, align 8
  %268 = getelementptr inbounds i8*, i8** %267, i32 1
  store i8** %268, i8*** %16, align 8
  br label %242

269:                                              ; preds = %262
  %270 = load i8**, i8*** %16, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i32 1
  store i8** %271, i8*** %16, align 8
  br label %272

272:                                              ; preds = %303, %269
  %273 = load i8**, i8*** %16, align 8
  %274 = load i8**, i8*** %18, align 8
  %275 = icmp ult i8** %273, %274
  br i1 %275, label %276, label %306

276:                                              ; preds = %272
  %277 = load i8**, i8*** %16, align 8
  %278 = load i8*, i8** %277, align 8
  store i8* %278, i8** %19, align 8
  %279 = load i8*, i8** %19, align 8
  %280 = call i32 @FBT_IS_ARM64_RET(i8* %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %276
  br label %306

283:                                              ; preds = %276
  %284 = load i8*, i8** %19, align 8
  %285 = call i64 @FBT_IS_ARM64_B_INSTR(i8* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %302

287:                                              ; preds = %283
  %288 = load i8**, i8*** %16, align 8
  %289 = load i8*, i8** %19, align 8
  %290 = call i32 @FBT_GET_ARM64_B_IMM(i8* %289)
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8*, i8** %288, i64 %291
  store i8** %292, i8*** %22, align 8
  %293 = load i8**, i8*** %22, align 8
  %294 = load i8**, i8*** %18, align 8
  %295 = icmp uge i8** %293, %294
  br i1 %295, label %300, label %296

296:                                              ; preds = %287
  %297 = load i8**, i8*** %22, align 8
  %298 = load i8**, i8*** %9, align 8
  %299 = icmp ult i8** %297, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %296, %287
  br label %306

301:                                              ; preds = %296
  br label %302

302:                                              ; preds = %301, %283
  br label %303

303:                                              ; preds = %302
  %304 = load i8**, i8*** %16, align 8
  %305 = getelementptr inbounds i8*, i8** %304, i32 1
  store i8** %305, i8*** %16, align 8
  br label %272

306:                                              ; preds = %300, %282, %272
  %307 = load i8*, i8** %19, align 8
  %308 = call i32 @FBT_IS_ARM64_RET(i8* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %306
  %311 = load i8*, i8** %19, align 8
  %312 = call i64 @FBT_IS_ARM64_B_INSTR(i8* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %310
  br label %409

315:                                              ; preds = %310, %306
  %316 = load i32, i32* @KM_SLEEP, align 4
  %317 = call %struct.TYPE_6__* @kmem_zalloc(i32 88, i32 %316)
  store %struct.TYPE_6__* %317, %struct.TYPE_6__** %13, align 8
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 10
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %319, align 8
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 11
  %322 = bitcast i32* %321 to i8*
  %323 = load i8*, i8** %8, align 8
  %324 = load i32, i32* @MAX_FBTP_NAME_CHARS, align 4
  %325 = call i32 @strlcpy(i8* %322, i8* %323, i32 %324)
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %327 = icmp eq %struct.TYPE_6__* %326, null
  br i1 %327, label %328, label %338

328:                                              ; preds = %315
  %329 = load i32, i32* @fbt_id, align 4
  %330 = load i8*, i8** %7, align 8
  %331 = load i8*, i8** %8, align 8
  %332 = load i32, i32* @FBT_RETURN, align 4
  %333 = load i32, i32* @FBT_AFRAMES_RETURN, align 4
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %335 = call i8* @dtrace_probe_create(i32 %329, i8* %330, i8* %331, i32 %332, i32 %333, %struct.TYPE_6__* %334)
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 4
  store i8* %335, i8** %337, align 8
  br label %347

338:                                              ; preds = %315
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 10
  store %struct.TYPE_6__* %339, %struct.TYPE_6__** %341, align 8
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 4
  %344 = load i8*, i8** %343, align 8
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 4
  store i8* %344, i8** %346, align 8
  br label %347

347:                                              ; preds = %338, %328
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %348, %struct.TYPE_6__** %14, align 8
  %349 = load i8**, i8*** %16, align 8
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 2
  store i8** %349, i8*** %351, align 8
  %352 = load %struct.modctl*, %struct.modctl** %6, align 8
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 9
  store %struct.modctl* %352, %struct.modctl** %354, align 8
  %355 = load %struct.modctl*, %struct.modctl** %6, align 8
  %356 = getelementptr inbounds %struct.modctl, %struct.modctl* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 8
  store i32 %357, i32* %359, align 4
  %360 = load i8*, i8** %19, align 8
  %361 = call i32 @FBT_IS_ARM64_RET(i8* %360)
  %362 = call i32 @ASSERT(i32 %361)
  %363 = load i32, i32* @DTRACE_INVOP_RET, align 4
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 7
  store i32 %363, i32* %365, align 8
  %366 = load i8**, i8*** %16, align 8
  %367 = bitcast i8** %366 to i32*
  %368 = load i8**, i8*** %9, align 8
  %369 = bitcast i8** %368 to i32*
  %370 = ptrtoint i32* %367 to i64
  %371 = ptrtoint i32* %369 to i64
  %372 = sub i64 %370, %371
  %373 = sdiv exact i64 %372, 4
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 3
  store i64 %373, i64* %375, align 8
  %376 = load i8*, i8** %19, align 8
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 6
  store i8* %376, i8** %378, align 8
  %379 = load i8*, i8** @FBT_PATCHVAL, align 8
  %380 = ptrtoint i8* %379 to i64
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 1
  store i64 %380, i64* %382, align 8
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 0
  store i64 0, i64* %384, align 8
  %385 = load i8**, i8*** @fbt_probetab, align 8
  %386 = load i8**, i8*** %16, align 8
  %387 = call i64 @FBT_ADDR2NDX(i8** %386)
  %388 = getelementptr inbounds i8*, i8** %385, i64 %387
  %389 = load i8*, i8** %388, align 8
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 5
  store i8* %389, i8** %391, align 8
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %393 = bitcast %struct.TYPE_6__* %392 to i8*
  %394 = load i8**, i8*** @fbt_probetab, align 8
  %395 = load i8**, i8*** %16, align 8
  %396 = call i64 @FBT_ADDR2NDX(i8** %395)
  %397 = getelementptr inbounds i8*, i8** %394, i64 %396
  store i8* %393, i8** %397, align 8
  %398 = load i32, i32* %11, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %347
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 4
  %403 = load i8*, i8** %402, align 8
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %405 = call i32 @fbt_enable(i32* null, i8* %403, %struct.TYPE_6__* %404)
  br label %406

406:                                              ; preds = %400, %347
  %407 = load i8**, i8*** %16, align 8
  %408 = getelementptr inbounds i8*, i8** %407, i32 1
  store i8** %408, i8*** %16, align 8
  br label %242

409:                                              ; preds = %314, %261, %246, %80, %32
  ret void
}

declare dso_local i32 @kprintf(i8*, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @FBT_IS_ARM64_FRAME_PUSH(i8*) #1

declare dso_local i64 @FBT_IS_ARM64_ADD_FP_SP(i8*) #1

declare dso_local i32 @FBT_IS_ARM64_RET(i8*) #1

declare dso_local i64 @FBT_IS_ARM64_FRAME_POP(i8*) #1

declare dso_local i64 @dtrace_probe_lookup(i32, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @dtrace_probe_arg(i32, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @dtrace_probe_create(i32, i8*, i8*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @FBT_ADDR2NDX(i8**) #1

declare dso_local i32 @fbt_enable(i32*, i8*, %struct.TYPE_6__*) #1

declare dso_local i64 @FBT_IS_ARM64_B_INSTR(i8*) #1

declare dso_local i32 @FBT_GET_ARM64_B_IMM(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
