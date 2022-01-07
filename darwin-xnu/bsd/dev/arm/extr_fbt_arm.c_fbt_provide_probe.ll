; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_fbt_arm.c_fbt_provide_probe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_fbt_arm.c_fbt_provide_probe.c"
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
@DTRACE_INVOP_PUSH_LR = common dso_local global i32 0, align 4
@FBT_PATCHVAL = common dso_local global i8* null, align 8
@fbt_probetab = common dso_local global i8** null, align 8
@FBT_RETURN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"dtrace: fbt: No return probe for %s, walked to next routine at %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"dtrace: fbt: No return probe for %s, popped regs don't match at %08x\0A\00", align 1
@FBT_AFRAMES_RETURN = common dso_local global i32 0, align 4
@DTRACE_INVOP_POP_PC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fbt_provide_probe(%struct.modctl* %0, i8* %1, i8* %2, i8** %3, i8** %4) #0 {
  %6 = alloca %struct.modctl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8**, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.modctl* %0, %struct.modctl** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %12, align 4
  store i8** null, i8*** %18, align 8
  %26 = load i8**, i8*** %9, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load i8**, i8*** %10, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i8**, i8*** %10, align 8
  %33 = load i8**, i8*** %9, align 8
  %34 = icmp ult i8** %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %28, %5
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %528

38:                                               ; preds = %31
  store i32 0, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  %39 = load i8**, i8*** %10, align 8
  store i8** %39, i8*** %19, align 8
  store i32 0, i32* %11, align 4
  %40 = load i8**, i8*** %9, align 8
  store i8** %40, i8*** %17, align 8
  store i8* null, i8** %20, align 8
  br label %41

41:                                               ; preds = %90, %38
  %42 = load i32, i32* %11, align 4
  %43 = icmp ult i32 %42, 8
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8**, i8*** %17, align 8
  %46 = load i8**, i8*** %10, align 8
  %47 = icmp ult i8** %45, %46
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %50, label %95

