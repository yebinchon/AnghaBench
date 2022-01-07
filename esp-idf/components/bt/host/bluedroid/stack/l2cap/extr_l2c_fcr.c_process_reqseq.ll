; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_process_reqseq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_process_reqseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__*, i32, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (i32, i32)* }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i32 }

@L2CAP_FCR_S_FRAME_BIT = common dso_local global i32 0, align 4
@L2CAP_FCR_SUP_BITS = common dso_local global i32 0, align 4
@L2CAP_FCR_SUP_SREJ = common dso_local global i32 0, align 4
@L2CAP_FCR_SUP_SHIFT = common dso_local global i32 0, align 4
@L2CAP_FCR_P_BIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@L2CAP_FCR_REQ_SEQ_BITS = common dso_local global i32 0, align 4
@L2CAP_FCR_REQ_SEQ_BITS_SHIFT = common dso_local global i32 0, align 4
@L2CAP_FCR_SEQ_MODULO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"L2CAP eRTM Frame BAD Req_Seq - ctrl_word: 0x%04x  req_seq 0x%02x  last_rx_ack: 0x%02x  QCount: %u\00", align 1
@FALSE = common dso_local global i32 0, align 4
@L2CAP_FCR_SAR_BITS = common dso_local global i32 0, align 4
@L2CAP_FCR_UNSEG_SDU = common dso_local global i32 0, align 4
@L2CAP_FCR_END_SDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @process_reqseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_reqseq(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @L2CAP_FCR_S_FRAME_BIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @L2CAP_FCR_SUP_BITS, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @L2CAP_FCR_SUP_SREJ, align 4
  %28 = load i32, i32* @L2CAP_FCR_SUP_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @L2CAP_FCR_P_BIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @fixed_queue_is_empty(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = call i32 @l2c_fcr_start_timer(%struct.TYPE_15__* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %3, align 4
  br label %185

47:                                               ; preds = %31, %23, %2
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @L2CAP_FCR_REQ_SEQ_BITS, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @L2CAP_FCR_REQ_SEQ_BITS_SHIFT, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  %58 = load i32, i32* @L2CAP_FCR_SEQ_MODULO, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @fixed_queue_length(i32 %63)
  %65 = icmp sgt i32 %60, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %47
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @fixed_queue_length(i32 %74)
  %76 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68, i32 %71, i32 %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = call i32 @l2cu_disconnect_chnl(%struct.TYPE_15__* %77)
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %185

80:                                               ; preds = %47
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %174

86:                                               ; preds = %80
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  store i32 0, i32* %11, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @l2c_fcr_collect_ack_delay(%struct.TYPE_15__* %89, i32 %90)
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %120, %86
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %123

96:                                               ; preds = %92
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @fixed_queue_dequeue(i32 %99, i32 0)
  %101 = inttoptr i64 %100 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %101, %struct.TYPE_16__** %12, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @L2CAP_FCR_SAR_BITS, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @L2CAP_FCR_UNSEG_SDU, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %96
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @L2CAP_FCR_END_SDU, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110, %96
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %114, %110
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %119 = call i32 @osi_free(%struct.TYPE_16__* %118)
  br label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %92

123:                                              ; preds = %92
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %123
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %131 = call i32 @l2c_fcr_stop_timer(%struct.TYPE_15__* %130)
  br label %132

132:                                              ; preds = %129, %123
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = icmp ne %struct.TYPE_13__* %135, null
  br i1 %136, label %137, label %173

137:                                              ; preds = %132
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32 (i32, i32)*, i32 (i32, i32)** %142, align 8
  %144 = icmp ne i32 (i32, i32)* %143, null
  br i1 %144, label %145, label %173

145:                                              ; preds = %137
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %173

148:                                              ; preds = %145
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @fixed_queue_is_empty(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %148
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @fixed_queue_is_empty(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i32 65535, i32* %11, align 4
  br label %161

161:                                              ; preds = %160, %154, %148
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32 (i32, i32)*, i32 (i32, i32)** %166, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = call i32 %167(i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %161, %145, %137, %132
  br label %174

174:                                              ; preds = %173, %80
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @fixed_queue_is_empty(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %174
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %182 = call i32 @l2c_fcr_start_timer(%struct.TYPE_15__* %181)
  br label %183

183:                                              ; preds = %180, %174
  %184 = load i32, i32* @TRUE, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %183, %66, %45
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fixed_queue_is_empty(i32) #1

declare dso_local i32 @l2c_fcr_start_timer(%struct.TYPE_15__*) #1

declare dso_local i32 @fixed_queue_length(i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @l2cu_disconnect_chnl(%struct.TYPE_15__*) #1

declare dso_local i32 @l2c_fcr_collect_ack_delay(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @fixed_queue_dequeue(i32, i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_16__*) #1

declare dso_local i32 @l2c_fcr_stop_timer(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
