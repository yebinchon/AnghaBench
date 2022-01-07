; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_policy_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_policy_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_25__, i32, i32, i32 }
%struct.TYPE_25__ = type { i8*, i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_28__ = type { i8*, i32, i32, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_31__ = type { i32, i8* }
%struct.TYPE_26__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32* }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global %struct.TYPE_30__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_TERMINATED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@TH_MODE_REALTIME = common dso_local global i32 0, align 4
@TH_SFLAG_DEMOTED_MASK = common dso_local global i32 0, align 4
@TH_MODE_TIMESHARE = common dso_local global i32 0, align 4
@THREAD_EXTENDED_POLICY_COUNT = common dso_local global i32 0, align 4
@THREAD_TIME_CONSTRAINT_POLICY_COUNT = common dso_local global i32 0, align 4
@default_timeshare_computation = common dso_local global i32 0, align 4
@default_timeshare_constraint = common dso_local global i32 0, align 4
@THREAD_PRECEDENCE_POLICY_COUNT = common dso_local global i32 0, align 4
@KERN_NOT_SUPPORTED = common dso_local global i32 0, align 4
@THREAD_AFFINITY_POLICY_COUNT = common dso_local global i32 0, align 4
@THREAD_AFFINITY_TAG_NULL = common dso_local global i32 0, align 4
@THREAD_POLICY_STATE_COUNT = common dso_local global i32 0, align 4
@KERN_PROTECTION_FAILURE = common dso_local global i32 0, align 4
@THREAD_POLICY_STATE_FLAG_STATIC_PARAM = common dso_local global i32 0, align 4
@THREAD_LATENCY_QOS_POLICY_COUNT = common dso_local global i32 0, align 4
@TASK_POLICY_ATTRIBUTE = common dso_local global i32 0, align 4
@TASK_POLICY_LATENCY_QOS = common dso_local global i32 0, align 4
@THREAD_THROUGHPUT_QOS_POLICY_COUNT = common dso_local global i32 0, align 4
@TASK_POLICY_THROUGH_QOS = common dso_local global i32 0, align 4
@THREAD_QOS_POLICY_COUNT = common dso_local global i32 0, align 4
@TASK_POLICY_QOS_AND_RELPRIO = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_policy_get(%struct.TYPE_30__* %0, i32 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_32__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_24__*, align 8
  %21 = alloca %struct.TYPE_33__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_34__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_29__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_31__*, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %29 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** @THREAD_NULL, align 8
  %32 = icmp eq %struct.TYPE_30__* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %34, i32* %6, align 4
  br label %422

35:                                               ; preds = %5
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %37 = call i32 @thread_mtx_lock(%struct.TYPE_30__* %36)
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %44 = call i32 @thread_mtx_unlock(%struct.TYPE_30__* %43)
  %45 = load i32, i32* @KERN_TERMINATED, align 4
  store i32 %45, i32* %6, align 4
  br label %422

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %416 [
    i32 134, label %48
    i32 128, label %116
    i32 131, label %195
    i32 135, label %225
    i32 132, label %253
    i32 133, label %337
    i32 129, label %361
    i32 130, label %385
  ]

48:                                               ; preds = %46
  %49 = load i8*, i8** @TRUE, align 8
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %104, label %54

54:                                               ; preds = %48
  %55 = call i32 (...) @splsched()
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %57 = call i32 @thread_lock(%struct.TYPE_30__* %56)
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TH_MODE_REALTIME, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %54
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TH_MODE_REALTIME, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %63
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TH_SFLAG_DEMOTED_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %69
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TH_MODE_TIMESHARE, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %13, align 4
  br label %94

85:                                               ; preds = %69
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TH_MODE_TIMESHARE, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %85, %76
  br label %99

95:                                               ; preds = %63, %54
  %96 = load i8*, i8** @TRUE, align 8
  %97 = ptrtoint i8* %96 to i32
  %98 = load i32*, i32** %11, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %94
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %101 = call i32 @thread_unlock(%struct.TYPE_30__* %100)
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @splx(i32 %102)
  br label %104

104:                                              ; preds = %99, %48
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @THREAD_EXTENDED_POLICY_COUNT, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i64, i64* %9, align 8
  %111 = inttoptr i64 %110 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %111, %struct.TYPE_23__** %15, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %104
  br label %418

116:                                              ; preds = %46
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @THREAD_TIME_CONSTRAINT_POLICY_COUNT, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %122, i32* %12, align 4
  br label %418

123:                                              ; preds = %116
  %124 = load i64, i64* %9, align 8
  %125 = inttoptr i64 %124 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %125, %struct.TYPE_28__** %16, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %178, label %129

129:                                              ; preds = %123
  %130 = call i32 (...) @splsched()
  store i32 %130, i32* %17, align 4
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %132 = call i32 @thread_lock(%struct.TYPE_30__* %131)
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @TH_MODE_REALTIME, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %129
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @TH_MODE_REALTIME, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %169

144:                                              ; preds = %138, %129
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 0
  store i8* %166, i8** %168, align 8
  br label %173

169:                                              ; preds = %138
  %170 = load i8*, i8** @TRUE, align 8
  %171 = ptrtoint i8* %170 to i32
  %172 = load i32*, i32** %11, align 8
  store i32 %171, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %144
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %175 = call i32 @thread_unlock(%struct.TYPE_30__* %174)
  %176 = load i32, i32* %17, align 4
  %177 = call i32 @splx(i32 %176)
  br label %178

178:                                              ; preds = %173, %123
  %179 = load i32*, i32** %11, align 8
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %178
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 3
  store i32 0, i32* %184, align 8
  %185 = load i32, i32* @default_timeshare_computation, align 4
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* @default_timeshare_constraint, align 4
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 8
  %191 = load i8*, i8** @TRUE, align 8
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 0
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %182, %178
  br label %418

195:                                              ; preds = %46
  %196 = load i32*, i32** %10, align 8
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @THREAD_PRECEDENCE_POLICY_COUNT, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %201, i32* %12, align 4
  br label %418

202:                                              ; preds = %195
  %203 = load i64, i64* %9, align 8
  %204 = inttoptr i64 %203 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %204, %struct.TYPE_32__** %18, align 8
  %205 = load i32*, i32** %11, align 8
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %221, label %208

208:                                              ; preds = %202
  %209 = call i32 (...) @splsched()
  store i32 %209, i32* %19, align 4
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %211 = call i32 @thread_lock(%struct.TYPE_30__* %210)
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %218 = call i32 @thread_unlock(%struct.TYPE_30__* %217)
  %219 = load i32, i32* %19, align 4
  %220 = call i32 @splx(i32 %219)
  br label %224

221:                                              ; preds = %202
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 0
  store i32 0, i32* %223, align 4
  br label %224

224:                                              ; preds = %221, %208
  br label %418

225:                                              ; preds = %46
  %226 = call i32 (...) @thread_affinity_is_supported()
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* @KERN_NOT_SUPPORTED, align 4
  store i32 %229, i32* %12, align 4
  br label %418

230:                                              ; preds = %225
  %231 = load i32*, i32** %10, align 8
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @THREAD_AFFINITY_POLICY_COUNT, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %230
  %236 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %236, i32* %12, align 4
  br label %418

237:                                              ; preds = %230
  %238 = load i64, i64* %9, align 8
  %239 = inttoptr i64 %238 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %239, %struct.TYPE_24__** %20, align 8
  %240 = load i32*, i32** %11, align 8
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %237
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %245 = call i32 @thread_affinity_get(%struct.TYPE_30__* %244)
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 4
  br label %252

248:                                              ; preds = %237
  %249 = load i32, i32* @THREAD_AFFINITY_TAG_NULL, align 4
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 4
  br label %252

252:                                              ; preds = %248, %243
  br label %418

253:                                              ; preds = %46
  %254 = load i32*, i32** %10, align 8
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @THREAD_POLICY_STATE_COUNT, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %253
  %259 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %259, i32* %12, align 4
  br label %418

260:                                              ; preds = %253
  %261 = call %struct.TYPE_26__* (...) @current_task()
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %260
  %269 = load i32, i32* @KERN_PROTECTION_FAILURE, align 4
  store i32 %269, i32* %12, align 4
  br label %418

270:                                              ; preds = %260
  %271 = load i64, i64* %9, align 8
  %272 = inttoptr i64 %271 to i8*
  %273 = bitcast i8* %272 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %273, %struct.TYPE_33__** %21, align 8
  %274 = load i32*, i32** %11, align 8
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %329, label %277

277:                                              ; preds = %270
  %278 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %279 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %278, i32 0, i32 8
  store i32 0, i32* %279, align 8
  %280 = call i32 (...) @splsched()
  store i32 %280, i32* %22, align 4
  %281 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %282 = call i32 @thread_lock(%struct.TYPE_30__* %281)
  %283 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %277
  %288 = load i32, i32* @THREAD_POLICY_STATE_FLAG_STATIC_PARAM, align 4
  br label %290

289:                                              ; preds = %277
  br label %290

290:                                              ; preds = %289, %287
  %291 = phi i32 [ %288, %287 ], [ 0, %289 ]
  %292 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %293 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %292, i32 0, i32 8
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 8
  %296 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %296, i32 0, i32 4
  %298 = bitcast i32* %297 to i8*
  %299 = bitcast i8* %298 to i8**
  %300 = load i8*, i8** %299, align 8
  %301 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %302 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %301, i32 0, i32 7
  store i8* %300, i8** %302, align 8
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %303, i32 0, i32 3
  %305 = bitcast i32* %304 to i8*
  %306 = bitcast i8* %305 to i8**
  %307 = load i8*, i8** %306, align 8
  %308 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %309 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %308, i32 0, i32 6
  store i8* %307, i8** %309, align 8
  %310 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %311 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %310, i32 0, i32 5
  store i32 0, i32* %311, align 4
  %312 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %316 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %315, i32 0, i32 4
  store i32 %314, i32* %316, align 8
  %317 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %321 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %320, i32 0, i32 3
  store i32 %319, i32* %321, align 4
  %322 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %323 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %324 = call i32 @proc_get_thread_policy_bitfield(%struct.TYPE_30__* %322, %struct.TYPE_33__* %323)
  %325 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %326 = call i32 @thread_unlock(%struct.TYPE_30__* %325)
  %327 = load i32, i32* %22, align 4
  %328 = call i32 @splx(i32 %327)
  br label %336

329:                                              ; preds = %270
  %330 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %331 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %330, i32 0, i32 2
  store i32 0, i32* %331, align 8
  %332 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %333 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %332, i32 0, i32 1
  store i32 0, i32* %333, align 4
  %334 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %335 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %334, i32 0, i32 0
  store i32 0, i32* %335, align 8
  br label %336

336:                                              ; preds = %329, %290
  br label %418

337:                                              ; preds = %46
  %338 = load i64, i64* %9, align 8
  %339 = inttoptr i64 %338 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %339, %struct.TYPE_34__** %23, align 8
  %340 = load i32*, i32** %10, align 8
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @THREAD_LATENCY_QOS_POLICY_COUNT, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %346

344:                                              ; preds = %337
  %345 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %345, i32* %12, align 4
  br label %418

346:                                              ; preds = %337
  %347 = load i32*, i32** %11, align 8
  %348 = load i32, i32* %347, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %346
  store i8* null, i8** %24, align 8
  br label %356

351:                                              ; preds = %346
  %352 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %353 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %354 = load i32, i32* @TASK_POLICY_LATENCY_QOS, align 4
  %355 = call i8* @proc_get_thread_policy_locked(%struct.TYPE_30__* %352, i32 %353, i32 %354, i32* null)
  store i8* %355, i8** %24, align 8
  br label %356

356:                                              ; preds = %351, %350
  %357 = load i8*, i8** %24, align 8
  %358 = call i32 @qos_latency_policy_package(i8* %357)
  %359 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %360 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %359, i32 0, i32 0
  store i32 %358, i32* %360, align 4
  br label %418

361:                                              ; preds = %46
  %362 = load i64, i64* %9, align 8
  %363 = inttoptr i64 %362 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %363, %struct.TYPE_29__** %25, align 8
  %364 = load i32*, i32** %10, align 8
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* @THREAD_THROUGHPUT_QOS_POLICY_COUNT, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %361
  %369 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %369, i32* %12, align 4
  br label %418

370:                                              ; preds = %361
  %371 = load i32*, i32** %11, align 8
  %372 = load i32, i32* %371, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %370
  store i8* null, i8** %26, align 8
  br label %380

375:                                              ; preds = %370
  %376 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %377 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %378 = load i32, i32* @TASK_POLICY_THROUGH_QOS, align 4
  %379 = call i8* @proc_get_thread_policy_locked(%struct.TYPE_30__* %376, i32 %377, i32 %378, i32* null)
  store i8* %379, i8** %26, align 8
  br label %380

380:                                              ; preds = %375, %374
  %381 = load i8*, i8** %26, align 8
  %382 = call i32 @qos_throughput_policy_package(i8* %381)
  %383 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %384 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %383, i32 0, i32 0
  store i32 %382, i32* %384, align 4
  br label %418

385:                                              ; preds = %46
  %386 = load i64, i64* %9, align 8
  %387 = inttoptr i64 %386 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %387, %struct.TYPE_31__** %27, align 8
  %388 = load i32*, i32** %10, align 8
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @THREAD_QOS_POLICY_COUNT, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %385
  %393 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %393, i32* %12, align 4
  br label %418

394:                                              ; preds = %385
  %395 = load i32*, i32** %11, align 8
  %396 = load i32, i32* %395, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %409, label %398

398:                                              ; preds = %394
  store i32 0, i32* %28, align 4
  %399 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %400 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %401 = load i32, i32* @TASK_POLICY_QOS_AND_RELPRIO, align 4
  %402 = call i8* @proc_get_thread_policy_locked(%struct.TYPE_30__* %399, i32 %400, i32 %401, i32* %28)
  %403 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %404 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %403, i32 0, i32 1
  store i8* %402, i8** %404, align 8
  %405 = load i32, i32* %28, align 4
  %406 = sub nsw i32 0, %405
  %407 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %408 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %407, i32 0, i32 0
  store i32 %406, i32* %408, align 8
  br label %415

409:                                              ; preds = %394
  %410 = load i8*, i8** @THREAD_QOS_UNSPECIFIED, align 8
  %411 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %412 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %411, i32 0, i32 1
  store i8* %410, i8** %412, align 8
  %413 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  %414 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i32 0, i32 0
  store i32 0, i32* %414, align 8
  br label %415

415:                                              ; preds = %409, %398
  br label %418

416:                                              ; preds = %46
  %417 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %417, i32* %12, align 4
  br label %418

418:                                              ; preds = %416, %415, %392, %380, %368, %356, %344, %336, %268, %258, %252, %235, %228, %224, %200, %194, %121, %115
  %419 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %420 = call i32 @thread_mtx_unlock(%struct.TYPE_30__* %419)
  %421 = load i32, i32* %12, align 4
  store i32 %421, i32* %6, align 4
  br label %422

422:                                              ; preds = %418, %42, %33
  %423 = load i32, i32* %6, align 4
  ret i32 %423
}

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_30__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_30__*) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @thread_lock(%struct.TYPE_30__*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_30__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @thread_affinity_is_supported(...) #1

declare dso_local i32 @thread_affinity_get(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_26__* @current_task(...) #1

declare dso_local i32 @proc_get_thread_policy_bitfield(%struct.TYPE_30__*, %struct.TYPE_33__*) #1

declare dso_local i8* @proc_get_thread_policy_locked(%struct.TYPE_30__*, i32, i32, i32*) #1

declare dso_local i32 @qos_latency_policy_package(i8*) #1

declare dso_local i32 @qos_throughput_policy_package(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
