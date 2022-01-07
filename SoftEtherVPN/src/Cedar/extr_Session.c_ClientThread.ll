; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Session.c_ClientThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Session.c_ClientThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_33__*, i8*, i64, %struct.TYPE_32__*, %struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i32, %struct.TYPE_26__*, i64*, i64, i64, %struct.TYPE_28__, i32, %struct.TYPE_29__*, i32 }
%struct.TYPE_33__ = type { i32*, i32, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_24__ = type { i64, i8*, i8*, i32 }
%struct.TYPE_26__ = type { i32, i64, i64* }
%struct.TYPE_28__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i32, i8*, i32 }
%struct.TYPE_31__ = type { i8* }

@.str = private unnamed_addr constant [28 x i8] c"ClientThread 0x%x Started.\0A\00", align 1
@CLIENT_STATUS_CONNECTING = common dso_local global i8* null, align 8
@CLIENT_NOTIFY_ACCOUNT_CHANGED = common dso_local global i32 0, align 4
@ERR_USER_CANCEL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"LC_CONNECT_1\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"LH_CONNECT_1\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Trying to Connect to Server... (%u / %u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Disconnected. Err = %u : %S\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"LC_CONNECT_ERROR\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"LH_CONNECT_ERROR\00", align 1
@CLIENT_STATUS_RETRY = common dso_local global i8* null, align 8
@ERR_DEVICE_DRIVER_ERROR = common dso_local global i8* null, align 8
@ERR_HUB_IS_BUSY = common dso_local global i8* null, align 8
@ERR_LICENSE_ERROR = common dso_local global i8* null, align 8
@ERR_HUB_STOPPING = common dso_local global i8* null, align 8
@ERR_TOO_MANY_USER_SESSION = common dso_local global i8* null, align 8
@RETRY_INTERVAL_SPECIAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"Session Halt.\0A\00", align 1
@CLIENT_STATUS_IDLE = common dso_local global i8* null, align 8
@AUTHTYPE_PASSWORD = common dso_local global i64 0, align 8
@AUTHTYPE_RADIUS = common dso_local global i64 0, align 8
@CLIENT_AUTHTYPE_PASSWORD = common dso_local global i64 0, align 8
@CLIENT_AUTHTYPE_PLAIN_PASSWORD = common dso_local global i64 0, align 8
@ERR_AUTH_FAILED = common dso_local global i8* null, align 8
@ERR_PROXY_AUTH_FAILED = common dso_local global i8* null, align 8
@HIDDEN_PASSWORD = common dso_local global i8* null, align 8
@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClientThread(%struct.TYPE_29__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %15 = icmp eq %struct.TYPE_29__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  br label %430

20:                                               ; preds = %16
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %22 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_29__* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %24, %struct.TYPE_30__** %5, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 23
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @AddRef(i32 %27)
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 22
  store %struct.TYPE_29__* %29, %struct.TYPE_29__** %31, align 8
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @AddRef(i32 %34)
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %20
  %41 = call i32 (...) @CiIncrementNumActiveSessions()
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %40, %20
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %44 = call i32 @NoticeThreadInit(%struct.TYPE_29__* %43)
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 11
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %46, align 8
  store %struct.TYPE_32__* %47, %struct.TYPE_32__** %9, align 8
  %48 = load i8*, i8** @CLIENT_STATUS_CONNECTING, align 8
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 2
  store i32 0, i32* %54, align 8
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %56 = load i32, i32* @CLIENT_NOTIFY_ACCOUNT_CHANGED, align 4
  %57 = call i32 @Notify(%struct.TYPE_30__* %55, i32 %56)
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 11
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %61, align 8
  %63 = icmp ne %struct.TYPE_27__* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %42
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %65, i32 0, i32 11
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %64, %42
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 12
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 12
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 21
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %72, %403
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 20
  %90 = call i32 @Zero(%struct.TYPE_28__* %89, i32 4)
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 16
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %92, align 8
  %94 = icmp ne %struct.TYPE_26__* %93, null
  br i1 %94, label %95, label %114

95:                                               ; preds = %87
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 16
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %95
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 16
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103, %95
  %111 = load i8*, i8** @ERR_USER_CANCEL, align 8
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 14
  store i8* %111, i8** %113, align 8
  br label %404

114:                                              ; preds = %103, %87
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 11
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %118, align 8
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 12
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  %129 = call i32 (%struct.TYPE_27__*, i8*, i32, i32, ...) @CLog(%struct.TYPE_27__* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %128)
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %114
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 16
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %136, align 8
  %138 = icmp ne %struct.TYPE_26__* %137, null
  br i1 %138, label %139, label %155

139:                                              ; preds = %134
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 16
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 12
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  %154 = call i32 (i32, i8*, i32, i32, ...) @HLog(i32 %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %149, i32 %153)
  br label %155

155:                                              ; preds = %139, %134, %114
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 0
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 12
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %159, i32 %164)
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 19
  store i64 0, i64* %167, align 8
  %168 = load i8*, i8** @CLIENT_STATUS_CONNECTING, align 8
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %169, i32 0, i32 9
  store i8* %168, i8** %170, align 8
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 4
  store i32 0, i32* %172, align 8
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %174 = call i32 @SessionConnect(%struct.TYPE_30__* %173)
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 18
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %155
  %180 = load i8*, i8** @ERR_USER_CANCEL, align 8
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 14
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %179, %155
  %184 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %184, i32 0, i32 14
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 14
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @_E(i8* %189)
  %191 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %186, i32 %190)
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %193 = call i32 @PrintSessionTotalDataSize(%struct.TYPE_30__* %192)
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 11
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %197, align 8
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 12
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %204, i32 0, i32 14
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @GetUniErrorStr(i8* %206)
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %208, i32 0, i32 14
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 (%struct.TYPE_27__*, i8*, i32, i32, ...) @CLog(%struct.TYPE_27__* %198, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %203, i32 %207, i8* %210)
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %240

