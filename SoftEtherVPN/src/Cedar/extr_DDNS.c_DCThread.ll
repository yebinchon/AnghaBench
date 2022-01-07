; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_DDNS.c_DCThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_DDNS.c_DCThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i64, i64, i64, i8*, i64, i8*, i64, i64, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"DDNS Thread Triggered by AzureClient.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"DDNS Thread Triggered by IP Hash Changed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"DDNS Internet Condition Changed.\0A\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@DDNS_GETMYIP_INTERVAL_OK_MIN = common dso_local global i32 0, align 4
@DDNS_GETMYIP_INTERVAL_OK_MAX = common dso_local global i32 0, align 4
@DDNS_GETMYIP_INTERVAL_NG_MIN = common dso_local global i32 0, align 4
@DDNS_GETMYIP_INTERVAL_NG_MAX = common dso_local global i32 0, align 4
@DDNS_REGISTER_INTERVAL_OK_MIN = common dso_local global i32 0, align 4
@DDNS_REGISTER_INTERVAL_OK_MAX = common dso_local global i32 0, align 4
@DDNS_REGISTER_INTERVAL_NG_MIN = common dso_local global i32 0, align 4
@DDNS_REGISTER_INTERVAL_NG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DCThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i8*, i8** %4, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %2
  br label %467

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %5, align 8
  %40 = call i32* (...) @NewInterruptManager()
  store i32* %40, i32** %6, align 8
  %41 = call i8* (...) @NewRouteChange()
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @IsRouteChanged(i8* %42)
  %44 = call i32 @Zero(i8* %13, i32 1)
  store i64 0, i64* %12, align 8
  br label %45

45:                                               ; preds = %456, %37
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %462

50:                                               ; preds = %45
  %51 = call i64 (...) @GetHostIPAddressHash32()
  store i64 %51, i64* %14, align 8
  %52 = call i64 (...) @Tick64()
  store i64 %52, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 13
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %92

59:                                               ; preds = %50
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 13
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = icmp ne %struct.TYPE_8__* %66, null
  br i1 %67, label %68, label %92

68:                                               ; preds = %59
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 13
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %68
  store i32 1, i32* %18, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 13
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %10, align 8
  store i32 0, i32* %9, align 4
  %90 = call i32 @Debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %80, %68
  br label %92

92:                                               ; preds = %91, %59, %50
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 14
  %95 = call i64 @Cmp(i8* %13, i32* %94, i32 1)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 14
  %100 = call i32 @Copy(i8* %13, i32* %99, i32 1)
  store i32 1, i32* %19, align 4
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %7, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  store i32 0, i32* %9, align 4
  %106 = call i32 @Debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %124, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %8, align 8
  %113 = call i64 @IsRouteChanged(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %19, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %20, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %121, %118, %115, %111, %107
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 4
  store i64 0, i64* %135, align 8
  %136 = load i64, i64* %14, align 8
  store i64 %136, i64* %7, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %17, align 4
  %137 = call i32 @Debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %138

138:                                              ; preds = %127, %124
  br label %140

139:                                              ; preds = %121
  store i32 0, i32* %9, align 4
  br label %140

140:                                              ; preds = %139, %138
  %141 = load i64, i64* %12, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %12, align 8
  %143 = icmp sge i64 %141, 1
  br i1 %143, label %144, label %287

144:                                              ; preds = %140
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  %150 = load i64, i64* %16, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp sge i64 %150, %153
  br i1 %154, label %155, label %215

155:                                              ; preds = %149, %144
  %156 = load i32, i32* @MAX_SIZE, align 4
  %157 = zext i32 %156 to i64
  %158 = call i8* @llvm.stacksave()
  store i8* %158, i8** %22, align 8
  %159 = alloca i8, i64 %157, align 16
  store i64 %157, i64* %23, align 8
  %160 = trunc i64 %157 to i32
  %161 = call i32 @Zero(i8* %159, i32 %160)
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = trunc i64 %157 to i32
  %164 = call i8* @DCGetMyIp(%struct.TYPE_10__* %162, i32 0, i8* %159, i32 %163, i32* null)
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 5
  store i64 %165, i64* %167, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @ERR_NO_ERROR, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %188

173:                                              ; preds = %155
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 6
  %176 = load i8*, i8** %175, align 8
  %177 = call i64 @StrCmpi(i8* %176, i8* %159)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %173
  store i32 1, i32* %17, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 6
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @StrCpy(i8* %182, i32 8, i8* %159)
  br label %184

184:                                              ; preds = %179, %173
  %185 = load i32, i32* @DDNS_GETMYIP_INTERVAL_OK_MIN, align 4
  %186 = load i32, i32* @DDNS_GETMYIP_INTERVAL_OK_MAX, align 4
  %187 = call i64 @GenRandInterval(i32 %185, i32 %186)
  store i64 %187, i64* %21, align 8
  br label %203

188:                                              ; preds = %155
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 6
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @IsEmptyStr(i8* %191)
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  store i32 1, i32* %17, align 4
  br label %195

195:                                              ; preds = %194, %188
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 6
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @Zero(i8* %198, i32 8)
  %200 = load i32, i32* @DDNS_GETMYIP_INTERVAL_NG_MIN, align 4
  %201 = load i32, i32* @DDNS_GETMYIP_INTERVAL_NG_MAX, align 4
  %202 = call i64 @GenRandInterval(i32 %200, i32 %201)
  store i64 %202, i64* %21, align 8
  br label %203

203:                                              ; preds = %195, %184
  %204 = call i64 (...) @Tick64()
  %205 = load i64, i64* %21, align 8
  %206 = add nsw i64 %204, %205
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 3
  store i64 %206, i64* %208, align 8
  %209 = load i32*, i32** %6, align 8
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @AddInterrupt(i32* %209, i64 %212)
  %214 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %214)
  br label %215

