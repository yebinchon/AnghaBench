; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_create_answer_from_parsed_packet.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_create_answer_from_parsed_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__*, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32* }

@MDNS_SERVICE_PORT = common dso_local global i64 0, align 8
@MDNS_FLAGS_AUTHORITATIVE = common dso_local global i32 0, align 4
@MDNS_TYPE_PTR = common dso_local global i64 0, align 8
@MDNS_TYPE_ANY = common dso_local global i64 0, align 8
@MDNS_TYPE_SRV = common dso_local global i64 0, align 8
@MDNS_TYPE_TXT = common dso_local global i64 0, align 8
@MDNS_TYPE_A = common dso_local global i64 0, align 8
@MDNS_TYPE_AAAA = common dso_local global i64 0, align 8
@MDNS_TYPE_SDPTR = common dso_local global i64 0, align 8
@_mdns_create_answer_from_parsed_packet.share_step = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @_mdns_create_answer_from_parsed_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_create_answer_from_parsed_packet(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = icmp ne %struct.TYPE_13__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %329

14:                                               ; preds = %1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MDNS_SERVICE_PORT, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_11__* @_mdns_alloc_packet_default(i32 %23, i32 %26)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %6, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = icmp ne %struct.TYPE_11__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %14
  br label %329

31:                                               ; preds = %14
  %32 = load i32, i32* @MDNS_FLAGS_AUTHORITATIVE, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %7, align 8
  br label %43

43:                                               ; preds = %291, %66, %31
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = icmp ne %struct.TYPE_13__* %44, null
  br i1 %45, label %46, label %295

46:                                               ; preds = %43
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call %struct.TYPE_12__* @_mdns_get_service_item(i64 %59, i64 %62)
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %8, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = icmp ne %struct.TYPE_12__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %43

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %51, %46
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 1, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %68
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = icmp ne %struct.TYPE_12__* %75, null
  br i1 %76, label %77, label %241

77:                                               ; preds = %74
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MDNS_TYPE_PTR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MDNS_TYPE_ANY, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %164

89:                                               ; preds = %83, %77
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MDNS_TYPE_PTR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95, %89
  store i32 1, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %95
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i64, i64* @MDNS_TYPE_PTR, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @_mdns_alloc_answer(i32* %103, i64 %104, i32* %107, i32 0, i32 0)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %160

110:                                              ; preds = %101
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i64, i64* @MDNS_TYPE_SRV, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @_mdns_alloc_answer(i32* %112, i64 %113, i32* %116, i32 %117, i32 0)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %160

120:                                              ; preds = %110
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i64, i64* @MDNS_TYPE_TXT, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @_mdns_alloc_answer(i32* %122, i64 %123, i32* %126, i32 %127, i32 0)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %160

130:                                              ; preds = %120
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  br label %139

136:                                              ; preds = %130
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  br label %139

139:                                              ; preds = %136, %133
  %140 = phi i32* [ %135, %133 ], [ %138, %136 ]
  %141 = load i64, i64* @MDNS_TYPE_A, align 8
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @_mdns_alloc_answer(i32* %140, i64 %141, i32* null, i32 %142, i32 0)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %139
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  br label %154

151:                                              ; preds = %145
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  br label %154

154:                                              ; preds = %151, %148
  %155 = phi i32* [ %150, %148 ], [ %153, %151 ]
  %156 = load i64, i64* @MDNS_TYPE_AAAA, align 8
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @_mdns_alloc_answer(i32* %155, i64 %156, i32* null, i32 %157, i32 0)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %154, %139, %120, %110, %101
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %162 = call i32 @_mdns_free_tx_packet(%struct.TYPE_11__* %161)
  br label %329

163:                                              ; preds = %154
  br label %240

164:                                              ; preds = %83
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @MDNS_TYPE_SRV, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %198

170:                                              ; preds = %164
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = load i64, i64* @MDNS_TYPE_SRV, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %3, align 4
  %178 = call i32 @_mdns_alloc_answer(i32* %172, i64 %173, i32* %176, i32 %177, i32 0)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %170
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 3
  %183 = load i64, i64* @MDNS_TYPE_A, align 8
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @_mdns_alloc_answer(i32* %182, i64 %183, i32* null, i32 %184, i32 0)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %180
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 3
  %190 = load i64, i64* @MDNS_TYPE_AAAA, align 8
  %191 = load i32, i32* %3, align 4
  %192 = call i32 @_mdns_alloc_answer(i32* %189, i64 %190, i32* null, i32 %191, i32 0)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %187, %180, %170
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %196 = call i32 @_mdns_free_tx_packet(%struct.TYPE_11__* %195)
  br label %329

197:                                              ; preds = %187
  br label %239

198:                                              ; preds = %164
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @MDNS_TYPE_TXT, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %218

204:                                              ; preds = %198
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 2
  %207 = load i64, i64* @MDNS_TYPE_TXT, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %3, align 4
  %212 = call i32 @_mdns_alloc_answer(i32* %206, i64 %207, i32* %210, i32 %211, i32 0)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %204
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %216 = call i32 @_mdns_free_tx_packet(%struct.TYPE_11__* %215)
  br label %329

217:                                              ; preds = %204
  br label %238

218:                                              ; preds = %198
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @MDNS_TYPE_SDPTR, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %237

224:                                              ; preds = %218
  store i32 1, i32* %5, align 4
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 2
  %227 = load i64, i64* @MDNS_TYPE_PTR, align 8
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @_mdns_alloc_answer(i32* %226, i64 %227, i32* %230, i32 0, i32 0)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %224
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %235 = call i32 @_mdns_free_tx_packet(%struct.TYPE_11__* %234)
  br label %329

236:                                              ; preds = %224
  br label %237

237:                                              ; preds = %236, %218
  br label %238

238:                                              ; preds = %237, %217
  br label %239

239:                                              ; preds = %238, %197
  br label %240

240:                                              ; preds = %239, %163
  br label %291

241:                                              ; preds = %74
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @MDNS_TYPE_ANY, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %259, label %247

247:                                              ; preds = %241
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @MDNS_TYPE_A, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %259, label %253

253:                                              ; preds = %247
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @MDNS_TYPE_AAAA, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %277

259:                                              ; preds = %253, %247, %241
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 2
  %262 = load i64, i64* @MDNS_TYPE_A, align 8
  %263 = load i32, i32* %3, align 4
  %264 = call i32 @_mdns_alloc_answer(i32* %261, i64 %262, i32* null, i32 %263, i32 0)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %259
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 2
  %269 = load i64, i64* @MDNS_TYPE_AAAA, align 8
  %270 = load i32, i32* %3, align 4
  %271 = call i32 @_mdns_alloc_answer(i32* %268, i64 %269, i32* null, i32 %270, i32 0)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %266, %259
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %275 = call i32 @_mdns_free_tx_packet(%struct.TYPE_11__* %274)
  br label %329

276:                                              ; preds = %266
  br label %290

277:                                              ; preds = %253
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 2
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i32, i32* %3, align 4
  %284 = call i32 @_mdns_alloc_answer(i32* %279, i64 %282, i32* null, i32 %283, i32 0)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %277
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %288 = call i32 @_mdns_free_tx_packet(%struct.TYPE_11__* %287)
  br label %329

289:                                              ; preds = %277
  br label %290

290:                                              ; preds = %289, %276
  br label %291

291:                                              ; preds = %290, %240
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %293, align 8
  store %struct.TYPE_13__* %294, %struct.TYPE_13__** %7, align 8
  br label %43

295:                                              ; preds = %43
  %296 = load i32, i32* %4, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %295
  %299 = load i32, i32* %3, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %312, label %301

301:                                              ; preds = %298, %295
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 1
  %306 = call i32 @memcpy(i32* %303, i32* %305, i32 4)
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 0
  store i64 %309, i64* %311, align 8
  br label %312

312:                                              ; preds = %301, %298
  %313 = load i32, i32* %5, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %324

315:                                              ; preds = %312
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %317 = load i32, i32* @_mdns_create_answer_from_parsed_packet.share_step, align 4
  %318 = mul nsw i32 %317, 25
  %319 = add nsw i32 25, %318
  %320 = call i32 @_mdns_schedule_tx_packet(%struct.TYPE_11__* %316, i32 %319)
  %321 = load i32, i32* @_mdns_create_answer_from_parsed_packet.share_step, align 4
  %322 = add nsw i32 %321, 1
  %323 = and i32 %322, 3
  store i32 %323, i32* @_mdns_create_answer_from_parsed_packet.share_step, align 4
  br label %329

324:                                              ; preds = %312
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %326 = call i32 @_mdns_dispatch_tx_packet(%struct.TYPE_11__* %325)
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %328 = call i32 @_mdns_free_tx_packet(%struct.TYPE_11__* %327)
  br label %329

329:                                              ; preds = %13, %30, %160, %194, %214, %233, %273, %286, %324, %315
  ret void
}

declare dso_local %struct.TYPE_11__* @_mdns_alloc_packet_default(i32, i32) #1

declare dso_local %struct.TYPE_12__* @_mdns_get_service_item(i64, i64) #1

declare dso_local i32 @_mdns_alloc_answer(i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @_mdns_free_tx_packet(%struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @_mdns_schedule_tx_packet(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @_mdns_dispatch_tx_packet(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
