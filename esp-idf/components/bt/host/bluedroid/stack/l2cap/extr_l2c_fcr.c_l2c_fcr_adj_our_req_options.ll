; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_l2c_fcr_adj_our_req_options.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_l2c_fcr_adj_our_req_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, i8*, i8*, i64, i8*, %struct.TYPE_13__ }

@.str = private unnamed_addr constant [76 x i8] c"l2c_fcr_adj_our_req_options - preferred_mode (%d), does not match mode (%d)\00", align 1
@L2CAP_FCR_CHAN_OPT_BASIC = common dso_local global i32 0, align 4
@L2CAP_FCR_BASIC_MODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [82 x i8] c"l2c_fcr_adj_our_req_options (mode %d): ERROR: No FCR options set using BASIC mode\00", align 1
@RECONFIG_FLAG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@L2CAP_FCR_STREAM_MODE = common dso_local global i64 0, align 8
@L2CAP_FCR_CHAN_OPT_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"L2C CFG: mode is STREAM, but peer does not support; Try ERTM\00", align 1
@L2CAP_FCR_ERTM_MODE = common dso_local global i64 0, align 8
@L2CAP_FCR_CHAN_OPT_ERTM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"L2C CFG: mode is ERTM, but peer does not support; Try BASIC\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"L2CAP - MTU: %u  larger than buf size: %u\00", align 1
@L2CAP_DEFAULT_ERM_MPS = common dso_local global i64 0, align 8
@L2CAP_MPS_OVER_BR_EDR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"L2CAP - MPS  %u  invalid  MTU: %u\00", align 1
@L2CAP_MTU_SIZE = common dso_local global i64 0, align 8
@L2CAP_MAX_HEADER_FCS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @l2c_fcr_adj_our_req_options(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = icmp ne %struct.TYPE_12__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 5
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i8*, i64, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %25, %2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @L2CAP_FCR_CHAN_OPT_BASIC, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, i64, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %58, %52, %47
  %64 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %40
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %229

72:                                               ; preds = %67
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @RECONFIG_FLAG, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %229, label %79

79:                                               ; preds = %72
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = call i32 @l2c_fcr_chk_chan_modes(%struct.TYPE_12__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = call i32 @l2cu_disconnect_chnl(%struct.TYPE_12__* %84)
  %86 = load i8*, i8** @FALSE, align 8
  store i8* %86, i8** %3, align 8
  br label %236

87:                                               ; preds = %79
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @L2CAP_FCR_CHAN_OPT_BASIC, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %87
  %95 = load i8*, i8** @FALSE, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** @FALSE, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** @FALSE, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  br label %143

104:                                              ; preds = %87
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @L2CAP_FCR_STREAM_MODE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @L2CAP_FCR_CHAN_OPT_STREAM, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %110
  %119 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i64, i64* @L2CAP_FCR_ERTM_MODE, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %118, %110, %104
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @L2CAP_FCR_ERTM_MODE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %123
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @L2CAP_FCR_CHAN_OPT_ERTM, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %129
  %138 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %139 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %137, %129, %123
  br label %143

143:                                              ; preds = %142, %94
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %215

150:                                              ; preds = %144
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %150
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp sgt i64 %158, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %155
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 (i8*, i64, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %166, i64 %169)
  %171 = load i8*, i8** @FALSE, align 8
  store i8* %171, i8** %3, align 8
  br label %236

172:                                              ; preds = %155, %150
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @L2CAP_DEFAULT_ERM_MPS, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load i64, i64* @L2CAP_MPS_OVER_BR_EDR, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  store i64 %179, i64* %181, align 8
  br label %200

182:                                              ; preds = %172
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %185, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %182
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = call i32 (i8*, i64, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %193, i64 %196)
  %198 = load i8*, i8** @FALSE, align 8
  store i8* %198, i8** %3, align 8
  br label %236

199:                                              ; preds = %182
  br label %200

200:                                              ; preds = %199, %178
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @L2CAP_MTU_SIZE, align 8
  %205 = load i64, i64* @L2CAP_MAX_HEADER_FCS, align 8
  %206 = sub nsw i64 %204, %205
  %207 = icmp sgt i64 %203, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %200
  %209 = load i64, i64* @L2CAP_MTU_SIZE, align 8
  %210 = load i64, i64* @L2CAP_MAX_HEADER_FCS, align 8
  %211 = sub nsw i64 %209, %210
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  store i64 %211, i64* %213, align 8
  br label %214

214:                                              ; preds = %208, %200
  br label %222

215:                                              ; preds = %144
  %216 = load i8*, i8** @FALSE, align 8
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 2
  store i8* %216, i8** %218, align 8
  %219 = load i8*, i8** @FALSE, align 8
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  store i8* %219, i8** %221, align 8
  br label %222

222:                                              ; preds = %215, %214
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %227 = bitcast %struct.TYPE_13__* %225 to i8*
  %228 = bitcast %struct.TYPE_13__* %226 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %227, i8* align 8 %228, i64 16, i1 false)
  br label %234

229:                                              ; preds = %72, %67
  %230 = load i8*, i8** @FALSE, align 8
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  store i8* %230, i8** %233, align 8
  br label %234

234:                                              ; preds = %229, %222
  %235 = load i8*, i8** @TRUE, align 8
  store i8* %235, i8** %3, align 8
  br label %236

236:                                              ; preds = %234, %190, %163, %83
  %237 = load i8*, i8** %3, align 8
  ret i8* %237
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i64, ...) #1

declare dso_local i32 @l2c_fcr_chk_chan_modes(%struct.TYPE_12__*) #1

declare dso_local i32 @l2cu_disconnect_chnl(%struct.TYPE_12__*) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
