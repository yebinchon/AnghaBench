; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_l2c_ucd_check_pending_info_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_l2c_ucd_check_pending_info_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (i32, i32, i32)* }

@l2cb = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"L2CAP - NULL p_ccb in l2c_ucd_check_pending_info_req\00", align 1
@MAX_L2CAP_CLIENTS = common dso_local global i64 0, align 8
@L2C_UCD_STATE_W4_RECEPTION = common dso_local global i32 0, align 4
@L2CAP_EXTENDED_FEATURES_INFO_TYPE = common dso_local global i32 0, align 4
@L2CAP_EXTFEA_UCD_RECEPTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"L2CAP - UCD is not supported by peer, l2c_ucd_check_pending_info_req\00", align 1
@L2CAP_UCD_INFO_TYPE_RECEPTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@L2C_UCD_STATE_W4_MTU = common dso_local global i32 0, align 4
@L2CAP_CONNLESS_MTU_INFO_TYPE = common dso_local global i32 0, align 4
@L2CAP_UCD_INFO_TYPE_MTU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @l2c_ucd_check_pending_info_req(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @l2cb, i32 0, i32 0), align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i64 0
  store %struct.TYPE_16__* %8, %struct.TYPE_16__** %4, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = icmp eq %struct.TYPE_17__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %2, align 8
  br label %163

15:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %156, %15
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @MAX_L2CAP_CLIENTS, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %161

20:                                               ; preds = %16
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %155

25:                                               ; preds = %20
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @L2C_UCD_STATE_W4_RECEPTION, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %99

33:                                               ; preds = %25
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @L2CAP_EXTENDED_FEATURES_INFO_TYPE, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %33
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @L2CAP_EXTFEA_UCD_RECEPTION, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %43
  %53 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = call i32 @l2c_ucd_delete_sec_pending_q(%struct.TYPE_18__* %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = call i32 @l2cu_release_ccb(%struct.TYPE_17__* %58)
  br label %60

60:                                               ; preds = %52, %43
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @L2CAP_UCD_INFO_TYPE_RECEPTION, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @L2CAP_EXTFEA_UCD_RECEPTION, align 4
  %80 = and i32 %78, %79
  %81 = call i32 %67(i32 %72, i32 %73, i32 %80)
  br label %98

82:                                               ; preds = %33
  %83 = load i64, i64* @TRUE, align 8
  store i64 %83, i64* %6, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @FALSE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = load i32, i32* @L2CAP_EXTENDED_FEATURES_INFO_TYPE, align 4
  %96 = call i32 @l2cu_send_peer_info_req(%struct.TYPE_18__* %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %82
  br label %98

98:                                               ; preds = %97, %60
  br label %99

99:                                               ; preds = %98, %25
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @L2C_UCD_STATE_W4_MTU, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %154

107:                                              ; preds = %99
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @L2CAP_CONNLESS_MTU_INFO_TYPE, align 4
  %114 = shl i32 1, %113
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %107
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %123, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @L2CAP_UCD_INFO_TYPE_MTU, align 4
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 %124(i32 %129, i32 %130, i32 %135)
  br label %153

137:                                              ; preds = %107
  %138 = load i64, i64* @TRUE, align 8
  store i64 %138, i64* %6, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @FALSE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %137
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = load i32, i32* @L2CAP_CONNLESS_MTU_INFO_TYPE, align 4
  %151 = call i32 @l2cu_send_peer_info_req(%struct.TYPE_18__* %149, i32 %150)
  br label %152

152:                                              ; preds = %146, %137
  br label %153

153:                                              ; preds = %152, %117
  br label %154

154:                                              ; preds = %153, %99
  br label %155

155:                                              ; preds = %154, %20
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %5, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %5, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 1
  store %struct.TYPE_16__* %160, %struct.TYPE_16__** %4, align 8
  br label %16

161:                                              ; preds = %16
  %162 = load i64, i64* %6, align 8
  store i64 %162, i64* %2, align 8
  br label %163

163:                                              ; preds = %161, %12
  %164 = load i64, i64* %2, align 8
  ret i64 %164
}

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i32 @l2c_ucd_delete_sec_pending_q(%struct.TYPE_18__*) #1

declare dso_local i32 @l2cu_release_ccb(%struct.TYPE_17__*) #1

declare dso_local i32 @l2cu_send_peer_info_req(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
