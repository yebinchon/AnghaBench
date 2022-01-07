; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnTestConnectivity.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnTestConnectivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i32, %struct.TYPE_28__*, i32, %struct.TYPE_37__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32*, i32* }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_40__ = type { i64, i64, i32, %struct.TYPE_36__, %struct.TYPE_34__, i64 }
%struct.TYPE_36__ = type { %struct.TYPE_35__*, %struct.TYPE_32__* }
%struct.TYPE_35__ = type { i64, i64 }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_34__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64, i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_39__ = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"NnTestConnectivity: GetMyPrivateIP failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"NnTestConnectivity: GetMyPrivateIP ok: %r\0A\00", align 1
@NN_CHECK_HOSTNAME = common dso_local global i32 0, align 4
@IP_PROTO_UDP = common dso_local global i32 0, align 4
@NN_CHECK_CONNECTIVITY_TIMEOUT = common dso_local global i64 0, align 8
@NN_CHECK_CONNECTIVITY_INTERVAL = common dso_local global i64 0, align 8
@L3_IPV4 = common dso_local global i64 0, align 8
@L4_UDP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"NativeStack: Using DNS: %r\0A\00", align 1
@TCP_SYN = common dso_local global i32 0, align 4
@IP_PROTO_TCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Test TCP to %r\0A\00", align 1
@L4_TCP = common dso_local global i64 0, align 8
@TCP_ACK = common dso_local global i32 0, align 4
@WHERE = common dso_local global i32 0, align 4
@TCP_RST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"NsStartIpTablesTracking failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NnTestConnectivity(%struct.TYPE_27__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [3 x i32*], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_31__*, align 8
  %23 = alloca %struct.TYPE_40__*, align 8
  %24 = alloca %struct.TYPE_29__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_30__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_31__*, align 8
  %32 = alloca %struct.TYPE_40__*, align 8
  %33 = alloca %struct.TYPE_39__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %34 = call i32 (...) @Rand16()
  store i32 %34, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %36 = icmp eq %struct.TYPE_27__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %625

38:                                               ; preds = %2
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @NnGenSrcPort(i64 %41)
  store i32 %42, i32* %20, align 4
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 1
  %45 = call i32 @Copy(i32* %19, i32* %44, i32 4)
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %38
  %51 = call i32 @GetMyPrivateIP(i32* %17, i32 0)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %625

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_37__*, %struct.TYPE_37__** %58, align 8
  %60 = icmp ne %struct.TYPE_37__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %64, i32 0, i32 0
  %66 = call i32 @Copy(i32* %65, i32* %17, i32 4)
  br label %67

67:                                               ; preds = %61, %55
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %38
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %71, align 8
  store %struct.TYPE_28__* %72, %struct.TYPE_28__** %12, align 8
  %73 = call i32* (...) @NewInterruptManager()
  store i32* %73, i32** %13, align 8
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_38__*, %struct.TYPE_38__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 %81
  store i32* %78, i32** %82, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_38__*, %struct.TYPE_38__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 %90
  store i32* %87, i32** %91, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %69
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 %98
  store i32* %95, i32** %99, align 8
  br label %100

100:                                              ; preds = %94, %69
  %101 = call i32 @Zero(i32* %16, i32 4)
  %102 = load i32, i32* @NN_CHECK_HOSTNAME, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @NnBuildDnsQueryPacket(i32 %102, i32 %103)
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = call i64 @IPToUINT(i32* %106)
  %108 = load i32, i32* %20, align 4
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 1
  %111 = call i64 @IPToUINT(i32* %110)
  %112 = call i32 @NnBuildUdpPacket(i32 %104, i64 %107, i32 %108, i64 %111, i32 53)
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  %115 = call i64 @IPToUINT(i32* %114)
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 1
  %118 = call i64 @IPToUINT(i32* %117)
  %119 = load i32, i32* @IP_PROTO_UDP, align 4
  %120 = call %struct.TYPE_30__* @NnBuildIpPacket(i32 %112, i64 %115, i64 %118, i32 %119, i32 0)
  store %struct.TYPE_30__* %120, %struct.TYPE_30__** %6, align 8
  %121 = load i32, i32* @NN_CHECK_HOSTNAME, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @NnBuildDnsQueryPacket(i32 %121, i32 %122)
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = call i64 @IPToUINT(i32* %125)
  %127 = load i32, i32* %20, align 4
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 1
  %130 = call i64 @IPToUINT(i32* %129)
  %131 = call i32 @NnBuildUdpPacket(i32 %123, i64 %126, i32 %127, i64 %130, i32 53)
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 0
  %134 = call i64 @IPToUINT(i32* %133)
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 3
  %137 = call i64 @IPToUINT(i32* %136)
  %138 = load i32, i32* @IP_PROTO_UDP, align 4
  %139 = call %struct.TYPE_30__* @NnBuildIpPacket(i32 %131, i64 %134, i64 %137, i32 %138, i32 0)
  store %struct.TYPE_30__* %139, %struct.TYPE_30__** %7, align 8
  %140 = call i64 (...) @Tick64()
  %141 = load i64, i64* @NN_CHECK_CONNECTIVITY_TIMEOUT, align 8
  %142 = add nsw i64 %140, %141
  store i64 %142, i64* %11, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = load i64, i64* %11, align 8
  %145 = call i32 @AddInterrupt(i32* %143, i64 %144)
  br label %146

