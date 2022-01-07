; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_policy_update_internal_spinlocked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_policy_update_internal_spinlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, i32* }
%struct.TYPE_10__ = type { %struct.thread_effective_policy, %struct.TYPE_9__*, %struct.thread_requested_policy }
%struct.thread_effective_policy = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.task_effective_policy }
%struct.task_effective_policy = type { i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.thread_requested_policy = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@THREAD_QOS_UNSPECIFIED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@THREAD_QOS_BACKGROUND = common dso_local global i32 0, align 4
@THREAD_QOS_MAINTENANCE = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_TIER0 = common dso_local global i8* null, align 8
@thread_qos_policy_params = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@LATENCY_QOS_TIER_UNSPECIFIED = common dso_local global i32 0, align 4
@THROUGHPUT_QOS_TIER_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64, %struct.TYPE_11__*)* @thread_policy_update_internal_spinlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_policy_update_internal_spinlocked(%struct.TYPE_10__* %0, i64 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.thread_requested_policy, align 8
  %8 = alloca %struct.task_effective_policy, align 8
  %9 = alloca %struct.thread_effective_policy, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.thread_effective_policy, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = bitcast %struct.thread_requested_policy* %7 to i8*
  %21 = bitcast %struct.thread_requested_policy* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 96, i1 false)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = bitcast %struct.task_effective_policy* %8 to i8*
  %27 = bitcast %struct.task_effective_policy* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 64, i1 false)
  %28 = bitcast %struct.thread_effective_policy* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 56, i1 false)
  %29 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @MAX(i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @MAX(i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @MAX(i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @MAX(i32 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %38, %3
  %56 = load i32, i32* %10, align 4
  %57 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @MIN(i32 %69, i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  br label %79

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  store i32 %77, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %67
  br label %80

80:                                               ; preds = %79, %55
  %81 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @MIN(i32 %95, i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  store i32 %99, i32* %100, align 8
  br label %101

101:                                              ; preds = %93, %88, %80
  %102 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %101
  %113 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 3
  store i64 %125, i64* %126, align 8
  br label %129

127:                                              ; preds = %118, %112, %101
  %128 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 3
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %127, %123
  %130 = load i64, i64* @FALSE, align 8
  store i64 %130, i64* %11, align 8
  %131 = load i64, i64* @FALSE, align 8
  store i64 %131, i64* %12, align 8
  %132 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 16
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 15
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135, %129
  %140 = load i64, i64* @TRUE, align 8
  store i64 %140, i64* %11, align 8
  store i64 %140, i64* %12, align 8
  br label %141

141:                                              ; preds = %139, %135
  %142 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 14
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i64, i64* @TRUE, align 8
  store i64 %146, i64* %11, align 8
  store i64 %146, i64* %12, align 8
  br label %147

147:                                              ; preds = %145, %141
  %148 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 10
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i64, i64* @TRUE, align 8
  store i64 %152, i64* %11, align 8
  br label %153

153:                                              ; preds = %151, %147
  %154 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @THREAD_QOS_BACKGROUND, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @THREAD_QOS_MAINTENANCE, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %158, %153
  %164 = load i64, i64* @TRUE, align 8
  store i64 %164, i64* %11, align 8
  br label %165

165:                                              ; preds = %163, %158
  %166 = load i64, i64* %11, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 4
  store i32 1, i32* %169, align 8
  br label %170

170:                                              ; preds = %168, %165
  %171 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 9
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174, %170
  %179 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 5
  store i32 1, i32* %179, align 4
  br label %180

180:                                              ; preds = %178, %174
  %181 = load i64, i64* %12, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 6
  store i32 1, i32* %184, align 8
  br label %185

185:                                              ; preds = %183, %180
  %186 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @THREAD_QOS_BACKGROUND, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %194, %189
  %200 = load i32, i32* @THREAD_QOS_BACKGROUND, align 4
  %201 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  store i32 %200, i32* %201, align 8
  %202 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 3
  store i64 0, i64* %202, align 8
  br label %203

203:                                              ; preds = %199, %194, %185
  %204 = load i8*, i8** @THROTTLE_LEVEL_TIER0, align 8
  %205 = ptrtoint i8* %204 to i32
  store i32 %205, i32* %13, align 4
  %206 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %203
  %210 = load i32, i32* %13, align 4
  %211 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @MAX(i32 %210, i32 %212)
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %209, %203
  %215 = load i32, i32* %13, align 4
  %216 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @MAX(i32 %215, i32 %217)
  store i32 %218, i32* %13, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thread_qos_policy_params, i32 0, i32 0), align 8
  %221 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @MAX(i32 %219, i32 %225)
  store i32 %226, i32* %13, align 4
  %227 = load i32, i32* %13, align 4
  %228 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 7
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @MAX(i32 %227, i32 %229)
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* %13, align 4
  %232 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 8
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @MAX(i32 %231, i32 %233)
  store i32 %234, i32* %13, align 4
  %235 = load i32, i32* %13, align 4
  %236 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 7
  store i32 %235, i32* %236, align 4
  %237 = load i64, i64* @FALSE, align 8
  store i64 %237, i64* %14, align 8
  %238 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thread_qos_policy_params, i32 0, i32 0), align 8
  %239 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thread_qos_policy_params, i32 0, i32 0), align 8
  %245 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp slt i32 %243, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %214
  %252 = load i64, i64* @TRUE, align 8
  store i64 %252, i64* %14, align 8
  br label %253

253:                                              ; preds = %251, %214
  %254 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 13
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %268, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 12
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %268, label %261

261:                                              ; preds = %257
  %262 = load i64, i64* %14, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 8
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %264, %261, %257, %253
  %269 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 8
  store i32 1, i32* %269, align 8
  br label %270

270:                                              ; preds = %268, %264
  %271 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 9
  %272 = load i32, i32* %271, align 8
  store i32 %272, i32* %15, align 4
  %273 = load i32, i32* %15, align 4
  %274 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @MAX(i32 %273, i32 %275)
  store i32 %276, i32* %15, align 4
  %277 = load i32, i32* %15, align 4
  %278 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thread_qos_policy_params, i32 0, i32 1), align 8
  %279 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %278, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @MAX(i32 %277, i32 %283)
  store i32 %284, i32* %15, align 4
  %285 = load i32, i32* %15, align 4
  %286 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 9
  store i32 %285, i32* %286, align 4
  %287 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 10
  %288 = load i32, i32* %287, align 4
  store i32 %288, i32* %16, align 4
  %289 = load i32, i32* %16, align 4
  %290 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 6
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @MAX(i32 %289, i32 %291)
  store i32 %292, i32* %16, align 4
  %293 = load i32, i32* %16, align 4
  %294 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thread_qos_policy_params, i32 0, i32 2), align 8
  %295 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @MAX(i32 %293, i32 %299)
  store i32 %300, i32* %16, align 4
  %301 = load i32, i32* %16, align 4
  %302 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 10
  store i32 %301, i32* %302, align 8
  %303 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %8, i32 0, i32 7
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %310, label %306

306:                                              ; preds = %270
  %307 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %7, i32 0, i32 11
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %322

310:                                              ; preds = %306, %270
  %311 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 11
  store i32 1, i32* %311, align 4
  %312 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 4
  store i32 0, i32* %312, align 8
  %313 = load i8*, i8** @THROTTLE_LEVEL_TIER0, align 8
  %314 = ptrtoint i8* %313 to i32
  %315 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 7
  store i32 %314, i32* %315, align 4
  %316 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %317 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  store i32 %316, i32* %317, align 8
  %318 = load i32, i32* @LATENCY_QOS_TIER_UNSPECIFIED, align 4
  %319 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 9
  store i32 %318, i32* %319, align 4
  %320 = load i32, i32* @THROUGHPUT_QOS_TIER_UNSPECIFIED, align 4
  %321 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 10
  store i32 %320, i32* %321, align 8
  br label %322

322:                                              ; preds = %310, %306
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 0
  %325 = bitcast %struct.thread_effective_policy* %17 to i8*
  %326 = bitcast %struct.thread_effective_policy* %324 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %325, i8* align 8 %326, i64 56, i1 false)
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %328 = call i32 @thread_update_qos_cpu_time_locked(%struct.TYPE_10__* %327)
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 0
  %331 = bitcast %struct.thread_effective_policy* %330 to i8*
  %332 = bitcast %struct.thread_effective_policy* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %331, i8* align 8 %332, i64 56, i1 false)
  %333 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %17, i32 0, i32 6
  %334 = load i32, i32* %333, align 8
  %335 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 6
  %336 = load i32, i32* %335, align 8
  %337 = icmp ne i32 %334, %336
  br i1 %337, label %338, label %341

