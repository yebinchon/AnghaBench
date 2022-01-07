; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_L2TPProcessRecvControlPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_L2TPProcessRecvControlPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i64, i32, i32, i64, i32, i32 }
%struct.TYPE_30__ = type { i64, i64, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i64, i32, i32, i32, i32, i64 }

@L2TP_MESSAGE_TYPE_SCCCN = common dso_local global i64 0, align 8
@L2TP_MESSAGE_TYPE_ICRQ = common dso_local global i64 0, align 8
@L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL = common dso_local global i32 0, align 4
@L2TP_AVP_TYPE_ASSIGNED_SESSION = common dso_local global i32 0, align 4
@L2TPV3_PW_TYPE_ETHERNET = common dso_local global i32 0, align 4
@L2TP_AVP_TYPE_V3_PW_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"L2TP New Session: ID = %u/%u on Tunnel %u/%u\0A\00", align 1
@L2TP_MESSAGE_TYPE_ICRP = common dso_local global i32 0, align 4
@L2TPV3_CISCO_AVP_SESSION_ID_LOCAL = common dso_local global i32 0, align 4
@L2TP_AVP_VENDOR_ID_CISCO = common dso_local global i32 0, align 4
@L2TPV3_CISCO_AVP_PW_TYPE = common dso_local global i32 0, align 4
@L2TP_AVP_TYPE_V3_CIRCUIT_STATUS = common dso_local global i32 0, align 4
@L2TP_MESSAGE_TYPE_STOPCCN = common dso_local global i64 0, align 8
@L2TP_AVP_TYPE_V3_TUNNEL_ID = common dso_local global i32 0, align 4
@L2TP_AVP_TYPE_ASSIGNED_TUNNEL = common dso_local global i32 0, align 4
@L2TP_MESSAGE_TYPE_ICCN = common dso_local global i64 0, align 8
@L2TP_MESSAGE_TYPE_CDN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Session ID %u not found in Tunnel ID %u/%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L2TPProcessRecvControlPacket(%struct.TYPE_29__* %0, %struct.TYPE_27__* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_31__*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %6, align 8
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %19 = icmp eq %struct.TYPE_29__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %22 = icmp eq %struct.TYPE_27__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %25 = icmp eq %struct.TYPE_30__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20, %3
  br label %473

27:                                               ; preds = %23
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %368

32:                                               ; preds = %27
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @L2TP_MESSAGE_TYPE_SCCCN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %32
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %53, %48
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %38, %32
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %367

68:                                               ; preds = %63
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @L2TP_MESSAGE_TYPE_ICRQ, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %305

74:                                               ; preds = %68
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %305

79:                                               ; preds = %74
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %305

84:                                               ; preds = %79
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL, align 4
  br label %94

92:                                               ; preds = %84
  %93 = load i32, i32* @L2TP_AVP_TYPE_ASSIGNED_SESSION, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = call %struct.TYPE_31__* @GetAVPValue(%struct.TYPE_30__* %85, i32 %95)
  store %struct.TYPE_31__* %96, %struct.TYPE_31__** %7, align 8
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %98 = icmp ne %struct.TYPE_31__* %97, null
  br i1 %98, label %99, label %304

99:                                               ; preds = %94
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i64 8, i64 8
  %110 = icmp eq i64 %103, %109
  br i1 %110, label %111, label %304

111:                                              ; preds = %99
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i64 8, i64 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @IsZero(i32 %114, i32 %121)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %304

124:                                              ; preds = %111
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @READ_UINT(i32 %132)
  br label %139

134:                                              ; preds = %124
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @READ_USHORT(i32 %137)
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i64 [ %133, %129 ], [ %138, %134 ]
  store i64 %140, i64* %8, align 8
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %142 = load i64, i64* %8, align 8
  %143 = call i32* @GetSessionFromIdAssignedByClient(%struct.TYPE_27__* %141, i64 %142)
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %303

145:                                              ; preds = %139
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %148 = load i64, i64* %8, align 8
  %149 = call %struct.TYPE_28__* @NewL2TPSession(%struct.TYPE_29__* %146, %struct.TYPE_27__* %147, i64 %148)
  store %struct.TYPE_28__* %149, %struct.TYPE_28__** %9, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %151 = icmp ne %struct.TYPE_28__* %150, null
  br i1 %151, label %152, label %302

152:                                              ; preds = %145
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %182

157:                                              ; preds = %152
  %158 = load i32, i32* @L2TPV3_PW_TYPE_ETHERNET, align 4
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %162 = load i32, i32* @L2TP_AVP_TYPE_V3_PW_TYPE, align 4
  %163 = call %struct.TYPE_31__* @GetAVPValue(%struct.TYPE_30__* %161, i32 %162)
  store %struct.TYPE_31__* %163, %struct.TYPE_31__** %7, align 8
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %165 = icmp ne %struct.TYPE_31__* %164, null
  br i1 %165, label %166, label %181

166:                                              ; preds = %157
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = icmp eq i64 %170, 8
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @READ_USHORT(i32 %175)
  store i64 %176, i64* %12, align 8
  %177 = load i64, i64* %12, align 8
  %178 = trunc i64 %177 to i32
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %172, %166, %157
  br label %182

182:                                              ; preds = %181, %152
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %187 = call i32 @Add(i32 %185, %struct.TYPE_28__* %186)
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i8*, i64, i64, i64, ...) @Debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %190, i64 %194, i64 %197, i32 %200)
  %202 = load i32, i32* @L2TP_MESSAGE_TYPE_ICRP, align 4
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = call %struct.TYPE_30__* @NewL2TPControlPacket(i32 %202, i32 %205)
  store %struct.TYPE_30__* %206, %struct.TYPE_30__** %10, align 8
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %182
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i64 @Endian16(i32 %214)
  store i64 %215, i64* %11, align 8
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @L2TP_AVP_TYPE_ASSIGNED_SESSION, align 4
  %220 = call %struct.TYPE_28__* @NewAVP(i32 %219, i32 1, i32 0, i64* %11, i32 8)
  %221 = call i32 @Add(i32 %218, %struct.TYPE_28__* %220)
  br label %246