146:                                              ; preds = %100, %350
  %147 = call i64 (...) @Tick64()
  store i64 %147, i64* %21, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %149, align 8
  %151 = call i32 @IPCFlushArpTable(%struct.TYPE_28__* %150)
  %152 = load i64, i64* %21, align 8
  %153 = load i64, i64* %11, align 8
  %154 = icmp sge i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  br label %356

156:                                              ; preds = %146
  %157 = load i64, i64* %10, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* %21, align 8
  %162 = icmp sle i64 %160, %161
  br i1 %162, label %163, label %194

163:                                              ; preds = %159, %156
  %164 = load i64, i64* %21, align 8
  %165 = load i64, i64* @NN_CHECK_CONNECTIVITY_INTERVAL, align 8
  %166 = add nsw i64 %164, %165
  store i64 %166, i64* %10, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @AddInterrupt(i32* %167, i64 %168)
  %170 = load i32, i32* %18, align 4
  %171 = srem i32 %170, 2
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %163
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @IPCSendIPv4(%struct.TYPE_28__* %174, i32 %177, i32 %180)
  br label %191

182:                                              ; preds = %163
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %184 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @IPCSendIPv4(%struct.TYPE_28__* %183, i32 %186, i32 %189)
  br label %191

191:                                              ; preds = %182, %173
  %192 = load i32, i32* %18, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %18, align 4
  br label %194

194:                                              ; preds = %191, %159
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %196 = call i32 @IPCProcessL3Events(%struct.TYPE_28__* %195)
  br label %197

197:                                              ; preds = %194, %317
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %199 = call %struct.TYPE_31__* @IPCRecvIPv4(%struct.TYPE_28__* %198)
  store %struct.TYPE_31__* %199, %struct.TYPE_31__** %22, align 8
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %201 = icmp eq %struct.TYPE_31__* %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %322

203:                                              ; preds = %197
  %204 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call %struct.TYPE_40__* @ParsePacketIPv4WithDummyMacHeader(i32 %206, i32 %209)
  store %struct.TYPE_40__* %210, %struct.TYPE_40__** %23, align 8
  %211 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %212 = icmp ne %struct.TYPE_40__* %211, null
  br i1 %212, label %213, label %317

213:                                              ; preds = %203
  %214 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %215 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @L3_IPV4, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %316

219:                                              ; preds = %213
  %220 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %221 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @L4_UDP, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %316

225:                                              ; preds = %219
  %226 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %227 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 1
  %234 = call i64 @IPToUINT(i32* %233)
  %235 = icmp eq i64 %231, %234
  br i1 %235, label %247, label %236

236:                                              ; preds = %225
  %237 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %238 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_33__*, %struct.TYPE_33__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 3
  %245 = call i64 @IPToUINT(i32* %244)
  %246 = icmp eq i64 %242, %245
  br i1 %246, label %247, label %316

247:                                              ; preds = %236, %225
  %248 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %249 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_33__*, %struct.TYPE_33__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 0
  %256 = call i64 @IPToUINT(i32* %255)
  %257 = icmp eq i64 %253, %256
  br i1 %257, label %258, label %316

258:                                              ; preds = %247
  %259 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %260 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_32__*, %struct.TYPE_32__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = call i64 @Endian16(i32 53)
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %316

