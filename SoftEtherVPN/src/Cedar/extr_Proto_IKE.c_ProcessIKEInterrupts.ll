; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_ProcessIKEInterrupts.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_ProcessIKEInterrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_36__ = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32, %struct.TYPE_35__*, i32, i32, i32, i32*, i32*, %struct.TYPE_33__*, %struct.TYPE_33__*, i64, i64, i64 }
%struct.TYPE_35__ = type { i64, i64, i32, i64, i32, i32, %struct.TYPE_32__, i64, %struct.TYPE_36__*, %struct.TYPE_31__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i32*, i32 }
%struct.TYPE_33__ = type { i64, i64, i32, i32, i64, i64, %struct.TYPE_30__*, i64, %struct.TYPE_36__*, %struct.TYPE_31__* }
%struct.TYPE_30__ = type { i64 }

@IKE_UDP_TYPE_ISAKMP = common dso_local global i32 0, align 4
@IKE_SA_RESEND_INTERVAL = common dso_local global i64 0, align 8
@IKE_TIMEOUT_FOR_IKE_CLIENT_FOR_NOT_ESTABLISHED = common dso_local global i64 0, align 8
@WHERE = common dso_local global i32 0, align 4
@IKE_TIMEOUT_FOR_IKE_CLIENT = common dso_local global i64 0, align 8
@IKE_QUICKMODE_START_INTERVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"IKE_CLIENT 0x%X: Begin QuickMode\0A\00", align 1
@IKE_QUICKMODE_FAILED_TIMEOUT = common dso_local global i64 0, align 8
@IKE_INTERVAL_UDP_KEEPALIVE = common dso_local global i64 0, align 8
@IPSEC_PORT_IPSEC_ESP_UDP = common dso_local global i64 0, align 8
@IKE_UDP_KEEPALIVE = common dso_local global i32 0, align 4
@IKE_INTERVAL_DPD_KEEPALIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessIKEInterrupts(%struct.TYPE_34__* %0) #0 {
  %2 = alloca %struct.TYPE_34__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_36__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %2, align 8
  %17 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %18 = icmp eq %struct.TYPE_34__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %849

20:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %47, %20
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @LIST_NUM(i32 %25)
  %27 = icmp slt i64 %22, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %21
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %3, align 8
  %33 = call i8* @LIST_DATA(i32 %31, i64 %32)
  %34 = bitcast i8* %33 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %34, %struct.TYPE_36__** %4, align 8
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %39, i32 0, i32 21
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %41, i32 0, i32 22
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %28
  %48 = load i64, i64* %3, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %3, align 8
  br label %21

50:                                               ; preds = %21
  store i64 0, i64* %3, align 8
  br label %51

51:                                               ; preds = %199, %50
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @LIST_NUM(i32 %55)
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %58, label %202

58:                                               ; preds = %51
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %3, align 8
  %63 = call i8* @LIST_DATA(i32 %61, i64 %62)
  %64 = bitcast i8* %63 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %64, %struct.TYPE_35__** %5, align 8
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %65, i32 0, i32 9
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %66, align 8
  %68 = icmp ne %struct.TYPE_31__* %67, null
  br i1 %68, label %69, label %147

69:                                               ; preds = %58
  %70 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %72, %75
  br i1 %76, label %77, label %146

77:                                               ; preds = %69
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %78, i32 0, i32 8
  %80 = load %struct.TYPE_36__*, %struct.TYPE_36__** %79, align 8
  store %struct.TYPE_36__* %80, %struct.TYPE_36__** %6, align 8
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %82 = load i32, i32* @IKE_UDP_TYPE_ISAKMP, align 4
  %83 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %83, i32 0, i32 15
  %85 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %88, i32 0, i32 14
  %90 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %90, i32 0, i32 13
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %93, i32 0, i32 9
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %98, i32 0, i32 9
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @Clone(i32* %97, i32 %102)
  %104 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %104, i32 0, i32 9
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @IkeSendUdpPacket(%struct.TYPE_34__* %81, i32 %82, i32* %84, i64 %87, i32* %89, i32 %92, i32 %103, i32 %108)
  %110 = load i64, i64* @IKE_SA_RESEND_INTERVAL, align 8
  %111 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @AddInterrupt(i32 %117, i64 %120)
  %122 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %77
  %127 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, -1
  store i64 %130, i64* %128, align 8
  %131 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %126
  %136 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %138, i32 0, i32 9
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %139, align 8
  %141 = call i32 @FreeBuf(%struct.TYPE_31__* %140)
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %142, i32 0, i32 9
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %143, align 8
  br label %144

