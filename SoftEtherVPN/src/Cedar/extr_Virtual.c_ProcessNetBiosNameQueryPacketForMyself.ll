; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_ProcessNetBiosNameQueryPacketForMyself.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_ProcessNetBiosNameQueryPacketForMyself.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@WHERE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProcessNetBiosNameQueryPacketForMyself(%struct.TYPE_12__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [32 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [32 x i32], align 16
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_13__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i32*, align 8
  %36 = alloca %struct.TYPE_13__*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i64, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 0, i32* %29, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = icmp eq %struct.TYPE_12__* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %7
  %48 = load i8*, i8** %14, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %7
  store i32 0, i32* %8, align 4
  br label %286

51:                                               ; preds = %47
  %52 = load i8*, i8** %14, align 8
  %53 = load i64, i64* %15, align 8
  %54 = call %struct.TYPE_13__* @NewBufFromMemory(i8* %52, i64 %53)
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %16, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %56 = call i32 @ReadBuf(%struct.TYPE_13__* %55, i32* %17, i32 4)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %58 = call i32 @ReadBuf(%struct.TYPE_13__* %57, i32* %18, i32 4)
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @Endian16(i32 %59)
  store i32 %60, i32* %18, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %62 = call i32 @ReadBuf(%struct.TYPE_13__* %61, i32* %19, i32 4)
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @Endian16(i32 %63)
  store i32 %64, i32* %19, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %66 = call i32 @ReadBuf(%struct.TYPE_13__* %65, i32* %20, i32 4)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %68 = call i32 @ReadBuf(%struct.TYPE_13__* %67, i32* %21, i32 4)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %70 = call i32 @ReadBuf(%struct.TYPE_13__* %69, i32* %22, i32 4)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %72 = call i32 @ReadBuf(%struct.TYPE_13__* %71, i32* %23, i32 1)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %74 = getelementptr inbounds [32 x i32], [32 x i32]* %24, i64 0, i64 0
  %75 = call i32 @ReadBuf(%struct.TYPE_13__* %73, i32* %74, i32 32)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %77 = call i32 @ReadBuf(%struct.TYPE_13__* %76, i32* %25, i32 1)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %79 = call i32 @ReadBuf(%struct.TYPE_13__* %78, i32* %26, i32 4)
  %80 = load i32, i32* %26, align 4
  %81 = call i32 @Endian16(i32 %80)
  store i32 %81, i32* %26, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %83 = call i32 @ReadBuf(%struct.TYPE_13__* %82, i32* %27, i32 4)
  %84 = sext i32 %83 to i64
  %85 = icmp eq i64 %84, 4
  br i1 %85, label %86, label %282

86:                                               ; preds = %51
  %87 = load i32, i32* %27, align 4
  %88 = call i32 @Endian16(i32 %87)
  store i32 %88, i32* %27, align 4
  %89 = load i32, i32* %18, align 4
  %90 = ashr i32 %89, 11
  %91 = and i32 %90, 15
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %281

93:                                               ; preds = %86
  %94 = load i32, i32* %19, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %281

96:                                               ; preds = %93
  %97 = load i32, i32* %23, align 4
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %99, label %281

99:                                               ; preds = %96
  %100 = load i32, i32* %20, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %281

102:                                              ; preds = %99
  %103 = load i32, i32* %21, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %281

105:                                              ; preds = %102
  %106 = load i32, i32* %22, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %281

108:                                              ; preds = %105
  %109 = load i32, i32* %25, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %281

111:                                              ; preds = %108
  %112 = load i32, i32* %26, align 4
  %113 = icmp eq i32 %112, 32
  br i1 %113, label %114, label %281

114:                                              ; preds = %111
  %115 = load i32, i32* %27, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %281

117:                                              ; preds = %114
  %118 = load i32, i32* @MAX_SIZE, align 4
  %119 = zext i32 %118 to i64
  %120 = call i8* @llvm.stacksave()
  store i8* %120, i8** %30, align 8
  %121 = alloca i8, i64 %119, align 16
  store i64 %119, i64* %31, align 8
  %122 = trunc i64 %119 to i32
  %123 = call i32 @Zero(i8* %121, i32 %122)
  %124 = trunc i64 %119 to i32
  %125 = call i32 @GetMachineHostName(i8* %121, i32 %124)
  %126 = getelementptr inbounds [32 x i32], [32 x i32]* %28, i64 0, i64 0
  %127 = call i32 @EncodeNetBiosName(i32* %126, i8* %121)
  %128 = getelementptr inbounds [32 x i32], [32 x i32]* %28, i64 0, i64 0
  %129 = getelementptr inbounds [32 x i32], [32 x i32]* %24, i64 0, i64 0
  %130 = call i64 @Cmp(i32* %128, i32* %129, i32 30)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %279

132:                                              ; preds = %117
  %133 = call %struct.TYPE_13__* (...) @NewBuf()
  store %struct.TYPE_13__* %133, %struct.TYPE_13__** %32, align 8
  store i32 0, i32* %37, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %135 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %134, i32* %17, i64 4)
  %136 = call i32 @Endian16(i32 34048)
  store i32 %136, i32* %18, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %138 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %137, i32* %18, i64 4)
  store i32 0, i32* %19, align 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %140 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %139, i32* %19, i64 4)
  %141 = call i32 @Endian16(i32 1)
  store i32 %141, i32* %33, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %143 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %142, i32* %33, i64 4)
  store i32 0, i32* %33, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %145 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %144, i32* %33, i64 4)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %147 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %146, i32* %33, i64 4)
  store i32 32, i32* %23, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %149 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %148, i32* %23, i32 1)
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %151 = getelementptr inbounds [32 x i32], [32 x i32]* %24, i64 0, i64 0
  %152 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %150, i32* %151, i32 32)
  store i32 0, i32* %25, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %154 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %153, i32* %25, i32 1)
  %155 = load i32, i32* %26, align 4
  %156 = call i32 @Endian16(i32 %155)
  store i32 %156, i32* %26, align 4
  %157 = load i32, i32* %27, align 4
  %158 = call i32 @Endian16(i32 %157)
  store i32 %158, i32* %27, align 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %160 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %159, i32* %26, i64 4)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %162 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %161, i32* %27, i64 4)
  %163 = call i64 (...) @Tick64()
  %164 = udiv i64 %163, 1000
  %165 = call i64 @Endian32(i64 %164)
  store i64 %165, i64* %34, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %167 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %166, i64* %34, i64 8)
  %168 = call %struct.TYPE_13__* (...) @NewBuf()
  store %struct.TYPE_13__* %168, %struct.TYPE_13__** %36, align 8
  %169 = call i32* (...) @GetHostIPAddressList()
  store i32* %169, i32** %35, align 8
  %170 = load i32*, i32** %35, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %250

