; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_add_attr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_add_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_12__*, i32, i32 }

@SDP_ADDITIONAL_LIST_MASK = common dso_local global i32 0, align 4
@SDP_DISC_ATTR_LEN_MASK = common dso_local global i32 0, align 4
@ATTR_ID_PROTOCOL_DESC_LIST = common dso_local global i32 0, align 4
@MAX_NEST_LEVELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SDP - attr nesting too deep\0A\00", align 1
@MAX_UUID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"SDP - bad len in UUID attr: %d\0A\00", align 1
@ATTR_ID_ADDITION_PROTO_DESC_LISTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"SDP - bad len in boolean attr: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_13__*, %struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32)* @add_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_attr(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_11__* %2, i32 %3, %struct.TYPE_12__* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @SDP_ADDITIONAL_LIST_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %21, align 4
  %27 = load i32, i32* @SDP_ADDITIONAL_LIST_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %13, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %13, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %8, align 8
  %33 = load i32, i32* %31, align 4
  store i32 %33, i32* %19, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %19, align 4
  %36 = call i32* @sdpu_get_len_from_type(i32* %34, i32 %35, i32* %15)
  store i32* %36, i32** %8, align 8
  %37 = load i32, i32* @SDP_DISC_ATTR_LEN_MASK, align 4
  %38 = load i32, i32* %15, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %19, align 4
  %41 = ashr i32 %40, 3
  %42 = and i32 %41, 15
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp sgt i32 %43, 4
  br i1 %44, label %45, label %49

45:                                               ; preds = %6
  %46 = load i32, i32* %15, align 4
  %47 = sub nsw i32 %46, 4
  %48 = add nsw i32 %47, 40
  store i32 %48, i32* %16, align 4
  br label %50

49:                                               ; preds = %6
  store i32 40, i32* %16, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, 3
  %53 = and i32 %52, -4
  store i32 %53, i32* %16, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %16, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32* null, i32** %7, align 8
  br label %435

60:                                               ; preds = %50
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %14, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %17, align 4
  %70 = shl i32 %69, 12
  %71 = or i32 %68, %70
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %75, align 8
  %76 = load i32, i32* %17, align 4
  switch i32 %76, label %358 [
    i32 130, label %77
    i32 131, label %125
    i32 128, label %161
    i32 133, label %281
    i32 134, label %281
    i32 132, label %331
    i32 129, label %331
    i32 135, label %340
  ]

77:                                               ; preds = %60
  %78 = load i32, i32* %21, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %124

80:                                               ; preds = %77
  %81 = load i32, i32* %15, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %124

83:                                               ; preds = %80
  %84 = load i32, i32* %18, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @BE_STREAM_TO_UINT16(i32 %84, i32* %85)
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* @ATTR_ID_PROTOCOL_DESC_LIST, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 -2
  store i32* %92, i32** %8, align 8
  br label %123

93:                                               ; preds = %83
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 40
  store i64 %97, i64* %95, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = sub i64 %101, 40
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32* %107, i32** %20, align 8
  store i32 0, i32* %16, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @MAX_NEST_LEVELS, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %93
  %112 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %113 = load i32*, i32** %20, align 8
  store i32* %113, i32** %7, align 8
  br label %435

114:                                              ; preds = %93
  %115 = load i32*, i32** %8, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %118 = load i32, i32* @ATTR_ID_PROTOCOL_DESC_LIST, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  %122 = call i32* @add_attr(i32* %115, %struct.TYPE_13__* %116, %struct.TYPE_11__* %117, i32 %118, %struct.TYPE_12__* %119, i32 %121)
  store i32* %122, i32** %8, align 8
  br label %359

123:                                              ; preds = %90
  br label %124

124:                                              ; preds = %123, %80, %77
  br label %125

125:                                              ; preds = %60, %124
  %126 = load i32, i32* %15, align 4
  switch i32 %126, label %151 [
    i32 1, label %127
    i32 2, label %135
    i32 4, label %143
  ]

127:                                              ; preds = %125
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %8, align 8
  %130 = load i32, i32* %128, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  store i32 %130, i32* %134, align 8
  br label %160

135:                                              ; preds = %125
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @BE_STREAM_TO_UINT16(i32 %140, i32* %141)
  br label %160

143:                                              ; preds = %125
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = call i32 @BE_STREAM_TO_UINT32(i32 %148, i32* %149)
  br label %160

