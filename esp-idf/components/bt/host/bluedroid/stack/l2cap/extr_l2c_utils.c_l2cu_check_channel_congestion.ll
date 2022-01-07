; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_check_channel_congestion.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_check_channel_congestion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__*, i8* }
%struct.TYPE_14__ = type { i32 (i32, i8*)* }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_15__*, %struct.TYPE_13__*, i32, i8* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__**, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (i32, i8*)* }
%struct.TYPE_10__ = type { i32 (i64, i8*)* }

@L2CAP_CONNECTIONLESS_CID = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [96 x i8] c"L2CAP - Calling CongestionStatus_Cb (FALSE), CID: 0x%04x  xmit_hold_q.count: %u  buff_quota: %u\00", align 1
@TRUE = common dso_local global i8* null, align 8
@l2cb = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [82 x i8] c"L2CAP - Calling UCD CongestionStatus_Cb (FALSE), SecPendingQ:%u,XmitQ:%u,Quota:%u\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"L2CAP - Calling CongestionStatus_Cb (TRUE),CID:0x%04x,XmitQ:%u,Quota:%u\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"L2CAP - Calling UCD CongestionStatus_Cb (TRUE), SecPendingQ:%u,XmitQ:%u,Quota:%u\00", align 1
@L2CAP_NUM_FIXED_CHNLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_check_channel_congestion(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %4 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @fixed_queue_length(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @L2CAP_CONNECTIONLESS_CID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @fixed_queue_length(i32 %18)
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %228

27:                                               ; preds = %22
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 5
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %131

32:                                               ; preds = %27
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = icmp ule i64 %33, %38
  br i1 %39, label %40, label %130

40:                                               ; preds = %32
  %41 = load i8*, i8** @FALSE, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = icmp ne %struct.TYPE_13__* %46, null
  br i1 %47, label %48, label %78

48:                                               ; preds = %40
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32 (i64, i8*)*, i32 (i64, i8*)** %53, align 8
  %55 = icmp ne i32 (i64, i8*)* %54, null
  br i1 %55, label %56, label %78

56:                                               ; preds = %48
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %60, i32 %63)
  %65 = load i8*, i8** @TRUE, align 8
  store i8* %65, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @l2cb, i32 0, i32 1), align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32 (i64, i8*)*, i32 (i64, i8*)** %70, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i8*, i8** @FALSE, align 8
  %76 = call i32 %71(i64 %74, i8* %75)
  %77 = load i8*, i8** @FALSE, align 8
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @l2cb, i32 0, i32 1), align 8
  br label %129

78:                                               ; preds = %48, %40
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = icmp ne %struct.TYPE_13__* %81, null
  br i1 %82, label %83, label %128

83:                                               ; preds = %78
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @L2CAP_CONNECTIONLESS_CID, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %128

89:                                               ; preds = %83
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32 (i32, i8*)*, i32 (i32, i8*)** %95, align 8
  %97 = icmp ne i32 (i32, i8*)* %96, null
  br i1 %97, label %98, label %127

98:                                               ; preds = %89
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @fixed_queue_length(i32 %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @fixed_queue_length(i32 %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i64 %104, i64 %108, i32 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32 (i32, i8*)*, i32 (i32, i8*)** %118, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i8*, i8** @FALSE, align 8
  %126 = call i32 %119(i32 %124, i8* %125)
  br label %127

127:                                              ; preds = %98, %89
  br label %128

128:                                              ; preds = %127, %83, %78
  br label %129

129:                                              ; preds = %128, %56
  br label %130

130:                                              ; preds = %129, %32
  br label %227

131:                                              ; preds = %27
  %132 = load i64, i64* %3, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = icmp ugt i64 %132, %136
  br i1 %137, label %138, label %226

138:                                              ; preds = %131
  %139 = load i8*, i8** @TRUE, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 5
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = icmp ne %struct.TYPE_13__* %144, null
  br i1 %145, label %146, label %174

146:                                              ; preds = %138
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32 (i64, i8*)*, i32 (i64, i8*)** %151, align 8
  %153 = icmp ne i32 (i64, i8*)* %152, null
  br i1 %153, label %154, label %174

154:                                              ; preds = %146
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %3, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i64 %157, i64 %158, i32 %161)
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32 (i64, i8*)*, i32 (i64, i8*)** %167, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i8*, i8** @TRUE, align 8
  %173 = call i32 %168(i64 %171, i8* %172)
  br label %225

174:                                              ; preds = %146, %138
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = icmp ne %struct.TYPE_13__* %177, null
  br i1 %178, label %179, label %224

179:                                              ; preds = %174
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @L2CAP_CONNECTIONLESS_CID, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %224

185:                                              ; preds = %179
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32 (i32, i8*)*, i32 (i32, i8*)** %191, align 8
  %193 = icmp ne i32 (i32, i8*)* %192, null
  br i1 %193, label %194, label %223

194:                                              ; preds = %185
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i64 @fixed_queue_length(i32 %199)
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @fixed_queue_length(i32 %203)
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i64 %200, i64 %204, i32 %207)
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load i32 (i32, i8*)*, i32 (i32, i8*)** %214, align 8
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i8*, i8** @TRUE, align 8
  %222 = call i32 %215(i32 %220, i8* %221)
  br label %223

223:                                              ; preds = %194, %185
  br label %224

224:                                              ; preds = %223, %179, %174
  br label %225

225:                                              ; preds = %224, %154
  br label %226

226:                                              ; preds = %225, %131
  br label %227

227:                                              ; preds = %226, %130
  br label %228

228:                                              ; preds = %227, %22
  ret void
}

declare dso_local i64 @fixed_queue_length(i32) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