215:                                              ; preds = %203, %149
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %215
  %221 = load i64, i64* %16, align 8
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp sge i64 %221, %224
  br i1 %225, label %226, label %286

226:                                              ; preds = %220, %215
  %227 = load i32, i32* @MAX_SIZE, align 4
  %228 = zext i32 %227 to i64
  %229 = call i8* @llvm.stacksave()
  store i8* %229, i8** %25, align 8
  %230 = alloca i8, i64 %228, align 16
  store i64 %228, i64* %26, align 8
  %231 = trunc i64 %228 to i32
  %232 = call i32 @Zero(i8* %230, i32 %231)
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %234 = trunc i64 %228 to i32
  %235 = call i8* @DCGetMyIp(%struct.TYPE_10__* %233, i32 1, i8* %230, i32 %234, i32* null)
  %236 = ptrtoint i8* %235 to i64
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 7
  store i64 %236, i64* %238, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 7
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @ERR_NO_ERROR, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %259

244:                                              ; preds = %226
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 8
  %247 = load i8*, i8** %246, align 8
  %248 = call i64 @StrCmpi(i8* %247, i8* %230)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  store i32 1, i32* %17, align 4
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 8
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @StrCpy(i8* %253, i32 8, i8* %230)
  br label %255

255:                                              ; preds = %250, %244
  %256 = load i32, i32* @DDNS_GETMYIP_INTERVAL_OK_MIN, align 4
  %257 = load i32, i32* @DDNS_GETMYIP_INTERVAL_OK_MAX, align 4
  %258 = call i64 @GenRandInterval(i32 %256, i32 %257)
  store i64 %258, i64* %24, align 8
  br label %274

259:                                              ; preds = %226
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 8
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @IsEmptyStr(i8* %262)
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  store i32 1, i32* %17, align 4
  br label %266

266:                                              ; preds = %265, %259
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 8
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 @Zero(i8* %269, i32 8)
  %271 = load i32, i32* @DDNS_GETMYIP_INTERVAL_NG_MIN, align 4
  %272 = load i32, i32* @DDNS_GETMYIP_INTERVAL_NG_MAX, align 4
  %273 = call i64 @GenRandInterval(i32 %271, i32 %272)
  store i64 %273, i64* %24, align 8
  br label %274

