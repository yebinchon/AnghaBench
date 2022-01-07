; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_op_cmpl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_op_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"bta_gattc_op_cmpl op = %d\00", align 1
@GATTC_OPTYPE_INDICATION = common dso_local global i64 0, align 8
@GATTC_OPTYPE_NOTIFICATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"unexpected operation, ignored\00", align 1
@GATTC_OPTYPE_READ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"No pending command\00", align 1
@bta_gattc_opcode_to_int_evt = common dso_local global i64* null, align 8
@BTA_GATTC_API_READ_MULTI_EVT = common dso_local global i64 0, align 8
@BTA_GATTC_API_READ_EVT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"expect op:(%s :0x%04x), receive unexpected operation (%s).\00", align 1
@bta_gattc_op_code_name = common dso_local global i64* null, align 8
@BTA_GATTC_DISC_WAITING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [66 x i8] c"Discard all responses when service change indication is received.\00", align 1
@GATT_ERROR = common dso_local global i32 0, align 4
@GATTC_OPTYPE_WRITE = common dso_local global i64 0, align 8
@GATTC_OPTYPE_EXE_WRITE = common dso_local global i64 0, align 8
@GATTC_OPTYPE_CONFIG = common dso_local global i64 0, align 8
@BTA_GATTC_REQ_WAITING = common dso_local global i64 0, align 8
@BTA_GATTC_INT_DISCOVER_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_gattc_op_cmpl(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @GATTC_OPTYPE_INDICATION, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @GATTC_OPTYPE_NOTIFICATION, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %2
  %22 = call i32 (i8*, ...) @APPL_TRACE_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %162

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @GATTC_OPTYPE_READ, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %161

27:                                               ; preds = %23
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = icmp eq %struct.TYPE_18__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @APPL_TRACE_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %162

34:                                               ; preds = %27
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** @bta_gattc_opcode_to_int_evt, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @GATTC_OPTYPE_READ, align 8
  %44 = sub i64 %42, %43
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %40, %46
  br i1 %47, label %48, label %89

48:                                               ; preds = %34
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BTA_GATTC_API_READ_MULTI_EVT, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %48
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BTA_GATTC_API_READ_EVT, align 8
  %65 = sub i64 %63, %64
  %66 = load i64, i64* @GATTC_OPTYPE_READ, align 8
  %67 = add i64 %65, %66
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @GATTC_OPTYPE_INDICATION, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  store i64 0, i64* %6, align 8
  br label %72

72:                                               ; preds = %71, %57
  %73 = load i64*, i64** @bta_gattc_op_code_name, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** @bta_gattc_op_code_name, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i8*, ...) @APPL_TRACE_ERROR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %76, i64 %82, i64 %86)
  br label %162

88:                                               ; preds = %48
  br label %89

89:                                               ; preds = %88, %34
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BTA_GATTC_DISC_WAITING, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @GATT_ERROR, align 4
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %102, %95, %89
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* @GATTC_OPTYPE_READ, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = call i32 @bta_gattc_read_cmpl(%struct.TYPE_21__* %113, %struct.TYPE_22__* %115)
  br label %147

117:                                              ; preds = %108
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* @GATTC_OPTYPE_WRITE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = call i32 @bta_gattc_write_cmpl(%struct.TYPE_21__* %122, %struct.TYPE_22__* %124)
  br label %146

126:                                              ; preds = %117
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* @GATTC_OPTYPE_EXE_WRITE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = call i32 @bta_gattc_exec_cmpl(%struct.TYPE_21__* %131, %struct.TYPE_22__* %133)
  br label %145

135:                                              ; preds = %126
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* @GATTC_OPTYPE_CONFIG, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = call i32 @bta_gattc_cfg_mtu_cmpl(%struct.TYPE_21__* %140, %struct.TYPE_22__* %142)
  br label %144

144:                                              ; preds = %139, %135
  br label %145

145:                                              ; preds = %144, %130
  br label %146

146:                                              ; preds = %145, %121
  br label %147

147:                                              ; preds = %146, %112
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @BTA_GATTC_DISC_WAITING, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load i64, i64* @BTA_GATTC_REQ_WAITING, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %158 = load i32, i32* @BTA_GATTC_INT_DISCOVER_EVT, align 4
  %159 = call i32 @bta_gattc_sm_execute(%struct.TYPE_21__* %157, i32 %158, i32* null)
  br label %160

160:                                              ; preds = %153, %147
  br label %161

161:                                              ; preds = %160, %23
  br label %162

162:                                              ; preds = %32, %72, %161, %21
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*, ...) #1

declare dso_local i32 @bta_gattc_read_cmpl(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @bta_gattc_write_cmpl(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @bta_gattc_exec_cmpl(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @bta_gattc_cfg_mtu_cmpl(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @bta_gattc_sm_execute(%struct.TYPE_21__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
