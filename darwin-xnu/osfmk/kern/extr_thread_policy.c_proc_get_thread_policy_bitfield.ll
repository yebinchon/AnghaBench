; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_proc_get_thread_policy_bitfield.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_proc_get_thread_policy_bitfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.thread_effective_policy, %struct.thread_requested_policy }
%struct.thread_effective_policy = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.thread_requested_policy = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i8*, i8* }

@POLICY_REQ_INT_DARWIN_BG = common dso_local global i32 0, align 4
@POLICY_REQ_EXT_DARWIN_BG = common dso_local global i32 0, align 4
@POLICY_REQ_INT_IO_TIER_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_EXT_IO_TIER_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_INT_PASSIVE_IO = common dso_local global i32 0, align 4
@POLICY_REQ_EXT_PASSIVE_IO = common dso_local global i32 0, align 4
@POLICY_REQ_TH_QOS_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_TH_QOS_OVER_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_PIDBIND_BG = common dso_local global i32 0, align 4
@POLICY_REQ_BASE_LATENCY_QOS_SHIFT = common dso_local global i32 0, align 4
@POLICY_REQ_BASE_THROUGH_QOS_SHIFT = common dso_local global i32 0, align 4
@POLICY_EFF_DARWIN_BG = common dso_local global i32 0, align 4
@POLICY_EFF_IO_TIER_SHIFT = common dso_local global i32 0, align 4
@POLICY_EFF_IO_PASSIVE = common dso_local global i32 0, align 4
@POLICY_EFF_ALL_SOCKETS_BG = common dso_local global i32 0, align 4
@POLICY_EFF_NEW_SOCKETS_BG = common dso_local global i32 0, align 4
@POLICY_EFF_TH_QOS_SHIFT = common dso_local global i32 0, align 4
@POLICY_EFF_LATENCY_QOS_SHIFT = common dso_local global i32 0, align 4
@POLICY_EFF_THROUGH_QOS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @proc_get_thread_policy_bitfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_get_thread_policy_bitfield(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread_requested_policy, align 8
  %7 = alloca %struct.thread_effective_policy, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = bitcast %struct.thread_requested_policy* %6 to i8*
  %11 = bitcast %struct.thread_requested_policy* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 88, i1 false)
  %12 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 10
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @POLICY_REQ_INT_DARWIN_BG, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @POLICY_REQ_EXT_DARWIN_BG, align 4
  br label %28

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @POLICY_REQ_INT_IO_TIER_SHIFT, align 4
  %40 = shl i32 %38, %39
  br label %42

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %35
  %43 = phi i32 [ %40, %35 ], [ 0, %41 ]
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @POLICY_REQ_EXT_IO_TIER_SHIFT, align 4
  %54 = shl i32 %52, %53
  br label %56

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %49
  %57 = phi i32 [ %54, %49 ], [ 0, %55 ]
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @POLICY_REQ_INT_PASSIVE_IO, align 4
  br label %66

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @POLICY_REQ_EXT_PASSIVE_IO, align 4
  br label %76

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* @POLICY_REQ_TH_QOS_SHIFT, align 4
  %88 = shl i32 %86, %87
  br label %90

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %83
  %91 = phi i32 [ %88, %83 ], [ 0, %89 ]
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* @POLICY_REQ_TH_QOS_OVER_SHIFT, align 4
  %102 = shl i32 %100, %101
  br label %104

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %97
  %105 = phi i32 [ %102, %97 ], [ 0, %103 ]
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @POLICY_REQ_PIDBIND_BG, align 4
  br label %114

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %111
  %115 = phi i32 [ %112, %111 ], [ 0, %113 ]
  %116 = load i32, i32* %5, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %5, align 4
  %118 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* @POLICY_REQ_BASE_LATENCY_QOS_SHIFT, align 4
  %126 = shl i32 %124, %125
  br label %128

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127, %121
  %129 = phi i32 [ %126, %121 ], [ 0, %127 ]
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %6, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* @POLICY_REQ_BASE_THROUGH_QOS_SHIFT, align 4
  %140 = shl i32 %138, %139
  br label %142

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %135
  %143 = phi i32 [ %140, %135 ], [ 0, %141 ]
  %144 = load i32, i32* %5, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  store i32 0, i32* %5, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = bitcast %struct.thread_effective_policy* %7 to i8*
  %154 = bitcast %struct.thread_effective_policy* %152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %153, i8* align 8 %154, i64 64, i1 false)
  %155 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %7, i32 0, i32 7
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %142
  %159 = load i32, i32* @POLICY_EFF_DARWIN_BG, align 4
  br label %161

