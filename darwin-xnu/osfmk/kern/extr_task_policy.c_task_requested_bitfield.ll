; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_task_requested_bitfield.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_task_requested_bitfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.task_requested_policy }
%struct.task_requested_policy = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@POLICY_REQ_INT_DARWIN_BG = common dso_local global i32 0, align 4
@POLICY_REQ_EXT_DARWIN_BG = common dso_local global i32 0, align 4
@POLICY_REQ_INT_IO_TIER_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_EXT_IO_TIER_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_INT_PASSIVE_IO = common dso_local global i32 0, align 4
@POLICY_REQ_EXT_PASSIVE_IO = common dso_local global i32 0, align 4
@POLICY_REQ_BG_IOTIER_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_TERMINATED = common dso_local global i32 0, align 4
@POLICY_REQ_BOOSTED = common dso_local global i32 0, align 4
@POLICY_REQ_TAL_ENABLED = common dso_local global i32 0, align 4
@POLICY_REQ_APPTYPE_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_ROLE_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_SUP_ACTIVE = common dso_local global i32 0, align 4
@POLICY_REQ_SUP_LOWPRI_CPU = common dso_local global i32 0, align 4
@POLICY_REQ_SUP_CPU = common dso_local global i32 0, align 4
@POLICY_REQ_SUP_TIMER_THROTTLE_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_SUP_THROUGHPUT_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_SUP_DISK_THROTTLE = common dso_local global i32 0, align 4
@POLICY_REQ_SUP_BG_SOCKETS = common dso_local global i32 0, align 4
@POLICY_REQ_BASE_LATENCY_QOS_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_OVER_LATENCY_QOS_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_BASE_THROUGH_QOS_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_OVER_THROUGH_QOS_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_SFI_MANAGED = common dso_local global i32 0, align 4
@POLICY_REQ_QOS_CLAMP_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_requested_bitfield(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_requested_policy, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = bitcast %struct.task_requested_policy* %4 to i8*
  %8 = bitcast %struct.task_requested_policy* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 200, i1 false)
  %9 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 24
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @POLICY_REQ_INT_DARWIN_BG, align 4
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 23
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @POLICY_REQ_EXT_DARWIN_BG, align 4
  br label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 22
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 22
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @POLICY_REQ_INT_IO_TIER_SHIFT, align 4
  %37 = shl i32 %35, %36
  br label %39

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32 [ %37, %32 ], [ 0, %38 ]
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 21
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 21
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @POLICY_REQ_EXT_IO_TIER_SHIFT, align 4
  %51 = shl i32 %49, %50
  br label %53

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %46
  %54 = phi i32 [ %51, %46 ], [ 0, %52 ]
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 20
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @POLICY_REQ_INT_PASSIVE_IO, align 4
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  %67 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 19
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @POLICY_REQ_EXT_PASSIVE_IO, align 4
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = load i32, i32* %3, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 18
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 18
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* @POLICY_REQ_BG_IOTIER_SHIFT, align 4
  %85 = shl i32 %83, %84
  br label %87

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %80
  %88 = phi i32 [ %85, %80 ], [ 0, %86 ]
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  %91 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 17
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @POLICY_REQ_TERMINATED, align 4
  br label %97

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  %101 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 16
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @POLICY_REQ_BOOSTED, align 4
  br label %107

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %104
  %108 = phi i32 [ %105, %104 ], [ 0, %106 ]
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %3, align 4
  %111 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 15
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @POLICY_REQ_TAL_ENABLED, align 4
  br label %117

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  %119 = load i32, i32* %3, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %3, align 4
  %121 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 14
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 14
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @POLICY_REQ_APPTYPE_SHIFT, align 4
  %129 = shl i32 %127, %128
  br label %131

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %124
  %132 = phi i32 [ %129, %124 ], [ 0, %130 ]
  %133 = load i32, i32* %3, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %3, align 4
  %135 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 13
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 13
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = load i32, i32* @POLICY_REQ_ROLE_SHIFT, align 4
  %143 = shl i32 %141, %142
  br label %145

144:                                              ; preds = %131
  br label %145

