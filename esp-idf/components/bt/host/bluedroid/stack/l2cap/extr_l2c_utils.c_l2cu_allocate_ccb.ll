; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_allocate_ccb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_allocate_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__, i8*, i8*, i8*, i64, i32, i64, i8*, %struct.TYPE_12__, i8*, i8*, i32, %struct.TYPE_14__, i32, i8*, i64, %struct.TYPE_14__, %struct.TYPE_14__, i64, i32, i32*, i32*, i64, i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i8*, i8*, i8*, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i8*, i32, i32, i8*, i32, i32, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"l2cu_allocate_ccb: cid 0x%04x\00", align 1
@l2cb = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@L2CAP_BASE_APPL_CID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"l2cu_allocate_ccb: could not find CCB for CID 0x%04x in the free list\00", align 1
@TRUE = common dso_local global i32 0, align 4
@L2CAP_CHNL_PRIORITY_LOW = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_FLUSH_TO = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MTU = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_SERV_TYPE = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_TOKEN_RATE = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_BUCKET_SIZE = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_PEAK_BANDWIDTH = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_LATENCY = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_DELAY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@L2CAP_MAX_FCR_CFG_TRIES = common dso_local global i32 0, align 4
@L2CAP_FCR_BASIC_MODE = common dso_local global i32 0, align 4
@L2CAP_FCR_CHAN_OPT_BASIC = common dso_local global i32 0, align 4
@L2CAP_FCR_RX_BUF_SIZE = common dso_local global i32 0, align 4
@L2CAP_FCR_TX_BUF_SIZE = common dso_local global i8* null, align 8
@L2CAP_USER_RX_BUF_SIZE = common dso_local global i32 0, align 4
@L2CAP_USER_TX_BUF_SIZE = common dso_local global i32 0, align 4
@L2CAP_MTU_SIZE = common dso_local global i32 0, align 4
@QUEUE_SIZE_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"l2cu_allocate_ccb: cid 0x%04x config_done:0x%x\00", align 1
@CST_CLOSED = common dso_local global i32 0, align 4
@L2CAP_CHNL_DATA_RATE_LOW = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @l2cu_allocate_ccb(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 (i8*, i64, ...) @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @l2cb, i32 0, i32 2), align 8
  %11 = icmp ne %struct.TYPE_13__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %318

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @l2cb, i32 0, i32 2), align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 27
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @l2cb, i32 0, i32 2), align 8
  br label %70

21:                                               ; preds = %13
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @l2cb, i32 0, i32 0), align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @L2CAP_BASE_APPL_CID, align 8
  %25 = sub nsw i64 %23, %24
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i64 %25
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %6, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @l2cb, i32 0, i32 2), align 8
  %29 = icmp eq %struct.TYPE_13__* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 27
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @l2cb, i32 0, i32 2), align 8
  br label %69

34:                                               ; preds = %21
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @l2cb, i32 0, i32 2), align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %7, align 8
  br label %36

36:                                               ; preds = %58, %34
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = icmp ne %struct.TYPE_13__* %37, null
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 27
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = icmp eq %struct.TYPE_13__* %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 27
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 27
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %50, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @l2cb, i32 0, i32 1), align 8
  %53 = icmp eq %struct.TYPE_13__* %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @l2cb, i32 0, i32 1), align 8
  br label %56

56:                                               ; preds = %54, %45
  br label %62

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 27
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %7, align 8
  br label %36

62:                                               ; preds = %56, %36
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = icmp eq %struct.TYPE_13__* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %318

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %30
  br label %70

70:                                               ; preds = %69, %16
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 26
  store i32* null, i32** %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 27
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %74, align 8
  %75 = load i32, i32* @TRUE, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 25
  store i32 %75, i32* %77, align 8
  %78 = load i64, i64* @L2CAP_BASE_APPL_CID, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @l2cb, i32 0, i32 0), align 8
  %81 = ptrtoint %struct.TYPE_13__* %79 to i64
  %82 = ptrtoint %struct.TYPE_13__* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 680
  %85 = add nsw i64 %78, %84
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 24
  store i64 %85, i64* %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 23
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 22
  store i32* null, i32** %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load i32, i32* @L2CAP_CHNL_PRIORITY_LOW, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 21
  store i32 %95, i32* %97, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %70
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = call i32 @l2cu_enqueue_ccb(%struct.TYPE_13__* %101)
  br label %103

