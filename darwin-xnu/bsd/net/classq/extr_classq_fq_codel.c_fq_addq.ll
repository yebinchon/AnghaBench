; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_fq_codel.c_fq_addq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_fq_codel.c_fq_addq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i64, i32, i32, i32 }
%struct.TYPE_35__ = type { i64, i32 }
%struct.TYPE_38__ = type { i32, %struct.TYPE_34__, i32 }
%struct.TYPE_34__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec = type { i32, i64 }

@DTYPE_NODROP = common dso_local global i32 0, align 4
@CLASSQEQ_SUCCESS = common dso_local global i32 0, align 4
@QP_MBUF = common dso_local global i64 0, align 8
@PKTF_PRIV_GUARDED = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CLASSQEQ_DROP = common dso_local global i32 0, align 4
@FQF_FLOWCTL_CAPABLE = common dso_local global i32 0, align 4
@PKTF_FLOW_ADV = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@DTYPE_EARLY = common dso_local global i32 0, align 4
@DTYPE_FORCED = common dso_local global i32 0, align 4
@FQF_FLOWCTL_ON = common dso_local global i32 0, align 4
@CLASSQEQ_SUCCESS_FC = common dso_local global i32 0, align 4
@CLASSQEQ_DROP_FC = common dso_local global i32 0, align 4
@FQF_NEW_FLOW = common dso_local global i32 0, align 4
@FQF_OLD_FLOW = common dso_local global i32 0, align 4
@fq_actlink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fq_addq(%struct.TYPE_37__* %0, %struct.TYPE_35__* %1, %struct.TYPE_38__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_36__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.timespec, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %5, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_38__* %2, %struct.TYPE_38__** %7, align 8
  %21 = load i32, i32* @DTYPE_NODROP, align 4
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* @CLASSQEQ_SUCCESS, align 4
  store i32 %22, i32* %10, align 4
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %12, align 8
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %24 = call i32 @pktsched_get_pkt_vars(%struct.TYPE_35__* %23, i32** %14, i64** %13, i32* %15, i64* %18, i64* %17, i32* %16)
  %25 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QP_MBUF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %3
  %31 = load i32*, i32** %14, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PKTF_PRIV_GUARDED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @VERIFY(i32 %37)
  %39 = load i32, i32* @PKTF_PRIV_GUARDED, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %30, %3
  %44 = load i64*, i64** %13, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64*, i64** %13, align 8
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %11, align 8
  br label %62

50:                                               ; preds = %43
  %51 = call i32 @nanouptime(%struct.timespec* %19)
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @NSEC_PER_SEC, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %56, %58
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64*, i64** %13, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %50, %47
  %63 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %66 = call i32 @pktsched_get_pkt_svc(%struct.TYPE_35__* %65)
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call %struct.TYPE_36__* @fq_if_hash_pkt(%struct.TYPE_37__* %63, i32 %64, i32 %66, i64 %67, i32 %68, i64 %71)
  store %struct.TYPE_36__* %72, %struct.TYPE_36__** %12, align 8
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %74 = icmp eq %struct.TYPE_36__* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %62
  %76 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @IFCQ_CONVERT_LOCK(i32 %83)
  %85 = load i32, i32* @CLASSQEQ_DROP, align 4
  store i32 %85, i32* %4, align 4
  br label %321

86:                                               ; preds = %62
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @VERIFY(i32 %94)
  %96 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %97 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %98 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %99 = call i32 @fq_detect_dequeue_stall(%struct.TYPE_37__* %96, %struct.TYPE_36__* %97, %struct.TYPE_38__* %98, i64* %11)
  %100 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %101 = call i64 @FQ_IS_DELAYHIGH(%struct.TYPE_36__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %146

103:                                              ; preds = %86
  %104 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @FQF_FLOWCTL_CAPABLE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %103
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PKTF_FLOW_ADV, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %110
  store i32 1, i32* %9, align 4
  %117 = load i64, i64* %17, align 8
  %118 = load i64, i64* @IPPROTO_TCP, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i32, i32* @DTYPE_EARLY, align 4
  store i32 %121, i32* %8, align 4
  %122 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %120, %116
  br label %145

128:                                              ; preds = %110, %103
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %130 = call i64 @fq_empty(%struct.TYPE_36__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %128
  %133 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %135 = call i32 @fq_head_drop(%struct.TYPE_37__* %133, %struct.TYPE_36__* %134)
  %136 = load i32, i32* @DTYPE_NODROP, align 4
  store i32 %136, i32* %8, align 4
  br label %139

137:                                              ; preds = %128
  %138 = load i32, i32* @DTYPE_EARLY, align 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %137, %132
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %139, %127
  br label %146

146:                                              ; preds = %145, %86
  %147 = load i32, i32* %9, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %184

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @DTYPE_FORCED, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %184

153:                                              ; preds = %149
  %154 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %155 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %156 = load i32, i32* %15, align 4
  %157 = load i64, i64* %18, align 8
  %158 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %159 = call i64 @fq_if_add_fcentry(%struct.TYPE_37__* %154, %struct.TYPE_35__* %155, i32 %156, i64 %157, %struct.TYPE_38__* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %153
  %162 = load i32, i32* @FQF_FLOWCTL_ON, align 4
  %163 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @DTYPE_NODROP, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = load i32, i32* @CLASSQEQ_SUCCESS_FC, align 4
  store i32 %171, i32* %10, align 4
  br label %174

172:                                              ; preds = %161
  %173 = load i32, i32* @CLASSQEQ_DROP_FC, align 4
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %172, %170
  br label %183

175:                                              ; preds = %153
  %176 = load i32, i32* @DTYPE_FORCED, align 4
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* @CLASSQEQ_DROP_FC, align 4
  store i32 %177, i32* %10, align 4
  %178 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %175, %174
  br label %184

184:                                              ; preds = %183, %149, %146
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @DTYPE_NODROP, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %238

188:                                              ; preds = %184
  %189 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %190 = call i64 @fq_if_at_drop_limit(%struct.TYPE_37__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %238

192:                                              ; preds = %188
  %193 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_36__*, %struct.TYPE_36__** %194, align 8
  %196 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %197 = icmp eq %struct.TYPE_36__* %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %192
  %199 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %200 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %201 = call i32 @fq_head_drop(%struct.TYPE_37__* %199, %struct.TYPE_36__* %200)
  br label %237

202:                                              ; preds = %192
  %203 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_36__*, %struct.TYPE_36__** %204, align 8
  %206 = icmp eq %struct.TYPE_36__* %205, null
  br i1 %206, label %207, label %233

207:                                              ; preds = %202
  %208 = load i32, i32* @DTYPE_FORCED, align 4
  store i32 %208, i32* %8, align 4
  %209 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* @CLASSQEQ_DROP, align 4
  store i32 %214, i32* %10, align 4
  %215 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %216 = call i64 @fq_empty(%struct.TYPE_36__* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %232

218:                                              ; preds = %207
  %219 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @FQF_NEW_FLOW, align 4
  %223 = load i32, i32* @FQF_OLD_FLOW, align 4
  %224 = or i32 %222, %223
  %225 = and i32 %221, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %218
  %228 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %229 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %230 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %231 = call i32 @fq_if_destroy_flow(%struct.TYPE_37__* %228, %struct.TYPE_38__* %229, %struct.TYPE_36__* %230)
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %12, align 8
  br label %232

232:                                              ; preds = %227, %218, %207
  br label %236

233:                                              ; preds = %202
  %234 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %235 = call i32 @fq_if_drop_packet(%struct.TYPE_37__* %234)
  br label %236

236:                                              ; preds = %233, %232
  br label %237

237:                                              ; preds = %236, %198
  br label %238

238:                                              ; preds = %237, %188, %184
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* @DTYPE_NODROP, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %269

242:                                              ; preds = %238
  %243 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %244 = call i32 @pktsched_get_pkt_len(%struct.TYPE_35__* %243)
  store i32 %244, i32* %20, align 4
  %245 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %246 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @fq_enqueue(%struct.TYPE_36__* %245, i32 %248)
  %250 = load i32, i32* %20, align 4
  %251 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %253, %250
  store i32 %254, i32* %252, align 8
  %255 = load i32, i32* %20, align 4
  %256 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, %255
  store i32 %260, i32* %258, align 4
  %261 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 4
  %266 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %267 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %268 = call i32 @fq_if_is_flow_heavy(%struct.TYPE_37__* %266, %struct.TYPE_36__* %267)
  br label %283

269:                                              ; preds = %238
  %270 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @IFCQ_CONVERT_LOCK(i32 %272)
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* @CLASSQEQ_SUCCESS, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %269
  %278 = load i32, i32* %10, align 4
  br label %281

279:                                              ; preds = %269
  %280 = load i32, i32* @CLASSQEQ_DROP, align 4
  br label %281

281:                                              ; preds = %279, %277
  %282 = phi i32 [ %278, %277 ], [ %280, %279 ]
  store i32 %282, i32* %4, align 4
  br label %321

283:                                              ; preds = %242
  %284 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @FQF_NEW_FLOW, align 4
  %288 = load i32, i32* @FQF_OLD_FLOW, align 4
  %289 = or i32 %287, %288
  %290 = and i32 %286, %289
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %319

292:                                              ; preds = %283
  %293 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %294 = load i32, i32* @fq_actlink, align 4
  %295 = call i32* @STAILQ_NEXT(%struct.TYPE_36__* %293, i32 %294)
  %296 = icmp eq i32* %295, null
  %297 = zext i1 %296 to i32
  %298 = call i32 @VERIFY(i32 %297)
  %299 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %302 = load i32, i32* @fq_actlink, align 4
  %303 = call i32 @STAILQ_INSERT_TAIL(i32* %300, %struct.TYPE_36__* %301, i32 %302)
  %304 = load i32, i32* @FQF_NEW_FLOW, align 4
  %305 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 8
  %309 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 4
  %314 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 2
  store i32 %316, i32* %318, align 4
  br label %319

319:                                              ; preds = %292, %283
  %320 = load i32, i32* %10, align 4
  store i32 %320, i32* %4, align 4
  br label %321

321:                                              ; preds = %319, %281, %75
  %322 = load i32, i32* %4, align 4
  ret i32 %322
}

declare dso_local i32 @pktsched_get_pkt_vars(%struct.TYPE_35__*, i32**, i64**, i32*, i64*, i64*, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @nanouptime(%struct.timespec*) #1

declare dso_local %struct.TYPE_36__* @fq_if_hash_pkt(%struct.TYPE_37__*, i32, i32, i64, i32, i64) #1

declare dso_local i32 @pktsched_get_pkt_svc(%struct.TYPE_35__*) #1

declare dso_local i32 @IFCQ_CONVERT_LOCK(i32) #1

declare dso_local i32 @fq_detect_dequeue_stall(%struct.TYPE_37__*, %struct.TYPE_36__*, %struct.TYPE_38__*, i64*) #1

declare dso_local i64 @FQ_IS_DELAYHIGH(%struct.TYPE_36__*) #1

declare dso_local i64 @fq_empty(%struct.TYPE_36__*) #1

declare dso_local i32 @fq_head_drop(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i64 @fq_if_add_fcentry(%struct.TYPE_37__*, %struct.TYPE_35__*, i32, i64, %struct.TYPE_38__*) #1

declare dso_local i64 @fq_if_at_drop_limit(%struct.TYPE_37__*) #1

declare dso_local i32 @fq_if_destroy_flow(%struct.TYPE_37__*, %struct.TYPE_38__*, %struct.TYPE_36__*) #1

declare dso_local i32 @fq_if_drop_packet(%struct.TYPE_37__*) #1

declare dso_local i32 @pktsched_get_pkt_len(%struct.TYPE_35__*) #1

declare dso_local i32 @fq_enqueue(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @fq_if_is_flow_heavy(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i32* @STAILQ_NEXT(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_36__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
