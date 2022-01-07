; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetNetBiosName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetNetBiosName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32* }

@NUM_NBT_QUERYS_SEND = common dso_local global i32 0, align 4
@TIMEOUT_NETBIOS_HOSTNAME = common dso_local global i64 0, align 8
@SOCK_LATER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetNetBiosName(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca [1024 x i32], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_5__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load i32, i32* @NUM_NBT_QUERYS_SEND, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %15, align 8
  %31 = alloca i64, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %276

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @IPToStr(i8* %39, i32 %40, i32* %41)
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %52, %38
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @NUM_NBT_QUERYS_SEND, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = call i64 (...) @Rand16()
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %31, i64 %50
  store i64 %48, i64* %51, align 8
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %43

55:                                               ; preds = %43
  %56 = call i32* @NewUDP(i32 0)
  store i32* %56, i32** %8, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %276

60:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %112, %60
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @NUM_NBT_QUERYS_SEND, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %115

65:                                               ; preds = %61
  %66 = call i32 @Zero(%struct.TYPE_6__* %13, i32 24)
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %31, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i8* @Endian16(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i8* %72, i8** %73, align 8
  %74 = call i8* @Endian16(i32 1)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 32, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 67, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  store i32 75, i32* %84, align 4
  store i32 3, i32* %9, align 4
  br label %85

85:                                               ; preds = %94, %65
  %86 = load i32, i32* %9, align 4
  %87 = icmp sle i32 %86, 32
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 65, i32* %93, align 4
  br label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %85

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 35
  store i32 33, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 37
  store i32 1, i32* %103, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = call i64 @SendTo(i32* %104, i32* %105, i32 137, %struct.TYPE_6__* %13, i32 24)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @ReleaseSock(i32* %109)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %276

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %61

115:                                              ; preds = %61
  %116 = call i64 (...) @Tick64()
  %117 = load i64, i64* @TIMEOUT_NETBIOS_HOSTNAME, align 8
  %118 = add nsw i64 %116, %117
  store i64 %118, i64* %17, align 8
  br label %119

119:                                              ; preds = %271, %142, %115
  br label %120

120:                                              ; preds = %119
  %121 = call i64 (...) @Tick64()
  %122 = load i64, i64* %17, align 8
  %123 = icmp sge i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %272

125:                                              ; preds = %120
  %126 = call i32 @InitSockSet(i32* %22)
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @AddSockSet(i32* %22, i32* %127)
  %129 = call i32 @Select(i32* %22, i32 100, i32* null, i32* null)
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 1, i32* %11, align 4
  br label %135

133:                                              ; preds = %125
  %134 = call i32 @SleepThread(i32 10)
  br label %135

135:                                              ; preds = %133, %132
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %138 = call i32 @RecvFrom(i32* %136, i32* %20, i32* %21, i32* %137, i32 4096)
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* @SOCK_LATER, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %119

143:                                              ; preds = %135
  %144 = load i32, i32* %19, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %272

147:                                              ; preds = %143
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = icmp uge i64 %149, 40
  br i1 %150, label %151, label %269

151:                                              ; preds = %147
  %152 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %153 = bitcast i32* %152 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %153, %struct.TYPE_5__** %23, align 8
  store i32 0, i32* %24, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @Endian16(i32 %156)
  %158 = ptrtoint i8* %157 to i64
  store i64 %158, i64* %26, align 8
  store i32 0, i32* %25, align 4
  br label %159

159:                                              ; preds = %172, %151
  %160 = load i32, i32* %25, align 4
  %161 = load i32, i32* @NUM_NBT_QUERYS_SEND, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %159
  %164 = load i64, i64* %26, align 8
  %165 = load i32, i32* %25, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %31, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %164, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  store i32 1, i32* %24, align 4
  br label %175

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %25, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %25, align 4
  br label %159

175:                                              ; preds = %170, %159
  %176 = load i32, i32* %24, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %268

178:                                              ; preds = %175
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %267

183:                                              ; preds = %178
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %267

188:                                              ; preds = %183
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = icmp sge i32 %191, 1
  br i1 %192, label %193, label %267

193:                                              ; preds = %188
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 32
  br i1 %199, label %200, label %266

200:                                              ; preds = %193
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 67
  br i1 %206, label %207, label %266

207:                                              ; preds = %200
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 4
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 75
  br i1 %213, label %214, label %266

214:                                              ; preds = %207
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 34
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %265

221:                                              ; preds = %214
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 4
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 35
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 33
  br i1 %227, label %228, label %265

228:                                              ; preds = %221
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 36
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %265

235:                                              ; preds = %228
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 37
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %242, label %265

242:                                              ; preds = %235
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 4
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 45
  %247 = bitcast i32* %246 to i8*
  store i8* %247, i8** %27, align 8
  %248 = load i8*, i8** %27, align 8
  %249 = call i64 @StrCheckLen(i8* %248, i32 15)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %242
  %252 = load i8*, i8** %27, align 8
  %253 = call i32 @IsEmptyStr(i8* %252)
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %251
  %256 = load i8*, i8** %5, align 8
  %257 = load i32, i32* %6, align 4
  %258 = load i8*, i8** %27, align 8
  %259 = call i32 @StrCpy(i8* %256, i32 %257, i8* %258)
  %260 = load i8*, i8** %5, align 8
  %261 = call i32 @Trim(i8* %260)
  store i32 1, i32* %12, align 4
  br label %263

262:                                              ; preds = %251
  store i32 0, i32* %12, align 4
  br label %272

263:                                              ; preds = %255
  br label %264

264:                                              ; preds = %263, %242
  br label %265

265:                                              ; preds = %264, %235, %228, %221, %214
  br label %266

266:                                              ; preds = %265, %207, %200, %193
  br label %267

267:                                              ; preds = %266, %188, %183, %178
  br label %268

268:                                              ; preds = %267, %175
  br label %269

269:                                              ; preds = %268, %147
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270
  br label %119

272:                                              ; preds = %262, %146, %124
  %273 = load i32*, i32** %8, align 8
  %274 = call i32 @ReleaseSock(i32* %273)
  %275 = load i32, i32* %12, align 4
  store i32 %275, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %276

276:                                              ; preds = %272, %108, %59, %37
  %277 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %277)
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

declare dso_local i64 @Rand16(...) #2

declare dso_local i32* @NewUDP(i32) #2

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #2

declare dso_local i8* @Endian16(i32) #2

declare dso_local i64 @SendTo(i32*, i32*, i32, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @ReleaseSock(i32*) #2

declare dso_local i64 @Tick64(...) #2

declare dso_local i32 @InitSockSet(i32*) #2

declare dso_local i32 @AddSockSet(i32*, i32*) #2

declare dso_local i32 @Select(i32*, i32, i32*, i32*) #2

declare dso_local i32 @SleepThread(i32) #2

declare dso_local i32 @RecvFrom(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i64 @StrCheckLen(i8*, i32) #2

declare dso_local i32 @IsEmptyStr(i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Trim(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