103:                                              ; preds = %100, %70
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 20
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 19
  %108 = call i32 @memset(%struct.TYPE_14__* %107, i32 0, i32 4)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 18
  %111 = call i32 @memset(%struct.TYPE_14__* %110, i32 0, i32 4)
  %112 = load i32, i32* @L2CAP_DEFAULT_FLUSH_TO, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 18
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 10
  store i32 %112, i32* %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 19
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 10
  store i32 %112, i32* %118, align 8
  %119 = load i32, i32* @L2CAP_DEFAULT_MTU, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 18
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 9
  store i32 %119, i32* %122, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 19
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 9
  store i32 %119, i32* %125, align 4
  %126 = load i32, i32* @L2CAP_DEFAULT_SERV_TYPE, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 18
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 5
  store i32 %126, i32* %130, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 19
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 5
  store i32 %126, i32* %134, align 4
  %135 = load i32, i32* @L2CAP_DEFAULT_TOKEN_RATE, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 18
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 4
  store i32 %135, i32* %139, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 19
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 4
  store i32 %135, i32* %143, align 4
  %144 = load i32, i32* @L2CAP_DEFAULT_BUCKET_SIZE, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 18
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 3
  store i32 %144, i32* %148, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 19
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 3
  store i32 %144, i32* %152, align 4
  %153 = load i32, i32* @L2CAP_DEFAULT_PEAK_BANDWIDTH, align 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 18
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  store i32 %153, i32* %157, align 4
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 19
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  store i32 %153, i32* %161, align 4
  %162 = load i32, i32* @L2CAP_DEFAULT_LATENCY, align 4
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 18
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  store i32 %162, i32* %166, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 19
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  store i32 %162, i32* %170, align 4
  %171 = load i32, i32* @L2CAP_DEFAULT_DELAY, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 18
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  store i32 %171, i32* %175, align 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 19
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  store i32 %171, i32* %179, align 4
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 17
  store i64 0, i64* %181, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 14
  %184 = call i32 @memset(%struct.TYPE_14__* %183, i32 0, i32 4)
  %185 = load i8*, i8** @FALSE, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 16
  store i8* %185, i8** %187, align 8
  %188 = load i32, i32* @L2CAP_MAX_FCR_CFG_TRIES, align 4
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 15
  store i32 %188, i32* %190, align 8
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 10
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 4
  %194 = call i32 @btu_free_quick_timer(%struct.TYPE_14__* %193)
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 10
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 4
  %198 = call i32 @memset(%struct.TYPE_14__* %197, i32 0, i32 4)
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %200 = bitcast %struct.TYPE_13__* %199 to i8*
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 10
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  store i8* %200, i8** %204, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 10
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 3
  %208 = call i32 @btu_free_quick_timer(%struct.TYPE_14__* %207)
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 10
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 3
  %212 = call i32 @memset(%struct.TYPE_14__* %211, i32 0, i32 4)
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %214 = bitcast %struct.TYPE_13__* %213 to i8*
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 10
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  store i8* %214, i8** %218, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %220 = call i32 @l2c_fcr_free_timer(%struct.TYPE_13__* %219)
  %221 = load i32, i32* @L2CAP_FCR_BASIC_MODE, align 4
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 14
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 7
  store i32 %221, i32* %224, align 8
  %225 = load i32, i32* @L2CAP_FCR_CHAN_OPT_BASIC, align 4
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 14
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 6
  store i32 %225, i32* %228, align 4
  %229 = load i32, i32* @L2CAP_FCR_RX_BUF_SIZE, align 4
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 14
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 5
  store i32 %229, i32* %232, align 8
  %233 = load i8*, i8** @L2CAP_FCR_TX_BUF_SIZE, align 8
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 14
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 4
  store i8* %233, i8** %236, align 8
  %237 = load i32, i32* @L2CAP_USER_RX_BUF_SIZE, align 4
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 14
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 3
  store i32 %237, i32* %240, align 4
  %241 = load i32, i32* @L2CAP_USER_TX_BUF_SIZE, align 4
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 14
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 2
  store i32 %241, i32* %244, align 8
  %245 = load i32, i32* @L2CAP_MTU_SIZE, align 4
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 13
  store i32 %245, i32* %247, align 8
  %248 = load i8*, i8** @L2CAP_FCR_TX_BUF_SIZE, align 8
  %249 = getelementptr i8, i8* %248, i64 -32
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 12
  store i8* %249, i8** %251, align 8
  %252 = load i32, i32* @QUEUE_SIZE_MAX, align 4
  %253 = call i8* @fixed_queue_new(i32 %252)
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 11
  store i8* %253, i8** %255, align 8
  %256 = load i32, i32* @QUEUE_SIZE_MAX, align 4
  %257 = call i8* @fixed_queue_new(i32 %256)
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 10
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 2
  store i8* %257, i8** %260, align 8
  %261 = load i32, i32* @QUEUE_SIZE_MAX, align 4
  %262 = call i8* @fixed_queue_new(i32 %261)
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 10
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 1
  store i8* %262, i8** %265, align 8
  %266 = load i32, i32* @QUEUE_SIZE_MAX, align 4
  %267 = call i8* @fixed_queue_new(i32 %266)
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 10
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  store i8* %267, i8** %270, align 8
  %271 = load i8*, i8** @FALSE, align 8
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 9
  store i8* %271, i8** %273, align 8
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  store i32 2, i32* %275, align 4
  %276 = load i64, i64* %5, align 8
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %103
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 8
  store i64 0, i64* %280, align 8
  br label %287