160:                                              ; preds = %142
  br label %161

161:                                              ; preds = %160, %158
  %162 = phi i32 [ %159, %158 ], [ 0, %160 ]
  %163 = load i32, i32* %5, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %5, align 4
  %165 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %7, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %7, i32 0, i32 6
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = load i32, i32* @POLICY_EFF_IO_TIER_SHIFT, align 4
  %173 = shl i32 %171, %172
  br label %175

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174, %168
  %176 = phi i32 [ %173, %168 ], [ 0, %174 ]
  %177 = load i32, i32* %5, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %5, align 4
  %179 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %7, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  %183 = load i32, i32* @POLICY_EFF_IO_PASSIVE, align 4
  br label %185

184:                                              ; preds = %175
  br label %185

185:                                              ; preds = %184, %182
  %186 = phi i32 [ %183, %182 ], [ 0, %184 ]
  %187 = load i32, i32* %5, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %5, align 4
  %189 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %7, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = load i32, i32* @POLICY_EFF_ALL_SOCKETS_BG, align 4
  br label %195

194:                                              ; preds = %185
  br label %195

195:                                              ; preds = %194, %192
  %196 = phi i32 [ %193, %192 ], [ 0, %194 ]
  %197 = load i32, i32* %5, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %5, align 4
  %199 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %7, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  %203 = load i32, i32* @POLICY_EFF_NEW_SOCKETS_BG, align 4
  br label %205

204:                                              ; preds = %195
  br label %205

205:                                              ; preds = %204, %202
  %206 = phi i32 [ %203, %202 ], [ 0, %204 ]
  %207 = load i32, i32* %5, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %5, align 4
  %209 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %7, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %7, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = trunc i64 %214 to i32
  %216 = load i32, i32* @POLICY_EFF_TH_QOS_SHIFT, align 4
  %217 = shl i32 %215, %216
  br label %219

218:                                              ; preds = %205
  br label %219

219:                                              ; preds = %218, %212
  %220 = phi i32 [ %217, %212 ], [ 0, %218 ]
  %221 = load i32, i32* %5, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %5, align 4
  %223 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %7, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %219
  %227 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %7, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = trunc i64 %228 to i32
  %230 = load i32, i32* @POLICY_EFF_LATENCY_QOS_SHIFT, align 4
  %231 = shl i32 %229, %230
  br label %233

232:                                              ; preds = %219
  br label %233

233:                                              ; preds = %232, %226
  %234 = phi i32 [ %231, %226 ], [ 0, %232 ]
  %235 = load i32, i32* %5, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %5, align 4
  %237 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %7, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %233
  %241 = getelementptr inbounds %struct.thread_effective_policy, %struct.thread_effective_policy* %7, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = load i32, i32* @POLICY_EFF_THROUGH_QOS_SHIFT, align 4
  %245 = shl i32 %243, %244
  br label %247

246:                                              ; preds = %233
  br label %247

247:                                              ; preds = %246, %240
  %248 = phi i32 [ %245, %240 ], [ 0, %246 ]
  %249 = load i32, i32* %5, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %5, align 4
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to i8*
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 1
  store i8* %253, i8** %255, align 8
  store i32 0, i32* %5, align 4
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  store i64 0, i64* %257, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