222:                                              ; preds = %182
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i64 @Endian32(i32 %225)
  store i64 %226, i64* %12, align 8
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL, align 4
  %231 = call %struct.TYPE_28__* @NewAVP(i32 %230, i32 1, i32 0, i64* %12, i32 8)
  %232 = call i32 @Add(i32 %229, %struct.TYPE_28__* %231)
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 6
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %222
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @L2TPV3_CISCO_AVP_SESSION_ID_LOCAL, align 4
  %242 = load i32, i32* @L2TP_AVP_VENDOR_ID_CISCO, align 4
  %243 = call %struct.TYPE_28__* @NewAVP(i32 %241, i32 1, i32 %242, i64* %12, i32 8)
  %244 = call i32 @Add(i32 %240, %struct.TYPE_28__* %243)
  br label %245

245:                                              ; preds = %237, %222
  br label %246

246:                                              ; preds = %245, %211
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %294

251:                                              ; preds = %246
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %267

256:                                              ; preds = %251
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i64 @Endian16(i32 %259)
  store i64 %260, i64* %11, align 8
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @L2TP_AVP_TYPE_V3_PW_TYPE, align 4
  %265 = call %struct.TYPE_28__* @NewAVP(i32 %264, i32 1, i32 0, i64* %11, i32 8)
  %266 = call i32 @Add(i32 %263, %struct.TYPE_28__* %265)
  br label %267

267:                                              ; preds = %256, %251
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 6
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %267
  %273 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @L2TPV3_CISCO_AVP_PW_TYPE, align 4
  %277 = load i32, i32* @L2TP_AVP_VENDOR_ID_CISCO, align 4
  %278 = call %struct.TYPE_28__* @NewAVP(i32 %276, i32 1, i32 %277, i64* %11, i32 8)
  %279 = call i32 @Add(i32 %275, %struct.TYPE_28__* %278)
  br label %280

280:                                              ; preds = %272, %267
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %280
  %286 = call i64 @Endian16(i32 3)
  store i64 %286, i64* %11, align 8
  %287 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @L2TP_AVP_TYPE_V3_CIRCUIT_STATUS, align 4
  %291 = call %struct.TYPE_28__* @NewAVP(i32 %290, i32 1, i32 0, i64* %11, i32 8)
  %292 = call i32 @Add(i32 %289, %struct.TYPE_28__* %291)
  br label %293