144:                                              ; preds = %135, %126
  br label %145

145:                                              ; preds = %144, %77
  br label %146

146:                                              ; preds = %145, %69
  br label %147

147:                                              ; preds = %146, %58
  %148 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %148, i32 0, i32 8
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %149, align 8
  %151 = icmp eq %struct.TYPE_36__* %150, null
  br i1 %151, label %160, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %153, i32 0, i32 8
  %155 = load %struct.TYPE_36__*, %struct.TYPE_36__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %155, i32 0, i32 12
  %157 = load %struct.TYPE_35__*, %struct.TYPE_35__** %156, align 8
  %158 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %159 = icmp ne %struct.TYPE_35__* %157, %158
  br i1 %159, label %160, label %198

160:                                              ; preds = %152, %147
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %181

165:                                              ; preds = %160
  %166 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @IKE_TIMEOUT_FOR_IKE_CLIENT_FOR_NOT_ESTABLISHED, align 8
  %170 = add nsw i64 %168, %169
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp sle i64 %170, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %165
  %176 = load i32, i32* @WHERE, align 4
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %179 = call i32 @MarkIkeSaAsDeleted(%struct.TYPE_34__* %177, %struct.TYPE_35__* %178)
  br label %180

180:                                              ; preds = %175, %165
  br label %197

181:                                              ; preds = %160
  %182 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @IKE_TIMEOUT_FOR_IKE_CLIENT, align 8
  %186 = add nsw i64 %184, %185
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp sle i64 %186, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %181
  %192 = load i32, i32* @WHERE, align 4
  %193 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %194 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %195 = call i32 @MarkIkeSaAsDeleted(%struct.TYPE_34__* %193, %struct.TYPE_35__* %194)
  br label %196

196:                                              ; preds = %191, %181
  br label %197

197:                                              ; preds = %196, %180
  br label %198

198:                                              ; preds = %197, %152
  br label %199

199:                                              ; preds = %198
  %200 = load i64, i64* %3, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %3, align 8
  br label %51

202:                                              ; preds = %51
  store i64 0, i64* %3, align 8
  br label %203

203:                                              ; preds = %462, %202
  %204 = load i64, i64* %3, align 8
  %205 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @LIST_NUM(i32 %207)
  %209 = icmp slt i64 %204, %208
  br i1 %209, label %210, label %465

210:                                              ; preds = %203
  %211 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = load i64, i64* %3, align 8
  %215 = call i8* @LIST_DATA(i32 %213, i64 %214)
  %216 = bitcast i8* %215 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %216, %struct.TYPE_33__** %7, align 8
  %217 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %217, i32 0, i32 8
  %219 = load %struct.TYPE_36__*, %struct.TYPE_36__** %218, align 8
  store %struct.TYPE_36__* %219, %struct.TYPE_36__** %8, align 8
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %220, i32 0, i32 9
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %221, align 8
  %223 = icmp ne %struct.TYPE_31__* %222, null
  br i1 %223, label %224, label %302

224:                                              ; preds = %210
  %225 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp sge i64 %227, %230
  br i1 %231, label %232, label %301

232:                                              ; preds = %224
  %233 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %233, i32 0, i32 8
  %235 = load %struct.TYPE_36__*, %struct.TYPE_36__** %234, align 8
  store %struct.TYPE_36__* %235, %struct.TYPE_36__** %9, align 8
  %236 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %237 = load i32, i32* @IKE_UDP_TYPE_ISAKMP, align 4
  %238 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %238, i32 0, i32 15
  %240 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 14
  %245 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %245, i32 0, i32 13
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %248, i32 0, i32 9
  %250 = load %struct.TYPE_31__*, %struct.TYPE_31__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %253, i32 0, i32 9
  %255 = load %struct.TYPE_31__*, %struct.TYPE_31__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @Clone(i32* %252, i32 %257)
  %259 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %259, i32 0, i32 9
  %261 = load %struct.TYPE_31__*, %struct.TYPE_31__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @IkeSendUdpPacket(%struct.TYPE_34__* %236, i32 %237, i32* %239, i64 %242, i32* %244, i32 %247, i32 %258, i32 %263)
  %265 = load i64, i64* @IKE_SA_RESEND_INTERVAL, align 8
  %266 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %268, %265
  store i64 %269, i64* %267, align 8
  %270 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @AddInterrupt(i32 %272, i64 %275)
  %277 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %300

