; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_answer.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i32, i32, %struct.TYPE_19__*, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.esp_ip6_addr = type { i64 }

@MDNS_TYPE_PTR = common dso_local global i64 0, align 8
@MDNS_TYPE_SRV = common dso_local global i64 0, align 8
@MDNS_TYPE_TXT = common dso_local global i64 0, align 8
@MDNS_TYPE_SDPTR = common dso_local global i64 0, align 8
@MDNS_TYPE_A = common dso_local global i64 0, align 8
@_mdns_server = common dso_local global %struct.TYPE_18__* null, align 8
@MDNS_IP_PROTOCOL_V4 = common dso_local global i64 0, align 8
@PCB_DUP = common dso_local global i64 0, align 8
@MDNS_TYPE_AAAA = common dso_local global i64 0, align 8
@MDNS_IP_PROTOCOL_V6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_16__*, i64)* @_mdns_append_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mdns_append_answer(i32* %0, i32* %1, %struct.TYPE_16__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.esp_ip6_addr, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MDNS_TYPE_PTR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %23 = icmp ne %struct.TYPE_19__* %22, null
  br i1 %23, label %24, label %50

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = call i32 @_mdns_get_service_instance_name(%struct.TYPE_19__* %29)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @_mdns_append_ptr_record(i32* %25, i32* %26, i32 %30, i32 %35, i32 %40, i32 %43, i32 %46)
  %48 = icmp sgt i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %314

50:                                               ; preds = %19
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @_mdns_append_ptr_record(i32* %51, i32* %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  %69 = icmp sgt i64 %68, 0
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %314

71:                                               ; preds = %4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MDNS_TYPE_SRV, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @_mdns_append_srv_record(i32* %78, i32* %79, %struct.TYPE_19__* %82, i32 %85, i32 %88)
  %90 = icmp sgt i64 %89, 0
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %5, align 4
  br label %314

92:                                               ; preds = %71
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MDNS_TYPE_TXT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @_mdns_append_txt_record(i32* %99, i32* %100, %struct.TYPE_19__* %103, i32 %106, i32 %109)
  %111 = icmp sgt i64 %110, 0
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %5, align 4
  br label %314

113:                                              ; preds = %92
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MDNS_TYPE_SDPTR, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %113
  %120 = load i32*, i32** %6, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @_mdns_append_sdptr_record(i32* %120, i32* %121, %struct.TYPE_19__* %124, i32 %127, i32 %130)
  %132 = icmp sgt i64 %131, 0
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %5, align 4
  br label %314

134:                                              ; preds = %113
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @MDNS_TYPE_A, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %218

140:                                              ; preds = %134
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** @_mdns_server, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = load i64, i64* @MDNS_IP_PROTOCOL_V4, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %168, label %153

153:                                              ; preds = %140
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** @_mdns_server, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = load i64, i64* %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = load i64, i64* @MDNS_IP_PROTOCOL_V4, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @PCB_DUP, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %314

168:                                              ; preds = %153, %140
  %169 = load i64, i64* %9, align 8
  %170 = call i32 @_mdns_get_esp_netif(i64 %169)
  %171 = call i64 @esp_netif_get_ip_info(i32 %170, %struct.TYPE_17__* %10)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  store i32 0, i32* %5, align 4
  br label %314

174:                                              ; preds = %168
  %175 = load i32*, i32** %6, align 8
  %176 = load i32*, i32** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i64 @_mdns_append_a_record(i32* %175, i32* %176, i32 %179, i32 %182, i32 %185)
  %187 = icmp sle i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %174
  store i32 0, i32* %5, align 4
  br label %314

189:                                              ; preds = %174
  %190 = load i64, i64* %9, align 8
  %191 = call i32 @_mdns_if_is_dup(i64 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %189
  store i32 1, i32* %5, align 4
  br label %314

194:                                              ; preds = %189
  %195 = load i64, i64* %9, align 8
  %196 = call i64 @_mdns_get_other_if(i64 %195)
  store i64 %196, i64* %11, align 8
  %197 = load i64, i64* %11, align 8
  %198 = call i32 @_mdns_get_esp_netif(i64 %197)
  %199 = call i64 @esp_netif_get_ip_info(i32 %198, %struct.TYPE_17__* %10)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  store i32 1, i32* %5, align 4
  br label %314

202:                                              ; preds = %194
  %203 = load i32*, i32** %6, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @_mdns_append_a_record(i32* %203, i32* %204, i32 %207, i32 %210, i32 %213)
  %215 = icmp sgt i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %202
  store i32 2, i32* %5, align 4
  br label %314

217:                                              ; preds = %202
  store i32 1, i32* %5, align 4
  br label %314

218:                                              ; preds = %134
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @MDNS_TYPE_AAAA, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %308

224:                                              ; preds = %218
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** @_mdns_server, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = load i64, i64* %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %230, align 8
  %232 = load i64, i64* @MDNS_IP_PROTOCOL_V6, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %252, label %237

237:                                              ; preds = %224
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** @_mdns_server, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %239, align 8
  %241 = load i64, i64* %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %243, align 8
  %245 = load i64, i64* @MDNS_IP_PROTOCOL_V6, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @PCB_DUP, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %237
  store i32 0, i32* %5, align 4
  br label %314

252:                                              ; preds = %237, %224
  %253 = load i64, i64* %9, align 8
  %254 = call i32 @_mdns_get_esp_netif(i64 %253)
  %255 = call i64 @esp_netif_get_ip6_linklocal(i32 %254, %struct.esp_ip6_addr* %12)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  store i32 0, i32* %5, align 4
  br label %314

258:                                              ; preds = %252
  %259 = getelementptr inbounds %struct.esp_ip6_addr, %struct.esp_ip6_addr* %12, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = call i64 @_ipv6_address_is_zero(i64 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %258
  store i32 0, i32* %5, align 4
  br label %314

264:                                              ; preds = %258
  %265 = load i32*, i32** %6, align 8
  %266 = load i32*, i32** %7, align 8
  %267 = getelementptr inbounds %struct.esp_ip6_addr, %struct.esp_ip6_addr* %12, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = inttoptr i64 %268 to i32*
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = call i64 @_mdns_append_aaaa_record(i32* %265, i32* %266, i32* %269, i32 %272, i32 %275)
  %277 = icmp sle i64 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %264
  store i32 0, i32* %5, align 4
  br label %314

279:                                              ; preds = %264
  %280 = load i64, i64* %9, align 8
  %281 = call i32 @_mdns_if_is_dup(i64 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %279
  store i32 1, i32* %5, align 4
  br label %314

284:                                              ; preds = %279
  %285 = load i64, i64* %9, align 8
  %286 = call i64 @_mdns_get_other_if(i64 %285)
  store i64 %286, i64* %13, align 8
  %287 = load i64, i64* %13, align 8
  %288 = call i32 @_mdns_get_esp_netif(i64 %287)
  %289 = call i64 @esp_netif_get_ip6_linklocal(i32 %288, %struct.esp_ip6_addr* %12)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %284
  store i32 1, i32* %5, align 4
  br label %314

292:                                              ; preds = %284
  %293 = load i32*, i32** %6, align 8
  %294 = load i32*, i32** %7, align 8
  %295 = getelementptr inbounds %struct.esp_ip6_addr, %struct.esp_ip6_addr* %12, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = inttoptr i64 %296 to i32*
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = call i64 @_mdns_append_aaaa_record(i32* %293, i32* %294, i32* %297, i32 %300, i32 %303)
  %305 = icmp sgt i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %292
  store i32 2, i32* %5, align 4
  br label %314

307:                                              ; preds = %292
  store i32 1, i32* %5, align 4
  br label %314

308:                                              ; preds = %218
  br label %309

309:                                              ; preds = %308
  br label %310

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %310
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312
  store i32 0, i32* %5, align 4
  br label %314

314:                                              ; preds = %313, %307, %306, %291, %283, %278, %263, %257, %251, %217, %216, %201, %193, %188, %173, %167, %119, %98, %77, %50, %24
  %315 = load i32, i32* %5, align 4
  ret i32 %315
}

declare dso_local i64 @_mdns_append_ptr_record(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_mdns_get_service_instance_name(%struct.TYPE_19__*) #1

declare dso_local i64 @_mdns_append_srv_record(i32*, i32*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @_mdns_append_txt_record(i32*, i32*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @_mdns_append_sdptr_record(i32*, i32*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @esp_netif_get_ip_info(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @_mdns_get_esp_netif(i64) #1

declare dso_local i64 @_mdns_append_a_record(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @_mdns_if_is_dup(i64) #1

declare dso_local i64 @_mdns_get_other_if(i64) #1

declare dso_local i64 @esp_netif_get_ip6_linklocal(i32, %struct.esp_ip6_addr*) #1

declare dso_local i64 @_ipv6_address_is_zero(i64) #1

declare dso_local i64 @_mdns_append_aaaa_record(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