151:                                              ; preds = %125
  %152 = load i32*, i32** %8, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @BE_STREAM_TO_ARRAY(i32* %152, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %151, %143, %135, %127
  br label %359

161:                                              ; preds = %60
  %162 = load i32, i32* %15, align 4
  switch i32 %162, label %273 [
    i32 2, label %163
    i32 4, label %171
    i32 16, label %202
  ]

163:                                              ; preds = %161
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @BE_STREAM_TO_UINT16(i32 %168, i32* %169)
  br label %280

171:                                              ; preds = %161
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 @BE_STREAM_TO_UINT32(i32 %176, i32* %177)
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %183, 65536
  br i1 %184, label %185, label %201

185:                                              ; preds = %171
  store i32 2, i32* %15, align 4
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %17, align 4
  %188 = shl i32 %187, 12
  %189 = or i32 %186, %188
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  store i32 %196, i32* %200, align 8
  br label %201

201:                                              ; preds = %185, %171
  br label %280

202:                                              ; preds = %161
  %203 = load i32*, i32** %8, align 8
  %204 = call i32 @sdpu_is_base_uuid(i32* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %263

206:                                              ; preds = %202
  %207 = load i32*, i32** %8, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %240

211:                                              ; preds = %206
  %212 = load i32*, i32** %8, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %240

216:                                              ; preds = %211
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @SDP_DISC_ATTR_LEN_MASK, align 4
  %221 = xor i32 %220, -1
  %222 = and i32 %219, %221
  %223 = or i32 %222, 2
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load i32*, i32** %8, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  store i32* %227, i32** %8, align 8
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32*, i32** %8, align 8
  %234 = call i32 @BE_STREAM_TO_UINT16(i32 %232, i32* %233)
  %235 = load i32, i32* @MAX_UUID_SIZE, align 4
  %236 = sub nsw i32 %235, 4
  %237 = load i32*, i32** %8, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  store i32* %239, i32** %8, align 8
  br label %262

240:                                              ; preds = %211, %206
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @SDP_DISC_ATTR_LEN_MASK, align 4
  %245 = xor i32 %244, -1
  %246 = and i32 %243, %245
  %247 = or i32 %246, 4
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32*, i32** %8, align 8
  %256 = call i32 @BE_STREAM_TO_UINT32(i32 %254, i32* %255)
  %257 = load i32, i32* @MAX_UUID_SIZE, align 4
  %258 = sub nsw i32 %257, 4
  %259 = load i32*, i32** %8, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32* %261, i32** %8, align 8
  br label %262

262:                                              ; preds = %240, %216
  br label %272

263:                                              ; preds = %202
  %264 = load i32*, i32** %8, align 8
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %15, align 4
  %271 = call i32 @BE_STREAM_TO_ARRAY(i32* %264, i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %263, %262
  br label %280

273:                                              ; preds = %161
  %274 = load i32, i32* %15, align 4
  %275 = call i32 @SDP_TRACE_WARNING(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %274)
  %276 = load i32*, i32** %8, align 8
  %277 = load i32, i32* %15, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32* %279, i32** %7, align 8
  br label %435

280:                                              ; preds = %272, %201, %163
  br label %359

281:                                              ; preds = %60, %60
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = add i64 %284, 40
  store i64 %285, i64* %283, align 8
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = sub i64 %289, 40
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %287, align 8
  %292 = load i32*, i32** %8, align 8
  %293 = load i32, i32* %15, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  store i32* %295, i32** %20, align 8
  store i32 0, i32* %16, align 4
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* @MAX_NEST_LEVELS, align 4
  %298 = icmp sge i32 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %281
  %300 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %301 = load i32*, i32** %20, align 8
  store i32* %301, i32** %7, align 8
  br label %435

302:                                              ; preds = %281
  %303 = load i32, i32* %21, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %309, label %305

305:                                              ; preds = %302
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* @ATTR_ID_ADDITION_PROTO_DESC_LISTS, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %313

309:                                              ; preds = %305, %302
  %310 = load i32, i32* @SDP_ADDITIONAL_LIST_MASK, align 4
  %311 = load i32, i32* %13, align 4
  %312 = or i32 %311, %310
  store i32 %312, i32* %13, align 4
  br label %313

313:                                              ; preds = %309, %305
  br label %314

314:                                              ; preds = %329, %313
  %315 = load i32*, i32** %8, align 8
  %316 = load i32*, i32** %20, align 8
  %317 = icmp ult i32* %315, %316
  br i1 %317, label %318, label %330

318:                                              ; preds = %314
  %319 = load i32*, i32** %8, align 8
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 %323, 1
  %325 = call i32* @add_attr(i32* %319, %struct.TYPE_13__* %320, %struct.TYPE_11__* %321, i32 0, %struct.TYPE_12__* %322, i32 %324)
  store i32* %325, i32** %8, align 8
  %326 = load i32*, i32** %8, align 8
  %327 = icmp ne i32* %326, null
  br i1 %327, label %329, label %328

328:                                              ; preds = %318
  store i32* null, i32** %7, align 8
  br label %435

329:                                              ; preds = %318
  br label %314

330:                                              ; preds = %314
  br label %359

331:                                              ; preds = %60, %60
  %332 = load i32*, i32** %8, align 8
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 3
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %15, align 4
  %339 = call i32 @BE_STREAM_TO_ARRAY(i32* %332, i32 %337, i32 %338)
  br label %359

340:                                              ; preds = %60
  %341 = load i32, i32* %15, align 4
  switch i32 %341, label %350 [
    i32 1, label %342
  ]

342:                                              ; preds = %340
  %343 = load i32*, i32** %8, align 8
  %344 = getelementptr inbounds i32, i32* %343, i32 1
  store i32* %344, i32** %8, align 8
  %345 = load i32, i32* %343, align 4
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 3
  store i32 %345, i32* %349, align 8
  br label %357

350:                                              ; preds = %340
  %351 = load i32, i32* %15, align 4
  %352 = call i32 @SDP_TRACE_WARNING(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %351)
  %353 = load i32*, i32** %8, align 8
  %354 = load i32, i32* %15, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  store i32* %356, i32** %7, align 8
  br label %435

357:                                              ; preds = %342
  br label %359

358:                                              ; preds = %60
  br label %359

359:                                              ; preds = %358, %357, %331, %330, %280, %160, %114
  %360 = load i32, i32* %16, align 4
  %361 = sext i32 %360 to i64
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = add nsw i64 %364, %361
  store i64 %365, i64* %363, align 8
  %366 = load i32, i32* %16, align 4
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = sub nsw i32 %369, %366
  store i32 %370, i32* %368, align 8
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %372 = icmp ne %struct.TYPE_12__* %371, null
  br i1 %372, label %400, label %373

373:                                              ; preds = %359
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 0
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %375, align 8
  %377 = icmp ne %struct.TYPE_12__* %376, null
  br i1 %377, label %382, label %378

378:                                              ; preds = %373
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 0
  store %struct.TYPE_12__* %379, %struct.TYPE_12__** %381, align 8
  br label %399

382:                                              ; preds = %373
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_12__*, %struct.TYPE_12__** %384, align 8
  store %struct.TYPE_12__* %385, %struct.TYPE_12__** %22, align 8
  br label %386

386:                                              ; preds = %391, %382
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 2
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %388, align 8
  %390 = icmp ne %struct.TYPE_12__* %389, null
  br i1 %390, label %391, label %395

391:                                              ; preds = %386
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 2
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %393, align 8
  store %struct.TYPE_12__* %394, %struct.TYPE_12__** %22, align 8
  br label %386

395:                                              ; preds = %386
  %396 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %397 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 2
  store %struct.TYPE_12__* %396, %struct.TYPE_12__** %398, align 8
  br label %399

399:                                              ; preds = %395, %378
  br label %433

400:                                              ; preds = %359
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 3
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 2
  %405 = load %struct.TYPE_12__*, %struct.TYPE_12__** %404, align 8
  %406 = icmp ne %struct.TYPE_12__* %405, null
  br i1 %406, label %413, label %407

407:                                              ; preds = %400
  %408 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %409 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 3
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 2
  store %struct.TYPE_12__* %408, %struct.TYPE_12__** %412, align 8
  br label %432

413:                                              ; preds = %400
  %414 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 3
  %416 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 2
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %417, align 8
  store %struct.TYPE_12__* %418, %struct.TYPE_12__** %23, align 8
  br label %419

419:                                              ; preds = %424, %413
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 2
  %422 = load %struct.TYPE_12__*, %struct.TYPE_12__** %421, align 8
  %423 = icmp ne %struct.TYPE_12__* %422, null
  br i1 %423, label %424, label %428

424:                                              ; preds = %419
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 2
  %427 = load %struct.TYPE_12__*, %struct.TYPE_12__** %426, align 8
  store %struct.TYPE_12__* %427, %struct.TYPE_12__** %23, align 8
  br label %419

428:                                              ; preds = %419
  %429 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %430 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 2
  store %struct.TYPE_12__* %429, %struct.TYPE_12__** %431, align 8
  br label %432

432:                                              ; preds = %428, %407
  br label %433

433:                                              ; preds = %432, %399
  %434 = load i32*, i32** %8, align 8
  store i32* %434, i32** %7, align 8
  br label %435

435:                                              ; preds = %433, %350, %328, %299, %273, %111, %59
  %436 = load i32*, i32** %7, align 8
  ret i32* %436
}

declare dso_local i32* @sdpu_get_len_from_type(i32*, i32, i32*) #1

declare dso_local i32 @BE_STREAM_TO_UINT16(i32, i32*) #1

declare dso_local i32 @SDP_TRACE_ERROR(i8*) #1

declare dso_local i32 @BE_STREAM_TO_UINT32(i32, i32*) #1

declare dso_local i32 @BE_STREAM_TO_ARRAY(i32*, i32, i32) #1

declare dso_local i32 @sdpu_is_base_uuid(i32*) #1

declare dso_local i32 @SDP_TRACE_WARNING(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