274:                                              ; preds = %266, %255
  %275 = call i64 (...) @Tick64()
  %276 = load i64, i64* %24, align 8
  %277 = add nsw i64 %275, %276
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 4
  store i64 %277, i64* %279, align 8
  %280 = load i32*, i32** %6, align 8
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @AddInterrupt(i32* %280, i64 %283)
  %285 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %285)
  br label %286

286:                                              ; preds = %274, %220
  br label %287

287:                                              ; preds = %286, %140
  %288 = load i32, i32* %17, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %287
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  store i64 0, i64* %292, align 8
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 2
  store i64 0, i64* %294, align 8
  br label %295

295:                                              ; preds = %290, %287
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %306, label %300

300:                                              ; preds = %295
  %301 = load i64, i64* %16, align 8
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = icmp sge i64 %301, %304
  br i1 %305, label %306, label %344

306:                                              ; preds = %300, %295
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %308 = call i8* @DCRegister(%struct.TYPE_10__* %307, i32 0, i32* null, i32* null)
  %309 = ptrtoint i8* %308 to i64
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 9
  store i64 %309, i64* %311, align 8
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 9
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @ERR_NO_ERROR, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %321

317:                                              ; preds = %306
  %318 = load i32, i32* @DDNS_REGISTER_INTERVAL_OK_MIN, align 4
  %319 = load i32, i32* @DDNS_REGISTER_INTERVAL_OK_MAX, align 4
  %320 = call i64 @GenRandInterval(i32 %318, i32 %319)
  store i64 %320, i64* %27, align 8
  br label %325

321:                                              ; preds = %306
  %322 = load i32, i32* @DDNS_REGISTER_INTERVAL_NG_MIN, align 4
  %323 = load i32, i32* @DDNS_REGISTER_INTERVAL_NG_MAX, align 4
  %324 = call i64 @GenRandInterval(i32 %322, i32 %323)
  store i64 %324, i64* %27, align 8
  br label %325

325:                                              ; preds = %321, %317
  %326 = call i64 (...) @Tick64()
  %327 = load i64, i64* %27, align 8
  %328 = add nsw i64 %326, %327
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 1
  store i64 %328, i64* %330, align 8
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %332 = call i32 @DCGetStatus(%struct.TYPE_10__* %331, i32* %28)
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 13
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %336, align 8
  %338 = call i32 @SiApplyAzureConfig(%struct.TYPE_11__* %337, i32* %28)
  %339 = load i32*, i32** %6, align 8
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @AddInterrupt(i32* %339, i64 %342)
  br label %344

344:                                              ; preds = %325, %300
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %344
  br label %462

350:                                              ; preds = %344
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %361, label %355

355:                                              ; preds = %350
  %356 = load i64, i64* %16, align 8
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = icmp sge i64 %356, %359
  br i1 %360, label %361, label %399

361:                                              ; preds = %355, %350
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %363 = call i8* @DCRegister(%struct.TYPE_10__* %362, i32 1, i32* null, i32* null)
  %364 = ptrtoint i8* %363 to i64
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 10
  store i64 %364, i64* %366, align 8
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 10
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @ERR_NO_ERROR, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %376

372:                                              ; preds = %361
  %373 = load i32, i32* @DDNS_REGISTER_INTERVAL_OK_MIN, align 4
  %374 = load i32, i32* @DDNS_REGISTER_INTERVAL_OK_MAX, align 4
  %375 = call i64 @GenRandInterval(i32 %373, i32 %374)
  store i64 %375, i64* %29, align 8
  br label %380

376:                                              ; preds = %361
  %377 = load i32, i32* @DDNS_REGISTER_INTERVAL_NG_MIN, align 4
  %378 = load i32, i32* @DDNS_REGISTER_INTERVAL_NG_MAX, align 4
  %379 = call i64 @GenRandInterval(i32 %377, i32 %378)
  store i64 %379, i64* %29, align 8
  br label %380

380:                                              ; preds = %376, %372
  %381 = call i64 (...) @Tick64()
  %382 = load i64, i64* %29, align 8
  %383 = add nsw i64 %381, %382
  %384 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 2
  store i64 %383, i64* %385, align 8
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %387 = call i32 @DCGetStatus(%struct.TYPE_10__* %386, i32* %30)
  %388 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 13
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %391, align 8
  %393 = call i32 @SiApplyAzureConfig(%struct.TYPE_11__* %392, i32* %30)
  %394 = load i32*, i32** %6, align 8
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = call i32 @AddInterrupt(i32* %394, i64 %397)
  br label %399

