; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_ProcessSstpHttps.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_ProcessSstpHttps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_23__ = type { i64*, i64, i64 }

@SOCK_LATER = common dso_local global i64 0, align 8
@SSTP_VERSION_1 = common dso_local global i64 0, align 8
@MAX_BUFFERING_PACKET_SIZE = common dso_local global i64 0, align 8
@SELECT_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProcessSstpHttps(i32* %0, %struct.TYPE_21__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca %struct.TYPE_23__*, align 8
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 65536, i64* %8, align 8
  store i32 0, i32* %13, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %30 = icmp eq %struct.TYPE_21__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28, %3
  store i32 0, i32* %4, align 4
  br label %260

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = call i64* @Malloc(i64 %36)
  store i64* %37, i64** %9, align 8
  %38 = call %struct.TYPE_22__* (...) @NewFifo()
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %10, align 8
  %39 = call %struct.TYPE_22__* (...) @NewFifo()
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %11, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.TYPE_20__* @NewSstpServer(i32* %40, i32* %42, i32 %45, i32* %47, i32 %50, i32* %51, i32 %54, i32 %57)
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %12, align 8
  br label %59

59:                                               ; preds = %35, %237
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %59, %79
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @Recv(%struct.TYPE_21__* %61, i64* %62, i64 %63, i32 1)
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %14, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 1, i32* %15, align 4
  br label %80

68:                                               ; preds = %60
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* @SOCK_LATER, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %80

73:                                               ; preds = %68
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %14, align 8
  %77 = call i32 @WriteFifo(%struct.TYPE_22__* %74, i64* %75, i64 %76)
  store i32 1, i32* %16, align 4
  br label %78

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78
  br label %60

80:                                               ; preds = %72, %67
  br label %81

81:                                               ; preds = %141, %80
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %84, 4
  br i1 %85, label %86, label %142

86:                                               ; preds = %81
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i64*
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %90, i64 %94
  store i64* %95, i64** %17, align 8
  %96 = load i64*, i64** %17, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SSTP_VERSION_1, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %133

101:                                              ; preds = %86
  %102 = load i64*, i64** %17, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 2
  %104 = call i32 @READ_USHORT(i64* %103)
  %105 = and i32 %104, 4095
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %20, align 4
  %107 = icmp sge i32 %106, 4
  br i1 %107, label %108, label %132

108:                                              ; preds = %101
  store i32 1, i32* %19, align 4
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %20, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %108
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %18, align 8
  %117 = load i64, i64* %18, align 8
  %118 = call i64* @Malloc(i64 %117)
  store i64* %118, i64** %21, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %120 = load i64*, i64** %21, align 8
  %121 = load i64, i64* %18, align 8
  %122 = call i32 @ReadFifo(%struct.TYPE_22__* %119, i64* %120, i64 %121)
  %123 = load i64*, i64** %21, align 8
  %124 = load i64, i64* %18, align 8
  %125 = call %struct.TYPE_23__* @NewBlock(i64* %123, i64 %124, i32 0)
  store %struct.TYPE_23__* %125, %struct.TYPE_23__** %22, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %130 = call i32 @InsertQueue(i32 %128, %struct.TYPE_23__* %129)
  br label %131

131:                                              ; preds = %114, %108
  br label %132

132:                                              ; preds = %131, %101
  br label %133

133:                                              ; preds = %132, %86
  %134 = load i64, i64* %18, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %142

137:                                              ; preds = %133
  %138 = load i32, i32* %19, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 1, i32* %15, align 4
  br label %142

141:                                              ; preds = %137
  br label %81

142:                                              ; preds = %140, %136, %81
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %144 = call i32 @SstpProcessInterrupt(%struct.TYPE_20__* %143)
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store i32 1, i32* %15, align 4
  br label %150

150:                                              ; preds = %149, %142
  br label %151

151:                                              ; preds = %150, %180
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call %struct.TYPE_23__* @GetNext(i32 %154)
  store %struct.TYPE_23__* %155, %struct.TYPE_23__** %23, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %157 = icmp eq %struct.TYPE_23__* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %183

159:                                              ; preds = %151
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %159
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* @MAX_BUFFERING_PACKET_SIZE, align 8
  %170 = icmp sle i64 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %164, %159
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @WriteFifo(%struct.TYPE_22__* %172, i64* %175, i64 %178)
  br label %180

180:                                              ; preds = %171, %164
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %182 = call i32 @FreeBlock(%struct.TYPE_23__* %181)
  br label %151

183:                                              ; preds = %158
  br label %184

184:                                              ; preds = %218, %183
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %219

189:                                              ; preds = %184
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i64*
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %194, i64 %198
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = call i64 @Send(%struct.TYPE_21__* %190, i64* %199, i64 %203, i32 1)
  store i64 %204, i64* %14, align 8
  %205 = load i64, i64* %14, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %189
  store i32 1, i32* %15, align 4
  br label %219

208:                                              ; preds = %189
  %209 = load i64, i64* %14, align 8
  %210 = load i64, i64* @SOCK_LATER, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  br label %219

213:                                              ; preds = %208
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %215 = load i64, i64* %14, align 8
  %216 = call i32 @ReadFifo(%struct.TYPE_22__* %214, i64* null, i64 %215)
  store i32 1, i32* %16, align 4
  br label %217

217:                                              ; preds = %213
  br label %218

218:                                              ; preds = %217
  br label %184

219:                                              ; preds = %212, %207, %184
  %220 = load i32, i32* %15, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  br label %238

223:                                              ; preds = %219
  %224 = load i32, i32* %16, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %223
  %227 = load i64, i64* @SELECT_TIME, align 8
  store i64 %227, i64* %24, align 8
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @GetNextIntervalForInterrupt(i32 %230)
  store i64 %231, i64* %25, align 8
  %232 = load i32*, i32** %7, align 8
  %233 = load i64, i64* %25, align 8
  %234 = load i64, i64* %24, align 8
  %235 = call i32 @MIN(i64 %233, i64 %234)
  %236 = call i32 @WaitSockEvent(i32* %232, i32 %235)
  br label %237

237:                                              ; preds = %226, %223
  br label %59

238:                                              ; preds = %222
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %240 = icmp ne %struct.TYPE_20__* %239, null
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp sge i32 %244, 1
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  store i32 1, i32* %13, align 4
  br label %247

247:                                              ; preds = %246, %241, %238
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %249 = call i32 @FreeSstpServer(%struct.TYPE_20__* %248)
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %251 = call i32 @ReleaseFifo(%struct.TYPE_22__* %250)
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %253 = call i32 @ReleaseFifo(%struct.TYPE_22__* %252)
  %254 = load i64*, i64** %9, align 8
  %255 = call i32 @Free(i64* %254)
  %256 = call i32 (...) @YieldCpu()
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %258 = call i32 @Disconnect(%struct.TYPE_21__* %257)
  %259 = load i32, i32* %13, align 4
  store i32 %259, i32* %4, align 4
  br label %260

260:                                              ; preds = %247, %34
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i64* @Malloc(i64) #1

declare dso_local %struct.TYPE_22__* @NewFifo(...) #1

declare dso_local %struct.TYPE_20__* @NewSstpServer(i32*, i32*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @Recv(%struct.TYPE_21__*, i64*, i64, i32) #1

declare dso_local i32 @WriteFifo(%struct.TYPE_22__*, i64*, i64) #1

declare dso_local i32 @READ_USHORT(i64*) #1

declare dso_local i32 @ReadFifo(%struct.TYPE_22__*, i64*, i64) #1

declare dso_local %struct.TYPE_23__* @NewBlock(i64*, i64, i32) #1

declare dso_local i32 @InsertQueue(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @SstpProcessInterrupt(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_23__* @GetNext(i32) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_23__*) #1

declare dso_local i64 @Send(%struct.TYPE_21__*, i64*, i64, i32) #1

declare dso_local i64 @GetNextIntervalForInterrupt(i32) #1

declare dso_local i32 @WaitSockEvent(i32*, i32) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @FreeSstpServer(%struct.TYPE_20__*) #1

declare dso_local i32 @ReleaseFifo(%struct.TYPE_22__*) #1

declare dso_local i32 @Free(i64*) #1

declare dso_local i32 @YieldCpu(...) #1

declare dso_local i32 @Disconnect(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
