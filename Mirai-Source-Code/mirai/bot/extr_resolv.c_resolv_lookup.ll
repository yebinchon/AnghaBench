; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_resolv.c_resolv_lookup.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_resolv.c_resolv_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resolv_entries = type { i32*, i32 }
%struct.dnshdr = type { i64, i64, i64, i64 }
%struct.dns_question = type { i64, i64 }
%struct.sockaddr_in = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.dnsans = type { i32 }
%struct.dns_resource = type { i64, i64, i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@PROTO_DNS_QTYPE_A = common dso_local global i32 0, align 4
@PROTO_DNS_QCLASS_IP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resolv_entries* @resolv_lookup(i8* %0) #0 {
  %2 = alloca %struct.resolv_entries*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.resolv_entries*, align 8
  %5 = alloca [2048 x i8], align 16
  %6 = alloca [2048 x i8], align 16
  %7 = alloca %struct.dnshdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dns_question*, align 8
  %10 = alloca %struct.sockaddr_in, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.dnsans*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.dns_resource*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca [4 x i8], align 1
  store i8* %0, i8** %3, align 8
  %27 = call %struct.resolv_entries* @calloc(i32 1, i32 16)
  store %struct.resolv_entries* %27, %struct.resolv_entries** %4, align 8
  %28 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %29 = bitcast i8* %28 to %struct.dnshdr*
  store %struct.dnshdr* %29, %struct.dnshdr** %7, align 8
  %30 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %31 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %30, i64 1
  %32 = bitcast %struct.dnshdr* %31 to i8*
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @resolv_domain_to_hostname(i8* %33, i8* %34)
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @util_strlen(i8* %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = bitcast i8* %41 to %struct.dns_question*
  store %struct.dns_question* %42, %struct.dns_question** %9, align 8
  %43 = bitcast %struct.sockaddr_in* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %43, i8 0, i64 24, i1 false)
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @util_strlen(i8* %44)
  %46 = sext i32 %45 to i64
  %47 = add i64 32, %46
  %48 = add i64 %47, 1
  %49 = add i64 %48, 16
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %51 = call i32 (...) @rand_next()
  %52 = srem i32 %51, 65535
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %15, align 8
  %54 = call i32 @util_zero(%struct.sockaddr_in* %10, i32 24)
  %55 = load i32, i32* @AF_INET, align 4
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = call i32 @INET_ADDR(i32 8, i32 8, i32 8, i32 8)
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = call i64 @htons(i32 53)
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %64 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = call i64 @htons(i32 256)
  %66 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %67 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = call i64 @htons(i32 1)
  %69 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %70 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* @PROTO_DNS_QTYPE_A, align 4
  %72 = call i64 @htons(i32 %71)
  %73 = load %struct.dns_question*, %struct.dns_question** %9, align 8
  %74 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @PROTO_DNS_QCLASS_IP, align 4
  %76 = call i64 @htons(i32 %75)
  %77 = load %struct.dns_question*, %struct.dns_question** %9, align 8
  %78 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %182, %176, %154, %135, %110, %101, %94, %1
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  %82 = icmp slt i32 %80, 5
  br i1 %82, label %83, label %288

83:                                               ; preds = %79
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @close(i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* @AF_INET, align 4
  %91 = load i32, i32* @SOCK_DGRAM, align 4
  %92 = call i32 @socket(i32 %90, i32 %91, i32 0)
  store i32 %92, i32* %13, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = call i32 @sleep(i32 1)
  br label %79

96:                                               ; preds = %89
  %97 = load i32, i32* %13, align 4
  %98 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %99 = call i32 @connect(i32 %97, %struct.sockaddr* %98, i32 24)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 @sleep(i32 1)
  br label %79

103:                                              ; preds = %96
  %104 = load i32, i32* %13, align 4
  %105 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @MSG_NOSIGNAL, align 4
  %108 = call i32 @send(i32 %104, i8* %105, i32 %106, i32 %107)
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = call i32 @sleep(i32 1)
  br label %79

112:                                              ; preds = %103
  %113 = load i32, i32* @F_SETFL, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @O_NONBLOCK, align 4
  %116 = load i32, i32* @F_GETFL, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @fcntl(i32 %116, i32 %117, i32 0)
  %119 = or i32 %115, %118
  %120 = call i32 @fcntl(i32 %113, i32 %114, i32 %119)
  %121 = call i32 @FD_ZERO(i32* %16)
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @FD_SET(i32 %122, i32* %16)
  %124 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i32 5, i32* %124, align 8
  %125 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  %128 = call i32 @select(i32 %127, i32* %16, i32* null, i32* null, %struct.timeval* %17)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %132

131:                                              ; preds = %112
  br label %288

132:                                              ; preds = %112
  %133 = load i32, i32* %18, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %79

136:                                              ; preds = %132
  %137 = load i32, i32* %13, align 4
  %138 = call i64 @FD_ISSET(i32 %137, i32* %16)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %285

140:                                              ; preds = %136
  %141 = load i32, i32* %13, align 4
  %142 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %143 = load i32, i32* @MSG_NOSIGNAL, align 4
  %144 = call i32 @recvfrom(i32 %141, i8* %142, i32 2048, i32 %143, i32* null, i32* null)
  store i32 %144, i32* %19, align 4
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @util_strlen(i8* %147)
  %149 = sext i32 %148 to i64
  %150 = add i64 32, %149
  %151 = add i64 %150, 1
  %152 = add i64 %151, 16
  %153 = icmp ult i64 %146, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %140
  br label %79

155:                                              ; preds = %140
  %156 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %157 = bitcast i8* %156 to %struct.dnshdr*
  store %struct.dnshdr* %157, %struct.dnshdr** %7, align 8
  %158 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %159 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %158, i64 1
  %160 = bitcast %struct.dnshdr* %159 to i8*
  store i8* %160, i8** %8, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = call i32 @util_strlen(i8* %162)
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = bitcast i8* %166 to %struct.dns_question*
  store %struct.dns_question* %167, %struct.dns_question** %9, align 8
  %168 = load %struct.dns_question*, %struct.dns_question** %9, align 8
  %169 = getelementptr inbounds %struct.dns_question, %struct.dns_question* %168, i64 1
  %170 = bitcast %struct.dns_question* %169 to i8*
  store i8* %170, i8** %20, align 8
  %171 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %172 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %15, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %155
  br label %79

177:                                              ; preds = %155
  %178 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %179 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %79

183:                                              ; preds = %177
  %184 = load %struct.dnshdr*, %struct.dnshdr** %7, align 8
  %185 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @ntohs(i64 %186)
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %22, align 8
  br label %189

189:                                              ; preds = %283, %183
  %190 = load i64, i64* %22, align 8
  %191 = add nsw i64 %190, -1
  store i64 %191, i64* %22, align 8
  %192 = icmp sgt i64 %190, 0
  br i1 %192, label %193, label %284

193:                                              ; preds = %189
  store %struct.dns_resource* null, %struct.dns_resource** %24, align 8
  %194 = load i8*, i8** %20, align 8
  %195 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %196 = call i32 @resolv_skip_name(i8* %194, i8* %195, i32* %23)
  %197 = load i8*, i8** %20, align 8
  %198 = load i32, i32* %23, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  store i8* %200, i8** %20, align 8
  %201 = load i8*, i8** %20, align 8
  %202 = bitcast i8* %201 to %struct.dns_resource*
  store %struct.dns_resource* %202, %struct.dns_resource** %24, align 8
  %203 = load i8*, i8** %20, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 24
  store i8* %204, i8** %20, align 8
  %205 = load %struct.dns_resource*, %struct.dns_resource** %24, align 8
  %206 = getelementptr inbounds %struct.dns_resource, %struct.dns_resource* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* @PROTO_DNS_QTYPE_A, align 4
  %209 = call i64 @htons(i32 %208)
  %210 = icmp eq i64 %207, %209
  br i1 %210, label %211, label %275

211:                                              ; preds = %193
  %212 = load %struct.dns_resource*, %struct.dns_resource** %24, align 8
  %213 = getelementptr inbounds %struct.dns_resource, %struct.dns_resource* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* @PROTO_DNS_QCLASS_IP, align 4
  %216 = call i64 @htons(i32 %215)
  %217 = icmp eq i64 %214, %216
  br i1 %217, label %218, label %275

218:                                              ; preds = %211
  %219 = load %struct.dns_resource*, %struct.dns_resource** %24, align 8
  %220 = getelementptr inbounds %struct.dns_resource, %struct.dns_resource* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @ntohs(i64 %221)
  %223 = icmp eq i32 %222, 4
  br i1 %223, label %224, label %267

224:                                              ; preds = %218
  store i32 0, i32* %14, align 4
  br label %225

225:                                              ; preds = %237, %224
  %226 = load i32, i32* %14, align 4
  %227 = icmp slt i32 %226, 4
  br i1 %227, label %228, label %240

228:                                              ; preds = %225
  %229 = load i8*, i8** %20, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = load i32, i32* %14, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 %235
  store i8 %233, i8* %236, align 1
  br label %237

237:                                              ; preds = %228
  %238 = load i32, i32* %14, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %14, align 4
  br label %225

240:                                              ; preds = %225
  %241 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 0
  %242 = bitcast i8* %241 to i32*
  store i32* %242, i32** %25, align 8
  %243 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  %244 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  %247 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = mul i64 %250, 4
  %252 = trunc i64 %251 to i32
  %253 = call i32* @realloc(i32* %245, i32 %252)
  %254 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  %255 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %254, i32 0, i32 0
  store i32* %253, i32** %255, align 8
  %256 = load i32*, i32** %25, align 8
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  %259 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  %262 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i32, i32* %260, i64 %265
  store i32 %257, i32* %266, align 4
  br label %267

267:                                              ; preds = %240, %218
  %268 = load i8*, i8** %20, align 8
  %269 = load %struct.dns_resource*, %struct.dns_resource** %24, align 8
  %270 = getelementptr inbounds %struct.dns_resource, %struct.dns_resource* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @ntohs(i64 %271)
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, i8* %268, i64 %273
  store i8* %274, i8** %20, align 8
  br label %283

275:                                              ; preds = %211, %193
  %276 = load i8*, i8** %20, align 8
  %277 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %278 = call i32 @resolv_skip_name(i8* %276, i8* %277, i32* %23)
  %279 = load i8*, i8** %20, align 8
  %280 = load i32, i32* %23, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  store i8* %282, i8** %20, align 8
  br label %283

283:                                              ; preds = %275, %267
  br label %189

284:                                              ; preds = %189
  br label %285

285:                                              ; preds = %284, %136
  br label %286

286:                                              ; preds = %285
  br label %287

287:                                              ; preds = %286
  br label %288

288:                                              ; preds = %287, %131, %79
  %289 = load i32, i32* %13, align 4
  %290 = call i32 @close(i32 %289)
  %291 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  %292 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %288
  %296 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  store %struct.resolv_entries* %296, %struct.resolv_entries** %2, align 8
  br label %300

297:                                              ; preds = %288
  %298 = load %struct.resolv_entries*, %struct.resolv_entries** %4, align 8
  %299 = call i32 @resolv_entries_free(%struct.resolv_entries* %298)
  store %struct.resolv_entries* null, %struct.resolv_entries** %2, align 8
  br label %300

300:                                              ; preds = %297, %295
  %301 = load %struct.resolv_entries*, %struct.resolv_entries** %2, align 8
  ret %struct.resolv_entries* %301
}

declare dso_local %struct.resolv_entries* @calloc(i32, i32) #1

declare dso_local i32 @resolv_domain_to_hostname(i8*, i8*) #1

declare dso_local i32 @util_strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rand_next(...) #1

declare dso_local i32 @util_zero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @INET_ADDR(i32, i32, i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @resolv_skip_name(i8*, i8*, i32*) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @resolv_entries_free(%struct.resolv_entries*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
