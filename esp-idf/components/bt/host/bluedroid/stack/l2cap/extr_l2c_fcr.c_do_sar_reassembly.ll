; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_do_sar_reassembly.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_do_sar_reassembly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (i64, i32, %struct.TYPE_19__*)* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_16__*, %struct.TYPE_14__, %struct.TYPE_17__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_19__* }

@L2CAP_FCR_SEG_BITS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@L2CAP_FCR_UNSEG_SDU = common dso_local global i64 0, align 8
@L2CAP_FCR_START_SDU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"SAR - got unexpected unsegmented or start SDU  Expected len: %u  Got so far: %u\00", align 1
@FALSE = common dso_local global i64 0, align 8
@L2CAP_SDU_LEN_OVERHEAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"SAR start packet too short: %u\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"SAR - got unexpected cont or end SDU\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"SAR - SDU len: %u  larger than MTU: %u\00", align 1
@L2CAP_MAX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"SAR - no buffer for SDU start user_rx_buf_size:%d\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"SAR - SDU len exceeded  Type: %u   Lengths: %u %u %u\00", align 1
@L2CAP_FCR_END_SDU = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [48 x i8] c"SAR - SDU end rcvd but SDU incomplete: %u %u %u\00", align 1
@L2CEVT_L2CAP_DATA = common dso_local global i32 0, align 4
@L2CAP_BASE_APPL_CID = common dso_local global i64 0, align 8
@L2CAP_FIRST_FIXED_CHNL = common dso_local global i64 0, align 8
@L2CAP_LAST_FIXED_CHNL = common dso_local global i64 0, align 8
@l2cb = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, %struct.TYPE_19__*, i64)* @do_sar_reassembly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_sar_reassembly(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = icmp ne %struct.TYPE_18__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = icmp ne %struct.TYPE_19__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 4
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @L2CAP_FCR_SEG_BITS, align 8
  %23 = and i64 %21, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* @TRUE, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @L2CAP_FCR_UNSEG_SDU, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @L2CAP_FCR_START_SDU, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %28, %3
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = icmp ne %struct.TYPE_19__* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %45)
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %37, %32
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @L2CAP_FCR_START_SDU, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @L2CAP_SDU_LEN_OVERHEAD, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = load i64, i64* @FALSE, align 8
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %58, %52, %48
  br label %74

65:                                               ; preds = %28
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = icmp eq %struct.TYPE_19__* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i64, i64* @FALSE, align 8
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %70, %65
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %261

77:                                               ; preds = %74
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @L2CAP_FCR_UNSEG_SDU, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %261

81:                                               ; preds = %77
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i64 1
  %84 = bitcast %struct.TYPE_19__* %83 to i32*
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32* %89, i32** %10, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @L2CAP_FCR_START_SDU, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %149

93:                                               ; preds = %81
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @STREAM_TO_UINT16(i64 %96, i32* %97)
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %100, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %105, 2
  store i64 %106, i64* %104, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %109, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %93
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %117, i64 %120)
  %122 = load i64, i64* @FALSE, align 8
  store i64 %122, i64* %9, align 8
  br label %148

123:                                              ; preds = %93
  %124 = load i32, i32* @L2CAP_MAX_BUF_SIZE, align 4
  %125 = call i64 @osi_malloc(i32 %124)
  %126 = inttoptr i64 %125 to %struct.TYPE_19__*
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  store %struct.TYPE_19__* %126, %struct.TYPE_19__** %128, align 8
  %129 = icmp eq %struct.TYPE_19__* %126, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %123
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = call i32 (i8*, i64, ...) @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %135)
  %137 = load i64, i64* @FALSE, align 8
  store i64 %137, i64* %9, align 8
  br label %147

138:                                              ; preds = %123
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  store i32 4, i32* %142, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  store i64 0, i64* %146, align 8
  br label %147

147:                                              ; preds = %138, %130
  br label %148

148:                                              ; preds = %147, %114
  br label %149

149:                                              ; preds = %148, %81
  %150 = load i64, i64* %9, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %260

152:                                              ; preds = %149
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %157, %160
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %161, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %152
  %167 = load i64, i64* %8, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 (i8*, i64, ...) @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %167, i64 %172, i64 %175, i64 %178)
  %180 = load i64, i64* @FALSE, align 8
  store i64 %180, i64* %9, align 8
  br label %259

181:                                              ; preds = %152
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* @L2CAP_FCR_END_SDU, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %213

185:                                              ; preds = %181
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %190, %193
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %194, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %185
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i32 (i8*, ...) @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %204, i64 %207, i64 %210)
  %212 = load i64, i64* @FALSE, align 8
  store i64 %212, i64* %9, align 8
  br label %258

213:                                              ; preds = %185, %181
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i64 1
  %218 = bitcast %struct.TYPE_19__* %217 to i32*
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %218, i64 %224
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds i32, i32* %225, i64 %230
  %232 = load i32*, i32** %10, align 8
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @memcpy(i32* %231, i32* %232, i64 %235)
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, %239
  store i64 %245, i64* %243, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %247 = call i32 @osi_free(%struct.TYPE_19__* %246)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %5, align 8
  %248 = load i64, i64* %8, align 8
  %249 = load i64, i64* @L2CAP_FCR_END_SDU, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %257

251:                                              ; preds = %213
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %253, align 8
  store %struct.TYPE_19__* %254, %struct.TYPE_19__** %5, align 8
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %256, align 8
  br label %257

257:                                              ; preds = %251, %213
  br label %258

258:                                              ; preds = %257, %199
  br label %259

259:                                              ; preds = %258, %166
  br label %260

260:                                              ; preds = %259, %149
  br label %261

261:                                              ; preds = %260, %77, %74
  %262 = load i64, i64* %9, align 8
  %263 = load i64, i64* @FALSE, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %261
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %267 = call i32 @osi_free(%struct.TYPE_19__* %266)
  br label %277

268:                                              ; preds = %261
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %270 = icmp ne %struct.TYPE_19__* %269, null
  br i1 %270, label %271, label %276

271:                                              ; preds = %268
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %273 = load i32, i32* @L2CEVT_L2CAP_DATA, align 4
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %275 = call i32 @l2c_csm_execute(%struct.TYPE_18__* %272, i32 %273, %struct.TYPE_19__* %274)
  br label %276

276:                                              ; preds = %271, %268
  br label %277

277:                                              ; preds = %276, %265
  %278 = load i64, i64* %9, align 8
  ret i64 %278
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, ...) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i32*) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, i64, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @osi_free(%struct.TYPE_19__*) #1

declare dso_local i32 @l2c_csm_execute(%struct.TYPE_18__*, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