293:                                              ; preds = %285, %280
  br label %294

294:                                              ; preds = %293, %246
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %297 = load i64, i64* %8, align 8
  %298 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %299 = call i32 @SendL2TPControlPacket(%struct.TYPE_29__* %295, %struct.TYPE_27__* %296, i64 %297, %struct.TYPE_30__* %298)
  %300 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %301 = call i32 @FreeL2TPPacket(%struct.TYPE_30__* %300)
  br label %302

302:                                              ; preds = %294, %145
  br label %303

303:                                              ; preds = %302, %139
  br label %304

304:                                              ; preds = %303, %111, %99, %94
  br label %366

305:                                              ; preds = %79, %74, %68
  %306 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @L2TP_MESSAGE_TYPE_STOPCCN, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %365

311:                                              ; preds = %305
  %312 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %313 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %313, i32 0, i32 6
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %311
  %318 = load i32, i32* @L2TP_AVP_TYPE_V3_TUNNEL_ID, align 4
  br label %321

319:                                              ; preds = %311
  %320 = load i32, i32* @L2TP_AVP_TYPE_ASSIGNED_TUNNEL, align 4
  br label %321

321:                                              ; preds = %319, %317
  %322 = phi i32 [ %318, %317 ], [ %320, %319 ]
  %323 = call %struct.TYPE_31__* @GetAVPValue(%struct.TYPE_30__* %312, i32 %322)
  store %struct.TYPE_31__* %323, %struct.TYPE_31__** %13, align 8
  %324 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %325 = icmp ne %struct.TYPE_31__* %324, null
  br i1 %325, label %326, label %364

326:                                              ; preds = %321
  %327 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %328 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = sext i32 %329 to i64
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 6
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  %335 = zext i1 %334 to i64
  %336 = select i1 %334, i64 8, i64 8
  %337 = icmp eq i64 %330, %336
  br i1 %337, label %338, label %364

338:                                              ; preds = %326
  %339 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %339, i32 0, i32 6
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %338
  %344 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %345 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = call i64 @READ_UINT(i32 %346)
  br label %353

348:                                              ; preds = %338
  %349 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %350 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i64 @READ_USHORT(i32 %351)
  br label %353

353:                                              ; preds = %348, %343
  %354 = phi i64 [ %347, %343 ], [ %352, %348 ]
  store i64 %354, i64* %14, align 8
  %355 = load i64, i64* %14, align 8
  %356 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %356, i32 0, i32 3
  %358 = load i64, i64* %357, align 8
  %359 = icmp eq i64 %355, %358
  br i1 %359, label %360, label %363

360:                                              ; preds = %353
  %361 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %362 = call i32 @DisconnectL2TPTunnel(%struct.TYPE_27__* %361)
  br label %363

363:                                              ; preds = %360, %353
  br label %364

364:                                              ; preds = %363, %326, %321
  br label %365

365:                                              ; preds = %364, %305
  br label %366

366:                                              ; preds = %365, %304
  br label %367

367:                                              ; preds = %366, %63
  br label %473

368:                                              ; preds = %27
  %369 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %370 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = call %struct.TYPE_28__* @GetSessionFromId(%struct.TYPE_27__* %369, i64 %372)
  store %struct.TYPE_28__* %373, %struct.TYPE_28__** %15, align 8
  %374 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %375 = icmp ne %struct.TYPE_28__* %374, null
  br i1 %375, label %376, label %460

376:                                              ; preds = %368
  %377 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %378 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 8
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %397

381:                                              ; preds = %376
  %382 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %382, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @L2TP_MESSAGE_TYPE_ICCN, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %396

387:                                              ; preds = %381
  %388 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %389 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %388, i32 0, i32 5
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %387
  %393 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %394 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %393, i32 0, i32 4
  store i32 1, i32* %394, align 8
  br label %395

395:                                              ; preds = %392, %387
  br label %396

396:                                              ; preds = %395, %381
  br label %459

397:                                              ; preds = %376
  %398 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @L2TP_MESSAGE_TYPE_CDN, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %458

