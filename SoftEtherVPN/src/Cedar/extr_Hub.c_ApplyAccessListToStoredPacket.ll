; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_ApplyAccessListToStoredPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_ApplyAccessListToStoredPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_29__ = type { i32, i64, i64*, i64 }
%struct.TYPE_30__ = type { i64, i32, i64, i64, %struct.TYPE_27__, %struct.TYPE_25__, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i64, i64*, i32, i32, i32, i64 }

@MAX_REDIRECT_URL_LEN = common dso_local global i32 0, align 4
@L3_IPV4 = common dso_local global i64 0, align 8
@L3_BPDU = common dso_local global i64 0, align 8
@L3_IPV6 = common dso_local global i64 0, align 8
@L4_TCP = common dso_local global i64 0, align 8
@TCP_ACK = common dso_local global i32 0, align 4
@TCP_SYN = common dso_local global i32 0, align 4
@TCP_RST = common dso_local global i32 0, align 4
@TCP_URG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ApplyAccessListToStoredPacket(%struct.TYPE_31__* %0, %struct.TYPE_29__* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca %struct.TYPE_28__*, align 8
  %20 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %7, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* @MAX_REDIRECT_URL_LEN, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %27 = icmp eq %struct.TYPE_31__* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %30 = icmp eq %struct.TYPE_29__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %33 = icmp eq %struct.TYPE_30__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %496

35:                                               ; preds = %31
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %39 = icmp ne %struct.TYPE_23__* %38, null
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 9
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %49, align 8
  %51 = icmp ne %struct.TYPE_24__* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 9
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @Endian16(i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp eq i32 %59, 34915
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %62, 34916
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %52
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %496

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %66, %40, %35
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %69, align 8
  %71 = icmp ne %struct.TYPE_23__* %70, null
  br i1 %71, label %72, label %103

72:                                               ; preds = %67
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %72
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @L3_IPV4, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %79
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %88, align 8
  %90 = icmp ne %struct.TYPE_26__* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 89
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %496

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %85
  br label %102

102:                                              ; preds = %101, %79
  br label %103

103:                                              ; preds = %102, %72, %67
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %105, align 8
  %107 = icmp ne %struct.TYPE_23__* %106, null
  br i1 %107, label %108, label %135

108:                                              ; preds = %103
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %108
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 9
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %117, align 8
  %119 = icmp ne %struct.TYPE_24__* %118, null
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 9
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @Endian16(i32 %125)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp eq i32 %127, 2048
  br i1 %128, label %132, label %129

129:                                              ; preds = %120
  %130 = load i32, i32* %15, align 4
  %131 = icmp eq i32 %130, 2054
  br i1 %131, label %132, label %133

132:                                              ; preds = %129, %120
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %496

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133, %115
  br label %135

135:                                              ; preds = %134, %108, %103
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %137, align 8
  %139 = icmp ne %struct.TYPE_23__* %138, null
  br i1 %139, label %140, label %164

140:                                              ; preds = %135
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %140
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 9
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %149, align 8
  %151 = icmp ne %struct.TYPE_24__* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 9
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @Endian16(i32 %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp eq i32 %159, 34525
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %496

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162, %147
  br label %164

164:                                              ; preds = %163, %140, %135
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %166, align 8
  %168 = icmp ne %struct.TYPE_23__* %167, null
  br i1 %168, label %169, label %199

169:                                              ; preds = %164
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %199

176:                                              ; preds = %169
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 9
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %178, align 8
  %180 = icmp ne %struct.TYPE_24__* %179, null
  br i1 %180, label %181, label %198

181:                                              ; preds = %176
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i32 0, i32 9
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @Endian16(i32 %186)
  store i32 %187, i32* %17, align 4
  %188 = load i32, i32* %17, align 4
  %189 = icmp eq i32 %188, 34525
  br i1 %189, label %197, label %190

190:                                              ; preds = %181
  %191 = load i32, i32* %17, align 4
  %192 = icmp eq i32 %191, 2048
  br i1 %192, label %197, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %17, align 4
  %195 = icmp eq i32 %194, 2054
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %496

197:                                              ; preds = %193, %190, %181
  br label %198

198:                                              ; preds = %197, %176
  br label %199

199:                                              ; preds = %198, %169, %164
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %201, align 8
  %203 = icmp ne %struct.TYPE_23__* %202, null
  br i1 %203, label %204, label %225

204:                                              ; preds = %199
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %204
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 9
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %213, align 8
  %215 = icmp ne %struct.TYPE_24__* %214, null
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @L3_BPDU, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %496

223:                                              ; preds = %216
  br label %224

224:                                              ; preds = %223, %211
  br label %225

225:                                              ; preds = %224, %204, %199
  %226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @LockList(i32 %228)
  store i64 0, i64* %8, align 8
  br label %230

230:                                              ; preds = %355, %225
  %231 = load i64, i64* %8, align 8
  %232 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i64 @LIST_NUM(i32 %234)
  %236 = icmp slt i64 %231, %235
  br i1 %236, label %237, label %358

237:                                              ; preds = %230
  %238 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i64, i64* %8, align 8
  %242 = call %struct.TYPE_22__* @LIST_DATA(i32 %240, i64 %241)
  store %struct.TYPE_22__* %242, %struct.TYPE_22__** %18, align 8
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %237
  br label %358

248:                                              ; preds = %237
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %252 = call i64 @IsPacketMaskedByAccessList(%struct.TYPE_29__* %249, %struct.TYPE_30__* %250, %struct.TYPE_22__* %251, i32 0, i32 0, i32* null)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %354

254:                                              ; preds = %248
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i32 0, i32 1
  store i32 %260, i32* %9, align 4
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 1
  store i32 1, i32* %262, align 8
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %266, i32 0, i32 8
  store i32 %265, i32* %267, align 8
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %271, i32 0, i32 7
  store i32 %270, i32* %272, align 4
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %276, i32 0, i32 6
  store i32 %275, i32* %277, align 8
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 1
  %280 = load i64*, i64** %279, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 0
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %353

284:                                              ; preds = %254
  %285 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @L3_IPV4, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %296, label %290

290:                                              ; preds = %284
  %291 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @L3_IPV6, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %352

296:                                              ; preds = %290, %284
  %297 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @L4_TCP, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %352

302:                                              ; preds = %296
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_28__*, %struct.TYPE_28__** %305, align 8
  store %struct.TYPE_28__* %306, %struct.TYPE_28__** %19, align 8
  %307 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %308 = icmp ne %struct.TYPE_28__* %307, null
  br i1 %308, label %309, label %351

309:                                              ; preds = %302
  %310 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %311 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @TCP_ACK, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %350

316:                                              ; preds = %309
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %318 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @TCP_SYN, align 4
  %321 = and i32 %319, %320
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %349

323:                                              ; preds = %316
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @TCP_RST, align 4
  %328 = and i32 %326, %327
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %349

330:                                              ; preds = %323
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @TCP_URG, align 4
  %335 = and i32 %333, %334
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %349

337:                                              ; preds = %330
  %338 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %338, i32 0, i32 3
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %337
  store i32 1, i32* %10, align 4
  %343 = trunc i64 %23 to i32
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 1
  %346 = load i64*, i64** %345, align 8
  %347 = call i32 @StrCpy(i8* %25, i32 %343, i64* %346)
  br label %348

348:                                              ; preds = %342, %337
  br label %349

349:                                              ; preds = %348, %330, %323, %316
  br label %350

350:                                              ; preds = %349, %309
  br label %351

351:                                              ; preds = %350, %302
  br label %352

352:                                              ; preds = %351, %296, %290
  br label %353

353:                                              ; preds = %352, %254
  br label %358

354:                                              ; preds = %248
  br label %355

355:                                              ; preds = %354
  %356 = load i64, i64* %8, align 8
  %357 = add nsw i64 %356, 1
  store i64 %357, i64* %8, align 8
  br label %230

358:                                              ; preds = %353, %247, %230
  %359 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @UnlockList(i32 %361)
  %363 = load i32, i32* %9, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %479

365:                                              ; preds = %358
  %366 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %478

370:                                              ; preds = %365
  %371 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %478

375:                                              ; preds = %370
  %376 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @L3_IPV4, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %387, label %381

381:                                              ; preds = %375
  %382 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @L3_IPV6, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %477

387:                                              ; preds = %381, %375
  %388 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %388, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @L4_TCP, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %477

393:                                              ; preds = %387
  %394 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %394, i32 0, i32 5
  %396 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %395, i32 0, i32 0
  %397 = load %struct.TYPE_28__*, %struct.TYPE_28__** %396, align 8
  store %struct.TYPE_28__* %397, %struct.TYPE_28__** %20, align 8
  %398 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %399 = icmp ne %struct.TYPE_28__* %398, null
  br i1 %399, label %400, label %476

400:                                              ; preds = %393
  %401 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %402 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @Endian16(i32 80)
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %475

406:                                              ; preds = %400
  %407 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %407, i32 0, i32 4
  %409 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %408, i32 0, i32 0
  %410 = load %struct.TYPE_26__*, %struct.TYPE_26__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %410, i32 0, i32 1
  %412 = load i64, i64* %411, align 8
  %413 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = icmp eq i64 %412, %415
  br i1 %416, label %417, label %420

417:                                              ; preds = %406
  %418 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %418, i32 0, i32 0
  store i32 0, i32* %419, align 8
  br label %474

420:                                              ; preds = %406
  %421 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %422 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @TCP_ACK, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %473

427:                                              ; preds = %420
  %428 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %429 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @TCP_SYN, align 4
  %432 = and i32 %430, %431
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %472

434:                                              ; preds = %427
  %435 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %436 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @TCP_RST, align 4
  %439 = and i32 %437, %438
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %472

441:                                              ; preds = %434
  %442 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %443 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* @TCP_URG, align 4
  %446 = and i32 %444, %445
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %472

448:                                              ; preds = %441
  %449 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %449, i32 0, i32 3
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %471

453:                                              ; preds = %448
  %454 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %455 = call i32 @IsTcpPacketNcsiHttpAccess(%struct.TYPE_30__* %454)
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %470

457:                                              ; preds = %453
  %458 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %458, i32 0, i32 2
  %460 = load i64*, i64** %459, align 8
  %461 = call i32 @IsEmptyStr(i64* %460)
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %469

463:                                              ; preds = %457
  store i32 1, i32* %10, align 4
  %464 = trunc i64 %23 to i32
  %465 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %466 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %465, i32 0, i32 2
  %467 = load i64*, i64** %466, align 8
  %468 = call i32 @StrCpy(i8* %25, i32 %464, i64* %467)
  br label %469

469:                                              ; preds = %463, %457
  br label %470

470:                                              ; preds = %469, %453
  br label %471

471:                                              ; preds = %470, %448
  br label %472

472:                                              ; preds = %471, %441, %434, %427
  br label %473

473:                                              ; preds = %472, %420
  br label %474

474:                                              ; preds = %473, %417
  br label %475

475:                                              ; preds = %474, %400
  br label %476

476:                                              ; preds = %475, %393
  br label %477

477:                                              ; preds = %476, %387, %381
  br label %478

478:                                              ; preds = %477, %370, %365
  br label %479

479:                                              ; preds = %478, %358
  %480 = load i32, i32* %10, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %494

482:                                              ; preds = %479
  %483 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %483, i32 0, i32 3
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %492

487:                                              ; preds = %482
  %488 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %489 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %490 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %491 = call i32 @ForceRedirectToUrl(%struct.TYPE_31__* %488, %struct.TYPE_29__* %489, %struct.TYPE_30__* %490, i8* %25)
  br label %493

492:                                              ; preds = %482
  br label %493

493:                                              ; preds = %492, %487
  store i32 0, i32* %9, align 4
  br label %494

494:                                              ; preds = %493, %479
  %495 = load i32, i32* %9, align 4
  store i32 %495, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %496

496:                                              ; preds = %494, %222, %196, %161, %132, %99, %64, %34
  %497 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %497)
  %498 = load i32, i32* %4, align 4
  ret i32 %498
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Endian16(i32) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_22__* @LIST_DATA(i32, i64) #2

declare dso_local i64 @IsPacketMaskedByAccessList(%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_22__*, i32, i32, i32*) #2

declare dso_local i32 @StrCpy(i8*, i32, i64*) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @IsTcpPacketNcsiHttpAccess(%struct.TYPE_30__*) #2

declare dso_local i32 @IsEmptyStr(i64*) #2

declare dso_local i32 @ForceRedirectToUrl(%struct.TYPE_31__*, %struct.TYPE_29__*, %struct.TYPE_30__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
