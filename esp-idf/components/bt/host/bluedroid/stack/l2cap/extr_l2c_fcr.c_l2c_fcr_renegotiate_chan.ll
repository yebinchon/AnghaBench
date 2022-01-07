; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_l2c_fcr_renegotiate_chan.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_l2c_fcr_renegotiate_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_18__, i32, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { %struct.TYPE_15__, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i64, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i8* }

@RECONFIG_FLAG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@L2CAP_CFG_UNACCEPTABLE_PARAMS = common dso_local global i64 0, align 8
@L2CAP_FCR_BASIC_MODE = common dso_local global i8* null, align 8
@L2CAP_CFG_FAILED_NO_REASON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"l2c_fcr_renegotiate_chan (Max retries exceeded)\00", align 1
@L2CAP_FCR_CHAN_OPT_ERTM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"l2c_fcr_renegotiate_chan(Trying ERTM)\00", align 1
@TRUE = common dso_local global i8* null, align 8
@L2CAP_FCR_CHAN_OPT_BASIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"l2c_fcr_renegotiate_chan(Trying Basic)\00", align 1
@L2CAP_MTU_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"L2CAP - adjust MTU: %u too large\00", align 1
@BTU_TTYPE_L2CAP_CHNL = common dso_local global i32 0, align 4
@L2CAP_CHNL_CFG_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"L2C CFG:  Channels incompatible (local %d, peer %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @l2c_fcr_renegotiate_chan(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = icmp ne %struct.TYPE_16__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = icmp ne %struct.TYPE_17__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RECONFIG_FLAG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25, %2
  %33 = load i8*, i8** @FALSE, align 8
  store i8* %33, i8** %3, align 8
  br label %200

34:                                               ; preds = %25
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @L2CAP_CFG_UNACCEPTABLE_PARAMS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %180

40:                                               ; preds = %34
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  br label %52

50:                                               ; preds = %40
  %51 = load i8*, i8** @L2CAP_FCR_BASIC_MODE, align 8
  br label %52

52:                                               ; preds = %50, %45
  %53 = phi i8* [ %49, %45 ], [ %51, %50 ]
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %6, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %179

62:                                               ; preds = %52
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i64, i64* @L2CAP_CFG_FAILED_NO_REASON, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %62
  %74 = load i8*, i8** @FALSE, align 8
  store i8* %74, i8** %7, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  switch i64 %79, label %118 [
    i64 128, label %80
    i64 129, label %99
  ]

80:                                               ; preds = %73
  %81 = load i64, i64* %6, align 8
  %82 = icmp eq i64 %81, 129
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @L2CAP_FCR_CHAN_OPT_ERTM, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  store i64 129, i64* %96, align 8
  %97 = load i8*, i8** @TRUE, align 8
  store i8* %97, i8** %7, align 8
  br label %117

98:                                               ; preds = %83, %80
  br label %99

99:                                               ; preds = %73, %98
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @L2CAP_FCR_CHAN_OPT_BASIC, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %99
  %108 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i8*, i8** @TRUE, align 8
  store i8* %109, i8** %7, align 8
  %110 = load i8*, i8** @L2CAP_FCR_BASIC_MODE, align 8
  %111 = ptrtoint i8* %110 to i64
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  store i64 %111, i64* %115, align 8
  br label %116

116:                                              ; preds = %107, %99
  br label %117

117:                                              ; preds = %116, %91
  br label %119

118:                                              ; preds = %73
  br label %119

119:                                              ; preds = %118, %117
  %120 = load i8*, i8** %7, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %178

122:                                              ; preds = %119
  %123 = load i8*, i8** @TRUE, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 3
  store i8* %123, i8** %126, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = load i8*, i8** @L2CAP_FCR_BASIC_MODE, align 8
  %134 = icmp eq i8* %132, %133
  br i1 %134, label %135, label %163

135:                                              ; preds = %122
  %136 = load i8*, i8** @FALSE, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  store i8* %136, i8** %139, align 8
  %140 = load i8*, i8** @FALSE, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  store i8* %140, i8** %143, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %135
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @L2CAP_MTU_SIZE, align 8
  %153 = icmp sgt i64 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %148
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %157)
  %159 = load i64, i64* @L2CAP_MTU_SIZE, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %154, %148, %135
  br label %163

163:                                              ; preds = %162, %122
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 2
  %167 = call i32 @l2cu_process_our_cfg_req(%struct.TYPE_16__* %164, %struct.TYPE_18__* %166)
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = call i32 @l2cu_send_peer_config_req(%struct.TYPE_16__* %168, %struct.TYPE_18__* %170)
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 3
  %174 = load i32, i32* @BTU_TTYPE_L2CAP_CHNL, align 4
  %175 = load i32, i32* @L2CAP_CHNL_CFG_TIMEOUT, align 4
  %176 = call i32 @btu_start_timer(i32* %173, i32 %174, i32 %175)
  %177 = load i8*, i8** @TRUE, align 8
  store i8* %177, i8** %3, align 8
  br label %200

178:                                              ; preds = %119
  br label %179

179:                                              ; preds = %178, %52
  br label %180

180:                                              ; preds = %179, %34
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %6, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %180
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %6, align 8
  %195 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %193, i64 %194)
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %197 = call i32 @l2cu_disconnect_chnl(%struct.TYPE_16__* %196)
  br label %198

198:                                              ; preds = %188, %180
  %199 = load i8*, i8** @FALSE, align 8
  store i8* %199, i8** %3, align 8
  br label %200

200:                                              ; preds = %198, %163, %32
  %201 = load i8*, i8** %3, align 8
  ret i8* %201
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, ...) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*) #1

declare dso_local i32 @l2cu_process_our_cfg_req(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @l2cu_send_peer_config_req(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @l2cu_disconnect_chnl(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
