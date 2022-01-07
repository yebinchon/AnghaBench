; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_l2c_ucd_process_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_l2c_ucd_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FIXED_QUEUE_MAX_TIMEOUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BTU_TTYPE_L2CAP_CHNL = common dso_local global i32 0, align 4
@BTM_DELAY_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2c_ucd_process_event(%struct.TYPE_16__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %242 [
    i32 139, label %12
    i32 137, label %56
    i32 136, label %123
    i32 138, label %199
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %53 [
    i32 132, label %14
    i32 135, label %27
    i32 133, label %36
    i32 134, label %40
  ]

14:                                               ; preds = %12
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = call i32 @l2c_ucd_check_pending_info_req(%struct.TYPE_16__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = call i32 @l2c_ucd_check_pending_out_sec_q(%struct.TYPE_16__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  store i32 138, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %14
  br label %55

27:                                               ; preds = %12
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %35 = call i32 @fixed_queue_enqueue(i32 %32, i8* %33, i32 %34)
  br label %55

36:                                               ; preds = %12
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @l2c_ucd_enqueue_pending_out_sec_q(%struct.TYPE_16__* %37, i8* %38)
  br label %55

40:                                               ; preds = %12
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = call i32 @l2c_ucd_check_pending_info_req(%struct.TYPE_16__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = call i32 @l2c_ucd_check_pending_out_sec_q(%struct.TYPE_16__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i32 138, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %40
  br label %55

53:                                               ; preds = %12
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %52, %36, %27, %26
  br label %244

56:                                               ; preds = %3
  %57 = load i32, i32* %5, align 4
  switch i32 %57, label %120 [
    i32 129, label %58
    i32 131, label %66
    i32 130, label %92
    i32 133, label %104
    i32 135, label %108
    i32 134, label %117
  ]

58:                                               ; preds = %56
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = call i32 @l2c_ucd_check_pending_out_sec_q(%struct.TYPE_16__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  store i32 138, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %58
  br label %122

66:                                               ; preds = %56
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  store i32 138, i32* %68, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = call i32 @l2c_ucd_send_pending_out_sec_q(%struct.TYPE_16__* %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @fixed_queue_is_empty(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %66
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %82 = call i32 @btu_start_timer(i32* %80, i32 %81, i32 0)
  br label %91

83:                                               ; preds = %66
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @btu_start_timer(i32* %85, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %83, %78
  br label %122

92:                                               ; preds = %56
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  store i32 138, i32* %94, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = call i32 @l2c_ucd_discard_pending_out_sec_q(%struct.TYPE_16__* %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @btu_start_timer(i32* %98, i32 %99, i32 %102)
  br label %122

104:                                              ; preds = %56
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @l2c_ucd_enqueue_pending_out_sec_q(%struct.TYPE_16__* %105, i8* %106)
  br label %122

108:                                              ; preds = %56
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %6, align 8
  %115 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %116 = call i32 @fixed_queue_enqueue(i32 %113, i8* %114, i32 %115)
  br label %122

117:                                              ; preds = %56
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %119 = call i32 @l2c_ucd_check_pending_info_req(%struct.TYPE_16__* %118)
  br label %122

120:                                              ; preds = %56
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %120, %117, %108, %104, %92, %91, %65
  br label %244

123:                                              ; preds = %3
  %124 = load i32, i32* %5, align 4
  switch i32 %124, label %196 [
    i32 131, label %125
    i32 130, label %151
    i32 133, label %172
    i32 135, label %176
    i32 129, label %185
    i32 134, label %193
  ]

125:                                              ; preds = %123
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  store i32 138, i32* %127, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = call i32 @l2c_ucd_send_pending_in_sec_q(%struct.TYPE_16__* %128)
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @fixed_queue_is_empty(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %125
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %141 = call i32 @btu_start_timer(i32* %139, i32 %140, i32 0)
  br label %150

142:                                              ; preds = %125
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @btu_start_timer(i32* %144, i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %142, %137
  br label %198

151:                                              ; preds = %123
  %152 = load i8*, i8** %6, align 8
  %153 = bitcast i8* %152 to %struct.TYPE_15__*
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @BTM_DELAY_CHECK, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %7, align 4
  br label %198

160:                                              ; preds = %151
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  store i32 138, i32* %162, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %164 = call i32 @l2c_ucd_discard_pending_in_sec_q(%struct.TYPE_16__* %163)
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @btu_start_timer(i32* %166, i32 %167, i32 %170)
  br label %198

172:                                              ; preds = %123
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = call i32 @l2c_ucd_enqueue_pending_out_sec_q(%struct.TYPE_16__* %173, i8* %174)
  br label %198

176:                                              ; preds = %123
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i8*, i8** %6, align 8
  %183 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %184 = call i32 @fixed_queue_enqueue(i32 %181, i8* %182, i32 %183)
  br label %198

185:                                              ; preds = %123
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %187 = call i32 @l2c_ucd_check_pending_in_sec_q(%struct.TYPE_16__* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  store i32 138, i32* %191, align 8
  br label %192

192:                                              ; preds = %189, %185
  br label %198

193:                                              ; preds = %123
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %195 = call i32 @l2c_ucd_check_pending_info_req(%struct.TYPE_16__* %194)
  br label %198

196:                                              ; preds = %123
  %197 = load i32, i32* @FALSE, align 4
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %196, %193, %192, %176, %172, %160, %158, %150
  br label %244

199:                                              ; preds = %3
  %200 = load i32, i32* %5, align 4
  switch i32 %200, label %239 [
    i32 135, label %201
    i32 133, label %215
    i32 128, label %224
    i32 134, label %236
  ]

201:                                              ; preds = %199
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 1
  %204 = call i32 @btu_stop_timer(i32* %203)
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i8*, i8** %6, align 8
  %211 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %212 = call i32 @fixed_queue_enqueue(i32 %209, i8* %210, i32 %211)
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %214 = call i32 @l2c_ucd_check_pending_in_sec_q(%struct.TYPE_16__* %213)
  br label %241

215:                                              ; preds = %199
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 1
  %218 = call i32 @btu_stop_timer(i32* %217)
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %220 = load i8*, i8** %6, align 8
  %221 = call i32 @l2c_ucd_enqueue_pending_out_sec_q(%struct.TYPE_16__* %219, i8* %220)
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %223 = call i32 @l2c_ucd_check_pending_out_sec_q(%struct.TYPE_16__* %222)
  br label %241

224:                                              ; preds = %199
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %226 = call i32 @l2c_ucd_check_pending_in_sec_q(%struct.TYPE_16__* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %224
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %230 = call i32 @l2c_ucd_check_pending_out_sec_q(%struct.TYPE_16__* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %234 = call i32 @l2cu_release_ccb(%struct.TYPE_16__* %233)
  br label %235

235:                                              ; preds = %232, %228, %224
  br label %241

236:                                              ; preds = %199
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %238 = call i32 @l2c_ucd_check_pending_info_req(%struct.TYPE_16__* %237)
  br label %241

239:                                              ; preds = %199
  %240 = load i32, i32* @FALSE, align 4
  store i32 %240, i32* %7, align 4
  br label %241

241:                                              ; preds = %239, %236, %235, %215, %201
  br label %244

242:                                              ; preds = %3
  %243 = load i32, i32* @FALSE, align 4
  store i32 %243, i32* %7, align 4
  br label %244

244:                                              ; preds = %242, %241, %198, %122, %55
  %245 = load i32, i32* %7, align 4
  ret i32 %245
}

declare dso_local i32 @l2c_ucd_check_pending_info_req(%struct.TYPE_16__*) #1

declare dso_local i32 @l2c_ucd_check_pending_out_sec_q(%struct.TYPE_16__*) #1

declare dso_local i32 @fixed_queue_enqueue(i32, i8*, i32) #1

declare dso_local i32 @l2c_ucd_enqueue_pending_out_sec_q(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @l2c_ucd_send_pending_out_sec_q(%struct.TYPE_16__*) #1

declare dso_local i32 @fixed_queue_is_empty(i32) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @l2c_ucd_discard_pending_out_sec_q(%struct.TYPE_16__*) #1

declare dso_local i32 @l2c_ucd_send_pending_in_sec_q(%struct.TYPE_16__*) #1

declare dso_local i32 @l2c_ucd_discard_pending_in_sec_q(%struct.TYPE_16__*) #1

declare dso_local i32 @l2c_ucd_check_pending_in_sec_q(%struct.TYPE_16__*) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @l2cu_release_ccb(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
