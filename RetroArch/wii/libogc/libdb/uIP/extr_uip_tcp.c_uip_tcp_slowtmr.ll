; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_slowtmr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_slowtmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcp_pcb = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 (i32, %struct.uip_tcp_pcb*)*, %struct.uip_tcp_pcb*, i32, i32 (i32, i32)*, i32*, i32, i32* }

@UIP_ERR_OK = common dso_local global i64 0, align 8
@uip_tcp_ticks = common dso_local global i32 0, align 4
@uip_tcp_active_pcbs = common dso_local global %struct.uip_tcp_pcb* null, align 8
@UIP_SYN_SENT = common dso_local global i64 0, align 8
@UIP_MAXSYNRTX = common dso_local global i64 0, align 8
@UIP_MAXRTX = common dso_local global i64 0, align 8
@uip_tcp_backoff = common dso_local global i32* null, align 8
@UIP_FIN_WAIT_2 = common dso_local global i64 0, align 8
@UIP_TCP_FIN_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@UIP_TCP_SLOW_INTERVAL = common dso_local global i32 0, align 4
@UIP_SOF_KEEPALIVE = common dso_local global i32 0, align 4
@UIP_ESTABLISHED = common dso_local global i64 0, align 8
@UIP_CLOSE_WAIT = common dso_local global i64 0, align 8
@UIP_TCP_MAXIDLE = common dso_local global i32 0, align 4
@UIP_TCP_KEEPINTVL = common dso_local global i32 0, align 4
@UIP_TCP_OOSEQ_TIMEOUT = common dso_local global i32 0, align 4
@UIP_SYN_RCVD = common dso_local global i64 0, align 8
@UIP_TCP_SYN_RCVD_TIMEOUT = common dso_local global i32 0, align 4
@UIP_ERR_ABRT = common dso_local global i32 0, align 4
@uip_tcp_pcbs = common dso_local global i32 0, align 4
@uip_tcp_tw_pcbs = common dso_local global %struct.uip_tcp_pcb* null, align 8
@UIP_TCP_MSL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_tcp_slowtmr() #0 {
  %1 = alloca %struct.uip_tcp_pcb*, align 8
  %2 = alloca %struct.uip_tcp_pcb*, align 8
  %3 = alloca %struct.uip_tcp_pcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i64, i64* @UIP_ERR_OK, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i32, i32* @uip_tcp_ticks, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @uip_tcp_ticks, align 4
  store %struct.uip_tcp_pcb* null, %struct.uip_tcp_pcb** %1, align 8
  %10 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** @uip_tcp_active_pcbs, align 8
  store %struct.uip_tcp_pcb* %10, %struct.uip_tcp_pcb** %2, align 8
  br label %11

11:                                               ; preds = %322, %0
  %12 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %13 = icmp ne %struct.uip_tcp_pcb* %12, null
  br i1 %13, label %14, label %323

14:                                               ; preds = %11
  store i64 0, i64* %5, align 8
  %15 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %16 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UIP_SYN_SENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %22 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UIP_MAXSYNRTX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %115

29:                                               ; preds = %20, %14
  %30 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %31 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @UIP_MAXRTX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %114

38:                                               ; preds = %29
  %39 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %40 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %44 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %43, i32 0, i32 21
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %113

47:                                               ; preds = %38
  %48 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %49 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %52 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %113

