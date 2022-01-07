; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_EapClientSendMsChapv2AuthClientResponse.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_EapClientSendMsChapv2AuthClientResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64, i32, %struct.TYPE_32__*, i32, i32*, i32, %struct.TYPE_30__*, %struct.TYPE_29__ }
%struct.TYPE_32__ = type { i32, i64, i64, i8*, i64, i8*, i32*, i32*, i32*, i8*, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_31__ = type { i64, i64, i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_33__ = type { i64 }

@RADIUS_CODE_ACCESS_REQUEST = common dso_local global i32 0, align 4
@RADIUS_ATTRIBUTE_STATE = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i8* null, align 8
@EAP_TYPE_MS_AUTH = common dso_local global i64 0, align 8
@EAP_MSCHAPV2_OP_RESPONSE = common dso_local global i64 0, align 8
@RADIUS_ATTRIBUTE_EAP_MESSAGE = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i64 0, align 8
@EAP_MSCHAPV2_OP_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"S=\00", align 1
@RADIUS_CODE_ACCESS_ACCEPT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EapClientSendMsChapv2AuthClientResponse(%struct.TYPE_35__* %0, %struct.TYPE_30__* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca %struct.TYPE_34__*, align 8
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %9, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %10, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %11, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %12, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %13, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %14, align 8
  %18 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %19 = icmp eq %struct.TYPE_35__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %22 = icmp eq %struct.TYPE_30__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %25 = icmp eq %struct.TYPE_30__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20, %3
  store i32 0, i32* %4, align 4
  br label %293

27:                                               ; preds = %23
  %28 = load i32, i32* @RADIUS_CODE_ACCESS_REQUEST, align 4
  %29 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = call %struct.TYPE_31__* @NewRadiusPacket(i32 %28, i32 %31)
  store %struct.TYPE_31__* %33, %struct.TYPE_31__** %9, align 8
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %36 = call i32 @EapSetRadiusGeneralAttributes(%struct.TYPE_31__* %34, %struct.TYPE_35__* %35)
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %27
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RADIUS_ATTRIBUTE_STATE, align 4
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %47, align 8
  %49 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @NewRadiusAvp(i32 %45, i32 0, i32 0, %struct.TYPE_32__* %48, i32 %52)
  %54 = call i32 @Add(i32 %44, i32 %53)
  br label %55

55:                                               ; preds = %41, %27
  %56 = call %struct.TYPE_32__* @ZeroMalloc(i32 88)
  store %struct.TYPE_32__* %56, %struct.TYPE_32__** %13, align 8
  %57 = load i8*, i8** @EAP_CODE_RESPONSE, align 8
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = sext i32 %62 to i64
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %68, align 8
  %70 = call i32 @StrLen(%struct.TYPE_30__* %69)
  %71 = add nsw i32 59, %70
  %72 = call i8* @Endian16(i32 %71)
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load i64, i64* @EAP_TYPE_MS_AUTH, align 8
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* @EAP_MSCHAPV2_OP_RESPONSE, align 8
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 10
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %88, align 8
  %90 = call i32 @StrLen(%struct.TYPE_30__* %89)
  %91 = add nsw i32 54, %90
  %92 = call i8* @Endian16(i32 %91)
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 9
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %95, i32 0, i32 0
  store i32 49, i32* %96, align 8
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 8
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %101 = call i32 @Copy(i32* %99, %struct.TYPE_30__* %100, i32 16)
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 7
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %106 = call i32 @Copy(i32* %104, %struct.TYPE_30__* %105, i32 24)
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %111, align 8
  %113 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %113, i32 0, i32 6
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %114, align 8
  %116 = call i32 @StrLen(%struct.TYPE_30__* %115)
  %117 = call i32 @MIN(i32 %116, i32 255)
  %118 = call i32 @Copy(i32* %109, %struct.TYPE_30__* %112, i32 %117)
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @RADIUS_ATTRIBUTE_EAP_MESSAGE, align 4
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 6
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %125, align 8
  %127 = call i32 @StrLen(%struct.TYPE_30__* %126)
  %128 = add nsw i32 %127, 59
  %129 = call i32 @NewRadiusAvp(i32 %122, i32 0, i32 0, %struct.TYPE_32__* %123, i32 %128)
  %130 = call i32 @Add(i32 %121, i32 %129)
  %131 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %133 = call %struct.TYPE_31__* @EapSendPacketAndRecvResponse(%struct.TYPE_35__* %131, %struct.TYPE_31__* %132)
  store %struct.TYPE_31__* %133, %struct.TYPE_31__** %10, align 8
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %135 = icmp ne %struct.TYPE_31__* %134, null
  br i1 %135, label %136, label %279

136:                                              ; preds = %55
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %278

141:                                              ; preds = %136
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %143, align 8
  %145 = icmp ne %struct.TYPE_34__* %144, null
  br i1 %145, label %146, label %278

146:                                              ; preds = %141
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_34__*, %struct.TYPE_34__** %148, align 8
  store %struct.TYPE_34__* %149, %struct.TYPE_34__** %15, align 8
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @EAP_CODE_REQUEST, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %277

155:                                              ; preds = %146
  %156 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @EAP_TYPE_MS_AUTH, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %276

161:                                              ; preds = %155
  %162 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %163 = bitcast %struct.TYPE_34__* %162 to %struct.TYPE_33__*
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @EAP_MSCHAPV2_OP_SUCCESS, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %275

169:                                              ; preds = %161
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %171 = bitcast %struct.TYPE_34__* %170 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %171, %struct.TYPE_30__** %16, align 8
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i64 @StartWith(i64 %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %274

177:                                              ; preds = %169
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 2
  %182 = call %struct.TYPE_28__* @StrToBin(i64 %181)
  store %struct.TYPE_28__* %182, %struct.TYPE_28__** %17, align 8
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %184 = icmp ne %struct.TYPE_28__* %183, null
  br i1 %184, label %185, label %271

185:                                              ; preds = %177
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 20
  br i1 %189, label %190, label %271

190:                                              ; preds = %185
  %191 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %191, i32 0, i32 5
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %194 = call i32 @Copy(i32* %192, %struct.TYPE_30__* %193, i32 8)
  %195 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %199, align 8
  %201 = call i32 @Copy(i32* %197, %struct.TYPE_30__* %200, i32 20)
  %202 = load i32, i32* @RADIUS_CODE_ACCESS_REQUEST, align 4
  %203 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  %207 = call %struct.TYPE_31__* @NewRadiusPacket(i32 %202, i32 %205)
  store %struct.TYPE_31__* %207, %struct.TYPE_31__** %11, align 8
  %208 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %209 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %210 = call i32 @EapSetRadiusGeneralAttributes(%struct.TYPE_31__* %208, %struct.TYPE_35__* %209)
  %211 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %190
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @RADIUS_ATTRIBUTE_STATE, align 4
  %220 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %221, align 8
  %223 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = call i32 @NewRadiusAvp(i32 %219, i32 0, i32 0, %struct.TYPE_32__* %222, i32 %226)
  %228 = call i32 @Add(i32 %218, i32 %227)
  br label %229

229:                                              ; preds = %215, %190
  %230 = call %struct.TYPE_32__* @ZeroMalloc(i32 88)
  store %struct.TYPE_32__* %230, %struct.TYPE_32__** %14, align 8
  %231 = load i8*, i8** @EAP_CODE_RESPONSE, align 8
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %232, i32 0, i32 5
  store i8* %231, i8** %233, align 8
  %234 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 8
  %238 = sext i32 %236 to i64
  %239 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %239, i32 0, i32 4
  store i64 %238, i64* %240, align 8
  %241 = call i8* @Endian16(i32 6)
  %242 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %242, i32 0, i32 3
  store i8* %241, i8** %243, align 8
  %244 = load i64, i64* @EAP_TYPE_MS_AUTH, align 8
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %245, i32 0, i32 2
  store i64 %244, i64* %246, align 8
  %247 = load i64, i64* @EAP_MSCHAPV2_OP_SUCCESS, align 8
  %248 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 1
  store i64 %247, i64* %249, align 8
  %250 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @RADIUS_ATTRIBUTE_EAP_MESSAGE, align 4
  %254 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %255 = call i32 @NewRadiusAvp(i32 %253, i32 0, i32 0, %struct.TYPE_32__* %254, i32 6)
  %256 = call i32 @Add(i32 %252, i32 %255)
  %257 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %258 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %259 = call %struct.TYPE_31__* @EapSendPacketAndRecvResponse(%struct.TYPE_35__* %257, %struct.TYPE_31__* %258)
  store %struct.TYPE_31__* %259, %struct.TYPE_31__** %12, align 8
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %261 = icmp ne %struct.TYPE_31__* %260, null
  br i1 %261, label %262, label %270

262:                                              ; preds = %229
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @RADIUS_CODE_ACCESS_ACCEPT, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %262
  store i32 1, i32* %8, align 4
  br label %269

269:                                              ; preds = %268, %262
  br label %270

270:                                              ; preds = %269, %229
  br label %271

271:                                              ; preds = %270, %185, %177
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %273 = call i32 @FreeBuf(%struct.TYPE_28__* %272)
  br label %274

274:                                              ; preds = %271, %169
  br label %275

275:                                              ; preds = %274, %168
  br label %276

276:                                              ; preds = %275, %155
  br label %277

277:                                              ; preds = %276, %146
  br label %278

278:                                              ; preds = %277, %141, %136
  br label %279

279:                                              ; preds = %278, %55
  %280 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %281 = call i32 @FreeRadiusPacket(%struct.TYPE_31__* %280)
  %282 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %283 = call i32 @FreeRadiusPacket(%struct.TYPE_31__* %282)
  %284 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %285 = call i32 @FreeRadiusPacket(%struct.TYPE_31__* %284)
  %286 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %287 = call i32 @FreeRadiusPacket(%struct.TYPE_31__* %286)
  %288 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %289 = call i32 @Free(%struct.TYPE_32__* %288)
  %290 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %291 = call i32 @Free(%struct.TYPE_32__* %290)
  %292 = load i32, i32* %8, align 4
  store i32 %292, i32* %4, align 4
  br label %293

293:                                              ; preds = %279, %26
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local %struct.TYPE_31__* @NewRadiusPacket(i32, i32) #1

declare dso_local i32 @EapSetRadiusGeneralAttributes(%struct.TYPE_31__*, %struct.TYPE_35__*) #1

declare dso_local i32 @Add(i32, i32) #1

declare dso_local i32 @NewRadiusAvp(i32, i32, i32, %struct.TYPE_32__*, i32) #1

declare dso_local %struct.TYPE_32__* @ZeroMalloc(i32) #1

declare dso_local i8* @Endian16(i32) #1

declare dso_local i32 @StrLen(%struct.TYPE_30__*) #1

declare dso_local i32 @Copy(i32*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_31__* @EapSendPacketAndRecvResponse(%struct.TYPE_35__*, %struct.TYPE_31__*) #1

declare dso_local i64 @StartWith(i64, i8*) #1

declare dso_local %struct.TYPE_28__* @StrToBin(i64) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_28__*) #1

declare dso_local i32 @FreeRadiusPacket(%struct.TYPE_31__*) #1

declare dso_local i32 @Free(%struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
