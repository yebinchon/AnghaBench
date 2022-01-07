; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_PPPRecvPacketWithLowLayerProcessing.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_PPPRecvPacketWithLowLayerProcessing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_16__*, i64* }
%struct.TYPE_16__ = type { i64, i32, i8*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i8* }

@PPP_PROTOCOL_LCP = common dso_local global i64 0, align 8
@PPP_LCP_CODE_PROTOCOL_REJECT = common dso_local global i64 0, align 8
@PPP_LCP_CODE_ECHO_REQUEST = common dso_local global i64 0, align 8
@PPP_LCP_CODE_ECHO_RESPONSE = common dso_local global i64 0, align 8
@PPP_LCP_CODE_DROP = common dso_local global i64 0, align 8
@PPP_LCP_CODE_IDENTIFICATION = common dso_local global i64 0, align 8
@WHERE = common dso_local global i32 0, align 4
@PPP_LCP_CODE_TERMINATE_REQ = common dso_local global i64 0, align 8
@PPP_LCP_CODE_TERMINATE_ACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @PPPRecvPacketWithLowLayerProcessing(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = icmp eq %struct.TYPE_17__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %279

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %268, %203, %192, %181, %170, %96, %16
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.TYPE_18__* @PPPRecvPacket(%struct.TYPE_17__* %18, i32 %19)
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %6, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = icmp eq %struct.TYPE_18__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %279

24:                                               ; preds = %17
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PPP_IS_SUPPORTED_PROTOCOL(i32 %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %99

30:                                               ; preds = %24
  %31 = call %struct.TYPE_18__* @ZeroMalloc(i32 32)
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %7, align 8
  %32 = load i64, i64* @PPP_PROTOCOL_LCP, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = call %struct.TYPE_19__* (...) @NewBuf()
  store %struct.TYPE_19__* %38, %struct.TYPE_19__** %8, align 8
  %39 = load i64, i64* @PPP_LCP_CODE_PROTOCOL_REJECT, align 8
  store i64 %39, i64* %9, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %41 = call i32 @WriteBuf(%struct.TYPE_19__* %40, i64* %9, i32 1)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = sext i32 %44 to i64
  store i64 %46, i64* %9, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %48 = call i32 @WriteBuf(%struct.TYPE_19__* %47, i64* %9, i32 1)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 6
  %53 = call i64 @Endian16(i32 %52)
  store i64 %53, i64* %10, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %55 = call i32 @WriteBuf(%struct.TYPE_19__* %54, i64* %10, i32 2)
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @Endian16(i32 %58)
  store i64 %59, i64* %10, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = call i32 @WriteBuf(%struct.TYPE_19__* %60, i64* %10, i32 2)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 4
  %65 = load i64*, i64** %64, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @WriteBuf(%struct.TYPE_19__* %62, i64* %65, i32 %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @Clone(i8* %72, i32 %75)
  %77 = bitcast i8* %76 to i64*
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 4
  store i64* %77, i64** %79, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = call i32 @FreePPPPacket(%struct.TYPE_18__* %85)
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %88 = call i32 @FreeBuf(%struct.TYPE_19__* %87)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %91 = call i32 @PPPSendPacket(%struct.TYPE_17__* %89, %struct.TYPE_18__* %90)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %30
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = call i32 @FreePPPPacket(%struct.TYPE_18__* %94)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %279

96:                                               ; preds = %30
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %98 = call i32 @FreePPPPacket(%struct.TYPE_18__* %97)
  br label %17

99:                                               ; preds = %24
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %277

104:                                              ; preds = %99
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @PPP_PROTOCOL_LCP, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %277

111:                                              ; preds = %104
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PPP_LCP_CODE_ECHO_REQUEST, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %173

119:                                              ; preds = %111
  %120 = call %struct.TYPE_18__* @ZeroMalloc(i32 32)
  store %struct.TYPE_18__* %120, %struct.TYPE_18__** %11, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  %123 = load i64, i64* @PPP_PROTOCOL_LCP, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i64, i64* @PPP_LCP_CODE_ECHO_RESPONSE, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @NewPPPLCP(i64 %127, i32 %132)
  %134 = bitcast i8* %133 to %struct.TYPE_16__*
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 3
  store %struct.TYPE_16__* %134, %struct.TYPE_16__** %136, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @Clone(i8* %141, i32 %146)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 2
  store i8* %147, i8** %151, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  store i32 %156, i32* %160, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %162 = call i32 @FreePPPPacket(%struct.TYPE_18__* %161)
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %165 = call i32 @PPPSendPacket(%struct.TYPE_17__* %163, %struct.TYPE_18__* %164)
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %119
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %169 = call i32 @FreePPPPacket(%struct.TYPE_18__* %168)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %279

170:                                              ; preds = %119
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %172 = call i32 @FreePPPPacket(%struct.TYPE_18__* %171)
  br label %17

173:                                              ; preds = %111
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @PPP_LCP_CODE_ECHO_RESPONSE, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %173
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %183 = call i32 @FreePPPPacket(%struct.TYPE_18__* %182)
  br label %17

184:                                              ; preds = %173
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @PPP_LCP_CODE_DROP, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %184
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %194 = call i32 @FreePPPPacket(%struct.TYPE_18__* %193)
  br label %17

195:                                              ; preds = %184
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @PPP_LCP_CODE_IDENTIFICATION, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %205 = call i32 @FreePPPPacket(%struct.TYPE_18__* %204)
  %206 = load i32, i32* @WHERE, align 4
  br label %17

207:                                              ; preds = %195
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @PPP_LCP_CODE_TERMINATE_REQ, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %272

215:                                              ; preds = %207
  %216 = call %struct.TYPE_18__* @ZeroMalloc(i32 32)
  store %struct.TYPE_18__* %216, %struct.TYPE_18__** %12, align 8
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  store i32 1, i32* %218, align 4
  %219 = load i64, i64* @PPP_PROTOCOL_LCP, align 8
  %220 = trunc i64 %219 to i32
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load i64, i64* @PPP_LCP_CODE_TERMINATE_ACK, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 3
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = call i8* @NewPPPLCP(i64 %223, i32 %228)
  %230 = bitcast i8* %229 to %struct.TYPE_16__*
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 3
  store %struct.TYPE_16__* %230, %struct.TYPE_16__** %232, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 3
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 2
  %237 = load i8*, i8** %236, align 8
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = call i8* @Clone(i8* %237, i32 %242)
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 3
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 2
  store i8* %243, i8** %247, align 8
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 3
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 3
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 1
  store i32 %252, i32* %256, align 8
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 0
  store i32 1, i32* %258, align 4
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %260 = call i32 @FreePPPPacket(%struct.TYPE_18__* %259)
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %263 = call i32 @PPPSendPacket(%struct.TYPE_17__* %261, %struct.TYPE_18__* %262)
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %215
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %267 = call i32 @FreePPPPacket(%struct.TYPE_18__* %266)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %279

268:                                              ; preds = %215
  %269 = call i32 @SleepThread(i32 100)
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %271 = call i32 @FreePPPPacket(%struct.TYPE_18__* %270)
  br label %17

272:                                              ; preds = %207
  br label %273

273:                                              ; preds = %272
  br label %274

274:                                              ; preds = %273
  br label %275

275:                                              ; preds = %274
  br label %276

276:                                              ; preds = %275
  br label %277

277:                                              ; preds = %276, %104, %99
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %278, %struct.TYPE_18__** %3, align 8
  br label %279

279:                                              ; preds = %277, %265, %167, %93, %23, %15
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %280
}

declare dso_local %struct.TYPE_18__* @PPPRecvPacket(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @PPP_IS_SUPPORTED_PROTOCOL(i32) #1

declare dso_local %struct.TYPE_18__* @ZeroMalloc(i32) #1

declare dso_local %struct.TYPE_19__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_19__*, i64*, i32) #1

declare dso_local i64 @Endian16(i32) #1

declare dso_local i8* @Clone(i8*, i32) #1

declare dso_local i32 @FreePPPPacket(%struct.TYPE_18__*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_19__*) #1

declare dso_local i32 @PPPSendPacket(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i8* @NewPPPLCP(i64, i32) #1

declare dso_local i32 @SleepThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
