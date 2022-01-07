; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_StartInquiry.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_StartInquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_10__, %struct.TYPE_13__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64, i8*, i32, %struct.TYPE_12__, %struct.TYPE_11__, i32*, i32*, i32*, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32 (...)* }

@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@btm_cb = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [56 x i8] c"BTM_StartInquiry: mode: %d, dur: %d, rsps: %d, flt: %d\0A\00", align 1
@BTM_BUSY = common dso_local global i64 0, align 8
@INQ_GENERAL = common dso_local global i8* null, align 8
@BTM_WRONG_MODE = common dso_local global i64 0, align 8
@BTM_BR_INQUIRY_MASK = common dso_local global i32 0, align 4
@BTM_GENERAL_INQUIRY = common dso_local global i32 0, align 4
@BTM_LIMITED_INQUIRY = common dso_local global i32 0, align 4
@BTM_BLE_INQUIRY_MASK = common dso_local global i32 0, align 4
@BTM_BLE_GENERAL_INQUIRY = common dso_local global i32 0, align 4
@BTM_BLE_LIMITED_INQUIRY = common dso_local global i32 0, align 4
@BTM_ILLEGAL_VALUE = common dso_local global i64 0, align 8
@BTM_INQ_ACTIVE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"BTM_StartInquiry: p_inq->inq_active = 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Err Starting LE Inquiry.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"BTM_StartInquiry: mode = %02x\0A\00", align 1
@BTM_INQUIRY_NONE = common dso_local global i32 0, align 4
@BTM_INQ_SET_FILT_STATE = common dso_local global i32 0, align 4
@BTM_INQ_CLR_FILT_STATE = common dso_local global i32 0, align 4
@BTM_INQ_INACTIVE_STATE = common dso_local global i32 0, align 4
@BTM_BLE_DUPLICATE_ENABLE = common dso_local global i32 0, align 4
@BTM_BLE_ONE = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_DISABLE = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_MODE_NONE = common dso_local global i32 0, align 4
@BTM_BLE_TWO = common dso_local global i64 0, align 8
@BTM_BR_ONE = common dso_local global i8* null, align 8
@BTM_BR_TWO = common dso_local global i8* null, align 8
@BTM_FINISH = common dso_local global i8* null, align 8
@BTM_INQUIRY_INACTIVE = common dso_local global i32 0, align 4
@BTM_NO_INTERLEAVING = common dso_local global i64 0, align 8
@INQ_LE_OBSERVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BTM_StartInquiry(%struct.TYPE_12__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* @BTM_CMD_STARTED, align 8
  store i64 %10, i64* %8, align 8
  store %struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 1), %struct.TYPE_13__** %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @BTM_TRACE_API(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 9
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %3
  %34 = load i64, i64* @BTM_BUSY, align 8
  store i64 %34, i64* %4, align 8
  br label %201

35:                                               ; preds = %28
  %36 = load i8*, i8** @INQ_GENERAL, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %35
  %41 = call i32 (...) @BTM_IsDeviceUp()
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @BTM_WRONG_MODE, align 8
  store i64 %44, i64* %4, align 8
  br label %201

45:                                               ; preds = %40
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BTM_BR_INQUIRY_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @BTM_GENERAL_INQUIRY, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %45
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BTM_BR_INQUIRY_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @BTM_LIMITED_INQUIRY, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %53
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BTM_BLE_INQUIRY_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @BTM_BLE_GENERAL_INQUIRY, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @BTM_BLE_INQUIRY_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @BTM_BLE_LIMITED_INQUIRY, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i64, i64* @BTM_ILLEGAL_VALUE, align 8
  store i64 %78, i64* %4, align 8
  br label %201

79:                                               ; preds = %69, %61, %53, %45
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = bitcast %struct.TYPE_12__* %81 to i8*
  %84 = bitcast %struct.TYPE_12__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 32, i1 false)
  %85 = load i32, i32* @BTM_INQ_ACTIVE_STATE, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 7
  store i32* %88, i32** %90, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 6
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @BTM_BLE_INQUIRY_MASK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %160

112:                                              ; preds = %79
  %113 = call %struct.TYPE_14__* (...) @controller_get_interface()
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32 (...)*, i32 (...)** %114, align 8
  %116 = call i32 (...) %115()
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %112
  %119 = load i32, i32* @BTM_BLE_INQUIRY_MASK, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %120
  store i32 %125, i32* %123, align 8
  %126 = load i64, i64* @BTM_ILLEGAL_VALUE, align 8
  store i64 %126, i64* %8, align 8
  br label %149

127:                                              ; preds = %112
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @BTM_BLE_INQUIRY_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @btm_ble_start_inquiry(i32 %132, i32 %135)
  store i64 %136, i64* %8, align 8
  %137 = load i64, i64* @BTM_CMD_STARTED, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %127
  %140 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* @BTM_BLE_INQUIRY_MASK, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, %142
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %139, %127
  br label %149

149:                                              ; preds = %148, %118
  %150 = load i32, i32* @BTM_BLE_INQUIRY_MASK, align 4
  %151 = xor i32 %150, -1
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %149, %79
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @BTM_BR_INQUIRY_MASK, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* @BTM_INQUIRY_NONE, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %160
  %169 = load i64, i64* %8, align 8
  store i64 %169, i64* %4, align 8
  br label %201

170:                                              ; preds = %160
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  switch i32 %173, label %184 [
    i32 130, label %174
    i32 128, label %178
    i32 129, label %178
  ]

174:                                              ; preds = %170
  %175 = load i32, i32* @BTM_INQ_SET_FILT_STATE, align 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 8
  br label %186

178:                                              ; preds = %170, %170
  %179 = load i32, i32* @BTM_INQ_CLR_FILT_STATE, align 4
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  store i32 130, i32* %183, align 4
  br label %186

184:                                              ; preds = %170
  %185 = load i64, i64* @BTM_ILLEGAL_VALUE, align 8
  store i64 %185, i64* %4, align 8
  br label %201

186:                                              ; preds = %178, %174
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 2
  %192 = call i64 @btm_set_inq_event_filter(i32 %189, i32* %191)
  store i64 %192, i64* %8, align 8
  %193 = load i64, i64* @BTM_CMD_STARTED, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %186
  %196 = load i32, i32* @BTM_INQ_INACTIVE_STATE, align 4
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %195, %186
  %200 = load i64, i64* %8, align 8
  store i64 %200, i64* %4, align 8
  br label %201

201:                                              ; preds = %199, %184, %168, %77, %43, %33
  %202 = load i64, i64* %4, align 8
  ret i64 %202
}

declare dso_local i32 @BTM_TRACE_API(i8*, ...) #1

declare dso_local i32 @BTM_IsDeviceUp(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32) #1

declare dso_local %struct.TYPE_14__* @controller_get_interface(...) #1

declare dso_local i64 @btm_ble_start_inquiry(i32, i32) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i64 @btm_set_inq_event_filter(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
