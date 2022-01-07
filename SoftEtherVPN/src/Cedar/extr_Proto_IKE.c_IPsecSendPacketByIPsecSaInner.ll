; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IPsecSendPacketByIPsecSaInner.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IPsecSendPacketByIPsecSaInner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_13__, i64*, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_12__*, %struct.TYPE_18__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64*, i32, i64* }
%struct.TYPE_17__ = type { i64* }

@IKE_ESP_HASH_SIZE = common dso_local global i32 0, align 4
@IKE_MAX_HASH_SIZE = common dso_local global i32 0, align 4
@IKE_P2_CAPSULE_TRANSPORT = common dso_local global i64 0, align 8
@IKE_P2_CAPSULE_TUNNEL = common dso_local global i64 0, align 8
@IPSEC_PORT_IPSEC_ESP_RAW = common dso_local global i32 0, align 4
@IKE_UDP_TYPE_ESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPsecSendPacketByIPsecSaInner(i32* %0, %struct.TYPE_14__* %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = icmp eq %struct.TYPE_14__* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i64*, i64** %8, align 8
  %31 = icmp eq i64* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29, %26, %5
  br label %384

36:                                               ; preds = %32
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %18, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %41 = icmp eq %struct.TYPE_16__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %384

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = srem i32 %46, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %43
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %56, %62
  %64 = add nsw i32 %63, 1
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %64, %70
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %55, %43
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sub nsw i32 %75, 2
  store i32 %76, i32* %15, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 8, %83
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %84, %86
  %88 = load i32, i32* @IKE_ESP_HASH_SIZE, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %87, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @IKE_MAX_HASH_SIZE, align 4
  %94 = add nsw i32 %92, %93
  %95 = call i64* @Malloc(i32 %94)
  store i64* %95, i64** %13, align 8
  %96 = load i64*, i64** %13, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @WRITE_UINT(i64* %96, i32 %99)
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load i64*, i64** %13, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @WRITE_UINT(i64* %106, i32 %109)
  %111 = load i64*, i64** %13, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 5
  %115 = load i64*, i64** %114, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @Copy(i64* %112, i64* %115, i32 %121)
  %123 = load i64*, i64** %13, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %124, i64 %131
  %133 = load i64*, i64** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @Copy(i64* %132, i64* %133, i32 %134)
  store i32 0, i32* %14, align 4
  br label %136

136:                                              ; preds = %160, %72
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %163

140:                                              ; preds = %136
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = load i64*, i64** %13, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = add i64 8, %151
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = add i64 %152, %154
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = add i64 %155, %157
  %159 = getelementptr inbounds i64, i64* %144, i64 %158
  store i64 %143, i64* %159, align 8
  br label %160

160:                                              ; preds = %140
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %136

163:                                              ; preds = %136
  %164 = load i32, i32* %15, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64*, i64** %13, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = add i64 8, %173
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = add i64 %174, %176
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = add i64 %177, %179
  %181 = getelementptr inbounds i64, i64* %166, i64 %180
  store i64 %165, i64* %181, align 8
  %182 = load i64, i64* %10, align 8
  %183 = load i64*, i64** %13, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 8, %190
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = add i64 %191, %193
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = add i64 %194, %196
  %198 = add i64 %197, 1
  %199 = getelementptr inbounds i64, i64* %183, i64 %198
  store i64 %182, i64* %199, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %201 = load i64*, i64** %200, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 5
  %204 = load i64*, i64** %203, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @Copy(i64* %201, i64* %204, i32 %210)
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  store i32 %214, i32* %215, align 8
  %216 = load i64*, i64** %13, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %217, i64 %224
  %226 = load i32, i32* %12, align 4
  %227 = call %struct.TYPE_17__* @IkeEncrypt(i64* %225, i32 %226, %struct.TYPE_15__* %16)
  store %struct.TYPE_17__* %227, %struct.TYPE_17__** %17, align 8
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %229 = icmp ne %struct.TYPE_17__* %228, null
  br i1 %229, label %230, label %381

230:                                              ; preds = %163
  store i32 0, i32* %19, align 4
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %20, align 4
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %21, align 4
  %237 = load i64*, i64** %13, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 8
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %238, i64 %245
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 0
  %249 = load i64*, i64** %248, align 8
  %250 = load i32, i32* %12, align 4
  %251 = call i32 @Copy(i64* %246, i64* %249, i32 %250)
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %253 = call i32 @FreeBuf(%struct.TYPE_17__* %252)
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 3
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %256, align 8
  %258 = load i64*, i64** %13, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 8
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %259, i64 %266
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i64, i64* %267, i64 %269
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 3
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i64*, i64** %13, align 8
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 4
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 2
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = add i64 8, %287
  %289 = load i32, i32* %12, align 4
  %290 = sext i32 %289 to i64
  %291 = add i64 %288, %290
  %292 = trunc i64 %291 to i32
  %293 = call i32 @IkeHMac(%struct.TYPE_18__* %257, i64* %270, i32 %273, i32 %279, i64* %280, i32 %292)
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 4
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @IKE_P2_CAPSULE_TRANSPORT, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %307, label %300

300:                                              ; preds = %230
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 4
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @IKE_P2_CAPSULE_TUNNEL, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %300, %230
  %308 = load i32, i32* @IPSEC_PORT_IPSEC_ESP_RAW, align 4
  store i32 %308, i32* %21, align 4
  store i32 %308, i32* %20, align 4
  br label %309

309:                                              ; preds = %307, %300
  %310 = load i32*, i32** %6, align 8
  %311 = load i32, i32* @IKE_UDP_TYPE_ESP, align 4
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 4
  %314 = load i32, i32* %20, align 4
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 3
  %317 = load i32, i32* %21, align 4
  %318 = load i64*, i64** %13, align 8
  %319 = load i32, i32* %11, align 4
  %320 = call i32 @IkeSendUdpPacket(i32* %310, i32 %311, i32* %313, i32 %314, i32* %316, i32 %317, i64* %318, i32 %319)
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 5
  %323 = load i64*, i64** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %325 = load i64*, i64** %324, align 8
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 4
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 2
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @Copy(i64* %323, i64* %325, i32 %331)
  %333 = load i32, i32* %11, align 4
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = add nsw i32 %336, %333
  store i32 %337, i32* %335, align 8
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = icmp uge i32 %340, -268435456
  br i1 %341, label %342, label %343

342:                                              ; preds = %309
  store i32 1, i32* %19, align 4
  br label %343

343:                                              ; preds = %342, %309
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 4
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %366

349:                                              ; preds = %343
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 4
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = mul nsw i64 %353, 1000
  store i64 %354, i64* %22, align 8
  %355 = load i64, i64* %22, align 8
  %356 = mul nsw i64 %355, 2
  %357 = sdiv i64 %356, 3
  store i64 %357, i64* %23, align 8
  %358 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = sext i32 %360 to i64
  %362 = load i64, i64* %23, align 8
  %363 = icmp sge i64 %361, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %349
  store i32 1, i32* %19, align 4
  br label %365

365:                                              ; preds = %364, %349
  br label %366

366:                                              ; preds = %365, %343
  %367 = load i32, i32* %19, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %380

369:                                              ; preds = %366
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %369
  %375 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 3
  store i32 1, i32* %376, align 4
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 2
  store i32 1, i32* %378, align 4
  br label %379

379:                                              ; preds = %374, %369
  br label %380

380:                                              ; preds = %379, %366
  br label %384

381:                                              ; preds = %163
  %382 = load i64*, i64** %13, align 8
  %383 = call i32 @Free(i64* %382)
  br label %384

384:                                              ; preds = %35, %42, %381, %380
  ret void
}

declare dso_local i64* @Malloc(i32) #1

declare dso_local i32 @WRITE_UINT(i64*, i32) #1

declare dso_local i32 @Copy(i64*, i64*, i32) #1

declare dso_local %struct.TYPE_17__* @IkeEncrypt(i64*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_17__*) #1

declare dso_local i32 @IkeHMac(%struct.TYPE_18__*, i64*, i32, i32, i64*, i32) #1

declare dso_local i32 @IkeSendUdpPacket(i32*, i32, i32*, i32, i32*, i32, i64*, i32) #1

declare dso_local i32 @Free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
