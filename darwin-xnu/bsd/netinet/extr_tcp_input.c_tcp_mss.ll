; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_mss.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_mss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.tcpcb = type { i32, i32, i32, i64, i32, i32, %struct.inpcb* }
%struct.inpcb = type { i32, %struct.socket* }
%struct.socket = type { %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rtentry = type { %struct.TYPE_7__, %struct.ifnet* }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32 }
%struct.ifnet = type { i64, i32 }
%struct.rmxp_tao = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.tcpcb*)* }

@TF_LOCAL = common dso_local global i32 0, align 4
@tcp_mssdflt = common dso_local global i32 0, align 4
@IFT_PPP = common dso_local global i64 0, align 8
@slowlink_wsize = common dso_local global i64 0, align 8
@TF_SLOWLINK = common dso_local global i32 0, align 4
@tcp_minmss = common dso_local global i32 0, align 4
@tcp_TCPTV_MIN = common dso_local global i32 0, align 4
@TCPTV_REXMTMIN = common dso_local global i32 0, align 4
@TF_REQ_TSTMP = common dso_local global i32 0, align 4
@TF_NOOPT = common dso_local global i32 0, align 4
@TF_RCVD_TSTMP = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_APPA = common dso_local global i64 0, align 8
@sb_max = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@MSIZE = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@TCP_MAXWIN = common dso_local global i32 0, align 4
@TCP_MAX_WINSHIFT = common dso_local global i32 0, align 4
@TCP_CC_CWND_INIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@tcp_v6mssdflt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_mss(%struct.tcpcb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtentry*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inpcb*, align 8
  %13 = alloca %struct.socket*, align 8
  %14 = alloca %struct.rmxp_tao*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 6
  %21 = load %struct.inpcb*, %struct.inpcb** %20, align 8
  store %struct.inpcb* %21, %struct.inpcb** %12, align 8
  %22 = load %struct.inpcb*, %struct.inpcb** %12, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.rtentry* @tcp_rtlookup(%struct.inpcb* %22, i32 %23)
  store %struct.rtentry* %24, %struct.rtentry** %7, align 8
  %25 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TF_LOCAL, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %17, align 4
  %30 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %31 = icmp eq %struct.rtentry* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load i32, i32* @tcp_mssdflt, align 4
  %34 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %35 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  br label %296

38:                                               ; preds = %3
  %39 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %40 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %39, i32 0, i32 1
  %41 = load %struct.ifnet*, %struct.ifnet** %40, align 8
  store %struct.ifnet* %41, %struct.ifnet** %8, align 8
  %42 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IFT_PPP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %38
  %48 = load i64, i64* @slowlink_wsize, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 9600
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp sle i32 %58, 128000
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @TF_SLOWLINK, align 4
  %62 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %63 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %55, %50, %47, %38
  %67 = load %struct.inpcb*, %struct.inpcb** %12, align 8
  %68 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %67, i32 0, i32 1
  %69 = load %struct.socket*, %struct.socket** %68, align 8
  store %struct.socket* %69, %struct.socket** %13, align 8
  %70 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %71 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %70, i32 0, i32 0
  %72 = call %struct.rmxp_tao* @rmx_taop(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %71)
  store %struct.rmxp_tao* %72, %struct.rmxp_tao** %14, align 8
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.rmxp_tao*, %struct.rmxp_tao** %14, align 8
  %77 = getelementptr inbounds %struct.rmxp_tao, %struct.rmxp_tao* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %66
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @tcp_mssdflt, align 4
  store i32 %83, i32* %5, align 4
  br label %92

84:                                               ; preds = %79
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @tcp_minmss, align 4
  %87 = call i8* @max(i32 %85, i32 %86)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i8* @max(i32 %89, i32 64)
  %91 = ptrtoint i8* %90 to i32
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %84, %82
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.rmxp_tao*, %struct.rmxp_tao** %14, align 8
  %95 = getelementptr inbounds %struct.rmxp_tao, %struct.rmxp_tao* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %97 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %92
  %101 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %102 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %108 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %109 = call i32 @tcp_getrt_rtt(%struct.tcpcb* %107, %struct.rtentry* %108)
  br label %121

110:                                              ; preds = %100, %92
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* @tcp_TCPTV_MIN, align 4
  br label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @TCPTV_REXMTMIN, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %120 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %106
  %122 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %123 = call i32 @tcp_maxmtu(%struct.rtentry* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = sub i64 %125, 4
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %10, align 4
  %128 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %129 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %121
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @tcp_mssdflt, align 4
  %139 = call i32 @min(i32 %137, i32 %138)
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %136, %133
  br label %141

141:                                              ; preds = %140, %121
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @min(i32 %142, i32 %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %147 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %149 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TF_REQ_TSTMP, align 4
  %152 = load i32, i32* @TF_NOOPT, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %150, %153
  %155 = load i32, i32* @TF_REQ_TSTMP, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %174

157:                                              ; preds = %141
  %158 = load i32, i32* %15, align 4
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %168, label %160

160:                                              ; preds = %157
  %161 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %162 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @TF_RCVD_TSTMP, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* @TF_RCVD_TSTMP, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %160, %157
  %169 = load i64, i64* @TCPOLEN_TSTAMP_APPA, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = sub nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %168, %160, %141
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %177 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* @sb_max, align 4
  %179 = load i32, i32* @MCLBYTES, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load i32, i32* @MSIZE, align 4
  %182 = load i32, i32* @MCLBYTES, align 4
  %183 = add nsw i32 %181, %182
  %184 = sdiv i32 %180, %183
  store i32 %184, i32* %16, align 4
  %185 = load %struct.socket*, %struct.socket** %13, align 8
  %186 = getelementptr inbounds %struct.socket, %struct.socket* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %174
  %193 = load i32, i32* %11, align 4
  store i32 %193, i32* %10, align 4
  br label %213

194:                                              ; preds = %174
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %195, %196
  %198 = sub nsw i32 %197, 1
  %199 = load i32, i32* %10, align 4
  %200 = sdiv i32 %198, %199
  %201 = load i32, i32* %10, align 4
  %202 = mul nsw i32 %200, %201
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %16, align 4
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %194
  %207 = load i32, i32* %16, align 4
  store i32 %207, i32* %11, align 4
  br label %208

208:                                              ; preds = %206, %194
  %209 = load %struct.socket*, %struct.socket** %13, align 8
  %210 = getelementptr inbounds %struct.socket, %struct.socket* %209, i32 0, i32 1
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @sbreserve(%struct.TYPE_6__* %210, i32 %211)
  br label %213

213:                                              ; preds = %208, %192
  %214 = load i32, i32* %10, align 4
  %215 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %216 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  %217 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %218 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @ASSERT(i32 %219)
  %221 = load %struct.socket*, %struct.socket** %13, align 8
  %222 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %223 = call i32 @tcp_update_mss_locked(%struct.socket* %221, %struct.ifnet* %222)
  %224 = load %struct.socket*, %struct.socket** %13, align 8
  %225 = getelementptr inbounds %struct.socket, %struct.socket* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp sgt i32 %228, %229
  br i1 %230, label %231, label %250

231:                                              ; preds = %213
  %232 = load i32, i32* %11, align 4
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %232, %233
  %235 = sub nsw i32 %234, 1
  %236 = load i32, i32* %10, align 4
  %237 = sdiv i32 %235, %236
  %238 = load i32, i32* %10, align 4
  %239 = mul nsw i32 %237, %238
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* %16, align 4
  %242 = icmp sgt i32 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %231
  %244 = load i32, i32* %16, align 4
  store i32 %244, i32* %11, align 4
  br label %245

245:                                              ; preds = %243, %231
  %246 = load %struct.socket*, %struct.socket** %13, align 8
  %247 = getelementptr inbounds %struct.socket, %struct.socket* %246, i32 0, i32 0
  %248 = load i32, i32* %11, align 4
  %249 = call i32 @sbreserve(%struct.TYPE_6__* %247, i32 %248)
  br label %250

250:                                              ; preds = %245, %213
  %251 = load %struct.socket*, %struct.socket** %13, align 8
  %252 = call i32 @set_tcp_stream_priority(%struct.socket* %251)
  %253 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %254 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %271

258:                                              ; preds = %250
  %259 = load i32, i32* %10, align 4
  %260 = mul nsw i32 2, %259
  %261 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %262 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = call i8* @max(i32 %260, i32 %264)
  %266 = ptrtoint i8* %265 to i32
  %267 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %268 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %267, i32 0, i32 4
  store i32 %266, i32* %268, align 8
  %269 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcpstat, i32 0, i32 0), align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tcpstat, i32 0, i32 0), align 4
  br label %277

271:                                              ; preds = %250
  %272 = load i32, i32* @TCP_MAXWIN, align 4
  %273 = load i32, i32* @TCP_MAX_WINSHIFT, align 4
  %274 = shl i32 %272, %273
  %275 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %276 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %275, i32 0, i32 4
  store i32 %274, i32* %276, align 8
  br label %277

277:                                              ; preds = %271, %258
  %278 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %279 = call %struct.TYPE_8__* @CC_ALGO(%struct.tcpcb* %278)
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 0
  %281 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %280, align 8
  %282 = icmp ne i32 (%struct.tcpcb*)* %281, null
  br i1 %282, label %283, label %290

283:                                              ; preds = %277
  %284 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %285 = call %struct.TYPE_8__* @CC_ALGO(%struct.tcpcb* %284)
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  %287 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %286, align 8
  %288 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %289 = call i32 %287(%struct.tcpcb* %288)
  br label %290

290:                                              ; preds = %283, %277
  %291 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %292 = load i32, i32* @TCP_CC_CWND_INIT, align 4
  %293 = call i32 @tcp_ccdbg_trace(%struct.tcpcb* %291, i32* null, i32 %292)
  %294 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %295 = call i32 @RT_UNLOCK(%struct.rtentry* %294)
  br label %296

296:                                              ; preds = %290, %32
  ret void
}

declare dso_local %struct.rtentry* @tcp_rtlookup(%struct.inpcb*, i32) #1

declare dso_local %struct.rmxp_tao* @rmx_taop(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @tcp_getrt_rtt(%struct.tcpcb*, %struct.rtentry*) #1

declare dso_local i32 @tcp_maxmtu(%struct.rtentry*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sbreserve(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @tcp_update_mss_locked(%struct.socket*, %struct.ifnet*) #1

declare dso_local i32 @set_tcp_stream_priority(%struct.socket*) #1

declare dso_local %struct.TYPE_8__* @CC_ALGO(%struct.tcpcb*) #1

declare dso_local i32 @tcp_ccdbg_trace(%struct.tcpcb*, i32*, i32) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
