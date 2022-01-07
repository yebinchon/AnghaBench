; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_config_ind.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_config_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i64, i8*, %struct.TYPE_13__, i8*, i8* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"SDP - Rcvd L2CAP cfg ind, unknown CID: 0x%x\0A\00", align 1
@L2CAP_DEFAULT_MTU = common dso_local global i64 0, align 8
@SDP_MTU_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@L2CAP_CFG_OK = common dso_local global i64 0, align 8
@L2CAP_FCR_BASIC_MODE = common dso_local global i64 0, align 8
@sdp_cb = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@L2CAP_CFG_UNACCEPTABLE_PARAMS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"sdp_config_ind(CONFIG) -> Please try again with SMALLER TX WINDOW\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"sdp_config_ind(CONFIG) -> Please try again with BASIC mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"SDP - Rcvd cfg ind, Unacceptable Parameters sent cfg cfm, CID: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"SDP - Rcvd cfg ind, sent cfg cfm, CID: 0x%x\0A\00", align 1
@SDP_FLAGS_HIS_CFG_DONE = common dso_local global i32 0, align 4
@SDP_FLAGS_MY_CFG_DONE = common dso_local global i32 0, align 4
@SDP_STATE_CONNECTED = common dso_local global i32 0, align 4
@SDP_FLAGS_IS_ORIG = common dso_local global i32 0, align 4
@BTU_TTYPE_SDP = common dso_local global i32 0, align 4
@SDP_INACT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_14__*)* @sdp_config_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_config_ind(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.TYPE_15__* @sdpu_find_ccb_by_cid(i32 %6)
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %5, align 8
  %8 = icmp eq %struct.TYPE_15__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @SDP_TRACE_WARNING(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %157

12:                                               ; preds = %2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 4
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = load i64, i64* @L2CAP_DEFAULT_MTU, align 8
  %19 = load i64, i64* @SDP_MTU_SIZE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @SDP_MTU_SIZE, align 8
  br label %25

23:                                               ; preds = %17
  %24 = load i64, i64* @L2CAP_DEFAULT_MTU, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %46

29:                                               ; preds = %12
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SDP_MTU_SIZE, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @SDP_MTU_SIZE, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %45

39:                                               ; preds = %29
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %35
  br label %46

46:                                               ; preds = %45, %25
  %47 = load i8*, i8** @FALSE, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @FALSE, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load i64, i64* @L2CAP_CFG_OK, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %120

60:                                               ; preds = %46
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %60
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sdp_cb, i32 0, i32 0, i32 0, i32 0), align 8
  %69 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sdp_cb, i32 0, i32 0, i32 0, i32 1), align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sdp_cb, i32 0, i32 0, i32 0, i32 1), align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  store i64 %79, i64* %82, align 8
  %83 = load i8*, i8** @L2CAP_CFG_UNACCEPTABLE_PARAMS, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = call i32 @SDP_TRACE_DEBUG(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %78, %71, %67
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sdp_cb, i32 0, i32 0, i32 0, i32 0), align 8
  %90 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  %97 = load i8*, i8** @L2CAP_CFG_UNACCEPTABLE_PARAMS, align 8
  %98 = ptrtoint i8* %97 to i64
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = call i32 @SDP_TRACE_DEBUG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %92, %88
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @L2CAP_CFG_OK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @SDP_TRACE_WARNING(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %113 = call i32 @L2CA_ConfigRsp(i32 %111, %struct.TYPE_14__* %112)
  br label %157

114:                                              ; preds = %102
  br label %119

115:                                              ; preds = %60
  %116 = load i8*, i8** @FALSE, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %114
  br label %120

120:                                              ; preds = %119, %46
  %121 = load i32, i32* %3, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %123 = call i32 @L2CA_ConfigRsp(i32 %121, %struct.TYPE_14__* %122)
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @SDP_TRACE_EVENT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @SDP_FLAGS_HIS_CFG_DONE, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SDP_FLAGS_MY_CFG_DONE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %120
  %138 = load i32, i32* @SDP_STATE_CONNECTED, align 4
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @SDP_FLAGS_IS_ORIG, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %149 = call i32 @sdp_disc_connected(%struct.TYPE_15__* %148)
  br label %156

150:                                              ; preds = %137
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 2
  %153 = load i32, i32* @BTU_TTYPE_SDP, align 4
  %154 = load i32, i32* @SDP_INACT_TIMEOUT, align 4
  %155 = call i32 @btu_start_timer(i32* %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %150, %147
  br label %157

157:                                              ; preds = %9, %108, %156, %120
  ret void
}

declare dso_local %struct.TYPE_15__* @sdpu_find_ccb_by_cid(i32) #1

declare dso_local i32 @SDP_TRACE_WARNING(i8*, i32) #1

declare dso_local i32 @SDP_TRACE_DEBUG(i8*) #1

declare dso_local i32 @L2CA_ConfigRsp(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @SDP_TRACE_EVENT(i8*, i32) #1

declare dso_local i32 @sdp_disc_connected(%struct.TYPE_15__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