281:                                              ; preds = %232
  %282 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, -1
  store i64 %285, i64* %283, align 8
  %286 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %281
  %291 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %291, i32 0, i32 0
  store i64 0, i64* %292, align 8
  %293 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %293, i32 0, i32 9
  %295 = load %struct.TYPE_31__*, %struct.TYPE_31__** %294, align 8
  %296 = call i32 @FreeBuf(%struct.TYPE_31__* %295)
  %297 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %297, i32 0, i32 9
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %298, align 8
  br label %299

299:                                              ; preds = %290, %281
  br label %300

300:                                              ; preds = %299, %232
  br label %301

301:                                              ; preds = %300, %224
  br label %302

302:                                              ; preds = %301, %210
  %303 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %387

307:                                              ; preds = %302
  %308 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %387

312:                                              ; preds = %307
  %313 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %314 = icmp ne %struct.TYPE_36__* %313, null
  br i1 %314, label %315, label %387

315:                                              ; preds = %312
  %316 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %316, i32 0, i32 7
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %353

320:                                              ; preds = %315
  %321 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %324, i32 0, i32 4
  %326 = load i64, i64* %325, align 8
  %327 = call i8* @MAX(i64 %323, i64 %326)
  %328 = ptrtoint i8* %327 to i64
  %329 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %329, i32 0, i32 1
  store i64 %328, i64* %330, align 8
  %331 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %331, i32 0, i32 22
  %333 = load i64, i64* %332, align 8
  %334 = add nsw i64 %333, 1
  store i64 %334, i64* %332, align 8
  %335 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %335, i32 0, i32 4
  %337 = load i64, i64* %336, align 8
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %347, label %339

339:                                              ; preds = %320
  %340 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %340, i32 0, i32 4
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = icmp sgt i64 %342, %345
  br i1 %346, label %347, label %352

347:                                              ; preds = %339, %320
  %348 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %348, i32 0, i32 3
  %350 = load i64, i64* %349, align 8
  %351 = add nsw i64 %350, 1
  store i64 %351, i64* %349, align 8
  br label %352

352:                                              ; preds = %347, %339
  br label %386

353:                                              ; preds = %315
  %354 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %357, i32 0, i32 4
  %359 = load i64, i64* %358, align 8
  %360 = call i8* @MAX(i64 %356, i64 %359)
  %361 = ptrtoint i8* %360 to i64
  %362 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %362, i32 0, i32 0
  store i64 %361, i64* %363, align 8
  %364 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %364, i32 0, i32 21
  %366 = load i64, i64* %365, align 8
  %367 = add nsw i64 %366, 1
  store i64 %367, i64* %365, align 8
  %368 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %368, i32 0, i32 4
  %370 = load i64, i64* %369, align 8
  %371 = icmp eq i64 %370, 0
  br i1 %371, label %380, label %372

372:                                              ; preds = %353
  %373 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %373, i32 0, i32 4
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %377 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = icmp sgt i64 %375, %378
  br i1 %379, label %380, label %385

380:                                              ; preds = %372, %353
  %381 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %381, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = add nsw i64 %383, 1
  store i64 %384, i64* %382, align 8
  br label %385

385:                                              ; preds = %380, %372
  br label %386

386:                                              ; preds = %385, %352
  br label %387

387:                                              ; preds = %386, %312, %307, %302
  %388 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %388, i32 0, i32 8
  %390 = load %struct.TYPE_36__*, %struct.TYPE_36__** %389, align 8
  %391 = icmp eq %struct.TYPE_36__* %390, null
  br i1 %391, label %408, label %392

392:                                              ; preds = %387
  %393 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %393, i32 0, i32 8
  %395 = load %struct.TYPE_36__*, %struct.TYPE_36__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %395, i32 0, i32 19
  %397 = load %struct.TYPE_33__*, %struct.TYPE_33__** %396, align 8
  %398 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %399 = icmp ne %struct.TYPE_33__* %397, %398
  br i1 %399, label %400, label %461

400:                                              ; preds = %392
  %401 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %401, i32 0, i32 8
  %403 = load %struct.TYPE_36__*, %struct.TYPE_36__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %403, i32 0, i32 18
  %405 = load %struct.TYPE_33__*, %struct.TYPE_33__** %404, align 8
  %406 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %407 = icmp ne %struct.TYPE_33__* %405, %406
  br i1 %407, label %408, label %461

