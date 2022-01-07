; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_process_notification.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_cl.c_gatt_process_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32, i64 }
%struct.TYPE_10__ = type { i32 (i64, i64, i32, i32*)* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i64, i32, i32 }

@GATT_HANDLE_VALUE_NOTIF = common dso_local global i64 0, align 8
@GATTC_OPTYPE_NOTIFICATION = common dso_local global i64 0, align 8
@GATTC_OPTYPE_INDICATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"gatt_process_notification \00", align 1
@GATT_NOTIFICATION_MIN_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"illegal notification PDU length, discard\00", align 1
@GATT_HANDLE_VALUE_IND = common dso_local global i64 0, align 8
@GATT_HANDLE_VALUE_CONF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"gatt_process_notification rcv Ind. but ind_count=%d (will reset ind_count)\00", align 1
@gatt_cb = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GATT_MAX_APPS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_process_notification(%struct.TYPE_12__* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %16 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  %17 = load i64*, i64** %8, align 8
  store i64* %17, i64** %13, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @GATT_HANDLE_VALUE_NOTIF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @GATTC_OPTYPE_NOTIFICATION, align 8
  br label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @GATTC_OPTYPE_INDICATION, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  store i64 %26, i64* %15, align 8
  %27 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @GATT_NOTIFICATION_MIN_LEN, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 (i8*, ...) @GATT_TRACE_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %168

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64*, i64** %13, align 8
  %37 = call i32 @STREAM_TO_UINT16(i32 %35, i64* %36)
  %38 = load i64, i64* %7, align 8
  %39 = sub nsw i64 %38, 2
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i64*, i64** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @memcpy(i32 %42, i64* %43, i64 %45)
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @GATT_HANDLE_IS_VALID(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %33
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @GATT_HANDLE_VALUE_IND, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = load i32, i32* @GATT_HANDLE_VALUE_CONF, align 4
  %58 = call i32 @attp_send_cl_msg(%struct.TYPE_12__* %56, i32 0, i32 %57, i32* null)
  br label %59

59:                                               ; preds = %55, %51
  br label %168

60:                                               ; preds = %33
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* @GATTC_OPTYPE_INDICATION, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i8*, ...) @GATT_TRACE_ERROR(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %60
  store i64 0, i64* %14, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gatt_cb, i32 0, i32 0), align 8
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %10, align 8
  br label %79

79:                                               ; preds = %104, %77
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* @GATT_MAX_APPS, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %79
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32 (i64, i64, i32, i32*)*, i32 (i64, i64, i32, i32*)** %91, align 8
  %93 = icmp ne i32 (i64, i64, i32, i32*)* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* @GATTC_OPTYPE_INDICATION, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  br label %103

103:                                              ; preds = %98, %94, %88, %83
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %14, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %14, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 1
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %10, align 8
  br label %79

109:                                              ; preds = %79
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* @GATTC_OPTYPE_INDICATION, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %120 = call i32 @gatt_start_ind_ack_timer(%struct.TYPE_12__* %119)
  br label %125

121:                                              ; preds = %113
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = load i32, i32* @GATT_HANDLE_VALUE_CONF, align 4
  %124 = call i32 @attp_send_cl_msg(%struct.TYPE_12__* %122, i32 0, i32 %123, i32* null)
  br label %125

125:                                              ; preds = %121, %118
  br label %126

126:                                              ; preds = %125, %109
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = call i32 @gatt_get_link_encrypt_status(%struct.TYPE_12__* %127)
  store i32 %128, i32* %12, align 4
  store i64 0, i64* %14, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gatt_cb, i32 0, i32 0), align 8
  store %struct.TYPE_13__* %129, %struct.TYPE_13__** %10, align 8
  br label %130

130:                                              ; preds = %163, %126
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* @GATT_MAX_APPS, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %168

134:                                              ; preds = %130
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %134
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32 (i64, i64, i32, i32*)*, i32 (i64, i64, i32, i32*)** %142, align 8
  %144 = icmp ne i32 (i64, i64, i32, i32*)* %143, null
  br i1 %144, label %145, label %162

145:                                              ; preds = %139
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @GATT_CREATE_CONN_ID(i32 %148, i32 %151)
  store i64 %152, i64* %11, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32 (i64, i64, i32, i32*)*, i32 (i64, i64, i32, i32*)** %155, align 8
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* %15, align 8
  %159 = load i32, i32* %12, align 4
  %160 = bitcast %struct.TYPE_11__* %9 to i32*
  %161 = call i32 %156(i64 %157, i64 %158, i32 %159, i32* %160)
  br label %162

162:                                              ; preds = %145, %139, %134
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %14, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %14, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 1
  store %struct.TYPE_13__* %167, %struct.TYPE_13__** %10, align 8
  br label %130

168:                                              ; preds = %31, %59, %130
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #2

declare dso_local i32 @GATT_TRACE_ERROR(i8*, ...) #2

declare dso_local i32 @STREAM_TO_UINT16(i32, i64*) #2

declare dso_local i32 @memcpy(i32, i64*, i64) #2

declare dso_local i32 @GATT_HANDLE_IS_VALID(i32) #2

declare dso_local i32 @attp_send_cl_msg(%struct.TYPE_12__*, i32, i32, i32*) #2

declare dso_local i32 @gatt_start_ind_ack_timer(%struct.TYPE_12__*) #2

declare dso_local i32 @gatt_get_link_encrypt_status(%struct.TYPE_12__*) #2

declare dso_local i64 @GATT_CREATE_CONN_ID(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