172:                                              ; preds = %132
  store i64 0, i64* %38, align 8
  br label %173

173:                                              ; preds = %207, %172
  %174 = load i64, i64* %38, align 8
  %175 = load i32*, i32** %35, align 8
  %176 = call i64 @LIST_NUM(i32* %175)
  %177 = icmp slt i64 %174, %176
  br i1 %177, label %178, label %210

178:                                              ; preds = %173
  %179 = load i32*, i32** %35, align 8
  %180 = load i64, i64* %38, align 8
  %181 = call i32* @LIST_DATA(i32* %179, i64 %180)
  store i32* %181, i32** %39, align 8
  %182 = load i32*, i32** %39, align 8
  %183 = call i64 @IsIP4(i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %178
  %186 = load i32*, i32** %39, align 8
  %187 = call i32 @IsLocalHostIP4(i32* %186)
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %185
  %190 = load i32*, i32** %39, align 8
  %191 = call i32 @IsZeroIp(i32* %190)
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %189
  %194 = load i32*, i32** %39, align 8
  %195 = call i64 @IsIPPrivate(i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %193
  %198 = call i32 @Endian16(i32 16384)
  store i32 %198, i32* %40, align 4
  %199 = load i32*, i32** %39, align 8
  %200 = call i64 @IPToUINT(i32* %199)
  store i64 %200, i64* %41, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %202 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %201, i32* %40, i64 4)
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %204 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %203, i64* %41, i64 8)
  store i32 1, i32* %37, align 4
  br label %205

205:                                              ; preds = %197, %193
  br label %206

206:                                              ; preds = %205, %189, %185, %178
  br label %207

207:                                              ; preds = %206
  %208 = load i64, i64* %38, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %38, align 8
  br label %173

210:                                              ; preds = %173
  %211 = load i32, i32* %37, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %247

213:                                              ; preds = %210
  store i64 0, i64* %38, align 8
  br label %214