408:                                              ; preds = %400, %387
  %409 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %409, i32 0, i32 5
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %10, align 8
  %412 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %412, i32 0, i32 7
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %427

416:                                              ; preds = %408
  %417 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %418 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %417, i32 0, i32 6
  %419 = load %struct.TYPE_30__*, %struct.TYPE_30__** %418, align 8
  %420 = icmp ne %struct.TYPE_30__* %419, null
  br i1 %420, label %421, label %427

421:                                              ; preds = %416
  %422 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %422, i32 0, i32 6
  %424 = load %struct.TYPE_30__*, %struct.TYPE_30__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  store i64 %426, i64* %10, align 8
  br label %427

427:                                              ; preds = %421, %416, %408
  %428 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %446

432:                                              ; preds = %427
  %433 = load i64, i64* %10, align 8
  %434 = load i64, i64* @IKE_TIMEOUT_FOR_IKE_CLIENT_FOR_NOT_ESTABLISHED, align 8
  %435 = add nsw i64 %433, %434
  %436 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %437 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = icmp sle i64 %435, %438
  br i1 %439, label %440, label %445

440:                                              ; preds = %432
  %441 = load i32, i32* @WHERE, align 4
  %442 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %443 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %444 = call i32 @MarkIPsecSaAsDeleted(%struct.TYPE_34__* %442, %struct.TYPE_33__* %443)
  br label %445

445:                                              ; preds = %440, %432
  br label %460

446:                                              ; preds = %427
  %447 = load i64, i64* %10, align 8
  %448 = load i64, i64* @IKE_TIMEOUT_FOR_IKE_CLIENT, align 8
  %449 = add nsw i64 %447, %448
  %450 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %451 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = icmp sle i64 %449, %452
  br i1 %453, label %454, label %459

454:                                              ; preds = %446
  %455 = load i32, i32* @WHERE, align 4
  %456 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %457 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %458 = call i32 @MarkIPsecSaAsDeleted(%struct.TYPE_34__* %456, %struct.TYPE_33__* %457)
  br label %459

459:                                              ; preds = %454, %446
  br label %460

460:                                              ; preds = %459, %445
  br label %461

461:                                              ; preds = %460, %400, %392
  br label %462

462:                                              ; preds = %461
  %463 = load i64, i64* %3, align 8
  %464 = add nsw i64 %463, 1
  store i64 %464, i64* %3, align 8
  br label %203

465:                                              ; preds = %203
  store i64 0, i64* %3, align 8
  br label %466

466:                                              ; preds = %830, %465
  %467 = load i64, i64* %3, align 8
  %468 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %469 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %468, i32 0, i32 4
  %470 = load i32, i32* %469, align 4
  %471 = call i64 @LIST_NUM(i32 %470)
  %472 = icmp slt i64 %467, %471
  br i1 %472, label %473, label %833

473:                                              ; preds = %466
  %474 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %475 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %474, i32 0, i32 4
  %476 = load i32, i32* %475, align 4
  %477 = load i64, i64* %3, align 8
  %478 = call i8* @LIST_DATA(i32 %476, i64 %477)
  %479 = bitcast i8* %478 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %479, %struct.TYPE_36__** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %480 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %481 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %499

484:                                              ; preds = %473
  %485 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %486 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %485, i32 0, i32 0
  %487 = load i64, i64* %486, align 8
  %488 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %489 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %488, i32 0, i32 1
  %490 = load i64, i64* %489, align 8
  %491 = icmp sge i64 %487, %490
  br i1 %491, label %492, label %499

492:                                              ; preds = %484
  store i32 1, i32* %14, align 4
  %493 = load i64, i64* %16, align 8
  %494 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %495 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %494, i32 0, i32 1
  %496 = load i64, i64* %495, align 8
  %497 = call i8* @MAX(i64 %493, i64 %496)
  %498 = ptrtoint i8* %497 to i64
  store i64 %498, i64* %16, align 8
  br label %499

499:                                              ; preds = %492, %484, %473
  %500 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %501 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %519

504:                                              ; preds = %499
  %505 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %506 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %505, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %509 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %508, i32 0, i32 0
  %510 = load i64, i64* %509, align 8
  %511 = icmp sge i64 %507, %510
  br i1 %511, label %512, label %519

