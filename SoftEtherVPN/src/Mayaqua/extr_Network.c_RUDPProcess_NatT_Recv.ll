; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPProcess_NatT_Recv.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPProcess_NatT_Recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i8*, i32, i64, i64, i8*, i64, i64, i8, i32, i64, i64, i32, i64*, i64, i64, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IP=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tran_id\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"opcode\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"get_token\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@UDP_NAT_T_GET_TOKEN_INTERVAL_2_MIN = common dso_local global i32 0, align 4
@UDP_NAT_T_GET_TOKEN_INTERVAL_2_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"your_ip\00", align 1
@RUDP_NATT_MAX_CONT_CHANGE_HOSTNAME = common dso_local global i64 0, align 8
@RUDP_NATT_CONT_CHANGE_HOSTNAME_RESET_INTERVAL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"CurrentRegisterHostname Changed: New=%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"nat_t_register\00", align 1
@UDP_NAT_T_REGISTER_INTERVAL_MIN = common dso_local global i32 0, align 4
@UDP_NAT_T_REGISTER_INTERVAL_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"NAT-T Registered.\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"your_ip_and_port\00", align 1
@g_source_ip_validation_force_disable = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"enable_source_ip_validation\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"your_port\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"nat_t_connect_relay\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"session_key\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"client_ip\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"client_port\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RUDPProcess_NatT_Recv(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = icmp eq %struct.TYPE_8__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = icmp eq %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %2
  br label %428

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %35, 8
  br i1 %36, label %37, label %109

37:                                               ; preds = %32
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %39 = call i32 @Zero(i8* %38, i32 128)
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MIN(i32 %46, i32 127)
  %48 = call i32 @Copy(i8* %40, i32 %43, i32 %47)
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %50 = call i64 @StartWith(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %108

52:                                               ; preds = %37
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @IsEmptyStr(i8* %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %52
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %63 = call i64 @StrCmpi(i8* %61, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %58
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @ClearStr(i8* %68, i32 8)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 16
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 19
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 0, i32* %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @Zero(i8* %78, i32 8)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 12
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 15
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %65, %58
  br label %87

87:                                               ; preds = %86, %52
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @RUDPParseIPAndPortStr(i32 %90, i32 %93, i32* %8, i64* %9)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %87
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 14
  %99 = load i64*, i64** %98, align 8
  %100 = icmp ne i64* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 14
  %105 = load i64*, i64** %104, align 8
  store i64 %102, i64* %105, align 8
  br label %106

106:                                              ; preds = %101, %96
  br label %107

107:                                              ; preds = %106, %87
  br label %428

108:                                              ; preds = %37
  br label %109

109:                                              ; preds = %108, %32
  %110 = call i32* (...) @NewBuf()
  store i32* %110, i32** %5, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @WriteBuf(i32* %111, i32 %114, i32 %117)
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @SeekBuf(i32* %119, i32 0, i32 0)
  %121 = load i32*, i32** %5, align 8
  %122 = call i32* @BufToPack(i32* %121)
  store i32* %122, i32** %6, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %425

125:                                              ; preds = %109
  %126 = load i32*, i32** %6, align 8
  %127 = call i8* @PackGetBool(i32* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %10, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = call i64 @PackGetInt64(i32* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i64 %130, i64* %11, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @ExtractAndApplyDynList(i32* %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 20
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %422

137:                                              ; preds = %125
  %138 = load i32*, i32** %6, align 8
  %139 = call i64 @PackCmpStr(i32* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %293

141:                                              ; preds = %137
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %292

144:                                              ; preds = %141
  %145 = load i64, i64* %11, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %145, %148
  br i1 %149, label %150, label %292

150:                                              ; preds = %144
  %151 = load i32, i32* @MAX_SIZE, align 4
  %152 = zext i32 %151 to i64
  %153 = call i8* @llvm.stacksave()
  store i8* %153, i8** %12, align 8
  %154 = alloca i8, i64 %152, align 16
  store i64 %152, i64* %13, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = trunc i64 %152 to i32
  %157 = call i64 @PackGetStr(i32* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %154, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %290

159:                                              ; preds = %150
  %160 = call i32 @IsEmptyStr(i8* %154)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %290

162:                                              ; preds = %159
  %163 = load i32, i32* @MAX_SIZE, align 4
  %164 = zext i32 %163 to i64
  %165 = call i8* @llvm.stacksave()
  store i8* %165, i8** %14, align 8
  %166 = alloca i8, i64 %164, align 16
  store i64 %164, i64* %15, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @StrCpy(i8* %169, i32 8, i8* %154)
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  store i32 1, i32* %172, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* @UDP_NAT_T_GET_TOKEN_INTERVAL_2_MIN, align 4
  %177 = load i32, i32* @UDP_NAT_T_GET_TOKEN_INTERVAL_2_MAX, align 4
  %178 = call i64 @GenRandInterval(i32 %176, i32 %177)
  %179 = add nsw i64 %175, %178
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 16
  store i64 %179, i64* %181, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 19
  store i64 0, i64* %183, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = trunc i64 %164 to i32
  %186 = call i64 @PackGetStr(i32* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %166, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %281

188:                                              ; preds = %162
  %189 = load i32, i32* @MAX_SIZE, align 4
  %190 = zext i32 %189 to i64
  %191 = call i8* @llvm.stacksave()
  store i8* %191, i8** %17, align 8
  %192 = alloca i8, i64 %190, align 16
  store i64 %190, i64* %18, align 8
  %193 = call i32 @StrToIP(i32* %16, i8* %166)
  %194 = call i32 @SetCurrentGlobalIP(i32* %16, i32 0)
  %195 = trunc i64 %190 to i32
  %196 = call i32 @RUDPGetRegisterHostNameByIP(i8* %192, i32 %195, i32* %16)
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 17
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @Lock(i32 %199)
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 6
  %203 = load i8*, i8** %202, align 8
  %204 = call i64 @StrCmpi(i8* %203, i8* %192)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %270

206:                                              ; preds = %188
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 7
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, 1
  store i64 %210, i64* %208, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 7
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @RUDP_NATT_MAX_CONT_CHANGE_HOSTNAME, align 8
  %215 = icmp sle i64 %213, %214
  br i1 %215, label %216, label %242

216:                                              ; preds = %206
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 8
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %216
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 5
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @RUDP_NATT_CONT_CHANGE_HOSTNAME_RESET_INTERVAL, align 8
  %226 = add nsw i64 %224, %225
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 8
  store i64 %226, i64* %228, align 8
  br label %229

229:                                              ; preds = %221, %216
  %230 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %192)
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 6
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @StrCpy(i8* %233, i32 8, i8* %192)
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 9
  %237 = call i32 @Zero(i8* %236, i32 1)
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 18
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @Set(i32 %240)
  br label %269

242:                                              ; preds = %206
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 8
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %242
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 5
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @RUDP_NATT_CONT_CHANGE_HOSTNAME_RESET_INTERVAL, align 8
  %252 = add nsw i64 %250, %251
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 8
  store i64 %252, i64* %254, align 8
  br label %255

255:                                              ; preds = %247, %242
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 5
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 8
  %261 = load i64, i64* %260, align 8
  %262 = icmp sge i64 %258, %261
  br i1 %262, label %263, label %268

263:                                              ; preds = %255
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 7
  store i64 0, i64* %265, align 8
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 8
  store i64 0, i64* %267, align 8
  br label %268

268:                                              ; preds = %263, %255
  br label %269

269:                                              ; preds = %268, %229
  br label %275

270:                                              ; preds = %188
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 7
  store i64 0, i64* %272, align 8
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 8
  store i64 0, i64* %274, align 8
  br label %275

275:                                              ; preds = %270, %269
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 17
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @Unlock(i32 %278)
  %280 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %280)
  br label %281

281:                                              ; preds = %275, %162
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 13
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 16
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @AddInterrupt(i32 %284, i64 %287)
  %289 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %289)
  br label %290

290:                                              ; preds = %281, %159, %150
  %291 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %291)
  br label %292

292:                                              ; preds = %290, %144, %141
  br label %421

293:                                              ; preds = %137
  %294 = load i32*, i32** %6, align 8
  %295 = call i64 @PackCmpStr(i32* %294, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %362

297:                                              ; preds = %293
  %298 = load i32, i32* %10, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %361

300:                                              ; preds = %297
  %301 = load i64, i64* %11, align 8
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 4
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %301, %304
  br i1 %305, label %306, label %361

306:                                              ; preds = %300
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 3
  store i32 1, i32* %308, align 8
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 5
  %311 = load i64, i64* %310, align 8
  %312 = load i32, i32* @UDP_NAT_T_REGISTER_INTERVAL_MIN, align 4
  %313 = load i32, i32* @UDP_NAT_T_REGISTER_INTERVAL_MAX, align 4
  %314 = call i64 @GenRandInterval(i32 %312, i32 %313)
  %315 = add nsw i64 %311, %314
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 12
  store i64 %315, i64* %317, align 8
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 15
  store i64 0, i64* %319, align 8
  %320 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %321 = load i32*, i32** %6, align 8
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = call i64 @PackGetStr(i32* %321, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %324, i32 8)
  %326 = load i32, i32* @g_source_ip_validation_force_disable, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %306
  %329 = load i32*, i32** %6, align 8
  %330 = call i8* @PackGetBool(i32* %329, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %331 = ptrtoint i8* %330 to i32
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 10
  store i32 %331, i32* %333, align 4
  br label %337

334:                                              ; preds = %306
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 10
  store i32 0, i32* %336, align 4
  br label %337

337:                                              ; preds = %334, %328
  %338 = load i32*, i32** %6, align 8
  %339 = call i64 @PackGetInt(i32* %338, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  store i64 %339, i64* %19, align 8
  %340 = load i64, i64* %19, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %353

342:                                              ; preds = %337
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 14
  %345 = load i64*, i64** %344, align 8
  %346 = icmp ne i64* %345, null
  br i1 %346, label %347, label %352

347:                                              ; preds = %342
  %348 = load i64, i64* %19, align 8
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 14
  %351 = load i64*, i64** %350, align 8
  store i64 %348, i64* %351, align 8
  br label %352

352:                                              ; preds = %347, %342
  br label %353

353:                                              ; preds = %352, %337
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 13
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 12
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @AddInterrupt(i32 %356, i64 %359)
  br label %361

361:                                              ; preds = %353, %300, %297
  br label %420

362:                                              ; preds = %293
  %363 = load i32*, i32** %6, align 8
  %364 = call i64 @PackCmpStr(i32* %363, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %419

366:                                              ; preds = %362
  %367 = load i32, i32* %10, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %418

369:                                              ; preds = %366
  %370 = load i32*, i32** %6, align 8
  %371 = call i64 @PackGetInt64(i32* %370, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 11
  %374 = load i64, i64* %373, align 8
  %375 = icmp eq i64 %371, %374
  br i1 %375, label %376, label %418

376:                                              ; preds = %369
  %377 = load i32, i32* @MAX_SIZE, align 4
  %378 = zext i32 %377 to i64
  %379 = call i8* @llvm.stacksave()
  store i8* %379, i8** %20, align 8
  %380 = alloca i8, i64 %378, align 16
  store i64 %378, i64* %21, align 8
  %381 = load i32*, i32** %6, align 8
  %382 = trunc i64 %378 to i32
  %383 = call i64 @PackGetStr(i32* %381, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %380, i32 %382)
  %384 = load i32*, i32** %6, align 8
  %385 = call i64 @PackGetInt(i32* %384, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  store i64 %385, i64* %22, align 8
  %386 = call i32 @StrToIP(i32* %23, i8* %380)
  %387 = call i32 @IsZeroIp(i32* %23)
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %416

389:                                              ; preds = %376
  %390 = load i64, i64* %22, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %416

392:                                              ; preds = %389
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 10
  %395 = load i32, i32* %394, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %400

397:                                              ; preds = %392
  %398 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %399 = call i32 @RUDPAddIpToValidateList(%struct.TYPE_8__* %398, i32* %23)
  br label %400

400:                                              ; preds = %397, %392
  %401 = call i32 (...) @Rand32()
  %402 = srem i32 %401, 19
  %403 = sext i32 %402 to i64
  store i64 %403, i64* %25, align 8
  %404 = load i64, i64* %25, align 8
  %405 = call i32* @Malloc(i64 %404)
  store i32* %405, i32** %24, align 8
  %406 = load i32*, i32** %24, align 8
  %407 = load i64, i64* %25, align 8
  %408 = call i32 @Rand(i32* %406, i64 %407)
  %409 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %410 = load i64, i64* %22, align 8
  %411 = load i32*, i32** %24, align 8
  %412 = load i64, i64* %25, align 8
  %413 = call i32 @RUDPSendPacket(%struct.TYPE_8__* %409, i32* %23, i64 %410, i32* %411, i64 %412, i32 0)
  %414 = load i32*, i32** %24, align 8
  %415 = call i32 @Free(i32* %414)
  br label %416

416:                                              ; preds = %400, %389, %376
  %417 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %417)
  br label %418

418:                                              ; preds = %416, %369, %366
  br label %419

419:                                              ; preds = %418, %362
  br label %420

420:                                              ; preds = %419, %361
  br label %421

421:                                              ; preds = %420, %292
  br label %422

422:                                              ; preds = %421, %125
  %423 = load i32*, i32** %6, align 8
  %424 = call i32 @FreePack(i32* %423)
  br label %425

425:                                              ; preds = %422, %109
  %426 = load i32*, i32** %5, align 8
  %427 = call i32 @FreeBuf(i32* %426)
  br label %428

428:                                              ; preds = %425, %107, %31
  ret void
}

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local i32 @Copy(i8*, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local i32 @ClearStr(i8*, i32) #1

declare dso_local i64 @RUDPParseIPAndPortStr(i32, i32, i32*, i64*) #1

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(i32*, i32, i32) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

declare dso_local i32* @BufToPack(i32*) #1

declare dso_local i8* @PackGetBool(i32*, i8*) #1

declare dso_local i64 @PackGetInt64(i32*, i8*) #1

declare dso_local i32 @ExtractAndApplyDynList(i32*) #1

declare dso_local i64 @PackCmpStr(i32*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @PackGetStr(i32*, i8*, i8*, i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i64 @GenRandInterval(i32, i32) #1

declare dso_local i32 @StrToIP(i32*, i8*) #1

declare dso_local i32 @SetCurrentGlobalIP(i32*, i32) #1

declare dso_local i32 @RUDPGetRegisterHostNameByIP(i8*, i32, i32*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32 @Set(i32) #1

declare dso_local i32 @Unlock(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @AddInterrupt(i32, i64) #1

declare dso_local i64 @PackGetInt(i32*, i8*) #1

declare dso_local i32 @IsZeroIp(i32*) #1

declare dso_local i32 @RUDPAddIpToValidateList(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @Rand32(...) #1

declare dso_local i32* @Malloc(i64) #1

declare dso_local i32 @Rand(i32*, i64) #1

declare dso_local i32 @RUDPSendPacket(%struct.TYPE_8__*, i32*, i64, i32*, i64, i32) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
