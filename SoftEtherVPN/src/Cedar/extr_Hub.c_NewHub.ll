; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_NewHub.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_NewHub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_17__*, i32, %struct.TYPE_13__*, %struct.TYPE_14__, i8*, i8*, i32, i8*, i32, i8*, i32, i32, i8*, i32*, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i64, i8*, i8*, i8*, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i8*, i8*, i32* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i64 }

@MAX_SIZE = common dso_local global i32 0, align 4
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ADMINISTRATOR_USERNAME = common dso_local global i32 0, align 4
@HUB_TYPE_STANDALONE = common dso_local global i32 0, align 4
@CompareAdminOption = common dso_local global i32* null, align 8
@GetHashOfMacTable = common dso_local global i32 0, align 4
@CompareMacTable = common dso_local global i32 0, align 4
@CompareIpTable = common dso_local global i32* null, align 8
@MAC_PROTO_TAGVLAN = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@RADIUS_DEFAULT_PORT = common dso_local global i32 0, align 4
@PACKET_LOG_HEADER = common dso_local global i32 0, align 4
@PACKET_LOG_DHCP = common dso_local global i64 0, align 8
@PACKET_LOG_TCP_CONN = common dso_local global i64 0, align 8
@LOG_SWITCH_DAY = common dso_local global i8* null, align 8
@HUB_SECURITY_LOG_DIR_NAME = common dso_local global i32 0, align 4
@HUB_PACKET_LOG_DIR_NAME = common dso_local global i32 0, align 4
@HUB_PACKET_LOG_FILE_NAME = common dso_local global i32 0, align 4
@HUB_PACKET_LOG_PREFIX = common dso_local global i32 0, align 4
@HUB_SECURITY_LOG_FILE_NAME = common dso_local global i32 0, align 4
@HUB_SECURITY_LOG_PREFIX = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"LS_HUB_START\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"LS_HUB_MAC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @NewHub(%struct.TYPE_17__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* @MAX_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @MAX_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %23 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %27 = load i32, i32* @SHA1_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = icmp eq %struct.TYPE_17__* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %3
  %33 = load i32*, i32** %7, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32, %3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %373

39:                                               ; preds = %35
  %40 = call i8* @ZeroMalloc(i32 320)
  %41 = bitcast i8* %40 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %8, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 41
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @Sha0(i32 %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 40
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ADMINISTRATOR_USERNAME, align 4
  %50 = call i32 @HashPassword(i32 %48, i32 %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %51 = call i8* (...) @NewLock()
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 39
  store i8* %51, i8** %53, align 8
  %54 = call i8* (...) @NewLock()
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 38
  store i8* %54, i8** %56, align 8
  %57 = call i32 (...) @NewRef()
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 37
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 4
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %62, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @AddRef(i32 %67)
  %69 = load i32, i32* @HUB_TYPE_STANDALONE, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 36
  store i32 %69, i32* %71, align 8
  %72 = trunc i64 %25 to i32
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @ConvertSafeFileName(i8* %26, i32 %72, i8* %73)
  %75 = call i32 @CopyStr(i8* %26)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** @CompareAdminOption, align 8
  %79 = call i8* @NewList(i32* %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 35
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = call i32 @AddHubAdminOptionsDefaults(%struct.TYPE_16__* %82, i32 1)
  %84 = call i8* (...) @SystemTime64()
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 34
  store i8* %84, i8** %86, align 8
  %87 = call i8* (...) @SystemTime64()
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 33
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 32
  store i64 0, i64* %91, align 8
  %92 = call i8* (...) @NewLock()
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 31
  store i8* %92, i8** %94, align 8
  %95 = call i32 (...) @NewHubDb()
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 30
  store i32 %95, i32* %97, align 8
  %98 = call i8* @NewList(i32* null)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 29
  store i8* %98, i8** %100, align 8
  %101 = call i8* (...) @NewCounter()
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 28
  store i8* %101, i8** %103, align 8
  %104 = call i8* (...) @NewCounter()
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 27
  store i8* %104, i8** %106, align 8
  %107 = call i8* (...) @NewCounter()
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 26
  store i8* %107, i8** %109, align 8
  %110 = call i8* (...) @NewCounter()
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 25
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* @GetHashOfMacTable, align 4
  %114 = load i32, i32* @CompareMacTable, align 4
  %115 = call i32 @NewHashList(i32 %113, i32 %114, i32 8, i32 0)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 24
  store i32 %115, i32* %117, align 8
  %118 = load i32*, i32** @CompareIpTable, align 8
  %119 = call i8* @NewList(i32* %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 23
  store i8* %119, i8** %121, align 8
  %122 = call i8* @NewList(i32* null)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 22
  store i8* %122, i8** %124, align 8
  %125 = call i8* @NewList(i32* null)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 21
  store i8* %125, i8** %127, align 8
  %128 = call i8* (...) @NewTraffic()
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 20
  store i8* %128, i8** %130, align 8
  %131 = call i8* (...) @NewTraffic()
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 19
  store i8* %131, i8** %133, align 8
  %134 = call i8* @ZeroMalloc(i32 4)
  %135 = bitcast i8* %134 to %struct.TYPE_13__*
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 6
  store %struct.TYPE_13__* %135, %struct.TYPE_13__** %137, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 6
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @Copy(%struct.TYPE_13__* %140, i32* %141, i32 4)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 6
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %39
  %150 = load i64, i64* @MAC_PROTO_TAGVLAN, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 6
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  store i64 %150, i64* %154, align 8
  br label %155

155:                                              ; preds = %149, %39
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 6
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  store i32 1, i32* %159, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 6
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 2
  store i32 1, i32* %163, align 4
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 18
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @Rand(i32 %166, i32 4)
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  store i32 0, i32* %169, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 17
  store i32* null, i32** %171, align 8
  %172 = call i8* @ZeroMalloc(i32 4)
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 16
  store i8* %172, i8** %174, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 16
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @NiSetDefaultVhOption(i32* null, i8* %177)
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 4
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = icmp ne %struct.TYPE_17__* %181, null
  br i1 %182, label %183, label %205

183:                                              ; preds = %155
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %187, align 8
  %189 = icmp ne %struct.TYPE_15__* %188, null
  br i1 %189, label %190, label %205

190:                                              ; preds = %183
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %190
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 16
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @NiClearUnsupportedVhOptionForDynamicHub(i8* %203, i32 1)
  br label %205

205:                                              ; preds = %200, %190, %183, %155
  %206 = call i32 @GenerateMachineUniqueHash(i32* %29)
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @GenHubMacAddress(i32 %209, i32 %212)
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 15
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @GenHubIpAddress(i32* %215, i32 %218)
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @GenerateEui64LocalAddress(i32* %14, i32 %222)
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 14
  %226 = call i32 @IPToIPv6Addr(i32* %225, i32* %14)
  %227 = call i8* (...) @NewLock()
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 13
  store i8* %227, i8** %229, align 8
  %230 = load i32, i32* @RADIUS_DEFAULT_PORT, align 4
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 12
  store i32 %230, i32* %232, align 8
  %233 = call i8* @NewList(i32* null)
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 11
  store i8* %233, i8** %235, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %237 = call i32 @InitAccessList(%struct.TYPE_16__* %236)
  %238 = call i32 (...) @NewUserList()
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 10
  store i32 %238, i32* %240, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 7
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  store i32 1, i32* %243, align 4
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 7
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  store i32 1, i32* %246, align 8
  %247 = load i32, i32* @PACKET_LOG_HEADER, align 4
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 7
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* @PACKET_LOG_DHCP, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32 %247, i32* %253, align 4
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 7
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 4
  %257 = load i32*, i32** %256, align 8
  %258 = load i64, i64* @PACKET_LOG_TCP_CONN, align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  store i32 %247, i32* %259, align 4
  %260 = load i8*, i8** @LOG_SWITCH_DAY, align 8
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 7
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 2
  store i8* %260, i8** %263, align 8
  %264 = load i8*, i8** @LOG_SWITCH_DAY, align 8
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 7
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 3
  store i8* %264, i8** %267, align 8
  %268 = load i32, i32* @HUB_SECURITY_LOG_DIR_NAME, align 4
  %269 = call i32 @MakeDir(i32 %268)
  %270 = load i32, i32* @HUB_PACKET_LOG_DIR_NAME, align 4
  %271 = call i32 @MakeDir(i32 %270)
  %272 = trunc i64 %17 to i32
  %273 = load i32, i32* @HUB_PACKET_LOG_FILE_NAME, align 4
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @Format(i8* %19, i32 %272, i32 %273, i32 %276)
  %278 = load i32, i32* @HUB_PACKET_LOG_PREFIX, align 4
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 7
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 3
  %282 = load i8*, i8** %281, align 8
  %283 = call i8* @NewLog(i8* %19, i32 %278, i8* %282)
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 9
  store i8* %283, i8** %285, align 8
  %286 = trunc i64 %21 to i32
  %287 = load i32, i32* @HUB_SECURITY_LOG_FILE_NAME, align 4
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @Format(i8* %22, i32 %286, i32 %287, i32 %290)
  %292 = load i32, i32* @HUB_SECURITY_LOG_PREFIX, align 4
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 7
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 2
  %296 = load i8*, i8** %295, align 8
  %297 = call i8* @NewLog(i8* %22, i32 %292, i8* %296)
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 8
  store i8* %297, i8** %299, align 8
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 4
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %303, align 8
  %305 = icmp ne %struct.TYPE_15__* %304, null
  br i1 %305, label %306, label %319

306:                                              ; preds = %205
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 4
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %306
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 1
  store i32 1, i32* %318, align 4
  br label %319

319:                                              ; preds = %316, %306, %205
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %321 = call i32 @SetHubOnline(%struct.TYPE_16__* %320)
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 4
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %319
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 6
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 3
  store i32 1, i32* %332, align 8
  br label %333

333:                                              ; preds = %328, %319
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 6
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 8
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %352

340:                                              ; preds = %333
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 6
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %340
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %349 = call i32 @StartHubWatchDog(%struct.TYPE_16__* %348)
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 2
  store i32 1, i32* %351, align 8
  br label %352

352:                                              ; preds = %347, %340, %333
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 4
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %354, align 8
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = call i32 (%struct.TYPE_17__*, i8*, i32, ...) @SLog(%struct.TYPE_17__* %355, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %358)
  %360 = trunc i64 %21 to i32
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @MacToStr(i8* %22, i32 %360, i32 %363)
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 4
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %366, align 8
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  %371 = call i32 (%struct.TYPE_17__*, i8*, i32, ...) @SLog(%struct.TYPE_17__* %367, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %370, i8* %22)
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %372, %struct.TYPE_16__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %373

373:                                              ; preds = %352, %38
  %374 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %374)
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %375
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @ZeroMalloc(i32) #2

declare dso_local i32 @Sha0(i32, i8*, i32) #2

declare dso_local i32 @HashPassword(i32, i32, i8*) #2

declare dso_local i8* @NewLock(...) #2

declare dso_local i32 @NewRef(...) #2

declare dso_local i32 @AddRef(i32) #2

declare dso_local i32 @ConvertSafeFileName(i8*, i32, i8*) #2

declare dso_local i32 @CopyStr(i8*) #2

declare dso_local i8* @NewList(i32*) #2

declare dso_local i32 @AddHubAdminOptionsDefaults(%struct.TYPE_16__*, i32) #2

declare dso_local i8* @SystemTime64(...) #2

declare dso_local i32 @NewHubDb(...) #2

declare dso_local i8* @NewCounter(...) #2

declare dso_local i32 @NewHashList(i32, i32, i32, i32) #2

declare dso_local i8* @NewTraffic(...) #2

declare dso_local i32 @Copy(%struct.TYPE_13__*, i32*, i32) #2

declare dso_local i32 @Rand(i32, i32) #2

declare dso_local i32 @NiSetDefaultVhOption(i32*, i8*) #2

declare dso_local i32 @NiClearUnsupportedVhOptionForDynamicHub(i8*, i32) #2

declare dso_local i32 @GenerateMachineUniqueHash(i32*) #2

declare dso_local i32 @GenHubMacAddress(i32, i32) #2

declare dso_local i32 @GenHubIpAddress(i32*, i32) #2

declare dso_local i32 @GenerateEui64LocalAddress(i32*, i32) #2

declare dso_local i32 @IPToIPv6Addr(i32*, i32*) #2

declare dso_local i32 @InitAccessList(%struct.TYPE_16__*) #2

declare dso_local i32 @NewUserList(...) #2

declare dso_local i32 @MakeDir(i32) #2

declare dso_local i32 @Format(i8*, i32, i32, i32) #2

declare dso_local i8* @NewLog(i8*, i32, i8*) #2

declare dso_local i32 @SetHubOnline(%struct.TYPE_16__*) #2

declare dso_local i32 @StartHubWatchDog(%struct.TYPE_16__*) #2

declare dso_local i32 @SLog(%struct.TYPE_17__*, i8*, i32, ...) #2

declare dso_local i32 @MacToStr(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