512:                                              ; preds = %504
  store i32 1, i32* %14, align 4
  %513 = load i64, i64* %16, align 8
  %514 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %515 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %514, i32 0, i32 1
  %516 = load i64, i64* %515, align 8
  %517 = call i8* @MAX(i64 %513, i64 %516)
  %518 = ptrtoint i8* %517 to i64
  store i64 %518, i64* %16, align 8
  br label %519

519:                                              ; preds = %512, %504, %499
  %520 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %521 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %520, i32 0, i32 2
  %522 = load i64, i64* %521, align 8
  %523 = icmp eq i64 %522, 0
  br i1 %523, label %529, label %524

524:                                              ; preds = %519
  %525 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %526 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %525, i32 0, i32 3
  %527 = load i64, i64* %526, align 8
  %528 = icmp eq i64 %527, 0
  br i1 %528, label %529, label %530

529:                                              ; preds = %524, %519
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %530

530:                                              ; preds = %529, %524
  %531 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %532 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %531, i32 0, i32 5
  %533 = load i32, i32* %532, align 8
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %536

535:                                              ; preds = %530
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %536

536:                                              ; preds = %535, %530
  %537 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %538 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %537, i32 0, i32 20
  %539 = load i64, i64* %538, align 8
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %553, label %541

541:                                              ; preds = %536
  %542 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %543 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %542, i32 0, i32 12
  %544 = load %struct.TYPE_35__*, %struct.TYPE_35__** %543, align 8
  %545 = icmp eq %struct.TYPE_35__* %544, null
  br i1 %545, label %553, label %546

546:                                              ; preds = %541
  %547 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %548 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %547, i32 0, i32 12
  %549 = load %struct.TYPE_35__*, %struct.TYPE_35__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %549, i32 0, i32 7
  %551 = load i64, i64* %550, align 8
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %554

553:                                              ; preds = %546, %541, %536
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %554

554:                                              ; preds = %553, %546
  %555 = load i32, i32* %14, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %595

557:                                              ; preds = %554
  %558 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %559 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %558, i32 0, i32 5
  %560 = load i32, i32* %559, align 8
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %572, label %562

562:                                              ; preds = %557
  %563 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %564 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %563, i32 0, i32 6
  %565 = load i64, i64* %564, align 8
  %566 = load i64, i64* @IKE_QUICKMODE_START_INTERVAL, align 8
  %567 = add nsw i64 %565, %566
  %568 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %569 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %568, i32 0, i32 0
  %570 = load i64, i64* %569, align 8
  %571 = icmp sle i64 %567, %570
  br i1 %571, label %572, label %594

572:                                              ; preds = %562, %557
  %573 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %574 = call i32 @Debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.TYPE_36__* %573)
  %575 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %576 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %575, i32 0, i32 5
  store i32 0, i32* %576, align 8
  %577 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %578 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %577, i32 0, i32 0
  %579 = load i64, i64* %578, align 8
  %580 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %581 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %580, i32 0, i32 6
  store i64 %579, i64* %581, align 8
  %582 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %583 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %582, i32 0, i32 3
  %584 = load i32, i32* %583, align 8
  %585 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %586 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %585, i32 0, i32 6
  %587 = load i64, i64* %586, align 8
  %588 = load i64, i64* @IKE_QUICKMODE_START_INTERVAL, align 8
  %589 = add nsw i64 %587, %588
  %590 = call i32 @AddInterrupt(i32 %584, i64 %589)
  %591 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %592 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %593 = call i32 @StartQuickMode(%struct.TYPE_34__* %591, %struct.TYPE_36__* %592)
  br label %594

594:                                              ; preds = %572, %562
  br label %595

595:                                              ; preds = %594, %554
  %596 = load i32, i32* %15, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %610

598:                                              ; preds = %595
  %599 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %600 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %599, i32 0, i32 7
  %601 = load i64, i64* %600, align 8
  %602 = icmp eq i64 %601, 0
  br i1 %602, label %603, label %609

603:                                              ; preds = %598
  %604 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %605 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %604, i32 0, i32 0
  %606 = load i64, i64* %605, align 8
  %607 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %608 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %607, i32 0, i32 7
  store i64 %606, i64* %608, align 8
  br label %609

609:                                              ; preds = %603, %598
  br label %613

610:                                              ; preds = %595
  %611 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %612 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %611, i32 0, i32 7
  store i64 0, i64* %612, align 8
  br label %613