145:                                              ; preds = %144, %138
  %146 = phi i32 [ %143, %138 ], [ 0, %144 ]
  %147 = load i32, i32* %3, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %3, align 4
  %149 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 12
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @POLICY_REQ_SUP_ACTIVE, align 4
  br label %155

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 0, %154 ]
  %157 = load i32, i32* %3, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %3, align 4
  %159 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 11
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* @POLICY_REQ_SUP_LOWPRI_CPU, align 4
  br label %165

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164, %162
  %166 = phi i32 [ %163, %162 ], [ 0, %164 ]
  %167 = load i32, i32* %3, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %3, align 4
  %169 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 10
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* @POLICY_REQ_SUP_CPU, align 4
  br label %175

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174, %172
  %176 = phi i32 [ %173, %172 ], [ 0, %174 ]
  %177 = load i32, i32* %3, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %3, align 4
  %179 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 9
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 9
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = load i32, i32* @POLICY_REQ_SUP_TIMER_THROTTLE_SHIFT, align 4
  %187 = shl i32 %185, %186
  br label %189

188:                                              ; preds = %175
  br label %189

189:                                              ; preds = %188, %182
  %190 = phi i32 [ %187, %182 ], [ 0, %188 ]
  %191 = load i32, i32* %3, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %3, align 4
  %193 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 8
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 8
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = load i32, i32* @POLICY_REQ_SUP_THROUGHPUT_SHIFT, align 4
  %201 = shl i32 %199, %200
  br label %203

202:                                              ; preds = %189
  br label %203

203:                                              ; preds = %202, %196
  %204 = phi i32 [ %201, %196 ], [ 0, %202 ]
  %205 = load i32, i32* %3, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %3, align 4
  %207 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 7
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %203
  %211 = load i32, i32* @POLICY_REQ_SUP_DISK_THROTTLE, align 4
  br label %213

212:                                              ; preds = %203
  br label %213

213:                                              ; preds = %212, %210
  %214 = phi i32 [ %211, %210 ], [ 0, %212 ]
  %215 = load i32, i32* %3, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %3, align 4
  %217 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = load i32, i32* @POLICY_REQ_SUP_BG_SOCKETS, align 4
  br label %223

222:                                              ; preds = %213
  br label %223

223:                                              ; preds = %222, %220
  %224 = phi i32 [ %221, %220 ], [ 0, %222 ]
  %225 = load i32, i32* %3, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %3, align 4
  %227 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  %234 = load i32, i32* @POLICY_REQ_BASE_LATENCY_QOS_SHIFT, align 4
  %235 = shl i32 %233, %234
  br label %237

236:                                              ; preds = %223
  br label %237

237:                                              ; preds = %236, %230
  %238 = phi i32 [ %235, %230 ], [ 0, %236 ]
  %239 = load i32, i32* %3, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %3, align 4
  %241 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = trunc i64 %246 to i32
  %248 = load i32, i32* @POLICY_REQ_OVER_LATENCY_QOS_SHIFT, align 4
  %249 = shl i32 %247, %248
  br label %251

250:                                              ; preds = %237
  br label %251

251:                                              ; preds = %250, %244
  %252 = phi i32 [ %249, %244 ], [ 0, %250 ]
  %253 = load i32, i32* %3, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %3, align 4
  %255 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %251
  %259 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = trunc i64 %260 to i32
  %262 = load i32, i32* @POLICY_REQ_BASE_THROUGH_QOS_SHIFT, align 4
  %263 = shl i32 %261, %262
  br label %265

264:                                              ; preds = %251
  br label %265

265:                                              ; preds = %264, %258
  %266 = phi i32 [ %263, %258 ], [ 0, %264 ]
  %267 = load i32, i32* %3, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %3, align 4
  %269 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %265
  %273 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = trunc i64 %274 to i32
  %276 = load i32, i32* @POLICY_REQ_OVER_THROUGH_QOS_SHIFT, align 4
  %277 = shl i32 %275, %276
  br label %279

278:                                              ; preds = %265
  br label %279

279:                                              ; preds = %278, %272
  %280 = phi i32 [ %277, %272 ], [ 0, %278 ]
  %281 = load i32, i32* %3, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %3, align 4
  %283 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %279
  %287 = load i32, i32* @POLICY_REQ_SFI_MANAGED, align 4
  br label %289

288:                                              ; preds = %279
  br label %289

289:                                              ; preds = %288, %286
  %290 = phi i32 [ %287, %286 ], [ 0, %288 ]
  %291 = load i32, i32* %3, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %3, align 4
  %293 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %4, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = trunc i64 %298 to i32
  %300 = load i32, i32* @POLICY_REQ_QOS_CLAMP_SHIFT, align 4
  %301 = shl i32 %299, %300
  br label %303

302:                                              ; preds = %289
  br label %303

303:                                              ; preds = %302, %296
  %304 = phi i32 [ %301, %296 ], [ 0, %302 ]
  %305 = load i32, i32* %3, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %3, align 4
  %307 = load i32, i32* %3, align 4
  ret i32 %307
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