216:                                              ; preds = %183
  %217 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %217, i32 0, i32 16
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %218, align 8
  %220 = icmp ne %struct.TYPE_26__* %219, null
  br i1 %220, label %221, label %240

221:                                              ; preds = %216
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 16
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 12
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i32 0, i32 14
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @GetUniErrorStr(i8* %234)
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 14
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 (i32, i8*, i32, i32, ...) @HLog(i32 %226, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %231, i32 %235, i8* %238)
  br label %240

240:                                              ; preds = %221, %216, %183
  %241 = load i8*, i8** @CLIENT_STATUS_RETRY, align 8
  %242 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 9
  store i8* %241, i8** %243, align 8
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 16
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %245, align 8
  %247 = icmp ne %struct.TYPE_26__* %246, null
  br i1 %247, label %248, label %257

248:                                              ; preds = %240
  %249 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %249, i32 0, i32 14
  %251 = load i8*, i8** %250, align 8
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %252, i32 0, i32 16
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %253, align 8
  %255 = bitcast %struct.TYPE_26__* %254 to %struct.TYPE_31__*
  %256 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %255, i32 0, i32 0
  store i8* %251, i8** %256, align 8
  br label %257

257:                                              ; preds = %248, %240
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %257
  %263 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %262, %257
  %268 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %268, i32 0, i32 10
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %267, %262
  %273 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %273, i32 0, i32 14
  %275 = load i8*, i8** %274, align 8
  %276 = load i8*, i8** @ERR_DEVICE_DRIVER_ERROR, align 8
  %277 = icmp eq i8* %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %272
  br label %279

279:                                              ; preds = %278, %272
  br label %404

280:                                              ; preds = %267
  store i32 0, i32* %6, align 4
  %281 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %281, i32 0, i32 8
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %282, align 8
  %284 = icmp ne %struct.TYPE_33__* %283, null
  br i1 %284, label %285, label %293

285:                                              ; preds = %280
  %286 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %286, i32 0, i32 11
  %288 = load %struct.TYPE_32__*, %struct.TYPE_32__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %289, align 8
  %291 = icmp ne %struct.TYPE_27__* %290, null
  br i1 %291, label %292, label %293

292:                                              ; preds = %285
  br label %293

293:                                              ; preds = %292, %285, %280
  %294 = load i32, i32* %6, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %385

296:                                              ; preds = %293
  %297 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %11, align 4
  %300 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %342

304:                                              ; preds = %296
  %305 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %305, i32 0, i32 11
  %307 = load %struct.TYPE_32__*, %struct.TYPE_32__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @Count(i32 %309)
  store i32 %310, i32* %12, align 4
  %311 = load i32, i32* %12, align 4
  %312 = mul nsw i32 1000, %311
  %313 = load i32, i32* %11, align 4
  %314 = call i32 @MAX(i32 %312, i32 %313)
  store i32 %314, i32* %13, align 4
  %315 = load i32, i32* %11, align 4
  %316 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @MIN(i32 %318, i32 1000)
  %320 = mul nsw i32 %315, %319
  %321 = load i32, i32* %11, align 4
  %322 = add nsw i32 %321, %320
  store i32 %322, i32* %11, align 4
  %323 = load i32, i32* %11, align 4
  %324 = load i32, i32* %13, align 4
  %325 = call i32 @MIN(i32 %323, i32 %324)
  store i32 %325, i32* %11, align 4
  %326 = load i32, i32* %11, align 4
  %327 = icmp sge i32 %326, 1000
  br i1 %327, label %328, label %341

328:                                              ; preds = %304
  %329 = load i32, i32* %11, align 4
  %330 = icmp sle i32 %329, 3600000
  br i1 %330, label %331, label %341