338:                                              ; preds = %322
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 0
  store i32 1, i32* %340, align 4
  br label %341

341:                                              ; preds = %338, %322
  %342 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %17, i32 0, i32 7
  %343 = load i32, i32* %342, align 4
  %344 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 7
  %345 = load i32, i32* %344, align 4
  %346 = icmp ne i32 %343, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %341
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 1
  store i32 1, i32* %349, align 4
  br label %350

350:                                              ; preds = %347, %341
  %351 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %17, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %352, %354
  br i1 %355, label %362, label %356

356:                                              ; preds = %350
  %357 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %17, i32 0, i32 4
  %358 = load i32, i32* %357, align 8
  %359 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 4
  %360 = load i32, i32* %359, align 8
  %361 = icmp ne i32 %358, %360
  br i1 %361, label %362, label %365

362:                                              ; preds = %356, %350
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 2
  store i32 1, i32* %364, align 4
  br label %365

365:                                              ; preds = %362, %356
  %366 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %17, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = icmp ne i32 %367, %369
  br i1 %370, label %397, label %371

371:                                              ; preds = %365
  %372 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %17, i32 0, i32 3
  %373 = load i64, i64* %372, align 8
  %374 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 3
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %373, %375
  br i1 %376, label %397, label %377

377:                                              ; preds = %371
  %378 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %17, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %379, %381
  br i1 %382, label %397, label %383

383:                                              ; preds = %377
  %384 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %17, i32 0, i32 11
  %385 = load i32, i32* %384, align 4
  %386 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %9, i32 0, i32 11
  %387 = load i32, i32* %386, align 4
  %388 = icmp ne i32 %385, %387
  br i1 %388, label %397, label %389

389:                                              ; preds = %383
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = icmp eq i32 %392, 1
  br i1 %393, label %397, label %394

394:                                              ; preds = %389
  %395 = load i64, i64* %5, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %400

397:                                              ; preds = %394, %389, %383, %377, %371, %365
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %399 = call i32 @thread_recompute_priority(%struct.TYPE_10__* %398)
  br label %400

400:                                              ; preds = %397, %394
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MAX(i32, i32) #2

declare dso_local i8* @MIN(i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @thread_update_qos_cpu_time_locked(%struct.TYPE_10__*) #2

declare dso_local i32 @thread_recompute_priority(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
