; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_process_i_frame.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_process_i_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i64, %struct.TYPE_25__, i32, i64, %struct.TYPE_24__, %struct.TYPE_22__ }
%struct.TYPE_25__ = type { i32, i32, i32, i64, i32, %struct.TYPE_21__, i8*, i8*, i8*, i32*, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_27__ = type { i32, i64, i32 }

@L2CAP_FCR_F_BIT = common dso_local global i32 0, align 4
@L2C_FCR_RETX_ALL_PKTS = common dso_local global i32 0, align 4
@L2CAP_FCR_TX_SEQ_BITS = common dso_local global i32 0, align 4
@L2CAP_FCR_TX_SEQ_BITS_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Dropping bad I-Frame since we flowed off, tx_seq:%u\00", align 1
@L2CAP_FCR_SUP_RNR = common dso_local global i32 0, align 4
@L2CAP_FCR_SEQ_MODULO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"process_i_frame() Dropping Duplicate Frame tx_seq:%u  ExpectedTxSeq %u\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"process_i_frame() CID: 0x%04x  Lost: %u  tx_seq:%u  ExpTxSeq %u  Rej: %u  SRej: %u\00", align 1
@L2CAP_FCR_RX_BUF_SIZE = common dso_local global i64 0, align 8
@L2CAP_FCR_OVERHEAD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"process_i_frame() Lost: %u  tx_seq:%u  ExpTxSeq %u  Rej: %u  SRej1\00", align 1
@FIXED_QUEUE_MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [99 x i8] c"process_i_frame() CID: 0x%04x  frame dropped in Srej Sent next_srej:%u  hold_q.count:%u  win_sz:%u\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [82 x i8] c"process_i_frame() CID: 0x%04x  Lost: %u  tx_seq:%u  ExpTxSeq %u  Rej: 1  SRej: %u\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"process_i_frame() CID: 0x%04x  tx_seq:%u  ExpTxSeq %u  Rej: %u\00", align 1
@L2CAP_FCR_SUP_REJ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [70 x i8] c"process_i_frame() CID: 0x%04x  sending SREJ tx_seq:%d hold_q.count:%u\00", align 1
@L2CAP_FCR_SUP_SREJ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [49 x i8] c"process_i_frame() CID: 0x%04x  reassembly failed\00", align 1
@CST_OPEN = common dso_local global i64 0, align 8
@BTU_TTYPE_L2CAP_FCR_ACK = common dso_local global i32 0, align 4
@L2CAP_FCR_ACK_TOUT = common dso_local global i32 0, align 4
@QUICK_TIMER_TICKS_PER_SEC = common dso_local global i32 0, align 4
@L2CAP_FCR_SUP_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_27__*, i32, i8*)* @process_i_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_i_frame(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %16 = icmp ne %struct.TYPE_26__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %20 = icmp ne %struct.TYPE_27__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 2
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @L2CAP_FCR_F_BIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %4
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %31 = load i32, i32* @L2C_FCR_RETX_ALL_PKTS, align 4
  %32 = call i32 @retransmit_i_frames(%struct.TYPE_26__* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %36 = call i32 @osi_free(%struct.TYPE_27__* %35)
  br label %440

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %4
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 10
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 9
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %48
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @L2CAP_FCR_TX_SEQ_BITS, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @L2CAP_FCR_TX_SEQ_BITS_SHIFT, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %38
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = call i32 (i8*, i32, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %77 = load i32, i32* @L2CAP_FCR_SUP_RNR, align 4
  %78 = call i32 @l2c_fcr_send_S_frame(%struct.TYPE_26__* %76, i32 %77, i32 0)
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %80 = call i32 @osi_free(%struct.TYPE_27__* %79)
  br label %440

81:                                               ; preds = %68, %38
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %87, label %325

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %88, %91
  %93 = load i32, i32* @L2CAP_FCR_SEQ_MODULO, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sge i32 %95, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %87
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i8*, i32, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %109 = call i32 @osi_free(%struct.TYPE_27__* %108)
  br label %324

110:                                              ; preds = %87
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 7
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 6
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i8*, i32, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %114, i32 %115, i32 %118, i8* %121, i8* %124)
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 6
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %242

130:                                              ; preds = %110
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @fixed_queue_try_peek_last(i32 %133)
  %135 = inttoptr i64 %134 to %struct.TYPE_27__*
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  %139 = load i32, i32* @L2CAP_FCR_SEQ_MODULO, align 4
  %140 = and i32 %138, %139
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %221

144:                                              ; preds = %130
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @fixed_queue_length(i32 %147)
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %148, %153
  br i1 %154, label %155, label %221

155:                                              ; preds = %144
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @L2CAP_FCR_RX_BUF_SIZE, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %202

162:                                              ; preds = %155
  %163 = load i64, i64* @L2CAP_FCR_OVERHEAD, align 8
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = sub nsw i64 %167, %163
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %165, align 8
  %170 = load i64, i64* @L2CAP_FCR_OVERHEAD, align 8
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, %170
  store i64 %174, i64* %172, align 8
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call %struct.TYPE_27__* @l2c_fcr_clone_buf(%struct.TYPE_27__* %175, i32 %178, i64 %181)
  store %struct.TYPE_27__* %182, %struct.TYPE_27__** %14, align 8
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %184 = icmp ne %struct.TYPE_27__* %183, null
  br i1 %184, label %185, label %189

185:                                              ; preds = %162
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %187 = call i32 @osi_free(%struct.TYPE_27__* %186)
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  store %struct.TYPE_27__* %188, %struct.TYPE_27__** %6, align 8
  br label %189

189:                                              ; preds = %185, %162
  %190 = load i64, i64* @L2CAP_FCR_OVERHEAD, align 8
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %190
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 8
  %197 = load i64, i64* @L2CAP_FCR_OVERHEAD, align 8
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = sub nsw i64 %200, %197
  store i64 %201, i64* %199, align 8
  br label %202

202:                                              ; preds = %189, %155
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 7
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %203, i32 %204, i32 %207, i8* %210)
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %219 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %220 = call i32 @fixed_queue_enqueue(i32 %217, %struct.TYPE_27__* %218, i32 %219)
  br label %241

221:                                              ; preds = %144, %130
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @fixed_queue_length(i32 %228)
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 (i8*, i32, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.4, i64 0, i64 0), i32 %224, i32 %225, i32 %229, i32 %234)
  %236 = load i8*, i8** @TRUE, align 8
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 8
  store i8* %236, i8** %238, align 8
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %240 = call i32 @osi_free(%struct.TYPE_27__* %239)
  br label %241