613:                                              ; preds = %610, %609
  %614 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %615 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %614, i32 0, i32 8
  %616 = load i64, i64* %615, align 8
  %617 = load i64, i64* @IKE_TIMEOUT_FOR_IKE_CLIENT, align 8
  %618 = add nsw i64 %616, %617
  %619 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %620 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %619, i32 0, i32 0
  %621 = load i64, i64* %620, align 8
  %622 = icmp sle i64 %618, %621
  br i1 %622, label %663, label %623

623:                                              ; preds = %613
  %624 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %625 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %624, i32 0, i32 12
  %626 = load %struct.TYPE_35__*, %struct.TYPE_35__** %625, align 8
  %627 = icmp eq %struct.TYPE_35__* %626, null
  br i1 %627, label %628, label %648

628:                                              ; preds = %623
  %629 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %630 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %629, i32 0, i32 19
  %631 = load %struct.TYPE_33__*, %struct.TYPE_33__** %630, align 8
  %632 = icmp eq %struct.TYPE_33__* %631, null
  br i1 %632, label %633, label %648

633:                                              ; preds = %628
  %634 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %635 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %634, i32 0, i32 18
  %636 = load %struct.TYPE_33__*, %struct.TYPE_33__** %635, align 8
  %637 = icmp eq %struct.TYPE_33__* %636, null
  br i1 %637, label %638, label %648

638:                                              ; preds = %633
  %639 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %640 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %639, i32 0, i32 8
  %641 = load i64, i64* %640, align 8
  %642 = load i64, i64* @IKE_TIMEOUT_FOR_IKE_CLIENT_FOR_NOT_ESTABLISHED, align 8
  %643 = add nsw i64 %641, %642
  %644 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %645 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %644, i32 0, i32 0
  %646 = load i64, i64* %645, align 8
  %647 = icmp sle i64 %643, %646
  br i1 %647, label %663, label %648

648:                                              ; preds = %638, %633, %628, %623
  %649 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %650 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %649, i32 0, i32 7
  %651 = load i64, i64* %650, align 8
  %652 = icmp ne i64 %651, 0
  br i1 %652, label %653, label %668

653:                                              ; preds = %648
  %654 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %655 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %654, i32 0, i32 7
  %656 = load i64, i64* %655, align 8
  %657 = load i64, i64* @IKE_QUICKMODE_FAILED_TIMEOUT, align 8
  %658 = add nsw i64 %656, %657
  %659 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %660 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %659, i32 0, i32 0
  %661 = load i64, i64* %660, align 8
  %662 = icmp sle i64 %658, %661
  br i1 %662, label %663, label %668

663:                                              ; preds = %653, %638, %613
  %664 = load i32, i32* @WHERE, align 4
  %665 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %666 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %667 = call i32 @MarkIkeClientAsDeleted(%struct.TYPE_34__* %665, %struct.TYPE_36__* %666)
  br label %668

668:                                              ; preds = %663, %653, %648
  %669 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %670 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %669, i32 0, i32 17
  %671 = load i32*, i32** %670, align 8
  %672 = icmp ne i32* %671, null
  br i1 %672, label %673, label %687

673:                                              ; preds = %668
  %674 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %675 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %676 = call i32 @IPsecIkeClientManageL2TPServer(%struct.TYPE_34__* %674, %struct.TYPE_36__* %675)
  %677 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %678 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %677, i32 0, i32 17
  %679 = load i32*, i32** %678, align 8
  %680 = call i32 @L2TPProcessInterrupts(i32* %679)
  %681 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %682 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %683 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %684 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %683, i32 0, i32 17
  %685 = load i32*, i32** %684, align 8
  %686 = call i32 @IPsecIkeClientSendL2TPPackets(%struct.TYPE_34__* %681, %struct.TYPE_36__* %682, i32* %685)
  br label %687

687:                                              ; preds = %673, %668
  %688 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %689 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %688, i32 0, i32 16
  %690 = load i32*, i32** %689, align 8
  %691 = icmp ne i32* %690, null
  br i1 %691, label %692, label %706