267:                                              ; preds = %258
  %268 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %269 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_32__*, %struct.TYPE_32__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load i32, i32* %20, align 4
  %275 = call i64 @Endian16(i32 %274)
  %276 = icmp eq i64 %273, %275
  br i1 %276, label %277, label %316

277:                                              ; preds = %267
  %278 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %279 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %278, i32 0, i32 5
  %280 = load i64, i64* %279, align 8
  %281 = inttoptr i64 %280 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %281, %struct.TYPE_29__** %24, align 8
  %282 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %283 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = icmp uge i64 %285, 8
  br i1 %286, label %287, label %315

287:                                              ; preds = %277
  %288 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %289 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* %9, align 4
  %292 = call i64 @Endian16(i32 %291)
  %293 = icmp eq i64 %290, %292
  br i1 %293, label %294, label %314

294:                                              ; preds = %287
  %295 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %296 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %295, i32 0, i32 5
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %299 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = call i64 @NnParseDnsResponsePacket(i64 %297, i32 %300, i32* %25)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %294
  %304 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %305 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %304, i32 0, i32 4
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = call i32 @UINTToIP(i32* %19, i64 %309)
  %311 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %19)
  %312 = call i32 @Copy(i32* %16, i32* %25, i32 4)
  br label %313

313:                                              ; preds = %303, %294
  br label %314

314:                                              ; preds = %313, %287
  br label %315

315:                                              ; preds = %314, %277
  br label %316

316:                                              ; preds = %315, %267, %258, %247, %236, %219, %213
  br label %317

317:                                              ; preds = %316, %203
  %318 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %319 = call i32 @FreePacketWithData(%struct.TYPE_40__* %318)
  %320 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %321 = call i32 @FreeBlock(%struct.TYPE_31__* %320)
  br label %197

322:                                              ; preds = %202
  %323 = load i32*, i32** %5, align 8
  %324 = icmp ne i32* %323, null
  br i1 %324, label %325, label %329

325:                                              ; preds = %322
  %326 = load i32*, i32** %5, align 8
  %327 = call i32 @IsTubeConnected(i32* %326)
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %345, label %329

329:                                              ; preds = %325, %322
  %330 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %331 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_38__*, %struct.TYPE_38__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = call i32 @IsTubeConnected(i32* %334)
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %345, label %337

337:                                              ; preds = %329
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_38__*, %struct.TYPE_38__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = call i32 @IsTubeConnected(i32* %342)
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %337, %329, %325
  br label %356

346:                                              ; preds = %337
  %347 = call i32 @IsZeroIP(i32* %16)
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  br label %356

350:                                              ; preds = %346
  %351 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  %352 = load i32, i32* %15, align 4
  %353 = load i32*, i32** %13, align 8
  %354 = call i32 @GetNextIntervalForInterrupt(i32* %353)
  %355 = call i32 @WaitForTubes(i32** %351, i32 %352, i32 %354)
  br label %146

356:                                              ; preds = %349, %345, %155
  %357 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %358 = call i32 @FreeBuf(%struct.TYPE_30__* %357)
  %359 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %360 = call i32 @FreeBuf(%struct.TYPE_30__* %359)
  %361 = call i32 @IsZeroIP(i32* %16)
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %598

363:                                              ; preds = %356
  %364 = call i32 (...) @Rand32()
  store i32 %364, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %365 = call i64 (...) @Tick64()
  %366 = load i64, i64* @NN_CHECK_CONNECTIVITY_TIMEOUT, align 8
  %367 = add nsw i64 %365, %366
  store i64 %367, i64* %11, align 8
  %368 = load i32*, i32** %13, align 8
  %369 = load i64, i64* %11, align 8
  %370 = call i32 @AddInterrupt(i32* %368, i64 %369)
  %371 = call i32 (...) @NewBuf()
  %372 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %372, i32 0, i32 0
  %374 = call i64 @IPToUINT(i32* %373)
  %375 = load i32, i32* %20, align 4
  %376 = call i64 @IPToUINT(i32* %16)
  %377 = load i32, i32* %27, align 4
  %378 = load i32, i32* @TCP_SYN, align 4
  %379 = call i32 @NnBuildTcpPacket(i32 %371, i64 %374, i32 %375, i64 %376, i32 80, i32 %377, i32 0, i32 %378, i32 8192, i32 1414)
  %380 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %381 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %380, i32 0, i32 0
  %382 = call i64 @IPToUINT(i32* %381)
  %383 = call i64 @IPToUINT(i32* %16)
  %384 = load i32, i32* @IP_PROTO_TCP, align 4
  %385 = call %struct.TYPE_30__* @NnBuildIpPacket(i32 %379, i64 %382, i64 %383, i32 %384, i32 0)
  store %struct.TYPE_30__* %385, %struct.TYPE_30__** %26, align 8
  %386 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %16)
  store i64 0, i64* %10, align 8
  br label %387

