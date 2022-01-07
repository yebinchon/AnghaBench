; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_xmit_timer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_xmit_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.tcpcb = type { i64, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IFEF_AWDL = common dso_local global i32 0, align 4
@TF_RECOMPUTE_RTT = common dso_local global i32 0, align 4
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@TCP_RTTVAR_SHIFT = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@TCP_DELTA_SHIFT = common dso_local global i32 0, align 4
@TCPTV_REXMTMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, i32, i64, i64)* @tcp_xmit_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_xmit_timer(%struct.tcpcb* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 9
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %4
  %17 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 9
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFEF_AWDL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %16
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %268

35:                                               ; preds = %27, %16, %4
  %36 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TF_RECOMPUTE_RTT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %129

42:                                               ; preds = %35
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %45 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %44, i32 0, i32 15
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @SEQ_GT(i64 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %128

49:                                               ; preds = %42
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %52 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %51, i32 0, i32 14
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @SEQ_LEQ(i64 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %128

56:                                               ; preds = %49
  %57 = load i64, i64* %7, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %62 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %61, i32 0, i32 13
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @TSTMP_GEQ(i64 %60, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %128

66:                                               ; preds = %59, %56
  %67 = load i32, i32* @TF_RECOMPUTE_RTT, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 13
  store i64 0, i64* %74, align 8
  %75 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %76 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i8* @max(i32 %77, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %82 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %89 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %91 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %6, align 4
  %94 = ashr i32 %93, 1
  %95 = call i8* @max(i32 %92, i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %98 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %100 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TCP_RTTVAR_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %105 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %107 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %110 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %113 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %111, %114
  %116 = icmp sgt i32 %108, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %66
  %118 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %119 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %122 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %120, %123
  %125 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %126 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %117, %66
  br label %237

128:                                              ; preds = %59, %49, %42
  br label %268

129:                                              ; preds = %35
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 0), align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tcpstat, i32 0, i32 0), align 4
  %132 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %133 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* %6, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %129
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %141 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 8
  %142 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @update_base_rtt(%struct.tcpcb* %142, i32 %143)
  br label %145

145:                                              ; preds = %138, %129
  %146 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %147 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %224

150:                                              ; preds = %145
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @TCP_DELTA_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %155 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %158 = load i32, i32* @TCP_DELTA_SHIFT, align 4
  %159 = sub nsw i32 %157, %158
  %160 = ashr i32 %156, %159
  %161 = sub nsw i32 %153, %160
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %164 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = icmp sle i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %150
  %169 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %170 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %169, i32 0, i32 2
  store i32 1, i32* %170, align 4
  br label %171

171:                                              ; preds = %168, %150
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* %9, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %174, %171
  %178 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %179 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @TCP_RTTVAR_SHIFT, align 4
  %182 = load i32, i32* @TCP_DELTA_SHIFT, align 4
  %183 = sub nsw i32 %181, %182
  %184 = ashr i32 %180, %183
  %185 = load i32, i32* %9, align 4
  %186 = sub nsw i32 %185, %184
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %189 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = icmp sle i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %177
  %194 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %195 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %194, i32 0, i32 3
  store i32 1, i32* %195, align 8
  br label %196

196:                                              ; preds = %193, %177
  %197 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %198 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %213, label %201

201:                                              ; preds = %196
  %202 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %203 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %206 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %209 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %207, %210
  %212 = icmp sgt i32 %204, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %201, %196
  %214 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %215 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %218 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %216, %219
  %221 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %222 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %213, %201
  br label %236

224:                                              ; preds = %145
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %227 = shl i32 %225, %226
  %228 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %229 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @TCP_RTTVAR_SHIFT, align 4
  %232 = sub nsw i32 %231, 1
  %233 = shl i32 %230, %232
  %234 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %235 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 8
  br label %236

236:                                              ; preds = %224, %223
  br label %237

237:                                              ; preds = %236, %127
  %238 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %239 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %238, i32 0, i32 9
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %245 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %248 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @nstat_route_rtt(i32 %243, i32 %246, i32 %249)
  %251 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %252 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %255 = call i32 @TCP_REXMTVAL(%struct.tcpcb* %254)
  %256 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %257 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %256, i32 0, i32 7
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %6, align 4
  %260 = add nsw i32 %259, 2
  %261 = call i8* @max(i32 %258, i32 %260)
  %262 = load i32, i32* @TCPTV_REXMTMAX, align 4
  %263 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %264 = call i32 @TCP_ADD_REXMTSLOP(%struct.tcpcb* %263)
  %265 = call i32 @TCPT_RANGESET(i32 %253, i32 %255, i8* %261, i32 %262, i32 %264)
  %266 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %267 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %266, i32 0, i32 6
  store i64 0, i64* %267, align 8
  br label %268

268:                                              ; preds = %237, %128, %34
  ret void
}

declare dso_local i64 @SEQ_GT(i64, i32) #1

declare dso_local i64 @SEQ_LEQ(i64, i32) #1

declare dso_local i64 @TSTMP_GEQ(i64, i64) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @update_base_rtt(%struct.tcpcb*, i32) #1

declare dso_local i32 @nstat_route_rtt(i32, i32, i32) #1

declare dso_local i32 @TCPT_RANGESET(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @TCP_REXMTVAL(%struct.tcpcb*) #1

declare dso_local i32 @TCP_ADD_REXMTSLOP(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
