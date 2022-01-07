; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_act.c_bta_ag_rfc_acp_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_act.c_bta_ag_rfc_acp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@BTA_AG_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"bta_ag_rfc_acp_open: serv_handle0 = %d serv_handle1 = %d\00", align 1
@PORT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"bta_ag_rfc_acp_open error PORT_CheckConnection returned status %d\00", align 1
@bta_ag_cb = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@BTA_AG_NUM_SCB = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@BTA_AG_NUM_IDX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"bta_ag_rfc_acp_open: i = %d serv_handle = %d port_handle = %d\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"bta_ag_rfc_acp_open: conn_service = %d conn_handle = %d\00", align 1
@bta_ag_svc_mask = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_rfc_acp_open(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %11 = load i32, i32* @BTA_AG_ACP, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 10
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, i32, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23)
  %25 = load i32, i32* @PORT_SUCCESS, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @PORT_CheckConnection(i32 %29, i32 %30, i32* %5)
  store i32 %31, i32* %10, align 4
  %32 = icmp ne i32 %25, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i8*, i32, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %2
  store i32 0, i32* %6, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bta_ag_cb, i32 0, i32 0), align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i64 0
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %7, align 8
  br label %39

39:                                               ; preds = %95, %36
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BTA_AG_NUM_SCB, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %100

43:                                               ; preds = %39
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %94

48:                                               ; preds = %43
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %94

53:                                               ; preds = %48
  %54 = load i64, i64* @FALSE, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 8
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 7
  %59 = call i32 @bta_sys_stop_timer(i32* %58)
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @bdcmp(i32 %60, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %93

67:                                               ; preds = %53
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = call %struct.TYPE_16__* @bta_ag_get_other_idle_scb(%struct.TYPE_16__* %68)
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %8, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %71 = icmp ne %struct.TYPE_16__* %70, null
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bdcpy(i32 %75, i32 %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = call i32 @bta_ag_resume_open(%struct.TYPE_16__* %90)
  br label %92

92:                                               ; preds = %72, %67
  br label %93

93:                                               ; preds = %92, %66
  br label %100

94:                                               ; preds = %48, %43
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 1
  store %struct.TYPE_16__* %99, %struct.TYPE_16__** %7, align 8
  br label %39

100:                                              ; preds = %93, %39
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @bdcpy(i32 %103, i32 %104)
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %147, %100
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @BTA_AG_NUM_IDX, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %150

110:                                              ; preds = %106
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, i32, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %118, i32 %122)
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %130, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %110
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  br label %150

146:                                              ; preds = %110
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %106

150:                                              ; preds = %136, %106
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i8*, i32, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %153, i32 %156)
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** @bta_ag_svc_mask, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = xor i32 %168, -1
  %170 = and i32 %161, %169
  %171 = call i32 @bta_ag_close_servers(%struct.TYPE_16__* %158, i32 %170)
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %173 = load i32*, i32** @bta_ag_svc_mask, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @bta_ag_do_disc(%struct.TYPE_16__* %172, i32 %179)
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %183 = call i32 @bta_ag_rfc_open(%struct.TYPE_16__* %181, %struct.TYPE_17__* %182)
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @PORT_CheckConnection(i32, i32, i32*) #1

declare dso_local i32 @bta_sys_stop_timer(i32*) #1

declare dso_local i64 @bdcmp(i32, i32) #1

declare dso_local %struct.TYPE_16__* @bta_ag_get_other_idle_scb(%struct.TYPE_16__*) #1

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i32 @bta_ag_resume_open(%struct.TYPE_16__*) #1

declare dso_local i32 @bta_ag_close_servers(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @bta_ag_do_disc(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @bta_ag_rfc_open(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
