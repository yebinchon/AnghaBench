; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_BuildL2TPPacketData.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_BuildL2TPPacketData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i64, i32, i64, i32, i32, i32*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32*, i64 }

@L2TP_AVP_TYPE_V3_SESSION_ID_REMOTE = common dso_local global i32 0, align 4
@L2TPV3_CISCO_AVP_SESSION_ID_LOCAL = common dso_local global i32 0, align 4
@L2TP_AVP_VENDOR_ID_CISCO = common dso_local global i32 0, align 4
@L2TPV3_CISCO_AVP_SESSION_ID_REMOTE = common dso_local global i32 0, align 4
@L2TP_HEADER_BIT_TYPE = common dso_local global i32 0, align 4
@L2TP_HEADER_BIT_LENGTH = common dso_local global i32 0, align 4
@L2TP_HEADER_BIT_SEQUENCE = common dso_local global i32 0, align 4
@L2TP_HEADER_BIT_OFFSET = common dso_local global i32 0, align 4
@L2TP_AVP_BIT_MANDATORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @BuildL2TPPacketData(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = icmp eq %struct.TYPE_16__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = icmp eq %struct.TYPE_15__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %337

21:                                               ; preds = %17
  %22 = call %struct.TYPE_18__* (...) @NewBuf()
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %6, align 8
  store i32 0, i32* %7, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %71

27:                                               ; preds = %21
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %27
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = load i32, i32* @L2TP_AVP_TYPE_V3_SESSION_ID_REMOTE, align 4
  %35 = call %struct.TYPE_17__* @GetAVPValue(%struct.TYPE_16__* %33, i32 %34)
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %10, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %37 = icmp eq %struct.TYPE_17__* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 8
  br i1 %43, label %44, label %69

44:                                               ; preds = %38, %32
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @Endian32(i64 %47)
  store i64 %48, i64* %11, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @L2TP_AVP_TYPE_V3_SESSION_ID_REMOTE, align 4
  %53 = call i32 @NewAVP(i32 %52, i32 1, i32 0, i64* %11, i32 8)
  %54 = call i32 @Add(i32 %51, i32 %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = load i32, i32* @L2TPV3_CISCO_AVP_SESSION_ID_LOCAL, align 4
  %57 = load i32, i32* @L2TP_AVP_VENDOR_ID_CISCO, align 4
  %58 = call i32* @GetAVPValueEx(%struct.TYPE_16__* %55, i32 %56, i32 %57)
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %44
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @L2TPV3_CISCO_AVP_SESSION_ID_REMOTE, align 4
  %65 = load i32, i32* @L2TP_AVP_VENDOR_ID_CISCO, align 4
  %66 = call i32 @NewAVP(i32 %64, i32 1, i32 %65, i64* %11, i32 8)
  %67 = call i32 @Add(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %60, %44
  br label %69

69:                                               ; preds = %68, %38
  br label %70

70:                                               ; preds = %69, %27
  br label %71

71:                                               ; preds = %70, %21
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  store i64 0, i64* %9, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %83 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %82, i64* %9, i64 8)
  br label %84

84:                                               ; preds = %81, %76
  br label %85

85:                                               ; preds = %84, %71
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i32, i32* @L2TP_HEADER_BIT_TYPE, align 4
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @L2TP_HEADER_BIT_LENGTH, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* @L2TP_HEADER_BIT_SEQUENCE, align 4
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %104

100:                                              ; preds = %85
  %101 = load i32, i32* @L2TP_HEADER_BIT_OFFSET, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %100, %90
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 3
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 0, i32* %7, align 4
  br label %120

120:                                              ; preds = %119, %114, %109, %104
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %121, i32* %7, i32 1)
  store i32 2, i32* %7, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 3
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i32 3, i32* %7, align 4
  br label %128

128:                                              ; preds = %127, %120
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %130 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %129, i32* %7, i32 1)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  store i32 0, i32* %8, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %137 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %136, i32* %8, i64 4)
  br label %138

138:                                              ; preds = %135, %128
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %138
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 3
  br i1 %147, label %148, label %156

148:                                              ; preds = %143
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %155 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %154, i32* %8, i64 4)
  br label %156

156:                                              ; preds = %153, %148, %143, %138
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 3
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 @Endian16(i32 %165)
  store i32 %166, i32* %8, align 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %168 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %167, i32* %8, i64 4)
  br label %176

169:                                              ; preds = %156
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @Endian32(i64 %172)
  store i64 %173, i64* %9, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %175 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %174, i64* %9, i64 8)
  br label %176

176:                                              ; preds = %169, %161
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 3
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = call i32 @Endian16(i32 %185)
  store i32 %186, i32* %8, align 4
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %188 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %187, i32* %8, i64 4)
  br label %189