387:                                              ; preds = %363, %549
  %388 = call i64 (...) @Tick64()
  store i64 %388, i64* %30, align 8
  %389 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %389, i32 0, i32 2
  %391 = load %struct.TYPE_28__*, %struct.TYPE_28__** %390, align 8
  %392 = call i32 @IPCFlushArpTable(%struct.TYPE_28__* %391)
  %393 = load i64, i64* %30, align 8
  %394 = load i64, i64* %11, align 8
  %395 = icmp sge i64 %393, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %387
  br label %555

397:                                              ; preds = %387
  %398 = load i64, i64* %10, align 8
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %404, label %400

400:                                              ; preds = %397
  %401 = load i64, i64* %10, align 8
  %402 = load i64, i64* %30, align 8
  %403 = icmp sle i64 %401, %402
  br i1 %403, label %404, label %419

404:                                              ; preds = %400, %397
  %405 = load i64, i64* %30, align 8
  %406 = load i64, i64* @NN_CHECK_CONNECTIVITY_INTERVAL, align 8
  %407 = add nsw i64 %405, %406
  store i64 %407, i64* %10, align 8
  %408 = load i32*, i32** %13, align 8
  %409 = load i64, i64* %10, align 8
  %410 = call i32 @AddInterrupt(i32* %408, i64 %409)
  %411 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %412 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %413 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %416 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @IPCSendIPv4(%struct.TYPE_28__* %411, i32 %414, i32 %417)
  br label %419

419:                                              ; preds = %404, %400
  %420 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %421 = call i32 @IPCProcessL3Events(%struct.TYPE_28__* %420)
  br label %422

422:                                              ; preds = %419, %515
  %423 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %424 = call %struct.TYPE_31__* @IPCRecvIPv4(%struct.TYPE_28__* %423)
  store %struct.TYPE_31__* %424, %struct.TYPE_31__** %31, align 8
  %425 = load %struct.TYPE_31__*, %struct.TYPE_31__** %31, align 8
  %426 = icmp eq %struct.TYPE_31__* %425, null
  br i1 %426, label %427, label %428

427:                                              ; preds = %422
  br label %520

428:                                              ; preds = %422
  %429 = load %struct.TYPE_31__*, %struct.TYPE_31__** %31, align 8
  %430 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.TYPE_31__*, %struct.TYPE_31__** %31, align 8
  %433 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = call %struct.TYPE_40__* @ParsePacketIPv4WithDummyMacHeader(i32 %431, i32 %434)
  store %struct.TYPE_40__* %435, %struct.TYPE_40__** %32, align 8
  %436 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %437 = icmp ne %struct.TYPE_40__* %436, null
  br i1 %437, label %438, label %515

438:                                              ; preds = %428
  %439 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %440 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* @L3_IPV4, align 8
  %443 = icmp eq i64 %441, %442
  br i1 %443, label %444, label %514

444:                                              ; preds = %438
  %445 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %446 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = load i64, i64* @L4_TCP, align 8
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %450, label %514

450:                                              ; preds = %444
  %451 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %452 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %451, i32 0, i32 4
  %453 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %452, i32 0, i32 0
  %454 = load %struct.TYPE_33__*, %struct.TYPE_33__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = call i64 @IPToUINT(i32* %16)
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %514

459:                                              ; preds = %450
  %460 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %461 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %460, i32 0, i32 4
  %462 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %461, i32 0, i32 0
  %463 = load %struct.TYPE_33__*, %struct.TYPE_33__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %463, i32 0, i32 1
  %465 = load i64, i64* %464, align 8
  %466 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %467 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %466, i32 0, i32 0
  %468 = call i64 @IPToUINT(i32* %467)
  %469 = icmp eq i64 %465, %468
  br i1 %469, label %470, label %514

470:                                              ; preds = %459
  %471 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %472 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %471, i32 0, i32 3
  %473 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %472, i32 0, i32 0
  %474 = load %struct.TYPE_35__*, %struct.TYPE_35__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = call i64 @Endian16(i32 80)
  %478 = icmp eq i64 %476, %477
  br i1 %478, label %479, label %514