55:                                               ; preds = %47
  %56 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %57 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @UIP_SYN_SENT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %55
  %62 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %63 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = ashr i32 %64, 3
  %66 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %67 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = load i32*, i32** @uip_tcp_backoff, align 8
  %71 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %72 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %69, %75
  %77 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %78 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %61, %55
  %80 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %81 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %84 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %83, i32 0, i32 20
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @UIP_MIN(i32 %82, i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = ashr i32 %87, 1
  %89 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %90 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  %91 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %92 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %95 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %79
  %99 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %100 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %101, 2
  %103 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %104 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %98, %79
  %106 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %107 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %110 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %112 = call i32 @uip_tcp_rexmit_rto(%struct.uip_tcp_pcb* %111)
  br label %113

113:                                              ; preds = %105, %47, %38
  br label %114

114:                                              ; preds = %113, %35
  br label %115

115:                                              ; preds = %114, %26
  %116 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %117 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @UIP_FIN_WAIT_2, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %115
  %122 = load i32, i32* @uip_tcp_ticks, align 4
  %123 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %124 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %122, %125
  %127 = load i32, i32* @UIP_TCP_FIN_WAIT_TIMEOUT, align 4
  %128 = load i32, i32* @UIP_TCP_SLOW_INTERVAL, align 4
  %129 = sdiv i32 %127, %128
  %130 = icmp sgt i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %121
  %132 = load i64, i64* %5, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %5, align 8
  br label %134

134:                                              ; preds = %131, %121
  br label %135

135:                                              ; preds = %134, %115
  %136 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %137 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @UIP_SOF_KEEPALIVE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %198

142:                                              ; preds = %135
  %143 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %144 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @UIP_ESTABLISHED, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %150 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @UIP_CLOSE_WAIT, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %198

154:                                              ; preds = %148, %142
  %155 = load i32, i32* @uip_tcp_ticks, align 4
  %156 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %157 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %155, %158
  %160 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %161 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %160, i32 0, i32 11
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @UIP_TCP_MAXIDLE, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* @UIP_TCP_SLOW_INTERVAL, align 4
  %166 = sdiv i32 %164, %165
  %167 = icmp sgt i32 %159, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %154
  %169 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %170 = call i32 @uip_tcp_abort(%struct.uip_tcp_pcb* %169)
  br label %197

171:                                              ; preds = %154
  %172 = load i32, i32* @uip_tcp_ticks, align 4
  %173 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %174 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %172, %175
  %177 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %178 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %177, i32 0, i32 11
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %181 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %180, i32 0, i32 12
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @UIP_TCP_KEEPINTVL, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %179, %184
  %186 = load i32, i32* @UIP_TCP_SLOW_INTERVAL, align 4
  %187 = sdiv i32 %185, %186
  %188 = icmp sgt i32 %176, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %171
  %190 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %191 = call i32 @uip_tcp_keepalive(%struct.uip_tcp_pcb* %190)
  %192 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %193 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %192, i32 0, i32 12
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %189, %171
  br label %197

197:                                              ; preds = %196, %168
  br label %198

198:                                              ; preds = %197, %148, %135
  %199 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %200 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %199, i32 0, i32 19
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %222

203:                                              ; preds = %198
  %204 = load i32, i32* @uip_tcp_ticks, align 4
  %205 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %206 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %204, %207
  %209 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %210 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @UIP_TCP_OOSEQ_TIMEOUT, align 4
  %213 = mul nsw i32 %211, %212
  %214 = icmp sge i32 %208, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %203
  %216 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %217 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %216, i32 0, i32 19
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @uip_tcpsegs_free(i32* %218)
  %220 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %221 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %220, i32 0, i32 19
  store i32* null, i32** %221, align 8
  br label %222

222:                                              ; preds = %215, %203, %198
  %223 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %224 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @UIP_SYN_RCVD, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %242

228:                                              ; preds = %222
  %229 = load i32, i32* @uip_tcp_ticks, align 4
  %230 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %231 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %230, i32 0, i32 9
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 %229, %232
  %234 = load i32, i32* @UIP_TCP_SYN_RCVD_TIMEOUT, align 4
  %235 = load i32, i32* @UIP_TCP_SLOW_INTERVAL, align 4
  %236 = sdiv i32 %234, %235
  %237 = icmp sgt i32 %233, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %228
  %239 = load i64, i64* %5, align 8
  %240 = add nsw i64 %239, 1
  store i64 %240, i64* %5, align 8
  br label %241

241:                                              ; preds = %238, %228
  br label %242

242:                                              ; preds = %241, %222
  %243 = load i64, i64* %5, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %281

245:                                              ; preds = %242
  %246 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %247 = call i32 @uip_tcp_pcbpurge(%struct.uip_tcp_pcb* %246)
  %248 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %1, align 8
  %249 = icmp ne %struct.uip_tcp_pcb* %248, null
  br i1 %249, label %250, label %256

250:                                              ; preds = %245
  %251 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %252 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %251, i32 0, i32 16
  %253 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %252, align 8
  %254 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %1, align 8
  %255 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %254, i32 0, i32 16
  store %struct.uip_tcp_pcb* %253, %struct.uip_tcp_pcb** %255, align 8
  br label %260

256:                                              ; preds = %245
  %257 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %258 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %257, i32 0, i32 16
  %259 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %258, align 8
  store %struct.uip_tcp_pcb* %259, %struct.uip_tcp_pcb** @uip_tcp_active_pcbs, align 8
  br label %260

260:                                              ; preds = %256, %250
  %261 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %262 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %261, i32 0, i32 18
  %263 = load i32 (i32, i32)*, i32 (i32, i32)** %262, align 8
  %264 = icmp ne i32 (i32, i32)* %263, null
  br i1 %264, label %265, label %274

265:                                              ; preds = %260
  %266 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %267 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %266, i32 0, i32 18
  %268 = load i32 (i32, i32)*, i32 (i32, i32)** %267, align 8
  %269 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %270 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %269, i32 0, i32 17
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @UIP_ERR_ABRT, align 4
  %273 = call i32 %268(i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %265, %260
  %275 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %276 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %275, i32 0, i32 16
  %277 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %276, align 8
  store %struct.uip_tcp_pcb* %277, %struct.uip_tcp_pcb** %3, align 8
  %278 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %279 = call i32 @memb_free(i32* @uip_tcp_pcbs, %struct.uip_tcp_pcb* %278)
  %280 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  store %struct.uip_tcp_pcb* %280, %struct.uip_tcp_pcb** %2, align 8
  br label %322

281:                                              ; preds = %242
  %282 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %283 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %282, i32 0, i32 13
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %283, align 8
  %286 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %287 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %286, i32 0, i32 13
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %290 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %289, i32 0, i32 14
  %291 = load i64, i64* %290, align 8
  %292 = icmp sge i64 %288, %291
  br i1 %292, label %293, label %317

293:                                              ; preds = %281
  %294 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %295 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %294, i32 0, i32 13
  store i64 0, i64* %295, align 8
  %296 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %297 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %296, i32 0, i32 15
  %298 = load i64 (i32, %struct.uip_tcp_pcb*)*, i64 (i32, %struct.uip_tcp_pcb*)** %297, align 8
  %299 = icmp ne i64 (i32, %struct.uip_tcp_pcb*)* %298, null
  br i1 %299, label %300, label %309

300:                                              ; preds = %293
  %301 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %302 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %301, i32 0, i32 15
  %303 = load i64 (i32, %struct.uip_tcp_pcb*)*, i64 (i32, %struct.uip_tcp_pcb*)** %302, align 8
  %304 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %305 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %304, i32 0, i32 17
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %308 = call i64 %303(i32 %306, %struct.uip_tcp_pcb* %307)
  store i64 %308, i64* %6, align 8
  br label %309

309:                                              ; preds = %300, %293
  %310 = load i64, i64* %6, align 8
  %311 = load i64, i64* @UIP_ERR_OK, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %309
  %314 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %315 = call i32 @uip_tcpoutput(%struct.uip_tcp_pcb* %314)
  br label %316

316:                                              ; preds = %313, %309
  br label %317

317:                                              ; preds = %316, %281
  %318 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  store %struct.uip_tcp_pcb* %318, %struct.uip_tcp_pcb** %1, align 8
  %319 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %320 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %319, i32 0, i32 16
  %321 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %320, align 8
  store %struct.uip_tcp_pcb* %321, %struct.uip_tcp_pcb** %2, align 8
  br label %322

322:                                              ; preds = %317, %274
  br label %11

323:                                              ; preds = %11
  store %struct.uip_tcp_pcb* null, %struct.uip_tcp_pcb** %1, align 8
  %324 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** @uip_tcp_tw_pcbs, align 8
  store %struct.uip_tcp_pcb* %324, %struct.uip_tcp_pcb** %2, align 8
  br label %325

325:                                              ; preds = %372, %323
  %326 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %327 = icmp ne %struct.uip_tcp_pcb* %326, null
  br i1 %327, label %328, label %373

328:                                              ; preds = %325
  store i64 0, i64* %5, align 8
  %329 = load i32, i32* @uip_tcp_ticks, align 4
  %330 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %331 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %330, i32 0, i32 9
  %332 = load i32, i32* %331, align 4
  %333 = sub nsw i32 %329, %332
  %334 = load i32, i32* @UIP_TCP_MSL, align 4
  %335 = mul nsw i32 2, %334
  %336 = load i32, i32* @UIP_TCP_SLOW_INTERVAL, align 4
  %337 = sdiv i32 %335, %336
  %338 = icmp sgt i32 %333, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %328
  %340 = load i64, i64* %5, align 8
  %341 = add nsw i64 %340, 1
  store i64 %341, i64* %5, align 8
  br label %342

342:                                              ; preds = %339, %328
  %343 = load i64, i64* %5, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %367

345:                                              ; preds = %342
  %346 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %347 = call i32 @uip_tcp_pcbpurge(%struct.uip_tcp_pcb* %346)
  %348 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %1, align 8
  %349 = icmp ne %struct.uip_tcp_pcb* %348, null
  br i1 %349, label %350, label %356

350:                                              ; preds = %345
  %351 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %352 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %351, i32 0, i32 16
  %353 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %352, align 8
  %354 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %1, align 8
  %355 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %354, i32 0, i32 16
  store %struct.uip_tcp_pcb* %353, %struct.uip_tcp_pcb** %355, align 8
  br label %360

356:                                              ; preds = %345
  %357 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %358 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %357, i32 0, i32 16
  %359 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %358, align 8
  store %struct.uip_tcp_pcb* %359, %struct.uip_tcp_pcb** @uip_tcp_tw_pcbs, align 8
  br label %360

360:                                              ; preds = %356, %350
  %361 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %362 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %361, i32 0, i32 16
  %363 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %362, align 8
  store %struct.uip_tcp_pcb* %363, %struct.uip_tcp_pcb** %3, align 8
  %364 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %365 = call i32 @memb_free(i32* @uip_tcp_pcbs, %struct.uip_tcp_pcb* %364)
  %366 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  store %struct.uip_tcp_pcb* %366, %struct.uip_tcp_pcb** %2, align 8
  br label %372

367:                                              ; preds = %342
  %368 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  store %struct.uip_tcp_pcb* %368, %struct.uip_tcp_pcb** %1, align 8
  %369 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %370 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %369, i32 0, i32 16
  %371 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %370, align 8
  store %struct.uip_tcp_pcb* %371, %struct.uip_tcp_pcb** %2, align 8
  br label %372

372:                                              ; preds = %367, %360
  br label %325

373:                                              ; preds = %325
  ret void
}

declare dso_local i32 @UIP_MIN(i32, i32) #1

declare dso_local i32 @uip_tcp_rexmit_rto(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcp_abort(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcp_keepalive(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcpsegs_free(i32*) #1

declare dso_local i32 @uip_tcp_pcbpurge(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @memb_free(i32*, %struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcpoutput(%struct.uip_tcp_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