189:                                              ; preds = %181, %176
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %189
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @Endian16(i32 %197)
  store i32 %198, i32* %8, align 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %200 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %199, i32* %8, i64 4)
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @Endian16(i32 %203)
  store i32 %204, i32* %8, align 4
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %206 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %205, i32* %8, i64 4)
  br label %226

207:                                              ; preds = %189
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %207
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp eq i32 %215, 3
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %217, %212, %207
  store i32 0, i32* %8, align 4
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %224 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %223, i32* %8, i64 4)
  br label %225

225:                                              ; preds = %222, %217
  br label %226

226:                                              ; preds = %225, %194
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %285

231:                                              ; preds = %226
  store i64 0, i64* %12, align 8
  br label %232

232:                                              ; preds = %281, %231
  %233 = load i64, i64* %12, align 8
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @LIST_NUM(i32 %236)
  %238 = icmp slt i64 %233, %237
  br i1 %238, label %239, label %284

239:                                              ; preds = %232
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 8
  %242 = load i32, i32* %241, align 4
  %243 = load i64, i64* %12, align 8
  %244 = call %struct.TYPE_17__* @LIST_DATA(i32 %242, i64 %243)
  store %struct.TYPE_17__* %244, %struct.TYPE_17__** %13, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = add nsw i32 %247, 6
  %249 = call i32 @Endian16(i32 %248)
  store i32 %249, i32* %8, align 4
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %239
  %255 = load i32, i32* @L2TP_AVP_BIT_MANDATORY, align 4
  %256 = load i32, i32* %8, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %8, align 4
  br label %258

258:                                              ; preds = %254, %239
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %260 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %259, i32* %8, i64 4)
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @Endian16(i32 %263)
  store i32 %264, i32* %8, align 4
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %266 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %265, i32* %8, i64 4)
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @Endian16(i32 %269)
  store i32 %270, i32* %8, align 4
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %272 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %271, i32* %8, i64 4)
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 3
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %273, i32* %276, i32 %279)
  br label %281

281:                                              ; preds = %258
  %282 = load i64, i64* %12, align 8
  %283 = add nsw i64 %282, 1
  store i64 %283, i64* %12, align 8
  br label %232

284:                                              ; preds = %232
  br label %294

285:                                              ; preds = %226
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 6
  %289 = load i32*, i32** %288, align 8
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 7
  %292 = load i32, i32* %291, align 8
  %293 = call i32 (%struct.TYPE_18__*, ...) @WriteBuf(%struct.TYPE_18__* %286, i32* %289, i32 %292)
  br label %294

294:                                              ; preds = %285, %284
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %333

299:                                              ; preds = %294
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp eq i32 %302, 3
  br i1 %303, label %304, label %309

304:                                              ; preds = %299
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = icmp eq i32 %307, 0
  br label %309

309:                                              ; preds = %304, %299
  %310 = phi i1 [ false, %299 ], [ %308, %304 ]
  %311 = zext i1 %310 to i32
  store i32 %311, i32* %14, align 4
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = inttoptr i64 %314 to i32*
  %316 = getelementptr inbounds i32, i32* %315, i64 2
  %317 = load i32, i32* %14, align 4
  %318 = icmp ne i32 %317, 0
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i64 8, i64 0
  %321 = getelementptr inbounds i32, i32* %316, i64 %320
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = sext i32 %324 to i64
  %326 = load i32, i32* %14, align 4
  %327 = icmp ne i32 %326, 0
  %328 = zext i1 %327 to i64
  %329 = select i1 %327, i64 8, i64 0
  %330 = sub i64 %325, %329
  %331 = trunc i64 %330 to i32
  %332 = call i32 @WRITE_USHORT(i32* %321, i32 %331)
  br label %333

333:                                              ; preds = %309, %294
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %335 = call i32 @SeekBuf(%struct.TYPE_18__* %334, i32 0, i32 0)
  %336 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %336, %struct.TYPE_18__** %3, align 8
  br label %337

337:                                              ; preds = %333, %20
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %338
}

declare dso_local %struct.TYPE_18__* @NewBuf(...) #1

declare dso_local %struct.TYPE_17__* @GetAVPValue(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @Endian32(i64) #1

declare dso_local i32 @Add(i32, i32) #1

declare dso_local i32 @NewAVP(i32, i32, i32, i64*, i32) #1

declare dso_local i32* @GetAVPValueEx(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_18__*, ...) #1

declare dso_local i32 @Endian16(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_17__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @WRITE_USHORT(i32*, i32) #1

declare dso_local i32 @SeekBuf(%struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