692:                                              ; preds = %687
  %693 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %694 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %695 = call i32 @IPsecIkeClientManageEtherIPServer(%struct.TYPE_34__* %693, %struct.TYPE_36__* %694)
  %696 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %697 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %696, i32 0, i32 16
  %698 = load i32*, i32** %697, align 8
  %699 = call i32 @EtherIPProcInterrupts(i32* %698)
  %700 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %701 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %702 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %703 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %702, i32 0, i32 16
  %704 = load i32*, i32** %703, align 8
  %705 = call i32 @IPsecIkeClientSendEtherIPPackets(%struct.TYPE_34__* %700, %struct.TYPE_36__* %701, i32* %704)
  br label %706

706:                                              ; preds = %692, %687
  %707 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %708 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %707, i32 0, i32 8
  %709 = load i64, i64* %708, align 8
  %710 = load i64, i64* @IKE_INTERVAL_UDP_KEEPALIVE, align 8
  %711 = add nsw i64 %709, %710
  %712 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %713 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %712, i32 0, i32 9
  %714 = load i64, i64* %713, align 8
  %715 = call i8* @MAX(i64 %711, i64 %714)
  %716 = ptrtoint i8* %715 to i64
  store i64 %716, i64* %12, align 8
  %717 = load i64, i64* %12, align 8
  %718 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %719 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %718, i32 0, i32 0
  %720 = load i64, i64* %719, align 8
  %721 = icmp sle i64 %717, %720
  br i1 %721, label %722, label %761

722:                                              ; preds = %706
  %723 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %724 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %723, i32 0, i32 4
  %725 = load i64, i64* %724, align 8
  %726 = load i64, i64* @IPSEC_PORT_IPSEC_ESP_UDP, align 8
  %727 = icmp eq i64 %725, %726
  br i1 %727, label %728, label %761

728:                                              ; preds = %722
  %729 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %730 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %729, i32 0, i32 0
  %731 = load i64, i64* %730, align 8
  %732 = load i64, i64* @IKE_INTERVAL_UDP_KEEPALIVE, align 8
  %733 = add nsw i64 %731, %732
  %734 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %735 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %734, i32 0, i32 9
  store i64 %733, i64* %735, align 8
  %736 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %737 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %736, i32 0, i32 3
  %738 = load i32, i32* %737, align 8
  %739 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %740 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %739, i32 0, i32 9
  %741 = load i64, i64* %740, align 8
  %742 = call i32 @AddInterrupt(i32 %738, i64 %741)
  %743 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %744 = call i32 @Zero(i32* %743, i32 4)
  %745 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  store i32 255, i32* %745, align 4
  %746 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %747 = load i32, i32* @IKE_UDP_KEEPALIVE, align 4
  %748 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %749 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %748, i32 0, i32 15
  %750 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %751 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %750, i32 0, i32 4
  %752 = load i64, i64* %751, align 8
  %753 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %754 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %753, i32 0, i32 14
  %755 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %756 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %755, i32 0, i32 13
  %757 = load i32, i32* %756, align 8
  %758 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %759 = call i32 @Clone(i32* %758, i32 4)
  %760 = call i32 @IkeSendUdpPacket(%struct.TYPE_34__* %746, i32 %747, i32* %749, i64 %752, i32* %754, i32 %757, i32 %759, i32 4)
  br label %761

761:                                              ; preds = %728, %722, %706
  %762 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %763 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %762, i32 0, i32 10
  %764 = load i64, i64* %763, align 8
  %765 = icmp eq i64 %764, 0
  br i1 %765, label %774, label %766

766:                                              ; preds = %761
  %767 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %768 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %767, i32 0, i32 10
  %769 = load i64, i64* %768, align 8
  %770 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %771 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %770, i32 0, i32 0
  %772 = load i64, i64* %771, align 8
  %773 = icmp sle i64 %769, %772
  br i1 %773, label %774, label %829

774:                                              ; preds = %766, %761
  %775 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %776 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %775, i32 0, i32 12
  %777 = load %struct.TYPE_35__*, %struct.TYPE_35__** %776, align 8
  %778 = icmp ne %struct.TYPE_35__* %777, null
  br i1 %778, label %779, label %828

779:                                              ; preds = %774
  %780 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %781 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %780, i32 0, i32 12
  %782 = load %struct.TYPE_35__*, %struct.TYPE_35__** %781, align 8
  %783 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %782, i32 0, i32 2
  %784 = load i32, i32* %783, align 8
  %785 = icmp ne i32 %784, 0
  br i1 %785, label %786, label %828

