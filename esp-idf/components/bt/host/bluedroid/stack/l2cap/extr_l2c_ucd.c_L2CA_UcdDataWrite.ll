; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_L2CA_UcdDataWrite.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ucd.c_L2CA_UcdDataWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [48 x i8] c"L2CA_UcdDataWrite()  PSM: 0x%04x  BDA: %08x%04x\00", align 1
@L2C_UCD_STATE_UNUSED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"L2CAP - no RCB for L2CA_UcdDataWrite, PSM: 0x%04x\00", align 1
@L2CAP_DW_FAILED = common dso_local global i32 0, align 4
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@L2CAP_CONNECTIONLESS_CID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@L2CAP_UCD_OVERHEAD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [75 x i8] c"L2CAP - Handle: 0x%04x  UCD bigger than peer's UCD mtu size cannot be sent\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"L2CAP - Handle: 0x%04x UCD cannot be sent, already congested count: %u  buff_quota: %u\00", align 1
@L2CEVT_L2CA_DATA_WRITE = common dso_local global i32 0, align 4
@L2CAP_DW_CONGESTED = common dso_local global i32 0, align 4
@L2CAP_DW_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @L2CA_UcdDataWrite(i32 %0, i32* %1, %struct.TYPE_18__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 24
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 16
  %23 = add nsw i32 %18, %22
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 8
  %28 = add nsw i32 %23, %27
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 5
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %32, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.TYPE_15__* @l2cu_find_rcb_by_psm(i32 %42)
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %12, align 8
  %44 = icmp eq %struct.TYPE_15__* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @L2C_UCD_STATE_UNUSED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %45, %4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = call i32 @osi_free(%struct.TYPE_18__* %55)
  %57 = load i32, i32* @L2CAP_DW_FAILED, align 4
  store i32 %57, i32* %5, align 4
  br label %174

58:                                               ; preds = %45
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %61 = call %struct.TYPE_16__* @l2cu_find_lcb_by_bd_addr(i32* %59, i32 %60)
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %10, align 8
  %62 = icmp eq %struct.TYPE_16__* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %65 = load i32, i32* @L2CAP_CONNECTIONLESS_CID, align 4
  %66 = call %struct.TYPE_17__* @l2cu_find_ccb_by_cid(%struct.TYPE_16__* %64, i32 %65)
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %11, align 8
  %67 = icmp eq %struct.TYPE_17__* %66, null
  br i1 %67, label %68, label %92

68:                                               ; preds = %63, %58
  %69 = load i32*, i32** %7, align 8
  %70 = call i64 @l2c_ucd_connect(i32* %69)
  %71 = load i64, i64* @FALSE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %75 = call i32 @osi_free(%struct.TYPE_18__* %74)
  %76 = load i32, i32* @L2CAP_DW_FAILED, align 4
  store i32 %76, i32* %5, align 4
  br label %174

77:                                               ; preds = %68
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %80 = call %struct.TYPE_16__* @l2cu_find_lcb_by_bd_addr(i32* %78, i32 %79)
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %10, align 8
  %81 = icmp eq %struct.TYPE_16__* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %84 = load i32, i32* @L2CAP_CONNECTIONLESS_CID, align 4
  %85 = call %struct.TYPE_17__* @l2cu_find_ccb_by_cid(%struct.TYPE_16__* %83, i32 %84)
  store %struct.TYPE_17__* %85, %struct.TYPE_17__** %11, align 8
  %86 = icmp eq %struct.TYPE_17__* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %82, %77
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %89 = call i32 @osi_free(%struct.TYPE_18__* %88)
  %90 = load i32, i32* @L2CAP_DW_FAILED, align 4
  store i32 %90, i32* %5, align 4
  br label %174

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %63
  %93 = load i64, i64* @L2CAP_UCD_OVERHEAD, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load i64, i64* @L2CAP_UCD_OVERHEAD, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i64 1
  %105 = bitcast %struct.TYPE_18__* %104 to i32*
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32* %109, i32** %13, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @UINT16_TO_STREAM(i32* %110, i32 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %92
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %120, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %117
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %131 = call i32 @osi_free(%struct.TYPE_18__* %130)
  %132 = load i32, i32* @L2CAP_DW_FAILED, align 4
  store i32 %132, i32* %5, align 4
  br label %174

133:                                              ; preds = %117, %92
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %133
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @fixed_queue_length(i32 %144)
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @fixed_queue_length(i32 %148)
  %150 = add nsw i64 %145, %149
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i32 %141, i64 %150, i32 %153)
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %156 = call i32 @osi_free(%struct.TYPE_18__* %155)
  %157 = load i32, i32* @L2CAP_DW_FAILED, align 4
  store i32 %157, i32* %5, align 4
  br label %174

158:                                              ; preds = %133
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %163 = load i32, i32* @L2CEVT_L2CA_DATA_WRITE, align 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %165 = call i32 @l2c_csm_execute(%struct.TYPE_17__* %162, i32 %163, %struct.TYPE_18__* %164)
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %158
  %171 = load i32, i32* @L2CAP_DW_CONGESTED, align 4
  store i32 %171, i32* %5, align 4
  br label %174

172:                                              ; preds = %158
  %173 = load i32, i32* @L2CAP_DW_SUCCESS, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %172, %170, %138, %125, %87, %73, %52
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @l2cu_find_rcb_by_psm(i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_16__* @l2cu_find_lcb_by_bd_addr(i32*, i32) #1

declare dso_local %struct.TYPE_17__* @l2cu_find_ccb_by_cid(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @l2c_ucd_connect(i32*) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, i32, i64, i32) #1

declare dso_local i64 @fixed_queue_length(i32) #1

declare dso_local i32 @l2c_csm_execute(%struct.TYPE_17__*, i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
