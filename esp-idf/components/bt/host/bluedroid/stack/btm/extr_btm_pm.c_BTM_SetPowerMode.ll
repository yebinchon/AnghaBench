; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_BTM_SetPowerMode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_BTM_SetPowerMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i64 }

@BTM_MAX_PM_RECORDS = common dso_local global i64 0, align 8
@BTM_PM_SET_ONLY_ID = common dso_local global i64 0, align 8
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"BTM_SetPowerMode: pm_id %d BDA: %08x mode:0x%x\00", align 1
@BTM_PM_MD_FORCE = common dso_local global i32 0, align 4
@MAX_L2CAP_LINKS = common dso_local global i32 0, align 4
@BTM_UNKNOWN_ADDR = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@BTM_PM_MD_ACTIVE = common dso_local global i32 0, align 4
@BTM_PM_MD_HOLD = common dso_local global i32 0, align 4
@btm_pm_mode_off = common dso_local global i64* null, align 8
@btm_pm_mode_msk = common dso_local global i64* null, align 8
@BTM_MODE_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"BTM_SetPowerMode: mode:0x%x interval %d max:%d, min:%d\00", align 1
@BTM_SUCCESS = common dso_local global i32 0, align 4
@BTM_PM_REG_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"BTM_SetPowerMode: Saving cmd acl_ind %d temp_pm_id %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"btm_pm state:0x%x, pm_pend_link: %d\00", align 1
@BTM_PM_STS_HOLD = common dso_local global i32 0, align 4
@BTM_PM_STS_PENDING = common dso_local global i32 0, align 4
@BTM_PM_STORED_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"btm_pm state stored:%d\00", align 1
@BTM_CMD_STORED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_SetPowerMode(i64 %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @BTM_MAX_PM_RECORDS, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @BTM_PM_SET_ONLY_ID, align 8
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %17, %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = icmp eq %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %23, i32* %4, align 4
  br label %250

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 24
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = add nsw i32 %29, %33
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = add nsw i32 %34, %38
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %43, i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BTM_PM_MD_FORCE, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  store i32 %53, i32* %12, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @btm_pm_find_acl_ind(i32* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %24
  %60 = load i32, i32* @BTM_UNKNOWN_ADDR, align 4
  store i32 %60, i32* %4, align 4
  br label %250

61:                                               ; preds = %24
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 2), align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 %64
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @BTM_PM_MD_ACTIVE, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %61
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @BTM_PM_MD_HOLD, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %9, align 4
  %73 = call i64* (...) @BTM_ReadLocalFeatures()
  store i64* %73, i64** %8, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = load i64*, i64** @btm_pm_mode_off, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i64, i64* %74, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** @btm_pm_mode_msk, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = and i64 %81, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %69
  %90 = load i32, i32* @BTM_MODE_UNSUPPORTED, align 4
  store i32 %90, i32* %4, align 4
  br label %250

91:                                               ; preds = %69
  br label %92

92:                                               ; preds = %91, %61
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %156

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @BTM_PM_MD_ACTIVE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %140, label %102

102:                                              ; preds = %98
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @BTM_PM_MD_FORCE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %102
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp sge i64 %112, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %109
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp sle i64 %120, %123
  br i1 %124, label %140, label %125

125:                                              ; preds = %117, %109, %102
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @BTM_PM_MD_FORCE, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %155

132:                                              ; preds = %125
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp sge i64 %135, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %132, %117, %98
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (i8*, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %143, i64 %146, i64 %149, i64 %152)
  %154 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %154, i32* %4, align 4
  br label %250

155:                                              ; preds = %132, %125
  br label %156

156:                                              ; preds = %155, %92
  %157 = load i64, i64* %5, align 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %13, align 4
  %159 = load i64, i64* %5, align 8
  %160 = load i64, i64* @BTM_PM_SET_ONLY_ID, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load i64, i64* @BTM_MAX_PM_RECORDS, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %162, %156
  %166 = load i64, i64* %5, align 8
  %167 = load i64, i64* @BTM_PM_SET_ONLY_ID, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %165
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 1), align 8
  %171 = load i64, i64* %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @BTM_PM_REG_SET, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %169, %165
  %179 = load i64, i64* %5, align 8
  %180 = load i64, i64* @BTM_PM_SET_ONLY_ID, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %210

182:                                              ; preds = %178
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0), align 8
  %184 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %210

186:                                              ; preds = %182, %169
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %13, align 4
  %189 = call i32 (i8*, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %187, i32 %188)
  %190 = load i32, i32* @BTM_PM_REG_SET, align 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 1), align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %190
  store i32 %197, i32* %195, align 4
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %202
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %205 = bitcast %struct.TYPE_8__* %203 to i8*
  %206 = bitcast %struct.TYPE_8__* %204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %205, i8* align 8 %206, i64 24, i1 false)
  %207 = load i32, i32* @TRUE, align 4
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %186, %182, %178
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0), align 8
  %215 = call i32 (i8*, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %213, i32 %214)
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @BTM_PM_STS_HOLD, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %231, label %221

221:                                              ; preds = %210
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @BTM_PM_STS_PENDING, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %231, label %227

227:                                              ; preds = %221
  %228 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0), align 8
  %229 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %245

231:                                              ; preds = %227, %221, %210
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0), align 8
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %231
  %236 = load i32, i32* @BTM_PM_STORED_MASK, align 4
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 8
  %241 = load i32, i32* %10, align 4
  %242 = call i32 (i8*, i32, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %241)
  br label %243

243:                                              ; preds = %235, %231
  %244 = load i32, i32* @BTM_CMD_STORED, align 4
  store i32 %244, i32* %4, align 4
  br label %250

245:                                              ; preds = %227
  %246 = load i64, i64* %5, align 8
  %247 = load i32, i32* %10, align 4
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %249 = call i32 @btm_pm_snd_md_req(i64 %246, i32 %247, %struct.TYPE_8__* %248)
  store i32 %249, i32* %4, align 4
  br label %250

250:                                              ; preds = %245, %243, %140, %89, %59, %22
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @BTM_TRACE_API(i8*, i64, i32, i32) #1

declare dso_local i32 @btm_pm_find_acl_ind(i32*) #1

declare dso_local i64* @BTM_ReadLocalFeatures(...) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @btm_pm_snd_md_req(i64, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