479:                                              ; preds = %470
  %480 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %481 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %480, i32 0, i32 3
  %482 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %481, i32 0, i32 0
  %483 = load %struct.TYPE_35__*, %struct.TYPE_35__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = load i32, i32* %20, align 4
  %487 = call i64 @Endian16(i32 %486)
  %488 = icmp eq i64 %485, %487
  br i1 %488, label %489, label %514

489:                                              ; preds = %479
  %490 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %491 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %490, i32 0, i32 3
  %492 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %491, i32 0, i32 0
  %493 = load %struct.TYPE_35__*, %struct.TYPE_35__** %492, align 8
  %494 = bitcast %struct.TYPE_35__* %493 to %struct.TYPE_39__*
  store %struct.TYPE_39__* %494, %struct.TYPE_39__** %33, align 8
  %495 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %496 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* @TCP_SYN, align 4
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %513

501:                                              ; preds = %489
  %502 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %503 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* @TCP_ACK, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %513

508:                                              ; preds = %501
  store i32 1, i32* %28, align 4
  %509 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %510 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = call i32 @Endian32(i32 %511)
  store i32 %512, i32* %29, align 4
  br label %513

513:                                              ; preds = %508, %501, %489
  br label %514

514:                                              ; preds = %513, %479, %470, %459, %450, %444, %438
  br label %515

515:                                              ; preds = %514, %428
  %516 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %517 = call i32 @FreePacketWithData(%struct.TYPE_40__* %516)
  %518 = load %struct.TYPE_31__*, %struct.TYPE_31__** %31, align 8
  %519 = call i32 @FreeBlock(%struct.TYPE_31__* %518)
  br label %422

520:                                              ; preds = %427
  %521 = load i32*, i32** %5, align 8
  %522 = icmp ne i32* %521, null
  br i1 %522, label %523, label %527

523:                                              ; preds = %520
  %524 = load i32*, i32** %5, align 8
  %525 = call i32 @IsTubeConnected(i32* %524)
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %543, label %527

527:                                              ; preds = %523, %520
  %528 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %529 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %528, i32 0, i32 1
  %530 = load %struct.TYPE_38__*, %struct.TYPE_38__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %530, i32 0, i32 1
  %532 = load i32*, i32** %531, align 8
  %533 = call i32 @IsTubeConnected(i32* %532)
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %543, label %535

535:                                              ; preds = %527
  %536 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %537 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %536, i32 0, i32 1
  %538 = load %struct.TYPE_38__*, %struct.TYPE_38__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %538, i32 0, i32 0
  %540 = load i32*, i32** %539, align 8
  %541 = call i32 @IsTubeConnected(i32* %540)
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %544

543:                                              ; preds = %535, %527, %523
  br label %555

544:                                              ; preds = %535
  %545 = load i32, i32* %28, align 4
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %549

547:                                              ; preds = %544
  %548 = load i32, i32* @WHERE, align 4
  br label %555

549:                                              ; preds = %544
  %550 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  %551 = load i32, i32* %15, align 4
  %552 = load i32*, i32** %13, align 8
  %553 = call i32 @GetNextIntervalForInterrupt(i32* %552)
  %554 = call i32 @WaitForTubes(i32** %550, i32 %551, i32 %553)
  br label %387

555:                                              ; preds = %547, %543, %396
  %556 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %557 = call i32 @FreeBuf(%struct.TYPE_30__* %556)
  %558 = load i32, i32* %29, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %563

560:                                              ; preds = %555
  %561 = load i32, i32* %29, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %29, align 4
  br label %563