786:                                              ; preds = %779
  %787 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %788 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %787, i32 0, i32 12
  %789 = load %struct.TYPE_35__*, %struct.TYPE_35__** %788, align 8
  %790 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %789, i32 0, i32 6
  %791 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %790, i32 0, i32 0
  %792 = load i64, i64* %791, align 8
  %793 = icmp ne i64 %792, 0
  br i1 %793, label %794, label %827

794:                                              ; preds = %786
  %795 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %796 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %795, i32 0, i32 0
  %797 = load i64, i64* %796, align 8
  %798 = load i64, i64* @IKE_INTERVAL_DPD_KEEPALIVE, align 8
  %799 = add nsw i64 %797, %798
  %800 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %801 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %800, i32 0, i32 10
  store i64 %799, i64* %801, align 8
  %802 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %803 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %802, i32 0, i32 3
  %804 = load i32, i32* %803, align 8
  %805 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %806 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %805, i32 0, i32 10
  %807 = load i64, i64* %806, align 8
  %808 = call i32 @AddInterrupt(i32 %804, i64 %807)
  %809 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %810 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %811 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %812 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %811, i32 0, i32 12
  %813 = load %struct.TYPE_35__*, %struct.TYPE_35__** %812, align 8
  %814 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %813, i32 0, i32 5
  %815 = load i32, i32* %814, align 4
  %816 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %817 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %816, i32 0, i32 12
  %818 = load %struct.TYPE_35__*, %struct.TYPE_35__** %817, align 8
  %819 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %818, i32 0, i32 4
  %820 = load i32, i32* %819, align 8
  %821 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %822 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %821, i32 0, i32 11
  %823 = load i32, i32* %822, align 8
  %824 = add nsw i32 %823, 1
  store i32 %824, i32* %822, align 8
  %825 = call i32 @IkeNewNoticeDpdPayload(i32 0, i32 %815, i32 %820, i32 %823)
  %826 = call i32 @SendInformationalExchangePacket(%struct.TYPE_34__* %809, %struct.TYPE_36__* %810, i32 %825)
  br label %827

827:                                              ; preds = %794, %786
  br label %828

828:                                              ; preds = %827, %779, %774
  br label %829

829:                                              ; preds = %828, %766
  br label %830

830:                                              ; preds = %829
  %831 = load i64, i64* %3, align 8
  %832 = add nsw i64 %831, 1
  store i64 %832, i64* %3, align 8
  br label %466

833:                                              ; preds = %466
  br label %834

834:                                              ; preds = %839, %833
  %835 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %836 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %835, i32 0, i32 1
  store i32 0, i32* %836, align 8
  %837 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %838 = call i32 @PurgeDeletingSAsAndClients(%struct.TYPE_34__* %837)
  br label %839

839:                                              ; preds = %834
  %840 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %841 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %840, i32 0, i32 1
  %842 = load i32, i32* %841, align 8
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %834, label %844

844:                                              ; preds = %839
  %845 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %846 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %845, i32 0, i32 2
  %847 = load i32, i32* %846, align 4
  %848 = call i32 @MaintainThreadList(i32 %847)
  br label %849

849:                                              ; preds = %844, %19
  ret void
}

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i32 @IkeSendUdpPacket(%struct.TYPE_34__*, i32, i32*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @Clone(i32*, i32) #1

declare dso_local i32 @AddInterrupt(i32, i64) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_31__*) #1

declare dso_local i32 @MarkIkeSaAsDeleted(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i8* @MAX(i64, i64) #1

declare dso_local i32 @MarkIPsecSaAsDeleted(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @Debug(i8*, %struct.TYPE_36__*) #1

declare dso_local i32 @StartQuickMode(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @MarkIkeClientAsDeleted(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @IPsecIkeClientManageL2TPServer(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @L2TPProcessInterrupts(i32*) #1

declare dso_local i32 @IPsecIkeClientSendL2TPPackets(%struct.TYPE_34__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i32 @IPsecIkeClientManageEtherIPServer(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @EtherIPProcInterrupts(i32*) #1

declare dso_local i32 @IPsecIkeClientSendEtherIPPackets(%struct.TYPE_34__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @SendInformationalExchangePacket(%struct.TYPE_34__*, %struct.TYPE_36__*, i32) #1

declare dso_local i32 @IkeNewNoticeDpdPayload(i32, i32, i32, i32) #1

declare dso_local i32 @PurgeDeletingSAsAndClients(%struct.TYPE_34__*) #1

declare dso_local i32 @MaintainThreadList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
