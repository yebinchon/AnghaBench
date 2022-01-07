; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_importance.c_ipc_importance_inherit_from_task.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_importance.c_ipc_importance_inherit_from_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_28__, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_31__*, %struct.TYPE_29__*, i64, i64 }
%struct.TYPE_32__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }

@IIT_NULL = common dso_local global %struct.TYPE_29__* null, align 8
@IIE_NULL = common dso_local global %struct.TYPE_31__* null, align 8
@III_NULL = common dso_local global %struct.TYPE_30__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@ipc_importance_inherit_zone = common dso_local global i32 0, align 4
@III_REFS_MAX = common dso_local global i64 0, align 8
@IIE_TYPE_INHERIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@task_imp = common dso_local global %struct.TYPE_32__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_30__* (i32, i32)* @ipc_importance_inherit_from_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_30__* @ipc_importance_inherit_from_task(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IIT_NULL, align 8
  store %struct.TYPE_29__* %12, %struct.TYPE_29__** %5, align 8
  %13 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IIT_NULL, align 8
  store %struct.TYPE_29__* %13, %struct.TYPE_29__** %6, align 8
  %14 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IIE_NULL, align 8
  store %struct.TYPE_31__* %14, %struct.TYPE_31__** %7, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** @III_NULL, align 8
  store %struct.TYPE_30__* %15, %struct.TYPE_30__** %8, align 8
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** @III_NULL, align 8
  store %struct.TYPE_30__* %16, %struct.TYPE_30__** %9, align 8
  store i32 1, i32* %11, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i64, i64* @FALSE, align 8
  %19 = call %struct.TYPE_29__* @ipc_importance_for_task(i32 %17, i64 %18)
  store %struct.TYPE_29__* %19, %struct.TYPE_29__** %5, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i64, i64* @FALSE, align 8
  %22 = call %struct.TYPE_29__* @ipc_importance_for_task(i32 %20, i64 %21)
  store %struct.TYPE_29__* %22, %struct.TYPE_29__** %6, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %24 = bitcast %struct.TYPE_29__* %23 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %24, %struct.TYPE_31__** %7, align 8
  %25 = call i32 (...) @ipc_importance_lock()
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IIT_NULL, align 8
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %28 = icmp eq %struct.TYPE_29__* %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IIT_NULL, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %32 = icmp eq %struct.TYPE_29__* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %2
  br label %195

34:                                               ; preds = %29
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %36 = call i32 @ipc_importance_task_is_any_receiver_type(%struct.TYPE_29__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %40 = call i32 @ipc_importance_task_is_any_receiver_type(%struct.TYPE_29__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %34
  br label %195

43:                                               ; preds = %38
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %46 = icmp eq %struct.TYPE_29__* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %195

48:                                               ; preds = %43
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @incr_ref_counter(i32 %52)
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @incr_ref_counter(i32 %56)
  br label %58

58:                                               ; preds = %81, %48
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** @III_NULL, align 8
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %61 = icmp eq %struct.TYPE_30__* %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call %struct.TYPE_30__* @ipc_importance_inherit_find(%struct.TYPE_31__* %63, %struct.TYPE_29__* %64, i32 %65)
  store %struct.TYPE_30__* %66, %struct.TYPE_30__** %8, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** @III_NULL, align 8
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %69 = icmp eq %struct.TYPE_30__* %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %62
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** @III_NULL, align 8
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %73 = icmp ne %struct.TYPE_30__* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %82

75:                                               ; preds = %70
  %76 = call i32 (...) @ipc_importance_unlock()
  %77 = load i32, i32* @ipc_importance_inherit_zone, align 4
  %78 = call i64 @zalloc(i32 %77)
  %79 = inttoptr i64 %78 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %79, %struct.TYPE_30__** %9, align 8
  %80 = call i32 (...) @ipc_importance_lock()
  br label %81

81:                                               ; preds = %75, %62
  br label %58

82:                                               ; preds = %74, %58
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %84 = call i64 @ipc_importance_task_is_donor(%struct.TYPE_29__* %83)
  store i64 %84, i64* %10, align 8
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** @III_NULL, align 8
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %87 = icmp ne %struct.TYPE_30__* %85, %86
  br i1 %87, label %88, label %156

88:                                               ; preds = %82
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %90 = call i64 @III_REFS(%struct.TYPE_30__* %89)
  %91 = icmp slt i64 0, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 6
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %95, align 8
  %97 = call i64 @IIE_REFS(%struct.TYPE_31__* %96)
  %98 = icmp slt i64 0, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i64, i64* @III_REFS_MAX, align 8
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %103 = call i64 @III_REFS(%struct.TYPE_30__* %102)
  %104 = icmp sgt i64 %101, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %108 = call i32 @ipc_importance_inherit_reference_internal(%struct.TYPE_30__* %107)
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %110 = call i64 @III_EXTERN(%struct.TYPE_30__* %109)
  %111 = icmp eq i64 0, %110
  br i1 %111, label %112, label %143

112:                                              ; preds = %88
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %10, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %112
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %135
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %137, align 4
  br label %142

142:                                              ; preds = %125, %112
  br label %151

143:                                              ; preds = %88
  %144 = load i64, i64* %10, align 8
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  br label %151

151:                                              ; preds = %143, %142
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  br label %194

156:                                              ; preds = %82
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  store %struct.TYPE_30__* %157, %struct.TYPE_30__** %8, align 8
  %158 = load i32, i32* @IIE_TYPE_INHERIT, align 4
  %159 = or i32 %158, 1
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 9
  store i64 0, i64* %163, align 8
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 1
  store i32 1, i32* %165, align 8
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 8
  store i64 0, i64* %167, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 7
  store %struct.TYPE_29__* %171, %struct.TYPE_29__** %173, align 8
  %174 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IIE_NULL, align 8
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 6
  store %struct.TYPE_31__* %174, %struct.TYPE_31__** %176, align 8
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 5
  %179 = call i32 @queue_init(i32* %178)
  %180 = load i64, i64* %10, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %156
  %183 = load i64, i64* @TRUE, align 8
  %184 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  br label %190

186:                                              ; preds = %156
  %187 = load i64, i64* @FALSE, align 8
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %186, %182
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %192 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %193 = call i32 @ipc_importance_inherit_link(%struct.TYPE_30__* %191, %struct.TYPE_31__* %192)
  br label %194

194:                                              ; preds = %190, %151
  br label %195

195:                                              ; preds = %194, %47, %42, %33
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** @III_NULL, align 8
  %197 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %198 = icmp ne %struct.TYPE_30__* %196, %197
  br i1 %198, label %199, label %209

199:                                              ; preds = %195
  %200 = load i64, i64* %10, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %208 = call i32 @ipc_importance_task_hold_internal_assertion_locked(%struct.TYPE_29__* %207, i32 1)
  br label %209

209:                                              ; preds = %202, %199, %195
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** @III_NULL, align 8
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %212 = icmp eq %struct.TYPE_30__* %210, %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %216 = icmp ne %struct.TYPE_30__* %214, %215
  br i1 %216, label %217, label %266

217:                                              ; preds = %213, %209
  %218 = load %struct.TYPE_31__*, %struct.TYPE_31__** @IIE_NULL, align 8
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %220 = icmp ne %struct.TYPE_31__* %218, %219
  br i1 %220, label %221, label %238

221:                                              ; preds = %217
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** @III_NULL, align 8
  %223 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %224 = icmp ne %struct.TYPE_30__* %222, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %221
  %226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @incr_ref_counter(i32 %228)
  br label %235

230:                                              ; preds = %221
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @incr_ref_counter(i32 %233)
  br label %235

235:                                              ; preds = %230, %225
  %236 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %237 = call i32 @ipc_importance_release_locked(%struct.TYPE_31__* %236)
  br label %240

238:                                              ; preds = %217
  %239 = call i32 (...) @ipc_importance_unlock()
  br label %240

240:                                              ; preds = %238, %235
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** @IIT_NULL, align 8
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %243 = icmp ne %struct.TYPE_29__* %241, %242
  br i1 %243, label %244, label %257

244:                                              ; preds = %240
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** @III_NULL, align 8
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %247 = icmp ne %struct.TYPE_30__* %245, %246
  br i1 %247, label %248, label %254

248:                                              ; preds = %244
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @incr_ref_counter(i32 %252)
  br label %254

254:                                              ; preds = %248, %244
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %256 = call i32 @ipc_importance_task_release(%struct.TYPE_29__* %255)
  br label %257

257:                                              ; preds = %254, %240
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** @III_NULL, align 8
  %259 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %260 = icmp ne %struct.TYPE_30__* %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %257
  %262 = load i32, i32* @ipc_importance_inherit_zone, align 4
  %263 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %264 = call i32 @zfree(i32 %262, %struct.TYPE_30__* %263)
  br label %265

265:                                              ; preds = %261, %257
  br label %268

266:                                              ; preds = %213
  %267 = call i32 (...) @ipc_importance_unlock()
  br label %268

268:                                              ; preds = %266, %265
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  ret %struct.TYPE_30__* %269
}

declare dso_local %struct.TYPE_29__* @ipc_importance_for_task(i32, i64) #1

declare dso_local i32 @ipc_importance_lock(...) #1

declare dso_local i32 @ipc_importance_task_is_any_receiver_type(%struct.TYPE_29__*) #1

declare dso_local i32 @incr_ref_counter(i32) #1

declare dso_local %struct.TYPE_30__* @ipc_importance_inherit_find(%struct.TYPE_31__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @ipc_importance_unlock(...) #1

declare dso_local i64 @zalloc(i32) #1

declare dso_local i64 @ipc_importance_task_is_donor(%struct.TYPE_29__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @III_REFS(%struct.TYPE_30__*) #1

declare dso_local i64 @IIE_REFS(%struct.TYPE_31__*) #1

declare dso_local i32 @ipc_importance_inherit_reference_internal(%struct.TYPE_30__*) #1

declare dso_local i64 @III_EXTERN(%struct.TYPE_30__*) #1

declare dso_local i32 @queue_init(i32*) #1

declare dso_local i32 @ipc_importance_inherit_link(%struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @ipc_importance_task_hold_internal_assertion_locked(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @ipc_importance_release_locked(%struct.TYPE_31__*) #1

declare dso_local i32 @ipc_importance_task_release(%struct.TYPE_29__*) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
