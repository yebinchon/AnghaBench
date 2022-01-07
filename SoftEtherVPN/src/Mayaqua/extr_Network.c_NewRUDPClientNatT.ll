; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewRUDPClientNatT.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewRUDPClientNatT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@RUDP_TIMEOUT = common dso_local global i64 0, align 8
@RUDP_ERROR_UNKNOWN = common dso_local global i64 0, align 8
@RUDP_ERROR_NAT_T_NO_RESPONSE = common dso_local global i64 0, align 8
@RUDP_ERROR_TIMEOUT = common dso_local global i64 0, align 8
@RUDP_ERROR_USER_CANCELED = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i64 0, align 8
@SOCK_LATER = common dso_local global i64 0, align 8
@MAX_NUM_IGNORE_ERRORS = common dso_local global i64 0, align 8
@UDP_NAT_T_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"tran_id\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"opcode\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"nat_t_connect_request\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"multi_candidates\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"result_ip\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"result_port\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"same_lan\00", align 1
@RUDP_ERROR_OK = common dso_local global i64 0, align 8
@RUDP_ERROR_NAT_T_TWO_OR_MORE = common dso_local global i64 0, align 8
@RUDP_ERROR_NAT_T_NOT_FOUND = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"dest_ip\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"hint\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"target_hostname\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"svc_name\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"nat_traversal_version\00", align 1
@UDP_NAT_TRAVERSAL_VERSION = common dso_local global i32 0, align 4
@UDP_NAT_T_CONNECT_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @NewRUDPClientNatT(i8* %0, i32* %1, i64* %2, i64 %3, i32* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_18__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca %struct.TYPE_18__*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca %struct.TYPE_19__*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i64, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca %struct.TYPE_19__*, align 8
  %51 = alloca i8*, align 8
  %52 = alloca i64, align 8
  %53 = alloca i32*, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %56 = load i32, i32* @MAX_SIZE, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %23, align 8
  %59 = alloca i8, i64 %57, align 16
  store i64 %57, i64* %24, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %7
  %63 = load i64, i64* @RUDP_TIMEOUT, align 8
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %62, %7
  %65 = load i64*, i64** %11, align 8
  %66 = icmp eq i64* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i64* %17, i64** %11, align 8
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32*, i32** %13, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32* %19, i32** %13, align 8
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i64, i64* @RUDP_ERROR_UNKNOWN, align 8
  %74 = load i64*, i64** %11, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %10, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %72
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  store i32 1, i32* %25, align 4
  br label %427

81:                                               ; preds = %77
  %82 = call i32 (...) @ListenTcpForPopupFirewallDialog()
  %83 = call i64 (...) @Tick64()
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %83, %84
  store i64 %85, i64* %18, align 8
  %86 = trunc i64 %57 to i32
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @RUDPGetRegisterHostNameByIP(i8* %59, i32 %86, i32* %87)
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @GetIP4Ex(i32* %16, i8* %59, i32 0, i32* %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load i64, i64* @RUDP_ERROR_NAT_T_NO_RESPONSE, align 8
  %94 = load i64*, i64** %11, align 8
  store i64 %93, i64* %94, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  store i32 1, i32* %25, align 4
  br label %427

95:                                               ; preds = %81
  %96 = call i64 (...) @Tick64()
  %97 = load i64, i64* %18, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i64, i64* @RUDP_ERROR_TIMEOUT, align 8
  %101 = load i64*, i64** %11, align 8
  store i64 %100, i64* %101, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  store i32 1, i32* %25, align 4
  br label %427

102:                                              ; preds = %95
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i64, i64* @RUDP_ERROR_USER_CANCELED, align 8
  %108 = load i64*, i64** %11, align 8
  store i64 %107, i64* %108, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  store i32 1, i32* %25, align 4
  br label %427

109:                                              ; preds = %102
  %110 = call %struct.TYPE_18__* @NewUDP4ForSpecificIp(i32* %16, i32 0)
  store %struct.TYPE_18__* %110, %struct.TYPE_18__** %21, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %112 = icmp eq %struct.TYPE_18__* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i64, i64* @RUDP_ERROR_UNKNOWN, align 8
  %115 = load i64*, i64** %11, align 8
  store i64 %114, i64* %115, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  store i32 1, i32* %25, align 4
  br label %427

116:                                              ; preds = %109
  store i64 0, i64* %26, align 8
  %117 = call i32* (...) @NewInterruptManager()
  store i32* %117, i32** %27, align 8
  %118 = call i64 (...) @Rand64()
  store i64 %118, i64* %28, align 8
  store i64 65536, i64* %29, align 8
  %119 = load i64, i64* %29, align 8
  %120 = call i32* @Malloc(i64 %119)
  store i32* %120, i32** %30, align 8
  %121 = load i32, i32* @MAX_SIZE, align 4
  %122 = zext i32 %121 to i64
  %123 = call i8* @llvm.stacksave()
  store i8* %123, i8** %31, align 8
  %124 = alloca i8, i64 %122, align 16
  store i64 %122, i64* %32, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %35, align 8
  store i64 0, i64* %36, align 8
  store i64 0, i64* %37, align 8
  %125 = load i32*, i32** %27, align 8
  %126 = load i64, i64* %18, align 8
  %127 = call i32 @AddInterrupt(i32* %125, i64 %126)
  %128 = call i32* (...) @NewSockEvent()
  store i32* %128, i32** %20, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %130 = load i32*, i32** %20, align 8
  %131 = call i32 @JoinSockToSockEvent(%struct.TYPE_18__* %129, i32* %130)
  br label %132

132:                                              ; preds = %360, %116
  br label %133

133:                                              ; preds = %132
  %134 = call i64 (...) @Tick64()
  store i64 %134, i64* %38, align 8
  store i64 0, i64* %44, align 8
  %135 = load i64, i64* %38, align 8
  %136 = load i64, i64* %18, align 8
  %137 = icmp sge i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %178, %172, %138
  %140 = load i64, i64* @RUDP_ERROR_NAT_T_NO_RESPONSE, align 8
  %141 = load i64*, i64** %11, align 8
  store i64 %140, i64* %141, align 8
  br label %368

142:                                              ; preds = %133
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i64, i64* @RUDP_ERROR_USER_CANCELED, align 8
  %148 = load i64*, i64** %11, align 8
  store i64 %147, i64* %148, align 8
  br label %368

149:                                              ; preds = %142
  %150 = load i64, i64* @INFINITE, align 8
  store i64 %150, i64* %43, align 8
  br label %151

151:                                              ; preds = %276, %149
  %152 = load i64, i64* %43, align 8
  %153 = load i64, i64* @INFINITE, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %277

155:                                              ; preds = %151
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %157 = load i32*, i32** %30, align 8
  %158 = load i64, i64* %29, align 8
  %159 = call i64 @RecvFrom(%struct.TYPE_18__* %156, i32* %41, i64* %42, i32* %157, i64 %158)
  store i64 %159, i64* %40, align 8
  %160 = load i64, i64* %40, align 8
  %161 = load i64, i64* @SOCK_LATER, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %277

164:                                              ; preds = %155
  %165 = load i64, i64* %40, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %164
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %139

173:                                              ; preds = %167
  %174 = load i64, i64* %44, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %44, align 8
  %176 = load i64, i64* @MAX_NUM_IGNORE_ERRORS, align 8
  %177 = icmp sge i64 %174, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %139

179:                                              ; preds = %173
  br label %180

180:                                              ; preds = %179
  br label %275

181:                                              ; preds = %164
  %182 = call i64 @CmpIpAddr(i32* %41, i32* %16)
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %274

184:                                              ; preds = %181
  %185 = load i64, i64* %42, align 8
  %186 = load i64, i64* @UDP_NAT_T_PORT, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %274

188:                                              ; preds = %184
  %189 = call %struct.TYPE_19__* (...) @NewBuf()
  store %struct.TYPE_19__* %189, %struct.TYPE_19__** %45, align 8
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %191 = load i32*, i32** %30, align 8
  %192 = load i64, i64* %40, align 8
  %193 = call i32 @WriteBuf(%struct.TYPE_19__* %190, i32* %191, i64 %192)
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %195 = call i32 @SeekBuf(%struct.TYPE_19__* %194, i32 0, i32 0)
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %197 = call i32* @BufToPack(%struct.TYPE_19__* %196)
  store i32* %197, i32** %46, align 8
  %198 = load i32*, i32** %46, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %271

200:                                              ; preds = %188
  %201 = load i32*, i32** %46, align 8
  %202 = call i64 @PackGetInt64(i32* %201, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %202, i64* %47, align 8
  %203 = load i64, i64* %47, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = load i64, i64* %47, align 8
  store i64 %206, i64* %37, align 8
  br label %207

207:                                              ; preds = %205, %200
  %208 = load i32*, i32** %46, align 8
  %209 = call i64 @PackGetInt64(i32* %208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %210 = load i64, i64* %28, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %268

212:                                              ; preds = %207
  %213 = load i32*, i32** %46, align 8
  %214 = call i64 @PackCmpStr(i32* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %267

216:                                              ; preds = %212
  %217 = load i32*, i32** %46, align 8
  %218 = call i32 @PackGetBool(i32* %217, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %218, i32* %48, align 4
  %219 = load i32*, i32** %46, align 8
  %220 = call i32 @PackGetBool(i32* %219, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 %220, i32* %49, align 4
  %221 = load i32, i32* %48, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %258

223:                                              ; preds = %216
  %224 = load i32*, i32** %46, align 8
  %225 = trunc i64 %122 to i32
  %226 = call i32 @PackGetStr(i32* %224, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %124, i32 %225)
  %227 = call i32 @StrToIP(i32* %33, i8* %124)
  %228 = load i32*, i32** %46, align 8
  %229 = call i64 @PackGetInt(i32* %228, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i64 %229, i64* %34, align 8
  %230 = load i32*, i32** %46, align 8
  %231 = call i32 @PackGetBool(i32* %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %231, i32* %22, align 4
  %232 = load i64, i64* %34, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %257

234:                                              ; preds = %223
  %235 = call i32 @IsZeroIp(i32* %33)
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %256

237:                                              ; preds = %234
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = call i64 @IsIP4(i32* %33)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %253, label %245

245:                                              ; preds = %242, %237
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %245
  %251 = call i64 @IsIP6(i32* %33)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %250, %242
  %254 = load i64, i64* @RUDP_ERROR_OK, align 8
  store i64 %254, i64* %43, align 8
  br label %255

255:                                              ; preds = %253, %250, %245
  br label %256

256:                                              ; preds = %255, %234
  br label %257

257:                                              ; preds = %256, %223
  br label %266

258:                                              ; preds = %216
  %259 = load i32, i32* %49, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %258
  %262 = load i64, i64* @RUDP_ERROR_NAT_T_TWO_OR_MORE, align 8
  store i64 %262, i64* %43, align 8
  br label %265

263:                                              ; preds = %258
  %264 = load i64, i64* @RUDP_ERROR_NAT_T_NOT_FOUND, align 8
  store i64 %264, i64* %43, align 8
  br label %265

265:                                              ; preds = %263, %261
  br label %266

266:                                              ; preds = %265, %257
  br label %267

267:                                              ; preds = %266, %212
  br label %268

268:                                              ; preds = %267, %207
  %269 = load i32*, i32** %46, align 8
  %270 = call i32 @FreePack(i32* %269)
  br label %271

271:                                              ; preds = %268, %188
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %273 = call i32 @FreeBuf(%struct.TYPE_19__* %272)
  br label %274

274:                                              ; preds = %271, %184, %181
  br label %275

275:                                              ; preds = %274, %180
  br label %276

276:                                              ; preds = %275
  br label %151

277:                                              ; preds = %163, %151
  %278 = load i64, i64* %43, align 8
  %279 = load i64, i64* @INFINITE, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %277
  %282 = load i64, i64* %43, align 8
  %283 = load i64*, i64** %11, align 8
  store i64 %282, i64* %283, align 8
  br label %368

284:                                              ; preds = %277
  %285 = load i64, i64* %26, align 8
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %284
  %288 = load i64, i64* %38, align 8
  %289 = load i64, i64* %26, align 8
  %290 = icmp sge i64 %288, %289
  br i1 %290, label %291, label %360

291:                                              ; preds = %287, %284
  %292 = load i32, i32* @MAX_SIZE, align 4
  %293 = zext i32 %292 to i64
  %294 = call i8* @llvm.stacksave()
  store i8* %294, i8** %51, align 8
  %295 = alloca i8, i64 %293, align 16
  store i64 %293, i64* %52, align 8
  %296 = call i32* (...) @NewPack()
  store i32* %296, i32** %53, align 8
  %297 = load i32*, i32** %53, align 8
  %298 = call i32 @PackAddStr(i32* %297, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %299 = load i32*, i32** %53, align 8
  %300 = load i64, i64* %28, align 8
  %301 = call i32 @PackAddInt64(i32* %299, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %300)
  %302 = trunc i64 %293 to i32
  %303 = load i32*, i32** %10, align 8
  %304 = call i32 @IPToStr(i8* %295, i32 %302, i32* %303)
  %305 = load i32*, i32** %53, align 8
  %306 = call i32 @PackAddStr(i32* %305, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %295)
  %307 = load i32*, i32** %53, align 8
  %308 = load i64, i64* %37, align 8
  %309 = call i32 @PackAddInt64(i32* %307, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %308)
  %310 = load i8*, i8** %14, align 8
  %311 = call i32 @IsEmptyStr(i8* %310)
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %291
  %314 = load i32*, i32** %53, align 8
  %315 = load i8*, i8** %14, align 8
  %316 = call i32 @PackAddStr(i32* %314, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %315)
  br label %317

317:                                              ; preds = %313, %291
  %318 = load i8*, i8** %15, align 8
  %319 = call i32 @IsEmptyStr(i8* %318)
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %317
  %322 = load i32*, i32** %53, align 8
  %323 = load i8*, i8** %15, align 8
  %324 = call i32 @PackAddStr(i32* %322, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %323)
  br label %325

325:                                              ; preds = %321, %317
  %326 = load i32*, i32** %53, align 8
  %327 = load i8*, i8** %9, align 8
  %328 = call i32 @PackAddStr(i32* %326, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %327)
  %329 = load i32*, i32** %53, align 8
  %330 = load i32, i32* @UDP_NAT_TRAVERSAL_VERSION, align 4
  %331 = call i32 @PackAddInt(i32* %329, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %330)
  %332 = load i32*, i32** %53, align 8
  %333 = call %struct.TYPE_19__* @PackToBuf(i32* %332)
  store %struct.TYPE_19__* %333, %struct.TYPE_19__** %50, align 8
  %334 = load i32*, i32** %53, align 8
  %335 = call i32 @FreePack(i32* %334)
  %336 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %337 = load i64, i64* @UDP_NAT_T_PORT, align 8
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @SendTo(%struct.TYPE_18__* %336, i32* %16, i64 %337, i32 %340, i32 %343)
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %346 = call i32 @FreeBuf(%struct.TYPE_19__* %345)
  %347 = load i64, i64* %38, align 8
  %348 = load i64, i64* @UDP_NAT_T_CONNECT_INTERVAL, align 8
  %349 = load i64, i64* %36, align 8
  %350 = call i64 @MAX(i64 %349, i32 6)
  %351 = call i64 @Power(i32 2, i64 %350)
  %352 = mul nsw i64 %348, %351
  %353 = add nsw i64 %347, %352
  store i64 %353, i64* %26, align 8
  %354 = load i64, i64* %36, align 8
  %355 = add nsw i64 %354, 1
  store i64 %355, i64* %36, align 8
  %356 = load i32*, i32** %27, align 8
  %357 = load i64, i64* %26, align 8
  %358 = call i32 @AddInterrupt(i32* %356, i64 %357)
  %359 = load i8*, i8** %51, align 8
  call void @llvm.stackrestore(i8* %359)
  br label %360

360:                                              ; preds = %325, %287
  %361 = load i32*, i32** %27, align 8
  %362 = call i64 @GetNextIntervalForInterrupt(i32* %361)
  store i64 %362, i64* %39, align 8
  %363 = load i64, i64* %39, align 8
  %364 = call i64 @MIN(i64 %363, i32 50)
  store i64 %364, i64* %39, align 8
  %365 = load i32*, i32** %20, align 8
  %366 = load i64, i64* %39, align 8
  %367 = call i32 @WaitSockEvent(i32* %365, i64 %366)
  br label %132

368:                                              ; preds = %281, %146, %139
  %369 = load i32*, i32** %30, align 8
  %370 = call i32 @Free(i32* %369)
  %371 = load i32*, i32** %27, align 8
  %372 = call i32 @FreeInterruptManager(i32* %371)
  %373 = load i64*, i64** %11, align 8
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @RUDP_ERROR_OK, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %406

377:                                              ; preds = %368
  %378 = call i64 (...) @Tick64()
  store i64 %378, i64* %55, align 8
  %379 = load i64, i64* %55, align 8
  %380 = load i64, i64* %18, align 8
  %381 = icmp sle i64 %379, %380
  br i1 %381, label %382, label %386

382:                                              ; preds = %377
  %383 = load i64, i64* %18, align 8
  %384 = load i64, i64* %55, align 8
  %385 = sub nsw i64 %383, %384
  store i64 %385, i64* %54, align 8
  br label %387

386:                                              ; preds = %377
  store i64 0, i64* %54, align 8
  br label %387

387:                                              ; preds = %386, %382
  %388 = load i64, i64* %54, align 8
  %389 = call i64 @MAX(i64 %388, i32 2000)
  store i64 %389, i64* %54, align 8
  %390 = load i32, i32* %22, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %397

392:                                              ; preds = %387
  %393 = load i32*, i32** %20, align 8
  %394 = call i32 @ReleaseSockEvent(i32* %393)
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %396 = call i32 @ReleaseSock(%struct.TYPE_18__* %395)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %21, align 8
  store i32* null, i32** %20, align 8
  br label %397

397:                                              ; preds = %392, %387
  %398 = load i8*, i8** %9, align 8
  %399 = load i64, i64* %34, align 8
  %400 = load i64*, i64** %11, align 8
  %401 = load i64, i64* %54, align 8
  %402 = load i32*, i32** %13, align 8
  %403 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %404 = load i32*, i32** %20, align 8
  %405 = call %struct.TYPE_18__* @NewRUDPClientDirect(i8* %398, i32* %33, i64 %399, i64* %400, i64 %401, i32* %402, %struct.TYPE_18__* %403, i32* %404, i32 0, i32 0)
  store %struct.TYPE_18__* %405, %struct.TYPE_18__** %35, align 8
  br label %406

406:                                              ; preds = %397, %368
  %407 = load i32*, i32** %20, align 8
  %408 = icmp ne i32* %407, null
  br i1 %408, label %409, label %412

409:                                              ; preds = %406
  %410 = load i32*, i32** %20, align 8
  %411 = call i32 @ReleaseSockEvent(i32* %410)
  br label %412

412:                                              ; preds = %409, %406
  %413 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %414 = icmp ne %struct.TYPE_18__* %413, null
  br i1 %414, label %415, label %424

415:                                              ; preds = %412
  %416 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %417 = icmp eq %struct.TYPE_18__* %416, null
  br i1 %417, label %418, label %421

418:                                              ; preds = %415
  %419 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %420 = call i32 @Disconnect(%struct.TYPE_18__* %419)
  br label %421

421:                                              ; preds = %418, %415
  %422 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %423 = call i32 @ReleaseSock(%struct.TYPE_18__* %422)
  br label %424

424:                                              ; preds = %421, %412
  %425 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  store %struct.TYPE_18__* %425, %struct.TYPE_18__** %8, align 8
  store i32 1, i32* %25, align 4
  %426 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %426)
  br label %427

427:                                              ; preds = %424, %113, %106, %99, %92, %80
  %428 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %428)
  %429 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  ret %struct.TYPE_18__* %429
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ListenTcpForPopupFirewallDialog(...) #2

declare dso_local i64 @Tick64(...) #2

declare dso_local i32 @RUDPGetRegisterHostNameByIP(i8*, i32, i32*) #2

declare dso_local i32 @GetIP4Ex(i32*, i8*, i32, i32*) #2

declare dso_local %struct.TYPE_18__* @NewUDP4ForSpecificIp(i32*, i32) #2

declare dso_local i32* @NewInterruptManager(...) #2

declare dso_local i64 @Rand64(...) #2

declare dso_local i32* @Malloc(i64) #2

declare dso_local i32 @AddInterrupt(i32*, i64) #2

declare dso_local i32* @NewSockEvent(...) #2

declare dso_local i32 @JoinSockToSockEvent(%struct.TYPE_18__*, i32*) #2

declare dso_local i64 @RecvFrom(%struct.TYPE_18__*, i32*, i64*, i32*, i64) #2

declare dso_local i64 @CmpIpAddr(i32*, i32*) #2

declare dso_local %struct.TYPE_19__* @NewBuf(...) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_19__*, i32*, i64) #2

declare dso_local i32 @SeekBuf(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32* @BufToPack(%struct.TYPE_19__*) #2

declare dso_local i64 @PackGetInt64(i32*, i8*) #2

declare dso_local i64 @PackCmpStr(i32*, i8*, i8*) #2

declare dso_local i32 @PackGetBool(i32*, i8*) #2

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i32 @StrToIP(i32*, i8*) #2

declare dso_local i64 @PackGetInt(i32*, i8*) #2

declare dso_local i32 @IsZeroIp(i32*) #2

declare dso_local i64 @IsIP4(i32*) #2

declare dso_local i64 @IsIP6(i32*) #2

declare dso_local i32 @FreePack(i32*) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_19__*) #2

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #2

declare dso_local i32 @PackAddInt64(i32*, i8*, i64) #2

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

declare dso_local i32 @IsEmptyStr(i8*) #2

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #2

declare dso_local %struct.TYPE_19__* @PackToBuf(i32*) #2

declare dso_local i32 @SendTo(%struct.TYPE_18__*, i32*, i64, i32, i32) #2

declare dso_local i64 @Power(i32, i64) #2

declare dso_local i64 @MAX(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @GetNextIntervalForInterrupt(i32*) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i32 @WaitSockEvent(i32*, i64) #2

declare dso_local i32 @Free(i32*) #2

declare dso_local i32 @FreeInterruptManager(i32*) #2

declare dso_local i32 @ReleaseSockEvent(i32*) #2

declare dso_local i32 @ReleaseSock(%struct.TYPE_18__*) #2

declare dso_local %struct.TYPE_18__* @NewRUDPClientDirect(i8*, i32*, i64, i64*, i64, i32*, %struct.TYPE_18__*, i32*, i32, i32) #2

declare dso_local i32 @Disconnect(%struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