281:                                              ; preds = %103
  %282 = load i64, i64* %5, align 8
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 8
  %285 = load i64, i64* %284, align 8
  %286 = call i32 (i8*, i64, ...) @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %282, i64 %285)
  br label %287

287:                                              ; preds = %281, %278
  %288 = load i32, i32* @CST_CLOSED, align 4
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 7
  store i32 %288, i32* %290, align 8
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 6
  store i64 0, i64* %292, align 8
  %293 = load i8*, i8** @L2CAP_CHNL_DATA_RATE_LOW, align 8
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 5
  store i8* %293, i8** %295, align 8
  %296 = load i8*, i8** @L2CAP_CHNL_DATA_RATE_LOW, align 8
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 4
  store i8* %296, i8** %298, align 8
  %299 = load i8*, i8** @FALSE, align 8
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 3
  store i8* %299, i8** %301, align 8
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 2
  %304 = call i32 @btu_free_timer(%struct.TYPE_14__* %303)
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 2
  %307 = call i32 @memset(%struct.TYPE_14__* %306, i32 0, i32 4)
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %309 = bitcast %struct.TYPE_13__* %308 to i8*
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 1
  store i8* %309, i8** %312, align 8
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 0
  store i64 0, i64* %315, align 8
  %316 = call i32 (...) @l2c_link_adjust_chnl_allocation()
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %317, %struct.TYPE_13__** %3, align 8
  br label %318

318:                                              ; preds = %287, %65, %12
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %319
}

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, i64) #1

declare dso_local i32 @l2cu_enqueue_ccb(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @btu_free_quick_timer(%struct.TYPE_14__*) #1

declare dso_local i32 @l2c_fcr_free_timer(%struct.TYPE_13__*) #1

declare dso_local i8* @fixed_queue_new(i32) #1

declare dso_local i32 @btu_free_timer(%struct.TYPE_14__*) #1

declare dso_local i32 @l2c_link_adjust_chnl_allocation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
