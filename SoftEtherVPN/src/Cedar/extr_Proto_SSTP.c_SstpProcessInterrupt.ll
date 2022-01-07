; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpProcessInterrupt.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpProcessInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i64, i32, i32, i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@SSTP_SERVER_STATUS_ESTABLISHED = common dso_local global i64 0, align 8
@SSTP_ECHO_SEND_INTERVAL_MIN = common dso_local global i32 0, align 4
@SSTP_ECHO_SEND_INTERVAL_MAX = common dso_local global i32 0, align 4
@SSTP_MSG_ECHO_REQUEST = common dso_local global i32 0, align 4
@SSTP_TIMEOUT = common dso_local global i64 0, align 8
@SSTP_MSG_CALL_DISCONNECT_ACK = common dso_local global i32 0, align 4
@SSTP_MSG_CALL_DISCONNECT = common dso_local global i32 0, align 4
@SSTP_MSG_CALL_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SstpProcessInterrupt(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = icmp eq %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %252

14:                                               ; preds = %1
  %15 = call i64 (...) @Tick64()
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i32 0, i32* %19, align 8
  br label %20

20:                                               ; preds = %14, %47
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 15
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_15__* @GetNext(i32 %23)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %3, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = icmp eq %struct.TYPE_15__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %50

28:                                               ; preds = %20
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @SstpParsePacket(i32 %31, i32 %34)
  store i32* %35, i32** %4, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = call i32 @SstpAbort(%struct.TYPE_14__* %39)
  br label %47

41:                                               ; preds = %28
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @SstpProcessPacket(%struct.TYPE_14__* %42, i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @SstpFreePacket(i32* %45)
  br label %47

47:                                               ; preds = %41, %38
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = call i32 @FreeBlock(%struct.TYPE_15__* %48)
  br label %20

50:                                               ; preds = %27
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 13
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @TubeFlush(i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %69
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_13__* @TubeRecvAsync(i32 %64)
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %5, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = icmp eq %struct.TYPE_13__* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %84

69:                                               ; preds = %61
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32* @SstpNewDataPacket(i32 %72, i32 %75)
  store i32* %76, i32** %6, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @SstpSendPacket(%struct.TYPE_14__* %77, i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @SstpFreePacket(i32* %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = call i32 @FreeTubeData(%struct.TYPE_13__* %82)
  br label %61

84:                                               ; preds = %68
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SSTP_SERVER_STATUS_ESTABLISHED, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %145

90:                                               ; preds = %84
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %144

95:                                               ; preds = %90
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %144

100:                                              ; preds = %95
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp sle i64 %108, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %105, %100
  %114 = load i32, i32* @SSTP_ECHO_SEND_INTERVAL_MIN, align 4
  %115 = call i32 (...) @Rand32()
  %116 = load i32, i32* @SSTP_ECHO_SEND_INTERVAL_MAX, align 4
  %117 = load i32, i32* @SSTP_ECHO_SEND_INTERVAL_MIN, align 4
  %118 = sub nsw i32 %116, %117
  %119 = srem i32 %115, %118
  %120 = add nsw i32 %114, %119
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %7, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %7, align 8
  %126 = add nsw i64 %124, %125
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 5
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 14
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @AddInterrupt(i32 %131, i64 %134)
  %136 = load i32, i32* @SSTP_MSG_ECHO_REQUEST, align 4
  %137 = call i32* @SstpNewControlPacket(i32 %136)
  store i32* %137, i32** %8, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @SstpSendPacket(%struct.TYPE_14__* %138, i32* %139)
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @SstpFreePacket(i32* %141)
  br label %143

143:                                              ; preds = %113, %105
  br label %144

144:                                              ; preds = %143, %95, %90
  br label %145

145:                                              ; preds = %144, %84
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SSTP_TIMEOUT, align 8
  %150 = add nsw i64 %148, %149
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp sle i64 %150, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %145
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %157 = call i32 @SstpAbort(%struct.TYPE_14__* %156)
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 7
  store i32 1, i32* %159, align 8
  br label %160

160:                                              ; preds = %155, %145
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 13
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @IsTubeConnected(i32 %163)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 12
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @IsTubeConnected(i32 %169)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %166, %160
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %174 = call i32 @SstpDisconnect(%struct.TYPE_14__* %173)
  br label %175

175:                                              ; preds = %172, %166
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %205

180:                                              ; preds = %175
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %180
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 11
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i32, i32* @SSTP_MSG_CALL_DISCONNECT_ACK, align 4
  br label %194

192:                                              ; preds = %185
  %193 = load i32, i32* @SSTP_MSG_CALL_DISCONNECT, align 4
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  %196 = call i32* @SstpNewControlPacket(i32 %195)
  store i32* %196, i32** %9, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %198 = load i32*, i32** %9, align 8
  %199 = call i32 @SstpSendPacket(%struct.TYPE_14__* %197, i32* %198)
  %200 = load i32*, i32** %9, align 8
  %201 = call i32 @SstpFreePacket(i32* %200)
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 8
  store i32 1, i32* %203, align 4
  br label %204

204:                                              ; preds = %194, %180
  br label %205

205:                                              ; preds = %204, %175
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %226

210:                                              ; preds = %205
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %210
  %216 = load i32, i32* @SSTP_MSG_CALL_ABORT, align 4
  %217 = call i32* @SstpNewControlPacket(i32 %216)
  store i32* %217, i32** %10, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %219 = load i32*, i32** %10, align 8
  %220 = call i32 @SstpSendPacket(%struct.TYPE_14__* %218, i32* %219)
  %221 = load i32*, i32** %10, align 8
  %222 = call i32 @SstpFreePacket(i32* %221)
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 9
  store i32 1, i32* %224, align 8
  br label %225

225:                                              ; preds = %215, %210
  br label %226

226:                                              ; preds = %225, %205
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 8
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %226
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 11
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 7
  store i32 1, i32* %238, align 8
  br label %239

239:                                              ; preds = %236, %231, %226
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %239
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 10
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 7
  store i32 1, i32* %251, align 8
  br label %252

252:                                              ; preds = %13, %249, %244, %239
  ret void
}

declare dso_local i64 @Tick64(...) #1

declare dso_local %struct.TYPE_15__* @GetNext(i32) #1

declare dso_local i32* @SstpParsePacket(i32, i32) #1

declare dso_local i32 @SstpAbort(%struct.TYPE_14__*) #1

declare dso_local i32 @SstpProcessPacket(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @SstpFreePacket(i32*) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_15__*) #1

declare dso_local i32 @TubeFlush(i32) #1

declare dso_local %struct.TYPE_13__* @TubeRecvAsync(i32) #1

declare dso_local i32* @SstpNewDataPacket(i32, i32) #1

declare dso_local i32 @SstpSendPacket(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @FreeTubeData(%struct.TYPE_13__*) #1

declare dso_local i32 @Rand32(...) #1

declare dso_local i32 @AddInterrupt(i32, i64) #1

declare dso_local i32* @SstpNewControlPacket(i32) #1

declare dso_local i32 @IsTubeConnected(i32) #1

declare dso_local i32 @SstpDisconnect(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
