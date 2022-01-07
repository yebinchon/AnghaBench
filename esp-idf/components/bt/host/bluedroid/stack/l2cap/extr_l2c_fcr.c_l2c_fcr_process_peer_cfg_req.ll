; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_l2c_fcr_process_peer_cfg_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_l2c_fcr_process_peer_cfg_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32, %struct.TYPE_15__, i8*, %struct.TYPE_14__, i32, %struct.TYPE_13__, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i64, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_16__, i64 }

@L2CAP_PEER_CFG_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [103 x i8] c"l2c_fcr_process_peer_cfg_req() CFG fcr_present:%d fcr.mode:%d CCB FCR mode:%d preferred: %u allowed:%u\00", align 1
@L2CAP_FCR_BASIC_MODE = common dso_local global i32 0, align 4
@L2CAP_FCR_CHAN_OPT_BASIC = common dso_local global i32 0, align 4
@L2CAP_PEER_CFG_DISCONNECT = common dso_local global i64 0, align 8
@L2CAP_FCR_CHAN_OPT_ALL_MASK = common dso_local global i32 0, align 4
@L2CAP_FCR_ERTM_MODE = common dso_local global i32 0, align 4
@L2CAP_PEER_CFG_UNACCEPTABLE = common dso_local global i64 0, align 8
@L2CAP_FCR_CHAN_OPT_ERTM = common dso_local global i32 0, align 4
@L2CAP_CH_CFG_MASK_FCS = common dso_local global i32 0, align 4
@L2CAP_CFG_FCS_BYPASS = common dso_local global i64 0, align 8
@L2CAP_CFG_FCS_PEER = common dso_local global i32 0, align 4
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@L2CAP_SDU_LEN_OFFSET = common dso_local global i32 0, align 4
@L2CAP_FCS_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"CFG: Overriding MPS to %d (orig %d)\00", align 1
@L2CAP_FCR_STREAM_MODE = common dso_local global i32 0, align 4
@L2CAP_CH_CFG_MASK_FCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @l2c_fcr_process_peer_cfg_req(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = icmp ne %struct.TYPE_17__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = icmp ne %struct.TYPE_18__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* @L2CAP_PEER_CFG_OK, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i8*, i8** @FALSE, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 7
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i8* %16, i8** %20, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %27, i32 %32, i32 %36, i32 %40)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @L2CAP_FCR_BASIC_MODE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %2
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @L2CAP_FCR_CHAN_OPT_BASIC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = load i64, i64* @L2CAP_PEER_CFG_DISCONNECT, align 8
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %56, %48
  br label %172

59:                                               ; preds = %2
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %63, %67
  br i1 %68, label %69, label %171

69:                                               ; preds = %59
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 1, %73
  %75 = load i32, i32* @L2CAP_FCR_CHAN_OPT_ALL_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %69
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @L2CAP_FCR_ERTM_MODE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %78, %69
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 4
  store i64 %98, i64* %101, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 5
  store i64 %106, i64* %109, align 8
  %110 = load i64, i64* @L2CAP_PEER_CFG_UNACCEPTABLE, align 8
  store i64 %110, i64* %6, align 8
  br label %170

111:                                              ; preds = %78
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @L2CAP_FCR_BASIC_MODE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %111
  %119 = load i32, i32* @L2CAP_FCR_BASIC_MODE, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 4
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 5
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  store i64 0, i64* %149, align 8
  %150 = load i64, i64* @L2CAP_PEER_CFG_UNACCEPTABLE, align 8
  store i64 %150, i64* %6, align 8
  br label %169

151:                                              ; preds = %111
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @L2CAP_FCR_ERTM_MODE, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %151
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @L2CAP_FCR_CHAN_OPT_ERTM, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %158, %151
  %167 = load i64, i64* @L2CAP_PEER_CFG_DISCONNECT, align 8
  store i64 %167, i64* %6, align 8
  br label %168

168:                                              ; preds = %166, %158
  br label %169

169:                                              ; preds = %168, %118
  br label %170