331:                                              ; preds = %328
  %332 = load i32, i32* %11, align 4
  %333 = mul nsw i32 %332, 8
  %334 = sdiv i32 %333, 10
  %335 = call i32 (...) @Rand32()
  %336 = load i32, i32* %11, align 4
  %337 = mul nsw i32 %336, 4
  %338 = sdiv i32 %337, 10
  %339 = srem i32 %335, %338
  %340 = add nsw i32 %334, %339
  store i32 %340, i32* %11, align 4
  br label %341

341:                                              ; preds = %331, %328, %304
  br label %342

342:                                              ; preds = %341, %296
  %343 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %343, i32 0, i32 14
  %345 = load i8*, i8** %344, align 8
  %346 = load i8*, i8** @ERR_HUB_IS_BUSY, align 8
  %347 = icmp eq i8* %345, %346
  br i1 %347, label %366, label %348

348:                                              ; preds = %342
  %349 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %349, i32 0, i32 14
  %351 = load i8*, i8** %350, align 8
  %352 = load i8*, i8** @ERR_LICENSE_ERROR, align 8
  %353 = icmp eq i8* %351, %352
  br i1 %353, label %366, label %354

354:                                              ; preds = %348
  %355 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %355, i32 0, i32 14
  %357 = load i8*, i8** %356, align 8
  %358 = load i8*, i8** @ERR_HUB_STOPPING, align 8
  %359 = icmp eq i8* %357, %358
  br i1 %359, label %366, label %360

360:                                              ; preds = %354
  %361 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %361, i32 0, i32 14
  %363 = load i8*, i8** %362, align 8
  %364 = load i8*, i8** @ERR_TOO_MANY_USER_SESSION, align 8
  %365 = icmp eq i8* %363, %364
  br i1 %365, label %366, label %368

366:                                              ; preds = %360, %354, %348, %342
  %367 = load i32, i32* @RETRY_INTERVAL_SPECIAL, align 4
  store i32 %367, i32* %11, align 4
  br label %368

368:                                              ; preds = %366, %360
  %369 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %372, i32 0, i32 12
  %374 = load %struct.TYPE_25__*, %struct.TYPE_25__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = icmp sge i32 %371, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %368
  br label %404

379:                                              ; preds = %368
  %380 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %380, i32 0, i32 15
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* %11, align 4
  %384 = call i32 @Wait(i32 %382, i32 %383)
  br label %386

385:                                              ; preds = %293
  br label %386

386:                                              ; preds = %385, %379
  br label %387

387:                                              ; preds = %386
  %388 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %388, i32 0, i32 7
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %397

392:                                              ; preds = %387
  %393 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %394, align 8
  br label %397

397:                                              ; preds = %392, %387
  %398 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %398, i32 0, i32 10
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %397
  br label %404

403:                                              ; preds = %397
  br label %87

404:                                              ; preds = %402, %378, %279, %110
  %405 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %406 = load i8*, i8** @CLIENT_STATUS_IDLE, align 8
  %407 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %407, i32 0, i32 9
  store i8* %406, i8** %408, align 8
  %409 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %409, i32 0, i32 8
  %411 = load %struct.TYPE_33__*, %struct.TYPE_33__** %410, align 8
  %412 = icmp ne %struct.TYPE_33__* %411, null
  br i1 %412, label %413, label %420

413:                                              ; preds = %404
  %414 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %414, i32 0, i32 8
  %416 = load %struct.TYPE_33__*, %struct.TYPE_33__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %416, i32 0, i32 0
  store i32* null, i32** %417, align 8
  %418 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %419 = call i32 @ReleaseSession(%struct.TYPE_30__* %418)
  br label %420

420:                                              ; preds = %413, %404
  %421 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %422 = load i32, i32* @CLIENT_NOTIFY_ACCOUNT_CHANGED, align 4
  %423 = call i32 @Notify(%struct.TYPE_30__* %421, i32 %422)
  %424 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %425 = call i32 @ReleaseSession(%struct.TYPE_30__* %424)
  %426 = load i32, i32* %10, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %420
  %429 = call i32 (...) @CiDecrementNumActiveSessions()
  br label %430

430:                                              ; preds = %19, %428, %420
  ret void
}

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @CiIncrementNumActiveSessions(...) #1

declare dso_local i32 @NoticeThreadInit(%struct.TYPE_29__*) #1

declare dso_local i32 @Notify(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @CLog(%struct.TYPE_27__*, i8*, i32, i32, ...) #1

declare dso_local i32 @HLog(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @SessionConnect(%struct.TYPE_30__*) #1

declare dso_local i32 @_E(i8*) #1

declare dso_local i32 @PrintSessionTotalDataSize(%struct.TYPE_30__*) #1

declare dso_local i32 @GetUniErrorStr(i8*) #1

declare dso_local i32 @Count(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @Rand32(...) #1

declare dso_local i32 @Wait(i32, i32) #1

declare dso_local i32 @ReleaseSession(%struct.TYPE_30__*) #1

declare dso_local i32 @CiDecrementNumActiveSessions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
