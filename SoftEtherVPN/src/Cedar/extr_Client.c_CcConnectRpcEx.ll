; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CcConnectRpcEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CcConnectRpcEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@CLIENT_RPC_MODE_MANAGEMENT = common dso_local global i64 0, align 8
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@CLIENT_CONFIG_PORT = common dso_local global i64 0, align 8
@ERR_CONNECT_FAILED = common dso_local global i64 0, align 8
@CLIENT_RPC_MODE_SHORTCUT = common dso_local global i64 0, align 8
@CLIENT_RPC_MODE_SHORTCUT_DISCONNECT = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@CLIENT_WIN32_REGKEYNAME = common dso_local global i32 0, align 4
@CLIENT_WIN32_REGVALUE_PID = common dso_local global i32 0, align 4
@CLIENT_WIN32_REGVALUE_PORT = common dso_local global i32 0, align 4
@GC_SVC_NAME_VPNCLIENT = common dso_local global i32 0, align 4
@REG_LOCAL_MACHINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @CcConnectRpcEx(i8* %0, i8* %1, i32* %2, i32* %3, i64* %4, i64* %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_11__*, align 8
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_10__, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  store i32* null, i32** %18, align 8
  %33 = load i64, i64* @CLIENT_RPC_MODE_MANAGEMENT, align 8
  store i64 %33, i64* %21, align 8
  %34 = load i32, i32* @SHA1_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %24, align 8
  %37 = alloca i64, i64 %35, align 16
  store i64 %35, i64* %25, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store i32 1, i32* %31, align 4
  br label %279

41:                                               ; preds = %8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i64*, i64** %15, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, i64* @ERR_NO_ERROR, align 8
  %50 = load i64*, i64** %15, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32*, i32** %12, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32*, i32** %12, align 8
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32*, i32** %13, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32*, i32** %13, align 8
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i64, i64* @CLIENT_CONFIG_PORT, align 8
  %63 = sub nsw i64 %62, 1
  store i64 %63, i64* %26, align 8
  br label %64

64:                                               ; preds = %189, %181, %174, %135, %61
  %65 = load i64, i64* %26, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %26, align 8
  %67 = load i64, i64* %26, align 8
  %68 = load i64, i64* @CLIENT_CONFIG_PORT, align 8
  %69 = add nsw i64 %68, 5
  %70 = icmp sge i64 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store i32 1, i32* %31, align 4
  br label %279

72:                                               ; preds = %64
  store i32 0, i32* %28, align 4
  br label %73

73:                                               ; preds = %111, %72
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %26, align 8
  store i64 %75, i64* %19, align 8
  br label %76

76:                                               ; preds = %88, %74
  %77 = load i64, i64* %19, align 8
  %78 = load i64, i64* @CLIENT_CONFIG_PORT, align 8
  %79 = add nsw i64 %78, 5
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = load i64, i64* %19, align 8
  %84 = call i64 @CheckTCPPort(i8* %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 1, i32* %28, align 4
  br label %91

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %19, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %19, align 8
  br label %76

91:                                               ; preds = %86, %76
  %92 = load i32, i32* %28, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %112

95:                                               ; preds = %91
  %96 = load i64, i64* %17, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %112

99:                                               ; preds = %95
  %100 = load i64, i64* %27, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i64 (...) @Tick64()
  store i64 %103, i64* %27, align 8
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i64, i64* %27, align 8
  %106 = load i64, i64* %17, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i64 (...) @Tick64()
  %109 = icmp sle i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %112

111:                                              ; preds = %104
  br label %73

112:                                              ; preds = %110, %98, %94
  %113 = load i32, i32* %28, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i64*, i64** %15, align 8
  %117 = icmp ne i64* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i64, i64* @ERR_CONNECT_FAILED, align 8
  %120 = load i64*, i64** %15, align 8
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %118, %115
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store i32 1, i32* %31, align 4
  br label %279

122:                                              ; preds = %112
  %123 = load i64, i64* %19, align 8
  store i64 %123, i64* %26, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = load i64, i64* %19, align 8
  %126 = call i32* @Connect(i8* %124, i64 %125)
  store i32* %126, i32** %18, align 8
  %127 = load i32*, i32** %18, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %122
  %130 = load i64*, i64** %15, align 8
  %131 = icmp ne i64* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i64, i64* @ERR_CONNECT_FAILED, align 8
  %134 = load i64*, i64** %15, align 8
  store i64 %133, i64* %134, align 8
  br label %135

135:                                              ; preds = %132, %129
  br label %64

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %136
  %138 = load i32*, i32** %18, align 8
  %139 = call i32 @SetTimeout(i32* %138, i32 10000)
  %140 = load i8*, i8** %11, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = call i32 @StrLen(i8* %141)
  %143 = call i32 @Sha0(i64* %37, i8* %140, i32 %142)
  %144 = load i64*, i64** %14, align 8
  %145 = icmp ne i64* %144, null
  br i1 %145, label %146, label %154

146:                                              ; preds = %137
  %147 = load i32, i32* %16, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i64, i64* @CLIENT_RPC_MODE_SHORTCUT, align 8
  store i64 %150, i64* %21, align 8
  br label %153

151:                                              ; preds = %146
  %152 = load i64, i64* @CLIENT_RPC_MODE_SHORTCUT_DISCONNECT, align 8
  store i64 %152, i64* %21, align 8
  br label %153

153:                                              ; preds = %151, %149
  br label %154

154:                                              ; preds = %153, %137
  %155 = load i64, i64* %21, align 8
  %156 = call i64 @Endian32(i64 %155)
  store i64 %156, i64* %21, align 8
  %157 = load i32*, i32** %18, align 8
  %158 = call i32 @SendAdd(i32* %157, i64* %21, i32 8)
  %159 = load i64*, i64** %14, align 8
  %160 = icmp ne i64* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %154
  %162 = load i32*, i32** %18, align 8
  %163 = load i64*, i64** %14, align 8
  %164 = load i32, i32* @SHA1_SIZE, align 4
  %165 = call i32 @SendAdd(i32* %162, i64* %163, i32 %164)
  br label %170

166:                                              ; preds = %154
  %167 = load i32*, i32** %18, align 8
  %168 = load i32, i32* @SHA1_SIZE, align 4
  %169 = call i32 @SendAdd(i32* %167, i64* %37, i32 %168)
  br label %170

170:                                              ; preds = %166, %161
  %171 = load i32*, i32** %18, align 8
  %172 = call i32 @SendNow(i32* %171, i32 0)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32*, i32** %18, align 8
  %176 = call i32 @ReleaseSock(i32* %175)
  br label %64

177:                                              ; preds = %170
  %178 = load i32*, i32** %18, align 8
  %179 = call i32 @RecvAll(i32* %178, i64* %20, i32 8, i32 0)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32*, i32** %18, align 8
  %183 = call i32 @ReleaseSock(i32* %182)
  br label %64

184:                                              ; preds = %177
  %185 = load i64, i64* %20, align 8
  %186 = call i64 @Endian32(i64 %185)
  store i64 %186, i64* %20, align 8
  %187 = load i64, i64* %20, align 8
  %188 = icmp sge i64 %187, 1024
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load i32*, i32** %18, align 8
  %191 = call i32 @ReleaseSock(i32* %190)
  br label %64

192:                                              ; preds = %184
  %193 = load i64*, i64** %14, align 8
  %194 = icmp ne i64* %193, null
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = load i64*, i64** %15, align 8
  %197 = icmp ne i64* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i64, i64* %20, align 8
  %200 = load i64*, i64** %15, align 8
  store i64 %199, i64* %200, align 8
  br label %201

201:                                              ; preds = %198, %195
  %202 = load i32*, i32** %18, align 8
  %203 = call i32 @SendAll(i32* %202, i64* %20, i32 8, i32 0)
  %204 = load i32*, i32** %18, align 8
  %205 = call i32 @ReleaseSock(i32* %204)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store i32 1, i32* %31, align 4
  br label %279

206:                                              ; preds = %192
  %207 = load i64, i64* %20, align 8
  switch i64 %207, label %220 [
    i64 1, label %208
    i64 2, label %214
  ]

208:                                              ; preds = %206
  %209 = load i32*, i32** %12, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load i32*, i32** %12, align 8
  store i32 1, i32* %212, align 4
  br label %213

213:                                              ; preds = %211, %208
  br label %220

214:                                              ; preds = %206
  %215 = load i32*, i32** %13, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i32*, i32** %13, align 8
  store i32 1, i32* %218, align 4
  br label %219

219:                                              ; preds = %217, %214
  br label %220

220:                                              ; preds = %206, %219, %213
  %221 = load i64, i64* %20, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32*, i32** %18, align 8
  %225 = call i32 @ReleaseSock(i32* %224)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store i32 1, i32* %31, align 4
  br label %279

226:                                              ; preds = %220
  %227 = load i32*, i32** %18, align 8
  %228 = load i32, i32* @INFINITE, align 4
  %229 = call i32 @SetTimeout(i32* %227, i32 %228)
  %230 = load i32*, i32** %18, align 8
  %231 = call %struct.TYPE_11__* @StartRpcClient(i32* %230, i32* null)
  store %struct.TYPE_11__* %231, %struct.TYPE_11__** %22, align 8
  %232 = load i32*, i32** %18, align 8
  %233 = call i32 @ReleaseSock(i32* %232)
  %234 = call %struct.TYPE_12__* @ZeroMalloc(i32 32)
  store %struct.TYPE_12__* %234, %struct.TYPE_12__** %23, align 8
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  store %struct.TYPE_12__* %235, %struct.TYPE_12__** %237, align 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %239 = icmp ne %struct.TYPE_12__* %238, null
  br i1 %239, label %240, label %277

240:                                              ; preds = %226
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 6
  store %struct.TYPE_11__* %241, %struct.TYPE_11__** %243, align 8
  %244 = call i32 @Zero(%struct.TYPE_10__* %32, i32 16)
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %246 = call i32 @CcGetClientVersion(%struct.TYPE_12__* %245, %struct.TYPE_10__* %32)
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 3
  store i32 %248, i32* %250, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @OS_IS_UNIX(i32 %253)
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 5
  store i32 %254, i32* %256, align 4
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @OS_IS_WINDOWS_9X(i32 %259)
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 4
  store i32 %260, i32* %262, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 4
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @StrCpy(i32 %273, i32 4, i32 %275)
  br label %277

277:                                              ; preds = %240, %226
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %278, %struct.TYPE_12__** %9, align 8
  store i32 1, i32* %31, align 4
  br label %279

279:                                              ; preds = %277, %223, %201, %121, %71, %40
  %280 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %280)
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  ret %struct.TYPE_12__* %281
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CheckTCPPort(i8*, i64) #2

declare dso_local i64 @Tick64(...) #2

declare dso_local i32* @Connect(i8*, i64) #2

declare dso_local i32 @SetTimeout(i32*, i32) #2

declare dso_local i32 @Sha0(i64*, i8*, i32) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i64 @Endian32(i64) #2

declare dso_local i32 @SendAdd(i32*, i64*, i32) #2

declare dso_local i32 @SendNow(i32*, i32) #2

declare dso_local i32 @ReleaseSock(i32*) #2

declare dso_local i32 @RecvAll(i32*, i64*, i32, i32) #2

declare dso_local i32 @SendAll(i32*, i64*, i32, i32) #2

declare dso_local %struct.TYPE_11__* @StartRpcClient(i32*, i32*) #2

declare dso_local %struct.TYPE_12__* @ZeroMalloc(i32) #2

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @CcGetClientVersion(%struct.TYPE_12__*, %struct.TYPE_10__*) #2

declare dso_local i32 @OS_IS_UNIX(i32) #2

declare dso_local i32 @OS_IS_WINDOWS_9X(i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
