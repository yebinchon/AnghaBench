; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_token_set.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_token_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.flow_divert_pcb* }
%struct.flow_divert_pcb = type { i32, i32, i32* }
%struct.sockopt = type { i32 }
%struct.tcpcb = type { i64 }

@SOF_FLOW_DIVERT = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@g_init_result = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@nil_pcb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"flow_divert_init failed (%d), cannot use flow divert\00", align 1
@ENOPROTOOPT = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TCPS_CLOSED = common dso_local global i64 0, align 8
@FLOW_DIVERT_TLV_KEY_UNIT = common dso_local global i32 0, align 4
@GROUP_COUNT_MAX = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to get the key unit from the token: %d\00", align 1
@FLOW_DIVERT_TLV_CTL_UNIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Failed to get the control socket unit from the token: %d\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Got an invalid control socket unit: %u\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"HMAC verfication failed: %d\00", align 1
@FLOW_DIVERT_TLV_FLOW_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to get the flow ID from the token: %d\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@FLOW_DIVERT_TLV_LOG_LEVEL = common dso_local global i32 0, align 4
@FLOW_DIVERT_HAS_HMAC = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flow_divert_token_set(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockopt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.tcpcb*, align 8
  %12 = alloca %struct.flow_divert_pcb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.flow_divert_pcb*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockopt* %1, %struct.sockopt** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SOF_FLOW_DIVERT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EALREADY, align 4
  store i32 %22, i32* %8, align 4
  br label %241

23:                                               ; preds = %2
  %24 = load i32, i32* @g_init_result, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = load i32, i32* @g_init_result, align 4
  %29 = call i32 @FDLOG(i32 %27, i32* @nil_pcb, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %30, i32* %8, align 4
  br label %241

31:                                               ; preds = %23
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = call i64 @SOCK_TYPE(%struct.socket* %32)
  %34 = load i64, i64* @SOCK_STREAM, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.socket*, %struct.socket** %3, align 8
  %38 = call i64 @SOCK_TYPE(%struct.socket* %37)
  %39 = load i64, i64* @SOCK_DGRAM, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %56, label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.socket*, %struct.socket** %3, align 8
  %43 = call i64 @SOCK_PROTO(%struct.socket* %42)
  %44 = load i64, i64* @IPPROTO_TCP, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.socket*, %struct.socket** %3, align 8
  %48 = call i64 @SOCK_PROTO(%struct.socket* %47)
  %49 = load i64, i64* @IPPROTO_UDP, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.socket*, %struct.socket** %3, align 8
  %53 = call i64 @SOCK_DOM(%struct.socket* %52)
  %54 = load i64, i64* @PF_INET, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %46, %36
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %8, align 4
  br label %241

58:                                               ; preds = %51
  %59 = load %struct.socket*, %struct.socket** %3, align 8
  %60 = call i64 @SOCK_TYPE(%struct.socket* %59)
  %61 = load i64, i64* @SOCK_STREAM, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.socket*, %struct.socket** %3, align 8
  %65 = call i64 @SOCK_PROTO(%struct.socket* %64)
  %66 = load i64, i64* @IPPROTO_TCP, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load %struct.socket*, %struct.socket** %3, align 8
  %70 = call %struct.tcpcb* @sototcpcb(%struct.socket* %69)
  store %struct.tcpcb* %70, %struct.tcpcb** %11, align 8
  %71 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %72 = icmp eq %struct.tcpcb* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TCPS_CLOSED, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73, %68
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %8, align 4
  br label %241

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %63, %58
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %85 = call i32 @soopt_getm(%struct.sockopt* %84, i32** %10)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32* null, i32** %10, align 8
  br label %241

89:                                               ; preds = %83
  %90 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @soopt_mcopyin(%struct.sockopt* %90, i32* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32* null, i32** %10, align 8
  br label %241

96:                                               ; preds = %89
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* @FLOW_DIVERT_TLV_KEY_UNIT, align 4
  %99 = bitcast i64* %6 to i8*
  %100 = bitcast i8* %99 to i32*
  %101 = call i32 @flow_divert_packet_get_tlv(i32* %97, i32 0, i32 %98, i32 8, i32* %100, i32* null)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %96
  %105 = load i64, i64* %6, align 8
  %106 = call i64 @ntohl(i64 %105)
  store i64 %106, i64* %6, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @GROUP_COUNT_MAX, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i64 0, i64* %6, align 8
  br label %111

111:                                              ; preds = %110, %104
  br label %122

112:                                              ; preds = %96
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @ENOENT, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* @LOG_ERR, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @FDLOG(i32 %117, i32* @nil_pcb, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  br label %241

120:                                              ; preds = %112
  store i64 0, i64* %6, align 8
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121, %111
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* @FLOW_DIVERT_TLV_CTL_UNIT, align 4
  %125 = bitcast i64* %5 to i8*
  %126 = bitcast i8* %125 to i32*
  %127 = call i32 @flow_divert_packet_get_tlv(i32* %123, i32 0, i32 %124, i32 8, i32* %126, i32* null)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i32, i32* @LOG_ERR, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @FDLOG(i32 %131, i32* @nil_pcb, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  br label %241

134:                                              ; preds = %122
  %135 = load i64, i64* %5, align 8
  %136 = call i64 @ntohl(i64 %135)
  store i64 %136, i64* %5, align 8
  %137 = load i64, i64* %5, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = load i64, i64* %5, align 8
  %141 = load i64, i64* @GROUP_COUNT_MAX, align 8
  %142 = icmp sge i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %139, %134
  %144 = load i32, i32* @LOG_ERR, align 4
  %145 = load i64, i64* %5, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @FDLOG(i32 %144, i32* @nil_pcb, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @EINVAL, align 4
  store i32 %148, i32* %8, align 4
  br label %241

149:                                              ; preds = %139
  %150 = load %struct.socket*, %struct.socket** %3, align 8
  %151 = call i32 @socket_unlock(%struct.socket* %150, i32 0)
  %152 = load i32*, i32** %10, align 8
  %153 = load i64, i64* %6, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i64, i64* %6, align 8
  br label %159

157:                                              ; preds = %149
  %158 = load i64, i64* %5, align 8
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i64 [ %156, %155 ], [ %158, %157 ]
  %161 = call i32 @flow_divert_packet_verify_hmac(i32* %152, i64 %160)
  store i32 %161, i32* %9, align 4
  %162 = load %struct.socket*, %struct.socket** %3, align 8
  %163 = call i32 @socket_lock(%struct.socket* %162, i32 0)
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %159
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @ENOENT, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i32, i32* @LOG_ERR, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @FDLOG(i32 %171, i32* @nil_pcb, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %8, align 4
  br label %241

175:                                              ; preds = %166, %159
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* @FLOW_DIVERT_TLV_FLOW_ID, align 4
  %178 = bitcast i64* %7 to i8*
  %179 = bitcast i8* %178 to i32*
  %180 = call i32 @flow_divert_packet_get_tlv(i32* %176, i32 0, i32 %177, i32 8, i32* %179, i32* null)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %175
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @ENOENT, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load i32, i32* @LOG_ERR, align 4
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @FDLOG(i32 %188, i32* @nil_pcb, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %189)
  br label %241

191:                                              ; preds = %183, %175
  %192 = load i64, i64* %7, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %219

194:                                              ; preds = %191
  %195 = load %struct.socket*, %struct.socket** %3, align 8
  %196 = load i64, i64* %5, align 8
  %197 = call i32 @flow_divert_pcb_init(%struct.socket* %195, i64 %196)
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %218

200:                                              ; preds = %194
  %201 = load %struct.socket*, %struct.socket** %3, align 8
  %202 = getelementptr inbounds %struct.socket, %struct.socket* %201, i32 0, i32 1
  %203 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %202, align 8
  store %struct.flow_divert_pcb* %203, %struct.flow_divert_pcb** %12, align 8
  %204 = load i32, i32* @LOG_NOTICE, align 4
  store i32 %204, i32* %13, align 4
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* @FLOW_DIVERT_TLV_LOG_LEVEL, align 4
  %207 = call i32 @flow_divert_packet_get_tlv(i32* %205, i32 0, i32 %206, i32 4, i32* %13, i32* null)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %200
  %211 = load i32, i32* %13, align 4
  %212 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %12, align 8
  %213 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %210, %200
  store i32 0, i32* %8, align 4
  %215 = load i32*, i32** %10, align 8
  %216 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %12, align 8
  %217 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %216, i32 0, i32 2
  store i32* %215, i32** %217, align 8
  store i32* null, i32** %10, align 8
  br label %218

218:                                              ; preds = %214, %194
  br label %224

219:                                              ; preds = %191
  %220 = load %struct.socket*, %struct.socket** %3, align 8
  %221 = load i64, i64* %7, align 8
  %222 = load i64, i64* %5, align 8
  %223 = call i32 @flow_divert_attach(%struct.socket* %220, i64 %221, i64 %222)
  store i32 %223, i32* %8, align 4
  br label %224

224:                                              ; preds = %219, %218
  %225 = load i32, i32* %9, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %224
  %228 = load %struct.socket*, %struct.socket** %3, align 8
  %229 = getelementptr inbounds %struct.socket, %struct.socket* %228, i32 0, i32 1
  %230 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %229, align 8
  store %struct.flow_divert_pcb* %230, %struct.flow_divert_pcb** %14, align 8
  %231 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %14, align 8
  %232 = icmp ne %struct.flow_divert_pcb* %231, null
  br i1 %232, label %233, label %239

233:                                              ; preds = %227
  %234 = load i32, i32* @FLOW_DIVERT_HAS_HMAC, align 4
  %235 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %14, align 8
  %236 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %233, %227
  br label %240

240:                                              ; preds = %239, %224
  br label %241

241:                                              ; preds = %240, %187, %170, %143, %130, %116, %95, %88, %79, %56, %26, %21
  %242 = load i32*, i32** %10, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32*, i32** %10, align 8
  %246 = call i32 @mbuf_freem(i32* %245)
  br label %247

247:                                              ; preds = %244, %241
  %248 = load i32, i32* %8, align 4
  ret i32 %248
}

declare dso_local i32 @FDLOG(i32, i32*, i8*, i32) #1

declare dso_local i64 @SOCK_TYPE(%struct.socket*) #1

declare dso_local i64 @SOCK_PROTO(%struct.socket*) #1

declare dso_local i64 @SOCK_DOM(%struct.socket*) #1

declare dso_local %struct.tcpcb* @sototcpcb(%struct.socket*) #1

declare dso_local i32 @soopt_getm(%struct.sockopt*, i32**) #1

declare dso_local i32 @soopt_mcopyin(%struct.sockopt*, i32*) #1

declare dso_local i32 @flow_divert_packet_get_tlv(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @flow_divert_packet_verify_hmac(i32*, i64) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @flow_divert_pcb_init(%struct.socket*, i64) #1

declare dso_local i32 @flow_divert_attach(%struct.socket*, i64, i64) #1

declare dso_local i32 @mbuf_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
