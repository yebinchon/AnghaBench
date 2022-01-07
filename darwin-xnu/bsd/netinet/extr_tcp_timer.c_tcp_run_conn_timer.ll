; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_run_conn_timer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_run_conn_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64*, %struct.TYPE_5__, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.socket* }
%struct.TYPE_4__ = type { i64 }
%struct.socket = type { i32 }

@TCPT_NONE = common dso_local global i64 0, align 8
@TCPT_NTIMERS = common dso_local global i32 0, align 4
@WNT_RELEASE = common dso_local global i32 0, align 4
@WNT_STOPUSING = common dso_local global i64 0, align 8
@TF_PROBING = common dso_local global i32 0, align 4
@TCPT_PTO = common dso_local global i64 0, align 8
@tcp_now = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tcp_run_conn_timer(%struct.tcpcb* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %18 = load i64, i64* @TCPT_NONE, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* @TCPT_NONE, align 8
  store i64 %19, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %20 = load i32, i32* @TCPT_NTIMERS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %24 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %25 = icmp ne %struct.tcpcb* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @VERIFY(i32 %26)
  %28 = mul nuw i64 8, %21
  %29 = trunc i64 %28 to i32
  %30 = call i32 @bzero(i64* %23, i32 %29)
  %31 = load i64*, i64** %5, align 8
  store i64 0, i64* %31, align 8
  %32 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.socket*, %struct.socket** %35, align 8
  %37 = call i32 @socket_lock(%struct.socket* %36, i32 1)
  %38 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load %struct.socket*, %struct.socket** %41, align 8
  store %struct.socket* %42, %struct.socket** %7, align 8
  %43 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* @WNT_RELEASE, align 4
  %47 = call i64 @in_pcb_checkstate(%struct.TYPE_6__* %45, i32 %46, i32 1)
  %48 = load i64, i64* @WNT_STOPUSING, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %3
  %51 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %52 = call i64 @TIMER_IS_ON_LIST(%struct.tcpcb* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %56 = call i32 @tcp_remove_timer(%struct.tcpcb* %55)
  br label %57

57:                                               ; preds = %54, %50
  br label %340

58:                                               ; preds = %3
  %59 = load i64, i64* %6, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %98

61:                                               ; preds = %58
  %62 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %63 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  br i1 %67, label %68, label %98

68:                                               ; preds = %61
  %69 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 3
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %68
  %79 = load i32, i32* @TF_PROBING, align 4
  %80 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %81 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %85 = load i64, i64* @TCPT_PTO, align 8
  %86 = call %struct.tcpcb* @tcp_timers(%struct.tcpcb* %84, i64 %85)
  %87 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %88 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @TCPT_PTO, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @TF_PROBING, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %95 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %78, %68, %61, %58
  %99 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %100 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %9, align 8
  %103 = load i64, i64* @TCPT_NONE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %340

106:                                              ; preds = %98
  %107 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %108 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %11, align 8
  %113 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %114 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @tcp_now, align 8
  %118 = call i64 @timer_diff(i64 %116, i64 0, i64 %117, i32 0)
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %14, align 8
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %106
  %122 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %123 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TCPT_NONE, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load i64, i64* %14, align 8
  store i64 %129, i64* %12, align 8
  %130 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %131 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %5, align 8
  store i64 %133, i64* %134, align 8
  br label %135

135:                                              ; preds = %128, %121
  br label %340

136:                                              ; preds = %106
  %137 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %138 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  store i64 0, i64* %141, align 8
  %142 = load i64, i64* %11, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %136
  %145 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call %struct.tcpcb* @tcp_timers(%struct.tcpcb* %145, i64 %146)
  store %struct.tcpcb* %147, %struct.tcpcb** %4, align 8
  %148 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %149 = icmp eq %struct.tcpcb* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %340

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %136
  %153 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %154 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  store i64 0, i64* %155, align 8
  store i64 0, i64* %8, align 8
  br label %156

156:                                              ; preds = %218, %152
  %157 = load i64, i64* %8, align 8
  %158 = load i32, i32* @TCPT_NTIMERS, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp slt i64 %157, %159
  br i1 %160, label %161, label %221

161:                                              ; preds = %156
  %162 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %163 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = load i64, i64* %8, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %217

169:                                              ; preds = %161
  %170 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %171 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %175 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  %177 = load i64, i64* %8, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @tcp_now, align 8
  %181 = call i64 @timer_diff(i64 %173, i64 %179, i64 %180, i32 0)
  store i64 %181, i64* %14, align 8
  %182 = load i64, i64* %14, align 8
  %183 = icmp sle i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %169
  %185 = load i64, i64* @TRUE, align 8
  %186 = load i64, i64* %8, align 8
  %187 = getelementptr inbounds i64, i64* %23, i64 %186
  store i64 %185, i64* %187, align 8
  %188 = load i32, i32* %17, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %17, align 4
  br label %216

190:                                              ; preds = %169
  %191 = load i64, i64* %14, align 8
  %192 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %193 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* %8, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  store i64 %191, i64* %196, align 8
  %197 = load i64, i64* @FALSE, align 8
  %198 = load i64, i64* %8, align 8
  %199 = getelementptr inbounds i64, i64* %23, i64 %198
  store i64 %197, i64* %199, align 8
  %200 = load i64, i64* %13, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %190
  %203 = load i64, i64* %14, align 8
  %204 = load i64, i64* %13, align 8
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %202, %190
  %207 = load i64, i64* %14, align 8
  store i64 %207, i64* %13, align 8
  %208 = load i64, i64* %8, align 8
  store i64 %208, i64* %10, align 8
  br label %209

209:                                              ; preds = %206, %202
  %210 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %211 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %8, align 8
  %215 = call i32 @TCP_SET_TIMER_MODE(i64 %213, i64 %214)
  br label %216

216:                                              ; preds = %209, %184
  br label %217

217:                                              ; preds = %216, %161
  br label %218

218:                                              ; preds = %217
  %219 = load i64, i64* %8, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %8, align 8
  br label %156

221:                                              ; preds = %156
  %222 = load i64, i64* @tcp_now, align 8
  %223 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %224 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 3
  store i64 %222, i64* %225, align 8
  %226 = load i64, i64* %10, align 8
  %227 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %228 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  store i64 %226, i64* %229, align 8
  %230 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %231 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @TCPT_NONE, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %242, label %236

236:                                              ; preds = %221
  %237 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %238 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp sgt i64 %240, 0
  br label %242

242:                                              ; preds = %236, %221
  %243 = phi i1 [ true, %221 ], [ %241, %236 ]
  %244 = zext i1 %243 to i32
  %245 = call i32 @VERIFY(i32 %244)
  %246 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %247 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @TCPT_NONE, align 8
  %251 = icmp ne i64 %249, %250
  br i1 %251, label %252, label %282

252:                                              ; preds = %242
  %253 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %254 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %258 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %257, i32 0, i32 0
  %259 = load i64*, i64** %258, align 8
  %260 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %261 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds i64, i64* %259, i64 %263
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %256, %265
  %267 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %268 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  store i64 %266, i64* %269, align 8
  %270 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %271 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %252
  %276 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %277 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i64 %279, 1
  store i64 %280, i64* %278, align 8
  br label %281

281:                                              ; preds = %275, %252
  br label %282

282:                                              ; preds = %281, %242
  %283 = load i32, i32* %17, align 4
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %317

285:                                              ; preds = %282
  store i64 0, i64* %8, align 8
  br label %286

286:                                              ; preds = %311, %285
  %287 = load i64, i64* %8, align 8
  %288 = load i32, i32* @TCPT_NTIMERS, align 4
  %289 = sext i32 %288 to i64
  %290 = icmp slt i64 %287, %289
  br i1 %290, label %291, label %314

291:                                              ; preds = %286
  %292 = load i64, i64* %8, align 8
  %293 = getelementptr inbounds i64, i64* %23, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %310

296:                                              ; preds = %291
  %297 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %298 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %297, i32 0, i32 0
  %299 = load i64*, i64** %298, align 8
  %300 = load i64, i64* %8, align 8
  %301 = getelementptr inbounds i64, i64* %299, i64 %300
  store i64 0, i64* %301, align 8
  %302 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %303 = load i64, i64* %8, align 8
  %304 = call %struct.tcpcb* @tcp_timers(%struct.tcpcb* %302, i64 %303)
  store %struct.tcpcb* %304, %struct.tcpcb** %4, align 8
  %305 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %306 = icmp eq %struct.tcpcb* %305, null
  br i1 %306, label %307, label %309

307:                                              ; preds = %296
  store i64 0, i64* %12, align 8
  %308 = load i64*, i64** %5, align 8
  store i64 0, i64* %308, align 8
  br label %340

309:                                              ; preds = %296
  br label %310

310:                                              ; preds = %309, %291
  br label %311

311:                                              ; preds = %310
  %312 = load i64, i64* %8, align 8
  %313 = add nsw i64 %312, 1
  store i64 %313, i64* %8, align 8
  br label %286

314:                                              ; preds = %286
  %315 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %316 = call i32 @tcp_set_lotimer_index(%struct.tcpcb* %315)
  br label %317

317:                                              ; preds = %314, %282
  %318 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %319 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @TCPT_NONE, align 8
  %323 = icmp slt i64 %321, %322
  br i1 %323, label %324, label %339

324:                                              ; preds = %317
  %325 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %326 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %325, i32 0, i32 0
  %327 = load i64*, i64** %326, align 8
  %328 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %329 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds i64, i64* %327, i64 %331
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %12, align 8
  %334 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %335 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 2
  %337 = load i64, i64* %336, align 8
  %338 = load i64*, i64** %5, align 8
  store i64 %337, i64* %338, align 8
  br label %339

339:                                              ; preds = %324, %317
  br label %340

340:                                              ; preds = %339, %307, %150, %135, %105, %57
  %341 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %342 = icmp ne %struct.tcpcb* %341, null
  br i1 %342, label %343, label %353

343:                                              ; preds = %340
  %344 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %345 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @TCPT_NONE, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %343
  %351 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %352 = call i32 @tcp_remove_timer(%struct.tcpcb* %351)
  store i64 0, i64* %12, align 8
  br label %353

353:                                              ; preds = %350, %343, %340
  %354 = load %struct.socket*, %struct.socket** %7, align 8
  %355 = call i32 @socket_unlock(%struct.socket* %354, i32 1)
  %356 = load i64, i64* %12, align 8
  %357 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %357)
  ret i64 %356
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i32 @bzero(i64*, i32) #2

declare dso_local i32 @socket_lock(%struct.socket*, i32) #2

declare dso_local i64 @in_pcb_checkstate(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i64 @TIMER_IS_ON_LIST(%struct.tcpcb*) #2

declare dso_local i32 @tcp_remove_timer(%struct.tcpcb*) #2

declare dso_local %struct.tcpcb* @tcp_timers(%struct.tcpcb*, i64) #2

declare dso_local i64 @timer_diff(i64, i64, i64, i32) #2

declare dso_local i32 @TCP_SET_TIMER_MODE(i64, i64) #2

declare dso_local i32 @tcp_set_lotimer_index(%struct.tcpcb*) #2

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
