; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_process_s_frame.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_process_s_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i64, i64, i8*, i8*, i32* }
%struct.TYPE_12__ = type { i64 }

@L2CAP_FCR_SUP_BITS = common dso_local global i64 0, align 8
@L2CAP_FCR_SUP_SHIFT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Incorrect S-frame Length (%d)\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"process_s_frame ctrl_word 0x%04x fcrb_remote_busy:%d\00", align 1
@L2CAP_FCR_P_BIT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@L2CAP_FCR_F_BIT = common dso_local global i64 0, align 8
@L2C_FCR_RETX_ALL_PKTS = common dso_local global i32 0, align 4
@L2CAP_FCR_REQ_SEQ_BITS = common dso_local global i64 0, align 8
@L2CAP_FCR_REQ_SEQ_BITS_SHIFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"process_s_frame hit_max_retries\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__*, i64)* @process_s_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_s_frame(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @L2CAP_FCR_SUP_BITS, align 8
  %23 = and i64 %21, %22
  %24 = load i64, i64* @L2CAP_FCR_SUP_SHIFT, align 8
  %25 = lshr i64 %23, %24
  store i64 %25, i64* %8, align 8
  %26 = load i8*, i8** @TRUE, align 8
  store i8* %26, i8** %10, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %31, %3
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %37, i8* %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @L2CAP_FCR_P_BIT, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %36
  %55 = load i8*, i8** @FALSE, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @TRUE, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %54, %36
  %62 = load i64, i64* %8, align 8
  switch i64 %62, label %107 [
    i64 129, label %63
    i64 131, label %82
    i64 130, label %89
    i64 128, label %95
  ]

63:                                               ; preds = %61
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** @FALSE, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @L2CAP_FCR_F_BIT, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %63
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74, %63
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = load i32, i32* @L2C_FCR_RETX_ALL_PKTS, align 4
  %80 = call i8* @retransmit_i_frames(%struct.TYPE_11__* %78, i32 %79)
  store i8* %80, i8** %10, align 8
  br label %81

81:                                               ; preds = %77, %74
  br label %107

82:                                               ; preds = %61
  %83 = load i8*, i8** @FALSE, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = load i32, i32* @L2C_FCR_RETX_ALL_PKTS, align 4
  %88 = call i8* @retransmit_i_frames(%struct.TYPE_11__* %86, i32 %87)
  store i8* %88, i8** %10, align 8
  br label %107

89:                                               ; preds = %61
  %90 = load i8*, i8** @TRUE, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = call i32 @l2c_fcr_stop_timer(%struct.TYPE_11__* %93)
  br label %107

95:                                               ; preds = %61
  %96 = load i8*, i8** @FALSE, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* @L2CAP_FCR_REQ_SEQ_BITS, align 8
  %102 = and i64 %100, %101
  %103 = load i64, i64* @L2CAP_FCR_REQ_SEQ_BITS_SHIFT, align 8
  %104 = lshr i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = call i8* @retransmit_i_frames(%struct.TYPE_11__* %99, i32 %105)
  store i8* %106, i8** %10, align 8
  br label %107

107:                                              ; preds = %61, %95, %89, %82, %81
  %108 = load i8*, i8** %10, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %143

110:                                              ; preds = %107
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %142

115:                                              ; preds = %110
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = load i64, i64* @L2CAP_FCR_F_BIT, align 8
  %123 = call i32 @l2c_fcr_send_S_frame(%struct.TYPE_11__* %121, i32 128, i64 %122)
  br label %138

124:                                              ; preds = %115
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = load i64, i64* @L2CAP_FCR_F_BIT, align 8
  %132 = call i32 @l2c_fcr_send_S_frame(%struct.TYPE_11__* %130, i32 130, i64 %131)
  br label %137

133:                                              ; preds = %124
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %135 = load i64, i64* @L2CAP_FCR_F_BIT, align 8
  %136 = call i32 @l2c_fcr_send_S_frame(%struct.TYPE_11__* %134, i32 129, i64 %135)
  br label %137

137:                                              ; preds = %133, %129
  br label %138

138:                                              ; preds = %137, %120
  %139 = load i8*, i8** @FALSE, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %138, %110
  br label %145

143:                                              ; preds = %107
  %144 = call i32 (i8*, ...) @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %142
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %147 = call i32 @osi_free(%struct.TYPE_12__* %146)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i64) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, ...) #1

declare dso_local i8* @retransmit_i_frames(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @l2c_fcr_stop_timer(%struct.TYPE_11__*) #1

declare dso_local i32 @l2c_fcr_send_S_frame(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @osi_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