241:                                              ; preds = %221, %202
  br label %323

242:                                              ; preds = %110
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 7
  %245 = load i8*, i8** %244, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %262

247:                                              ; preds = %242
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* %10, align 4
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %256, i32 0, i32 6
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 (i8*, i32, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i64 0, i64 0), i32 %250, i32 %251, i32 %252, i32 %255, i8* %258)
  %260 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %261 = call i32 @osi_free(%struct.TYPE_27__* %260)
  br label %322

262:                                              ; preds = %242
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %10, align 4
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %270, i32 0, i32 7
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %265, i32 %266, i32 %269, i8* %272)
  %274 = load i32, i32* %11, align 4
  %275 = icmp sgt i32 %274, 1
  br i1 %275, label %276, label %285

276:                                              ; preds = %262
  %277 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %278 = call i32 @osi_free(%struct.TYPE_27__* %277)
  %279 = load i8*, i8** @TRUE, align 8
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 7
  store i8* %279, i8** %281, align 8
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %283 = load i32, i32* @L2CAP_FCR_SUP_REJ, align 4
  %284 = call i32 @l2c_fcr_send_S_frame(%struct.TYPE_26__* %282, i32 %283, i32 0)
  br label %317

285:                                              ; preds = %262
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = call i64 @fixed_queue_is_empty(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %301, label %291

291:                                              ; preds = %285
  %292 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* %10, align 4
  %296 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @fixed_queue_length(i32 %298)
  %300 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0), i32 %294, i32 %295, i32 %299)
  br label %301

301:                                              ; preds = %291, %285
  %302 = load i32, i32* %10, align 4
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 8
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %309 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %310 = call i32 @fixed_queue_enqueue(i32 %307, %struct.TYPE_27__* %308, i32 %309)
  %311 = load i8*, i8** @TRUE, align 8
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %312, i32 0, i32 6
  store i8* %311, i8** %313, align 8
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %315 = load i32, i32* @L2CAP_FCR_SUP_SREJ, align 4
  %316 = call i32 @l2c_fcr_send_S_frame(%struct.TYPE_26__* %314, i32 %315, i32 0)
  br label %317

317:                                              ; preds = %301, %276
  %318 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 5
  %321 = call i32 @btu_stop_quick_timer(%struct.TYPE_21__* %320)
  br label %322

322:                                              ; preds = %317, %247
  br label %323

323:                                              ; preds = %322, %241
  br label %324

324:                                              ; preds = %323, %102
  br label %440