50:                                               ; preds = %48
  %51 = load i8**, i8*** %17, align 8
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %20, align 8
  %53 = load i8*, i8** %20, align 8
  %54 = call i64 @FBT_IS_THUMB_PUSH_LR(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  store i32 1, i32* %21, align 4
  %57 = load i8*, i8** %20, align 8
  %58 = call i32 @FBT_THUMB_STACK_REGS(i8* %57)
  store i32 %58, i32* %22, align 4
  %59 = load i8**, i8*** %17, align 8
  store i8** %59, i8*** %18, align 8
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* %21, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i8*, i8** %20, align 8
  %65 = call i64 @FBT_IS_THUMB_SET_R7(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %20, align 8
  %69 = call i64 @FBT_IS_THUMB_MOV_SP_TO_R7(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %63
  br label %95

72:                                               ; preds = %67, %60
  %73 = load i8*, i8** %20, align 8
  %74 = call i64 @FBT_IS_THUMB_BX_REG(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %95

77:                                               ; preds = %72
  %78 = load i8*, i8** %20, align 8
  %79 = call i64 @FBT_IS_THUMB_POP_PC(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %95

82:                                               ; preds = %77
  %83 = load i8*, i8** %20, align 8
  %84 = call i32 @dtrace_instr_size(i8* %83, i32 1)
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i8**, i8*** %17, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %17, align 8
  br label %89

89:                                               ; preds = %86, %82
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = load i8**, i8*** %17, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %94, i8*** %17, align 8
  br label %41

95:                                               ; preds = %81, %76, %71, %48
  %96 = load i32, i32* %21, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i8*, i8** %20, align 8
  %100 = call i64 @FBT_IS_THUMB_SET_R7(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %20, align 8
  %104 = call i64 @FBT_IS_THUMB_MOV_SP_TO_R7(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102, %95
  br label %528

107:                                              ; preds = %102, %98
  %108 = load i32, i32* @fbt_id, align 4
  %109 = load i8*, i8** %7, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* @FBT_ENTRY, align 4
  %112 = call i64 @dtrace_probe_lookup(i32 %108, i8* %109, i8* %110, i32 %111)
  store i64 %112, i64* %13, align 8
  %113 = load i32, i32* @KM_SLEEP, align 4
  %114 = call %struct.TYPE_6__* @kmem_zalloc(i32 88, i32 %113)
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %14, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 10
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %116, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 11
  %119 = bitcast i32* %118 to i8*
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* @MAX_FBTP_NAME_CHARS, align 4
  %122 = call i32 @strlcpy(i8* %119, i8* %120, i32 %121)
  %123 = load i64, i64* %13, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %167

125:                                              ; preds = %107
  %126 = load i32, i32* @fbt_id, align 4
  %127 = load i64, i64* %13, align 8
  %128 = call %struct.TYPE_6__* @dtrace_probe_arg(i32 %126, i64 %127)
  store %struct.TYPE_6__* %128, %struct.TYPE_6__** %16, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %130 = icmp ne %struct.TYPE_6__* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i32 @ASSERT(i32 %131)
  br label %133

133:                                              ; preds = %162, %125
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %135 = icmp ne %struct.TYPE_6__* %134, null
  br i1 %135, label %136, label %166

136:                                              ; preds = %133
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %139, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %144, %136
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 10
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = icmp eq %struct.TYPE_6__* %150, null
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 10
  store %struct.TYPE_6__* %153, %struct.TYPE_6__** %155, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 4
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 4
  store i8* %158, i8** %160, align 8
  br label %166

161:                                              ; preds = %147
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 10
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  store %struct.TYPE_6__* %165, %struct.TYPE_6__** %16, align 8
  br label %133

166:                                              ; preds = %152, %133
  br label %177

167:                                              ; preds = %107
  %168 = load i32, i32* @fbt_id, align 4
  %169 = load i8*, i8** %7, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = load i32, i32* @FBT_ENTRY, align 4
  %172 = load i32, i32* @FBT_AFRAMES_ENTRY, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %174 = call i8* @dtrace_probe_create(i32 %168, i8* %169, i8* %170, i32 %171, i32 %172, %struct.TYPE_6__* %173)
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 4
  store i8* %174, i8** %176, align 8
  store i32 0, i32* %12, align 4
  br label %177

177:                                              ; preds = %167, %166
  %178 = load i8**, i8*** %17, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  store i8** %178, i8*** %180, align 8
  %181 = load %struct.modctl*, %struct.modctl** %6, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 9
  store %struct.modctl* %181, %struct.modctl** %183, align 8
  %184 = load %struct.modctl*, %struct.modctl** %6, align 8
  %185 = getelementptr inbounds %struct.modctl, %struct.modctl* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 8
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @DTRACE_INVOP_PUSH_LR, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 7
  store i32 %189, i32* %191, align 8
  %192 = load i8*, i8** %20, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 6
  store i8* %192, i8** %194, align 8
  %195 = load i8*, i8** @FBT_PATCHVAL, align 8
  %196 = ptrtoint i8* %195 to i64
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  store i64 %196, i64* %198, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  store i64 0, i64* %200, align 8
  %201 = load i8**, i8*** @fbt_probetab, align 8
  %202 = load i8**, i8*** %17, align 8
  %203 = call i64 @FBT_ADDR2NDX(i8** %202)
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 5
  store i8* %205, i8** %207, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %209 = bitcast %struct.TYPE_6__* %208 to i8*
  %210 = load i8**, i8*** @fbt_probetab, align 8
  %211 = load i8**, i8*** %17, align 8
  %212 = call i64 @FBT_ADDR2NDX(i8** %211)
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  store i8* %209, i8** %213, align 8
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %177
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 4
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %221 = call i32 @fbt_enable(i32* null, i8* %219, %struct.TYPE_6__* %220)
  br label %222

222:                                              ; preds = %216, %177
  store i32 0, i32* %12, align 4
  %223 = load i32, i32* @fbt_id, align 4
  %224 = load i8*, i8** %7, align 8
  %225 = load i8*, i8** %8, align 8
  %226 = load i32, i32* @FBT_RETURN, align 4
  %227 = call i64 @dtrace_probe_lookup(i32 %223, i8* %224, i8* %225, i32 %226)
  store i64 %227, i64* %13, align 8
  %228 = load i64, i64* %13, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %264

230:                                              ; preds = %222
  %231 = load i32, i32* @fbt_id, align 4
  %232 = load i64, i64* %13, align 8
  %233 = call %struct.TYPE_6__* @dtrace_probe_arg(i32 %231, i64 %232)
  store %struct.TYPE_6__* %233, %struct.TYPE_6__** %15, align 8
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %235 = icmp ne %struct.TYPE_6__* %234, null
  %236 = zext i1 %235 to i32
  %237 = call i32 @ASSERT(i32 %236)
  br label %238

238:                                              ; preds = %259, %230
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %240 = icmp ne %struct.TYPE_6__* %239, null
  br i1 %240, label %241, label %263

241:                                              ; preds = %238
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp eq i64 %244, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %12, align 4
  br label %252

252:                                              ; preds = %249, %241
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 10
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %254, align 8
  %256 = icmp eq %struct.TYPE_6__* %255, null
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  br label %263

258:                                              ; preds = %252
  br label %259

259:                                              ; preds = %258
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 10
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %261, align 8
  store %struct.TYPE_6__* %262, %struct.TYPE_6__** %15, align 8
  br label %238

263:                                              ; preds = %257, %238
  br label %265

264:                                              ; preds = %222
  store i32 0, i32* %12, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %15, align 8
  br label %265

265:                                              ; preds = %264, %263
  %266 = load i8**, i8*** %18, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 1
  store i8** %267, i8*** %17, align 8
  br label %268

268:                                              ; preds = %525, %374, %290, %265
  %269 = load i8**, i8*** %17, align 8
  %270 = load i8**, i8*** %19, align 8
  %271 = icmp uge i8** %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %268
  br label %528

273:                                              ; preds = %268
  %274 = load i8**, i8*** %17, align 8
  %275 = ptrtoint i8** %274 to i64
  %276 = and i64 %275, 3
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %294

278:                                              ; preds = %273
  %279 = load i8**, i8*** %17, align 8
  %280 = bitcast i8** %279 to i8*
  %281 = bitcast i8* %280 to i8***
  %282 = load i8**, i8*** %281, align 8
  store i8** %282, i8*** %23, align 8
  %283 = load i8**, i8*** %23, align 8
  %284 = load i8**, i8*** %9, align 8
  %285 = icmp uge i8** %283, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %278
  %287 = load i8**, i8*** %23, align 8
  %288 = load i8**, i8*** %19, align 8
  %289 = icmp ult i8** %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = load i8**, i8*** %17, align 8
  %292 = getelementptr inbounds i8*, i8** %291, i32 1
  store i8** %292, i8*** %17, align 8
  br label %268

293:                                              ; preds = %286, %278
  br label %294

294:                                              ; preds = %293, %273
  %295 = load i8**, i8*** %17, align 8
  %296 = load i8*, i8** %295, align 8
  store i8* %296, i8** %20, align 8
  %297 = load i8*, i8** %20, align 8
  %298 = call i64 @FBT_IS_THUMB_PUSH_LR(i8* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %309

300:                                              ; preds = %294
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %302 = icmp ne %struct.TYPE_6__* %301, null
  br i1 %302, label %308, label %303

303:                                              ; preds = %300
  %304 = load i8*, i8** %8, align 8
  %305 = load i8**, i8*** %17, align 8
  %306 = ptrtoint i8** %305 to i32
  %307 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %304, i32 %306)
  br label %308

308:                                              ; preds = %303, %300
  br label %528

309:                                              ; preds = %294
  %310 = load i8*, i8** %20, align 8
  %311 = call i64 @FBT_IS_THUMB_LDR_PC(i8* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %325

313:                                              ; preds = %309
  %314 = load i8**, i8*** %17, align 8
  %315 = ptrtoint i8** %314 to i64
  %316 = call i64 @thumb_ldr_pc_address(i64 %315)
  store i64 %316, i64* %24, align 8
  %317 = load i64, i64* %24, align 8
  %318 = load i8**, i8*** %19, align 8
  %319 = ptrtoint i8** %318 to i64
  %320 = icmp slt i64 %317, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %313
  %322 = load i64, i64* %24, align 8
  %323 = inttoptr i64 %322 to i8**
  store i8** %323, i8*** %19, align 8
  br label %324

324:                                              ; preds = %321, %313
  br label %325

325:                                              ; preds = %324, %309
  %326 = load i8**, i8*** %17, align 8
  %327 = getelementptr inbounds i8*, i8** %326, i64 1
  %328 = load i8**, i8*** %19, align 8
  %329 = icmp ult i8** %327, %328
  br i1 %329, label %330, label %350

330:                                              ; preds = %325
  %331 = load i8**, i8*** %17, align 8
  %332 = load i8*, i8** %331, align 8
  %333 = load i8**, i8*** %17, align 8
  %334 = getelementptr inbounds i8*, i8** %333, i64 1
  %335 = load i8*, i8** %334, align 8
  %336 = call i64 @FBT_IS_THUMB32_LDR_PC(i8* %332, i8* %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %350

338:                                              ; preds = %330
  %339 = load i8**, i8*** %17, align 8
  %340 = ptrtoint i8** %339 to i64
  %341 = call i64 @thumb32_ldr_pc_address(i64 %340)
  store i64 %341, i64* %25, align 8
  %342 = load i64, i64* %25, align 8
  %343 = load i8**, i8*** %19, align 8
  %344 = ptrtoint i8** %343 to i64
  %345 = icmp slt i64 %342, %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %338
  %347 = load i64, i64* %25, align 8
  %348 = inttoptr i64 %347 to i8**
  store i8** %348, i8*** %19, align 8
  br label %349

349:                                              ; preds = %346, %338
  br label %350

350:                                              ; preds = %349, %330, %325
  %351 = load i8*, i8** %20, align 8
  %352 = call i64 @FBT_IS_THUMB_POP_PC(i8* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %375, label %354

354:                                              ; preds = %350
  %355 = load i8*, i8** %20, align 8
  %356 = call i32 @FBT_IS_THUMB_POP_R7(i8* %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %375, label %358

358:                                              ; preds = %354
  %359 = load i8*, i8** %20, align 8
  %360 = load i8**, i8*** %17, align 8
  %361 = getelementptr inbounds i8*, i8** %360, i64 1
  %362 = load i8*, i8** %361, align 8
  %363 = call i32 @FBT_IS_THUMB32_POP_R7LR(i8* %359, i8* %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %375, label %365

365:                                              ; preds = %358
  %366 = load i8**, i8*** %17, align 8
  %367 = getelementptr inbounds i8*, i8** %366, i32 1
  store i8** %367, i8*** %17, align 8
  %368 = load i8*, i8** %20, align 8
  %369 = call i32 @dtrace_instr_size(i8* %368, i32 1)
  %370 = icmp eq i32 %369, 4
  br i1 %370, label %371, label %374

371:                                              ; preds = %365
  %372 = load i8**, i8*** %17, align 8
  %373 = getelementptr inbounds i8*, i8** %372, i32 1
  store i8** %373, i8*** %17, align 8
  br label %374

374:                                              ; preds = %371, %365
  br label %268

375:                                              ; preds = %358, %354, %350
  %376 = load i8*, i8** %20, align 8
  %377 = call i64 @FBT_IS_THUMB_POP_PC(i8* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %390

379:                                              ; preds = %375
  %380 = load i32, i32* %22, align 4
  %381 = load i8*, i8** %20, align 8
  %382 = call i32 @FBT_THUMB_STACK_REGS(i8* %381)
  %383 = icmp ne i32 %380, %382
  br i1 %383, label %384, label %389

384:                                              ; preds = %379
  %385 = load i8*, i8** %8, align 8
  %386 = load i8**, i8*** %17, align 8
  %387 = ptrtoint i8** %386 to i32
  %388 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %385, i32 %387)
  br label %528

389:                                              ; preds = %379
  br label %426

390:                                              ; preds = %375
  store i32 0, i32* %11, align 4
  br label %391

391:                                              ; preds = %415, %390
  %392 = load i32, i32* %11, align 4
  %393 = icmp ult i32 %392, 4
  br i1 %393, label %394, label %398

394:                                              ; preds = %391
  %395 = load i8**, i8*** %17, align 8
  %396 = load i8**, i8*** %19, align 8
  %397 = icmp ult i8** %395, %396
  br label %398

398:                                              ; preds = %394, %391
  %399 = phi i1 [ false, %391 ], [ %397, %394 ]
  br i1 %399, label %400, label %420

400:                                              ; preds = %398
  %401 = load i8**, i8*** %17, align 8
  %402 = load i8*, i8** %401, align 8
  store i8* %402, i8** %20, align 8
  %403 = load i8*, i8** %20, align 8
  %404 = call i64 @FBT_IS_THUMB_BX_REG(i8* %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %400
  br label %420

407:                                              ; preds = %400
  %408 = load i8*, i8** %20, align 8
  %409 = call i32 @dtrace_instr_size(i8* %408, i32 1)
  %410 = icmp eq i32 %409, 4
  br i1 %410, label %411, label %414

411:                                              ; preds = %407
  %412 = load i8**, i8*** %17, align 8
  %413 = getelementptr inbounds i8*, i8** %412, i32 1
  store i8** %413, i8*** %17, align 8
  br label %414

414:                                              ; preds = %411, %407
  br label %415

415:                                              ; preds = %414
  %416 = load i32, i32* %11, align 4
  %417 = add i32 %416, 1
  store i32 %417, i32* %11, align 4
  %418 = load i8**, i8*** %17, align 8
  %419 = getelementptr inbounds i8*, i8** %418, i32 1
  store i8** %419, i8*** %17, align 8
  br label %391

420:                                              ; preds = %406, %398
  %421 = load i8*, i8** %20, align 8
  %422 = call i64 @FBT_IS_THUMB_BX_REG(i8* %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %425, label %424

424:                                              ; preds = %420
  br label %528

425:                                              ; preds = %420
  br label %426

426:                                              ; preds = %425, %389
  %427 = load i32, i32* @KM_SLEEP, align 4
  %428 = call %struct.TYPE_6__* @kmem_zalloc(i32 88, i32 %427)
  store %struct.TYPE_6__* %428, %struct.TYPE_6__** %14, align 8
  %429 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %429, i32 0, i32 10
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %430, align 8
  %431 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %432 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i32 0, i32 11
  %433 = bitcast i32* %432 to i8*
  %434 = load i8*, i8** %8, align 8
  %435 = load i32, i32* @MAX_FBTP_NAME_CHARS, align 4
  %436 = call i32 @strlcpy(i8* %433, i8* %434, i32 %435)
  %437 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %438 = icmp eq %struct.TYPE_6__* %437, null
  br i1 %438, label %439, label %449

439:                                              ; preds = %426
  %440 = load i32, i32* @fbt_id, align 4
  %441 = load i8*, i8** %7, align 8
  %442 = load i8*, i8** %8, align 8
  %443 = load i32, i32* @FBT_RETURN, align 4
  %444 = load i32, i32* @FBT_AFRAMES_RETURN, align 4
  %445 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %446 = call i8* @dtrace_probe_create(i32 %440, i8* %441, i8* %442, i32 %443, i32 %444, %struct.TYPE_6__* %445)
  %447 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %447, i32 0, i32 4
  store i8* %446, i8** %448, align 8
  br label %458

449:                                              ; preds = %426
  %450 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %451 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 10
  store %struct.TYPE_6__* %450, %struct.TYPE_6__** %452, align 8
  %453 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %454 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %453, i32 0, i32 4
  %455 = load i8*, i8** %454, align 8
  %456 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %456, i32 0, i32 4
  store i8* %455, i8** %457, align 8
  br label %458

458:                                              ; preds = %449, %439
  %459 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %459, %struct.TYPE_6__** %15, align 8
  %460 = load i8**, i8*** %17, align 8
  %461 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i32 0, i32 2
  store i8** %460, i8*** %462, align 8
  %463 = load %struct.modctl*, %struct.modctl** %6, align 8
  %464 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 9
  store %struct.modctl* %463, %struct.modctl** %465, align 8
  %466 = load %struct.modctl*, %struct.modctl** %6, align 8
  %467 = getelementptr inbounds %struct.modctl, %struct.modctl* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %470 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %469, i32 0, i32 8
  store i32 %468, i32* %470, align 4
  %471 = load i8*, i8** %20, align 8
  %472 = call i64 @FBT_IS_THUMB_POP_PC(i8* %471)
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %478, label %474

474:                                              ; preds = %458
  %475 = load i8*, i8** %20, align 8
  %476 = call i64 @FBT_IS_THUMB_BX_REG(i8* %475)
  %477 = icmp ne i64 %476, 0
  br label %478

478:                                              ; preds = %474, %458
  %479 = phi i1 [ true, %458 ], [ %477, %474 ]
  %480 = zext i1 %479 to i32
  %481 = call i32 @ASSERT(i32 %480)
  %482 = load i32, i32* @DTRACE_INVOP_POP_PC, align 4
  %483 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %484 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %483, i32 0, i32 7
  store i32 %482, i32* %484, align 8
  %485 = load i8**, i8*** %17, align 8
  %486 = bitcast i8** %485 to i32*
  %487 = load i8**, i8*** %9, align 8
  %488 = bitcast i8** %487 to i32*
  %489 = ptrtoint i32* %486 to i64
  %490 = ptrtoint i32* %488 to i64
  %491 = sub i64 %489, %490
  %492 = sdiv exact i64 %491, 4
  %493 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %494 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %493, i32 0, i32 3
  store i64 %492, i64* %494, align 8
  %495 = load i8*, i8** %20, align 8
  %496 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %497 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %496, i32 0, i32 6
  store i8* %495, i8** %497, align 8
  %498 = load i8*, i8** @FBT_PATCHVAL, align 8
  %499 = ptrtoint i8* %498 to i64
  %500 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %501 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %500, i32 0, i32 1
  store i64 %499, i64* %501, align 8
  %502 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %503 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %502, i32 0, i32 0
  store i64 0, i64* %503, align 8
  %504 = load i8**, i8*** @fbt_probetab, align 8
  %505 = load i8**, i8*** %17, align 8
  %506 = call i64 @FBT_ADDR2NDX(i8** %505)
  %507 = getelementptr inbounds i8*, i8** %504, i64 %506
  %508 = load i8*, i8** %507, align 8
  %509 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %510 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %509, i32 0, i32 5
  store i8* %508, i8** %510, align 8
  %511 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %512 = bitcast %struct.TYPE_6__* %511 to i8*
  %513 = load i8**, i8*** @fbt_probetab, align 8
  %514 = load i8**, i8*** %17, align 8
  %515 = call i64 @FBT_ADDR2NDX(i8** %514)
  %516 = getelementptr inbounds i8*, i8** %513, i64 %515
  store i8* %512, i8** %516, align 8
  %517 = load i32, i32* %12, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %525

519:                                              ; preds = %478
  %520 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %521 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %520, i32 0, i32 4
  %522 = load i8*, i8** %521, align 8
  %523 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %524 = call i32 @fbt_enable(i32* null, i8* %522, %struct.TYPE_6__* %523)
  br label %525

525:                                              ; preds = %519, %478
  %526 = load i8**, i8*** %17, align 8
  %527 = getelementptr inbounds i8*, i8** %526, i32 1
  store i8** %527, i8*** %17, align 8
  br label %268

528:                                              ; preds = %424, %384, %308, %272, %106, %35
  ret void
}

declare dso_local i32 @kprintf(i8*, i8*, ...) #1

declare dso_local i64 @FBT_IS_THUMB_PUSH_LR(i8*) #1

declare dso_local i32 @FBT_THUMB_STACK_REGS(i8*) #1

declare dso_local i64 @FBT_IS_THUMB_SET_R7(i8*) #1

declare dso_local i64 @FBT_IS_THUMB_MOV_SP_TO_R7(i8*) #1

declare dso_local i64 @FBT_IS_THUMB_BX_REG(i8*) #1

declare dso_local i64 @FBT_IS_THUMB_POP_PC(i8*) #1

declare dso_local i32 @dtrace_instr_size(i8*, i32) #1

declare dso_local i64 @dtrace_probe_lookup(i32, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @dtrace_probe_arg(i32, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @dtrace_probe_create(i32, i8*, i8*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @FBT_ADDR2NDX(i8**) #1

declare dso_local i32 @fbt_enable(i32*, i8*, %struct.TYPE_6__*) #1

declare dso_local i64 @FBT_IS_THUMB_LDR_PC(i8*) #1

declare dso_local i64 @thumb_ldr_pc_address(i64) #1

declare dso_local i64 @FBT_IS_THUMB32_LDR_PC(i8*, i8*) #1

declare dso_local i64 @thumb32_ldr_pc_address(i64) #1

declare dso_local i32 @FBT_IS_THUMB_POP_R7(i8*) #1

declare dso_local i32 @FBT_IS_THUMB32_POP_R7LR(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