170:                                              ; preds = %169, %85
  br label %171

171:                                              ; preds = %170, %59
  br label %172

172:                                              ; preds = %171, %58
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* @L2CAP_PEER_CFG_OK, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %321

176:                                              ; preds = %172
  %177 = load i8*, i8** @FALSE, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 3
  store i8* %177, i8** %179, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %302

184:                                              ; preds = %176
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @L2CAP_FCR_BASIC_MODE, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %302

191:                                              ; preds = %184
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %220

196:                                              ; preds = %191
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  store i64 %199, i64* %202, align 8
  %203 = load i32, i32* @L2CAP_CH_CFG_MASK_FCS, align 4
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @L2CAP_CFG_FCS_BYPASS, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %196
  %214 = load i32, i32* @L2CAP_CFG_FCS_PEER, align 4
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %213, %196
  br label %220

220:                                              ; preds = %219, %191
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = sub i64 %225, 4
  %227 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %228 = sext i32 %227 to i64
  %229 = sub i64 %226, %228
  %230 = load i32, i32* @L2CAP_SDU_LEN_OFFSET, align 4
  %231 = sext i32 %230 to i64
  %232 = sub i64 %229, %231
  %233 = load i32, i32* @L2CAP_FCS_LEN, align 4
  %234 = sext i32 %233 to i64
  %235 = sub i64 %232, %234
  store i64 %235, i64* %5, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %251, label %241

241:                                              ; preds = %220
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = icmp sgt i64 %245, %249
  br i1 %250, label %251, label %262

251:                                              ; preds = %241, %220
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 3
  store i64 %255, i64* %258, align 8
  %259 = load i8*, i8** @TRUE, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 3
  store i8* %259, i8** %261, align 8
  br label %262

262:                                              ; preds = %251, %241
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* %5, align 8
  %268 = icmp sgt i64 %266, %267
  br i1 %268, label %269, label %283

269:                                              ; preds = %262
  %270 = load i64, i64* %5, align 8
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %270, i64 %274)
  %276 = load i64, i64* %5, align 8
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 3
  store i64 %276, i64* %279, align 8
  %280 = load i8*, i8** @TRUE, align 8
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 3
  store i8* %280, i8** %282, align 8
  br label %283

283:                                              ; preds = %269, %262
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @L2CAP_FCR_ERTM_MODE, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %297, label %290

290:                                              ; preds = %283
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @L2CAP_FCR_STREAM_MODE, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %290, %283
  %298 = load i8*, i8** @TRUE, align 8
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 3
  store i8* %298, i8** %300, align 8
  br label %301

301:                                              ; preds = %297, %290
  br label %302

302:                                              ; preds = %301, %184, %176
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 2
  %308 = bitcast %struct.TYPE_16__* %305 to i8*
  %309 = bitcast %struct.TYPE_16__* %307 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %308, i8* align 8 %309, i64 48, i1 false)
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %302
  %315 = load i32, i32* @L2CAP_CH_CFG_MASK_FCR, align 4
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = or i32 %318, %315
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %314, %302
  br label %338

321:                                              ; preds = %172
  %322 = load i64, i64* %6, align 8
  %323 = load i64, i64* @L2CAP_PEER_CFG_UNACCEPTABLE, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %337

325:                                              ; preds = %321
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 0
  %328 = load i8*, i8** %327, align 8
  %329 = icmp ne i8* %328, null
  br i1 %329, label %330, label %332

330:                                              ; preds = %325
  %331 = load i64, i64* @L2CAP_PEER_CFG_DISCONNECT, align 8
  store i64 %331, i64* %6, align 8
  br label %336

332:                                              ; preds = %325
  %333 = load i8*, i8** @TRUE, align 8
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 0
  store i8* %333, i8** %335, align 8
  br label %336

336:                                              ; preds = %332, %330
  br label %337

337:                                              ; preds = %336, %321
  br label %338

338:                                              ; preds = %337, %320
  %339 = load i64, i64* %6, align 8
  ret i64 %339
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