325:                                              ; preds = %81
  %326 = load i8*, i8** @FALSE, align 8
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %327, i32 0, i32 6
  store i8* %326, i8** %328, align 8
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i32 0, i32 7
  store i8* %326, i8** %330, align 8
  %331 = load i32, i32* %10, align 4
  %332 = add nsw i32 %331, 1
  %333 = load i32, i32* @L2CAP_FCR_SEQ_MODULO, align 4
  %334 = and i32 %332, %333
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  %337 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %339 = load i32, i32* %7, align 4
  %340 = call i32 @do_sar_reassembly(%struct.TYPE_26__* %337, %struct.TYPE_27__* %338, i32 %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %349, label %342

342:                                              ; preds = %325
  %343 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = call i32 (i8*, i32, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %345)
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %348 = call i32 @l2cu_disconnect_chnl(%struct.TYPE_26__* %347)
  br label %440

349:                                              ; preds = %325
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = sub nsw i32 %352, %355
  %357 = load i32, i32* @L2CAP_FCR_SEQ_MODULO, align 4
  %358 = and i32 %356, %357
  store i32 %358, i32* %12, align 4
  %359 = load i32, i32* %12, align 4
  %360 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = icmp slt i32 %359, %363
  br i1 %364, label %365, label %372

365:                                              ; preds = %349
  %366 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %367 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %366, i32 0, i32 3
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %372, label %370

370:                                              ; preds = %365
  %371 = load i8*, i8** @TRUE, align 8
  store i8* %371, i8** %8, align 8
  br label %372

372:                                              ; preds = %370, %365, %349
  %373 = load i32, i32* %12, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %440

375:                                              ; preds = %372
  %376 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %376, i32 0, i32 4
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %440

380:                                              ; preds = %375
  %381 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @CST_OPEN, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %440

386:                                              ; preds = %380
  %387 = load i8*, i8** %8, align 8
  %388 = icmp ne i8* %387, null
  br i1 %388, label %389, label %407

389:                                              ; preds = %386
  %390 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %391, i32 0, i32 5
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %406, label %396

396:                                              ; preds = %389
  %397 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %398, i32 0, i32 5
  %400 = load i32, i32* @BTU_TTYPE_L2CAP_FCR_ACK, align 4
  %401 = load i32, i32* @L2CAP_FCR_ACK_TOUT, align 4
  %402 = load i32, i32* @QUICK_TIMER_TICKS_PER_SEC, align 4
  %403 = mul nsw i32 %401, %402
  %404 = sdiv i32 %403, 1000
  %405 = call i32 @btu_start_quick_timer(%struct.TYPE_21__* %399, i32 %400, i32 %404)
  br label %406

406:                                              ; preds = %396, %389
  br label %439

407:                                              ; preds = %386
  %408 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 8
  %411 = call i64 @fixed_queue_is_empty(i32 %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %417, label %413

413:                                              ; preds = %407
  %414 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %415 = call i64 @l2c_fcr_is_flow_controlled(%struct.TYPE_26__* %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %438

417:                                              ; preds = %413, %407
  %418 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %418, i32 0, i32 2
  %420 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 8
  %422 = call i64 @fixed_queue_is_empty(i32 %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %438

424:                                              ; preds = %417
  %425 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %426 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %425, i32 0, i32 3
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %424
  %430 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %431 = load i32, i32* @L2CAP_FCR_SUP_RNR, align 4
  %432 = call i32 @l2c_fcr_send_S_frame(%struct.TYPE_26__* %430, i32 %431, i32 0)
  br label %437

433:                                              ; preds = %424
  %434 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %435 = load i32, i32* @L2CAP_FCR_SUP_RR, align 4
  %436 = call i32 @l2c_fcr_send_S_frame(%struct.TYPE_26__* %434, i32 %435, i32 0)
  br label %437

437:                                              ; preds = %433, %429
  br label %438

438:                                              ; preds = %437, %417, %413
  br label %439

439:                                              ; preds = %438, %406
  br label %440

440:                                              ; preds = %34, %73, %324, %342, %439, %380, %375, %372
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @retransmit_i_frames(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_27__*) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32, ...) #1

declare dso_local i32 @l2c_fcr_send_S_frame(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @fixed_queue_try_peek_last(i32) #1

declare dso_local i32 @fixed_queue_length(i32) #1

declare dso_local %struct.TYPE_27__* @l2c_fcr_clone_buf(%struct.TYPE_27__*, i32, i64) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @fixed_queue_enqueue(i32, %struct.TYPE_27__*, i32) #1

declare dso_local i64 @fixed_queue_is_empty(i32) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, i32, i32, i32) #1

declare dso_local i32 @btu_stop_quick_timer(%struct.TYPE_21__*) #1

declare dso_local i32 @do_sar_reassembly(%struct.TYPE_26__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @l2cu_disconnect_chnl(%struct.TYPE_26__*) #1

declare dso_local i32 @btu_start_quick_timer(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @l2c_fcr_is_flow_controlled(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