399:                                              ; preds = %380, %355
  %400 = load i32*, i32** %6, align 8
  %401 = call i64 @GetNextIntervalForInterrupt(i32* %400)
  store i64 %401, i64* %15, align 8
  %402 = load i64, i64* %15, align 8
  %403 = call i64 @MIN(i64 %402, i32 1234)
  store i64 %403, i64* %15, align 8
  %404 = load i64, i64* %12, align 8
  %405 = icmp eq i64 %404, 1
  br i1 %405, label %406, label %407

406:                                              ; preds = %399
  store i64 0, i64* %15, align 8
  br label %407

407:                                              ; preds = %406, %399
  %408 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %407
  br label %462

413:                                              ; preds = %407
  %414 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 11
  %416 = load i32, i32* %415, align 8
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %425

418:                                              ; preds = %413
  %419 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %419, i32 0, i32 11
  store i32 0, i32* %420, align 8
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 2
  store i64 0, i64* %422, align 8
  %423 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 1
  store i64 0, i64* %424, align 8
  store i64 0, i64* %15, align 8
  br label %425

425:                                              ; preds = %418, %413
  %426 = load i32, i32* %9, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %456

428:                                              ; preds = %425
  %429 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %429, i32 0, i32 13
  %431 = load %struct.TYPE_9__*, %struct.TYPE_9__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** %432, align 8
  %434 = icmp ne %struct.TYPE_11__* %433, null
  br i1 %434, label %435, label %455

435:                                              ; preds = %428
  %436 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %436, i32 0, i32 13
  %438 = load %struct.TYPE_9__*, %struct.TYPE_9__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i32 0, i32 0
  %440 = load %struct.TYPE_11__*, %struct.TYPE_11__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %441, align 8
  %443 = icmp ne %struct.TYPE_8__* %442, null
  br i1 %443, label %444, label %455

444:                                              ; preds = %435
  %445 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %445, i32 0, i32 13
  %447 = load %struct.TYPE_9__*, %struct.TYPE_9__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i32 0, i32 0
  %449 = load %struct.TYPE_11__*, %struct.TYPE_11__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %449, i32 0, i32 0
  %451 = load %struct.TYPE_8__*, %struct.TYPE_8__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 8
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %452, align 8
  br label %455

455:                                              ; preds = %444, %435, %428
  br label %456

456:                                              ; preds = %455, %425
  %457 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %458 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %457, i32 0, i32 12
  %459 = load i32, i32* %458, align 4
  %460 = load i64, i64* %15, align 8
  %461 = call i32 @Wait(i32 %459, i64 %460)
  br label %45

462:                                              ; preds = %412, %349, %45
  %463 = load i8*, i8** %8, align 8
  %464 = call i32 @FreeRouteChange(i8* %463)
  %465 = load i32*, i32** %6, align 8
  %466 = call i32 @FreeInterruptManager(i32* %465)
  br label %467

467:                                              ; preds = %462, %36
  ret void
}

declare dso_local i32* @NewInterruptManager(...) #1

declare dso_local i8* @NewRouteChange(...) #1

declare dso_local i64 @IsRouteChanged(i8*) #1

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local i64 @GetHostIPAddressHash32(...) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local i64 @Cmp(i8*, i32*, i32) #1

declare dso_local i32 @Copy(i8*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @DCGetMyIp(%struct.TYPE_10__*, i32, i8*, i32, i32*) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i64 @GenRandInterval(i32, i32) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @AddInterrupt(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @DCRegister(%struct.TYPE_10__*, i32, i32*, i32*) #1

declare dso_local i32 @DCGetStatus(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @SiApplyAzureConfig(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @GetNextIntervalForInterrupt(i32*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @Wait(i32, i64) #1

declare dso_local i32 @FreeRouteChange(i8*) #1

declare dso_local i32 @FreeInterruptManager(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
