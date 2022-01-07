; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_process_peer_cfg_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_process_peer_cfg_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_12__, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64, i32, i8*, i8*, i8*, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@TRUE = common dso_local global i8* null, align 8
@L2CAP_FCR_BASIC_MODE = common dso_local global i32 0, align 4
@L2CAP_MIN_MTU = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@L2CAP_MTU_SIZE = common dso_local global i64 0, align 8
@L2CAP_CH_CFG_MASK_MTU = common dso_local global i32 0, align 4
@L2CAP_CH_CFG_MASK_FLUSH_TO = common dso_local global i32 0, align 4
@GUARANTEED = common dso_local global i64 0, align 8
@L2CAP_CH_CFG_MASK_QOS = common dso_local global i32 0, align 4
@BEST_EFFORT = common dso_local global i64 0, align 8
@L2CAP_PEER_CFG_DISCONNECT = common dso_local global i64 0, align 8
@L2CAP_CFG_FAILED_NO_REASON = common dso_local global i32 0, align 4
@L2CAP_PEER_CFG_OK = common dso_local global i64 0, align 8
@L2CAP_CFG_UNACCEPTABLE_PARAMS = common dso_local global i32 0, align 4
@L2CAP_PEER_CFG_UNACCEPTABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @l2cu_process_peer_cfg_req(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %11 = load i8*, i8** @TRUE, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i8*, i8** @TRUE, align 8
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** @TRUE, align 8
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i8*, i8** @TRUE, align 8
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @L2CAP_FCR_BASIC_MODE, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 5
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %78

33:                                               ; preds = %28
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @L2CAP_MIN_MTU, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %33
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FALSE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @L2CAP_MTU_SIZE, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i64, i64* @L2CAP_MTU_SIZE, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %45, %39
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load i8*, i8** @TRUE, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 5
  store i8* %62, i8** %65, align 8
  %66 = load i32, i32* @L2CAP_CH_CFG_MASK_MTU, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %77

71:                                               ; preds = %33
  %72 = load i64, i64* @L2CAP_MIN_MTU, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* @FALSE, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %71, %55
  br label %95

78:                                               ; preds = %28
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 5
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load i8*, i8** @TRUE, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %84, %78
  br label %95

95:                                               ; preds = %94, %77
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %127

100:                                              ; preds = %95
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  store i32 65535, i32* %107, align 8
  %108 = load i64, i64* @FALSE, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %8, align 4
  br label %126

110:                                              ; preds = %100
  %111 = load i8*, i8** @TRUE, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 4
  store i8* %111, i8** %114, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 8
  %121 = load i32, i32* @L2CAP_CH_CFG_MASK_FLUSH_TO, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %110, %105
  br label %144

127:                                              ; preds = %95
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = load i8*, i8** @TRUE, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %133, %127
  br label %144

144:                                              ; preds = %143, %126
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %181

149:                                              ; preds = %144
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 7
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @GUARANTEED, align 8
  %155 = icmp sle i64 %153, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %149
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 7
  %162 = bitcast %struct.TYPE_12__* %159 to i8*
  %163 = bitcast %struct.TYPE_12__* %161 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 8, i1 false)
  %164 = load i8*, i8** @TRUE, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 3
  store i8* %164, i8** %167, align 8
  %168 = load i32, i32* @L2CAP_CH_CFG_MASK_QOS, align 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %180

173:                                              ; preds = %149
  %174 = load i64, i64* @BEST_EFFORT, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  store i64 %174, i64* %177, align 8
  %178 = load i64, i64* @FALSE, align 8
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %173, %156
  br label %199

181:                                              ; preds = %144
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %198

187:                                              ; preds = %181
  %188 = load i8*, i8** @TRUE, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 7
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 2
  %196 = bitcast %struct.TYPE_12__* %192 to i8*
  %197 = bitcast %struct.TYPE_12__* %195 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 8, i1 false)
  br label %198

198:                                              ; preds = %187, %181
  br label %199

199:                                              ; preds = %198, %180
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %202 = call i64 @l2c_fcr_process_peer_cfg_req(%struct.TYPE_14__* %200, %struct.TYPE_15__* %201)
  store i64 %202, i64* %10, align 8
  %203 = load i64, i64* @L2CAP_PEER_CFG_DISCONNECT, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %216

205:                                              ; preds = %199
  %206 = load i32, i32* @L2CAP_CFG_FAILED_NO_REASON, align 4
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 6
  store i32 %206, i32* %208, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 4
  store i8* null, i8** %210, align 8
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 3
  store i8* null, i8** %212, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 5
  store i8* null, i8** %214, align 8
  %215 = load i64, i64* @L2CAP_PEER_CFG_DISCONNECT, align 8
  store i64 %215, i64* %3, align 8
  br label %272

216:                                              ; preds = %199
  %217 = load i64, i64* %10, align 8
  %218 = load i64, i64* @L2CAP_PEER_CFG_OK, align 8
  %219 = icmp eq i64 %217, %218
  %220 = zext i1 %219 to i32
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %216
  %224 = load i32, i32* %8, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %223
  %227 = load i32, i32* %7, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %226
  %230 = load i32, i32* %9, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %234 = call i32 @l2cu_adjust_out_mps(%struct.TYPE_14__* %233)
  %235 = load i64, i64* @L2CAP_PEER_CFG_OK, align 8
  store i64 %235, i64* %3, align 8
  br label %272

236:                                              ; preds = %229, %226, %223, %216
  %237 = load i32, i32* @L2CAP_CFG_UNACCEPTABLE_PARAMS, align 4
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 6
  store i32 %237, i32* %239, align 8
  %240 = load i32, i32* %6, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %236
  %243 = load i64, i64* @FALSE, align 8
  %244 = inttoptr i64 %243 to i8*
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 5
  store i8* %244, i8** %246, align 8
  br label %247

247:                                              ; preds = %242, %236
  %248 = load i32, i32* %8, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = load i64, i64* @FALSE, align 8
  %252 = inttoptr i64 %251 to i8*
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 4
  store i8* %252, i8** %254, align 8
  br label %255

255:                                              ; preds = %250, %247
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = load i64, i64* @FALSE, align 8
  %260 = inttoptr i64 %259 to i8*
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 3
  store i8* %260, i8** %262, align 8
  br label %263

263:                                              ; preds = %258, %255
  %264 = load i32, i32* %9, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load i64, i64* @FALSE, align 8
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  store i64 %267, i64* %269, align 8
  br label %270

270:                                              ; preds = %266, %263
  %271 = load i64, i64* @L2CAP_PEER_CFG_UNACCEPTABLE, align 8
  store i64 %271, i64* %3, align 8
  br label %272

272:                                              ; preds = %270, %232, %205
  %273 = load i64, i64* %3, align 8
  ret i64 %273
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @l2c_fcr_process_peer_cfg_req(%struct.TYPE_14__*, %struct.TYPE_15__*) #2

declare dso_local i32 @l2cu_adjust_out_mps(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