403:                                              ; preds = %397
  %404 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %405 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %405, i32 0, i32 6
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %411

409:                                              ; preds = %403
  %410 = load i32, i32* @L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL, align 4
  br label %413

411:                                              ; preds = %403
  %412 = load i32, i32* @L2TP_AVP_TYPE_ASSIGNED_SESSION, align 4
  br label %413

413:                                              ; preds = %411, %409
  %414 = phi i32 [ %410, %409 ], [ %412, %411 ]
  %415 = call %struct.TYPE_31__* @GetAVPValue(%struct.TYPE_30__* %404, i32 %414)
  store %struct.TYPE_31__* %415, %struct.TYPE_31__** %16, align 8
  %416 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %417 = icmp ne %struct.TYPE_31__* %416, null
  br i1 %417, label %418, label %457

418:                                              ; preds = %413
  %419 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %420 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %421 to i64
  %423 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %423, i32 0, i32 6
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  %427 = zext i1 %426 to i64
  %428 = select i1 %426, i64 8, i64 8
  %429 = icmp eq i64 %422, %428
  br i1 %429, label %430, label %457

430:                                              ; preds = %418
  %431 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %431, i32 0, i32 6
  %433 = load i64, i64* %432, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %440

435:                                              ; preds = %430
  %436 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %437 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = call i64 @READ_UINT(i32 %438)
  br label %445

440:                                              ; preds = %430
  %441 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %442 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = call i64 @READ_USHORT(i32 %443)
  br label %445

445:                                              ; preds = %440, %435
  %446 = phi i64 [ %439, %435 ], [ %444, %440 ]
  store i64 %446, i64* %17, align 8
  %447 = load i64, i64* %17, align 8
  %448 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %449 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %448, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = icmp eq i64 %447, %450
  br i1 %451, label %452, label %456

452:                                              ; preds = %445
  %453 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %454 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %455 = call i32 @DisconnectL2TPSession(%struct.TYPE_27__* %453, %struct.TYPE_28__* %454)
  br label %456

456:                                              ; preds = %452, %445
  br label %457

457:                                              ; preds = %456, %418, %413
  br label %458

458:                                              ; preds = %457, %397
  br label %459

459:                                              ; preds = %458, %396
  br label %472

460:                                              ; preds = %368
  %461 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %464, i32 0, i32 3
  %466 = load i64, i64* %465, align 8
  %467 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %468 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %467, i32 0, i32 5
  %469 = load i32, i32* %468, align 4
  %470 = sext i32 %469 to i64
  %471 = call i32 (i8*, i64, i64, i64, ...) @Debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %463, i64 %466, i64 %470)
  br label %472

472:                                              ; preds = %460, %459
  br label %473

473:                                              ; preds = %26, %472, %367
  ret void
}

declare dso_local %struct.TYPE_31__* @GetAVPValue(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @IsZero(i32, i32) #1

declare dso_local i64 @READ_UINT(i32) #1

declare dso_local i64 @READ_USHORT(i32) #1

declare dso_local i32* @GetSessionFromIdAssignedByClient(%struct.TYPE_27__*, i64) #1

declare dso_local %struct.TYPE_28__* @NewL2TPSession(%struct.TYPE_29__*, %struct.TYPE_27__*, i64) #1

declare dso_local i32 @Add(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @Debug(i8*, i64, i64, i64, ...) #1

declare dso_local %struct.TYPE_30__* @NewL2TPControlPacket(i32, i32) #1

declare dso_local i64 @Endian16(i32) #1

declare dso_local %struct.TYPE_28__* @NewAVP(i32, i32, i32, i64*, i32) #1

declare dso_local i64 @Endian32(i32) #1

declare dso_local i32 @SendL2TPControlPacket(%struct.TYPE_29__*, %struct.TYPE_27__*, i64, %struct.TYPE_30__*) #1

declare dso_local i32 @FreeL2TPPacket(%struct.TYPE_30__*) #1

declare dso_local i32 @DisconnectL2TPTunnel(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_28__* @GetSessionFromId(%struct.TYPE_27__*, i64) #1

declare dso_local i32 @DisconnectL2TPSession(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