563:                                              ; preds = %560, %555
  %564 = call i32 (...) @NewBuf()
  %565 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %566 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %565, i32 0, i32 0
  %567 = call i64 @IPToUINT(i32* %566)
  %568 = load i32, i32* %20, align 4
  %569 = call i64 @IPToUINT(i32* %16)
  %570 = load i32, i32* %27, align 4
  %571 = add nsw i32 %570, 1
  %572 = load i32, i32* %29, align 4
  %573 = load i32, i32* @TCP_RST, align 4
  %574 = load i32, i32* @TCP_ACK, align 4
  %575 = or i32 %573, %574
  %576 = call i32 @NnBuildTcpPacket(i32 %564, i64 %567, i32 %568, i64 %569, i32 80, i32 %571, i32 %572, i32 %575, i32 8192, i32 0)
  %577 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %578 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %577, i32 0, i32 0
  %579 = call i64 @IPToUINT(i32* %578)
  %580 = call i64 @IPToUINT(i32* %16)
  %581 = load i32, i32* @IP_PROTO_TCP, align 4
  %582 = call %struct.TYPE_30__* @NnBuildIpPacket(i32 %576, i64 %579, i64 %580, i32 %581, i32 0)
  store %struct.TYPE_30__* %582, %struct.TYPE_30__** %26, align 8
  %583 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %584 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %585 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %584, i32 0, i32 1
  %586 = load i32, i32* %585, align 4
  %587 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %588 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 4
  %590 = call i32 @IPCSendIPv4(%struct.TYPE_28__* %583, i32 %586, i32 %589)
  %591 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %592 = call i32 @FreeBuf(%struct.TYPE_30__* %591)
  %593 = call i32 @SleepThread(i32 100)
  %594 = load i32, i32* %28, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %563
  store i32 1, i32* %8, align 4
  br label %597

597:                                              ; preds = %596, %563
  br label %598

598:                                              ; preds = %597, %356
  %599 = load i32*, i32** %13, align 8
  %600 = call i32 @FreeInterruptManager(i32* %599)
  %601 = load i32, i32* %8, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %623

603:                                              ; preds = %598
  %604 = call i32 @IsZeroIP(i32* %19)
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %610

606:                                              ; preds = %603
  %607 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %608 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %607, i32 0, i32 1
  %609 = call i32 @Copy(i32* %608, i32* %19, i32 4)
  br label %610

610:                                              ; preds = %606, %603
  %611 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %612 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %611, i32 0, i32 0
  %613 = load i64, i64* %612, align 8
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %622

615:                                              ; preds = %610
  %616 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %617 = call i32 @NsStartIpTablesTracking(%struct.TYPE_27__* %616)
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %621

619:                                              ; preds = %615
  %620 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %621

621:                                              ; preds = %619, %615
  br label %622

622:                                              ; preds = %621, %610
  br label %623

623:                                              ; preds = %622, %598
  %624 = load i32, i32* %8, align 4
  store i32 %624, i32* %3, align 4
  br label %625

625:                                              ; preds = %623, %53, %37
  %626 = load i32, i32* %3, align 4
  ret i32 %626
}

declare dso_local i32 @Rand16(...) #1

declare dso_local i32 @NnGenSrcPort(i64) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @GetMyPrivateIP(i32*, i32) #1

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32* @NewInterruptManager(...) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local %struct.TYPE_30__* @NnBuildIpPacket(i32, i64, i64, i32, i32) #1

declare dso_local i32 @NnBuildUdpPacket(i32, i64, i32, i64, i32) #1

declare dso_local i32 @NnBuildDnsQueryPacket(i32, i32) #1

declare dso_local i64 @IPToUINT(i32*) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @AddInterrupt(i32*, i64) #1

declare dso_local i32 @IPCFlushArpTable(%struct.TYPE_28__*) #1

declare dso_local i32 @IPCSendIPv4(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @IPCProcessL3Events(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_31__* @IPCRecvIPv4(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_40__* @ParsePacketIPv4WithDummyMacHeader(i32, i32) #1

declare dso_local i64 @Endian16(i32) #1

declare dso_local i64 @NnParseDnsResponsePacket(i64, i32, i32*) #1

declare dso_local i32 @UINTToIP(i32*, i64) #1

declare dso_local i32 @FreePacketWithData(%struct.TYPE_40__*) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_31__*) #1

declare dso_local i32 @IsTubeConnected(i32*) #1

declare dso_local i32 @IsZeroIP(i32*) #1

declare dso_local i32 @WaitForTubes(i32**, i32, i32) #1

declare dso_local i32 @GetNextIntervalForInterrupt(i32*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_30__*) #1

declare dso_local i32 @Rand32(...) #1

declare dso_local i32 @NnBuildTcpPacket(i32, i64, i32, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NewBuf(...) #1

declare dso_local i32 @Endian32(i32) #1

declare dso_local i32 @SleepThread(i32) #1

declare dso_local i32 @FreeInterruptManager(i32*) #1

declare dso_local i32 @NsStartIpTablesTracking(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