214:                                              ; preds = %243, %213
  %215 = load i64, i64* %38, align 8
  %216 = load i32*, i32** %35, align 8
  %217 = call i64 @LIST_NUM(i32* %216)
  %218 = icmp slt i64 %215, %217
  br i1 %218, label %219, label %246

219:                                              ; preds = %214
  %220 = load i32*, i32** %35, align 8
  %221 = load i64, i64* %38, align 8
  %222 = call i32* @LIST_DATA(i32* %220, i64 %221)
  store i32* %222, i32** %42, align 8
  %223 = load i32*, i32** %42, align 8
  %224 = call i64 @IsIP4(i32* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %242

226:                                              ; preds = %219
  %227 = load i32*, i32** %42, align 8
  %228 = call i32 @IsLocalHostIP4(i32* %227)
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %226
  %231 = load i32*, i32** %42, align 8
  %232 = call i32 @IsZeroIp(i32* %231)
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %230
  %235 = call i32 @Endian16(i32 16384)
  store i32 %235, i32* %43, align 4
  %236 = load i32*, i32** %42, align 8
  %237 = call i64 @IPToUINT(i32* %236)
  store i64 %237, i64* %44, align 8
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %239 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %238, i32* %43, i64 4)
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %241 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %240, i64* %44, i64 8)
  store i32 1, i32* %37, align 4
  br label %242

242:                                              ; preds = %234, %230, %226, %219
  br label %243

243:                                              ; preds = %242
  %244 = load i64, i64* %38, align 8
  %245 = add nsw i64 %244, 1
  store i64 %245, i64* %38, align 8
  br label %214

246:                                              ; preds = %214
  br label %247

247:                                              ; preds = %246, %210
  %248 = load i32*, i32** %35, align 8
  %249 = call i32 @FreeHostIPAddressList(i32* %248)
  br label %250

250:                                              ; preds = %247, %132
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @Endian16(i32 %253)
  store i32 %254, i32* %33, align 4
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %256 = call i32 (%struct.TYPE_13__*, ...) @WriteBuf(%struct.TYPE_13__* %255, i32* %33, i64 4)
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %259 = call i32 @WriteBufBuf(%struct.TYPE_13__* %257, %struct.TYPE_13__* %258)
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %261 = load i64, i64* %10, align 8
  %262 = load i64, i64* %11, align 8
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i64, i64* %13, align 8
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @SendUdp(%struct.TYPE_12__* %260, i64 %261, i64 %262, i32 %265, i64 %266, i32 %269, i32 %272)
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %275 = call i32 @FreeBuf(%struct.TYPE_13__* %274)
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %277 = call i32 @FreeBuf(%struct.TYPE_13__* %276)
  %278 = load i32, i32* @WHERE, align 4
  br label %279

279:                                              ; preds = %250, %117
  %280 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %280)
  br label %281

281:                                              ; preds = %279, %114, %111, %108, %105, %102, %99, %96, %93, %86
  br label %282

282:                                              ; preds = %281, %51
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %284 = call i32 @FreeBuf(%struct.TYPE_13__* %283)
  %285 = load i32, i32* %29, align 4
  store i32 %285, i32* %8, align 4
  br label %286

286:                                              ; preds = %282, %50
  %287 = load i32, i32* %8, align 4
  ret i32 %287
}

declare dso_local %struct.TYPE_13__* @NewBufFromMemory(i8*, i64) #1

declare dso_local i32 @ReadBuf(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @Endian16(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local i32 @GetMachineHostName(i8*, i32) #1

declare dso_local i32 @EncodeNetBiosName(i32*, i8*) #1

declare dso_local i64 @Cmp(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_13__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_13__*, ...) #1

declare dso_local i64 @Endian32(i64) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32* @GetHostIPAddressList(...) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i32* @LIST_DATA(i32*, i64) #1

declare dso_local i64 @IsIP4(i32*) #1

declare dso_local i32 @IsLocalHostIP4(i32*) #1

declare dso_local i32 @IsZeroIp(i32*) #1

declare dso_local i64 @IsIPPrivate(i32*) #1

declare dso_local i64 @IPToUINT(i32*) #1

declare dso_local i32 @FreeHostIPAddressList(i32*) #1

declare dso_local i32 @WriteBufBuf(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @SendUdp(%struct.TYPE_12__*, i64, i64, i32, i64, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_13__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
