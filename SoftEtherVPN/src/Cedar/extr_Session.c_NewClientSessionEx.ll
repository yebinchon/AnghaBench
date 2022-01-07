; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Session.c_NewClientSessionEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Session.c_NewClientSessionEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32*, i32, %struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i32, i32, i32, i32*, i8*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i64, i32, i32*, i32*, i64, i32 }
%struct.TYPE_19__ = type { i64, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32 }

@CLIENT_AUTHTYPE_SECURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"CLIENT_SESSION\00", align 1
@GSF_DISABLE_SESSION_RECONNECT = common dso_local global i32 0, align 4
@MIN_RETRY_INTERVAL = common dso_local global i32 0, align 4
@MAX_RETRY_INTERVAL = common dso_local global i32 0, align 4
@PACKET_ADAPTER_ID_VLAN_WIN32 = common dso_local global i64 0, align 8
@LINK_DEVICE_NAME = common dso_local global i32 0, align 4
@SNAT_DEVICE_NAME = common dso_local global i32 0, align 4
@BRIDGE_DEVICE_NAME = common dso_local global i32 0, align 4
@ClientThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @NewClientSessionEx(i32* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2, %struct.TYPE_18__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %6
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %21 = icmp eq %struct.TYPE_19__* %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %24 = icmp eq %struct.TYPE_19__* %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %27 = icmp eq %struct.TYPE_18__* %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CLIENT_AUTHTYPE_SECURE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %25, %22, %19, %6
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %7, align 8
  br label %339

40:                                               ; preds = %34, %28
  %41 = call %struct.TYPE_17__* @ZeroMalloc(i32 184)
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %14, align 8
  %42 = call i32 (...) @NewCounter()
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 29
  store i32 %42, i32* %44, align 8
  %45 = call i8* (...) @NewLock()
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 28
  store i8* %45, i8** %47, align 8
  %48 = call i32 (...) @NewRef()
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 27
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = call i32 @CopyStr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 26
  store i32 %56, i32* %58, align 8
  %59 = call i32 (...) @Tick64()
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 24
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 25
  store i32 %59, i32* %63, align 4
  %64 = call i8* (...) @NewTraffic()
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 23
  store i8* %64, i8** %66, align 8
  %67 = call i32 (...) @NewEvent()
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 22
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 13
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %72, align 8
  %73 = call i8* (...) @NewLock()
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 21
  store i8* %73, i8** %75, align 8
  %76 = call i8* (...) @NewTraffic()
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 20
  store i8* %76, i8** %78, align 8
  %79 = call i32 (...) @NewCancel()
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 19
  store i32 %79, i32* %81, align 8
  %82 = call i32 (...) @NewCancelList()
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 18
  store i32 %82, i32* %84, align 4
  %85 = call i8* @Malloc(i32 40)
  %86 = bitcast i8* %85 to %struct.TYPE_15__*
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 9
  store %struct.TYPE_15__* %86, %struct.TYPE_15__** %88, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 9
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %93 = call i32 @Copy(%struct.TYPE_15__* %91, %struct.TYPE_19__* %92, i32 40)
  %94 = load i32, i32* @GSF_DISABLE_SESSION_RECONNECT, align 4
  %95 = call i64 @GetGlobalServerFlag(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %40
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 9
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 9
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 9
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %97, %40
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 17
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 16
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 15
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @MAKESURE(i32 %128, i32 0, i32 4000000)
  %130 = mul nsw i32 %129, 1000
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @MIN_RETRY_INTERVAL, align 4
  %137 = load i32, i32* @MAX_RETRY_INTERVAL, align 4
  %138 = call i32 @MAKESURE(i32 %135, i32 %136, i32 %137)
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 9
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @MAX(i32 %145, i32 1)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 9
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 9
  store i32 %146, i32* %150, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 9
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @StrLen(i32 %155)
  %157 = icmp eq i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 0, i32 1
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 9
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 8
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %110
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  store i32 0, i32* %170, align 8
  br label %171

171:                                              ; preds = %168, %110
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @PACKET_ADAPTER_ID_VLAN_WIN32, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 3
  store i32 1, i32* %179, align 4
  br label %180

180:                                              ; preds = %177, %171
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @StrLen(i32 %183)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 2
  store i32 0, i32* %188, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 4
  store i32 1, i32* %190, align 8
  br label %191

191:                                              ; preds = %186, %180
  %192 = call %struct.TYPE_14__* (...) @GetOsInfo()
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @OS_IS_WINDOWS_9X(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 9
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 2
  store i32 0, i32* %201, align 8
  br label %202

202:                                              ; preds = %197, %191
  %203 = call i8* @Malloc(i32 40)
  %204 = bitcast i8* %203 to %struct.TYPE_15__*
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 10
  store %struct.TYPE_15__* %204, %struct.TYPE_15__** %206, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 10
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %208, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %211 = call i32 @Copy(%struct.TYPE_15__* %209, %struct.TYPE_19__* %210, i32 40)
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 10
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 7
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %229

218:                                              ; preds = %202
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 10
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 7
  %223 = load i32*, i32** %222, align 8
  %224 = call i32* @CloneX(i32* %223)
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 10
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 7
  store i32* %224, i32** %228, align 8
  br label %229

229:                                              ; preds = %218, %202
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 10
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 6
  %234 = load i32*, i32** %233, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %247

236:                                              ; preds = %229
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 10
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 6
  %241 = load i32*, i32** %240, align 8
  %242 = call i32* @CloneK(i32* %241)
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 10
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 6
  store i32* %242, i32** %246, align 8
  br label %247

247:                                              ; preds = %236, %229
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 9
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @LINK_DEVICE_NAME, align 4
  %254 = call i64 @StrCmpi(i32 %252, i32 %253)
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %267

256:                                              ; preds = %247
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 5
  store i32 1, i32* %258, align 4
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 13
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = inttoptr i64 %263 to i32*
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 14
  store i32* %264, i32** %266, align 8
  br label %267

267:                                              ; preds = %256, %247
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 9
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @SNAT_DEVICE_NAME, align 4
  %274 = call i64 @StrCmpi(i32 %272, i32 %273)
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %267
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 6
  store i32 1, i32* %278, align 8
  br label %279

279:                                              ; preds = %276, %267
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 9
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @BRIDGE_DEVICE_NAME, align 4
  %286 = call i64 @StrCmpi(i32 %284, i32 %285)
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %279
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 7
  store i32 1, i32* %290, align 4
  br label %291

291:                                              ; preds = %288, %279
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %310

296:                                              ; preds = %291
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 13
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = inttoptr i64 %301 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %302, %struct.TYPE_16__** %16, align 8
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  store %struct.TYPE_17__* %303, %struct.TYPE_17__** %305, align 8
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 12
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @AddRef(i32 %308)
  br label %310

310:                                              ; preds = %296, %291
  %311 = load i32*, i32** %12, align 8
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 11
  store i32* %311, i32** %313, align 8
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 10
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @CLIENT_AUTHTYPE_SECURE, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %310
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 9
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 4
  store i64 0, i64* %325, align 8
  br label %326

326:                                              ; preds = %321, %310
  %327 = load i32*, i32** %13, align 8
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 8
  store i32* %327, i32** %329, align 8
  %330 = load i32, i32* @ClientThread, align 4
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %332 = bitcast %struct.TYPE_17__* %331 to i8*
  %333 = call i32* @NewThread(i32 %330, i8* %332)
  store i32* %333, i32** %15, align 8
  %334 = load i32*, i32** %15, align 8
  %335 = call i32 @WaitThreadInit(i32* %334)
  %336 = load i32*, i32** %15, align 8
  %337 = call i32 @ReleaseThread(i32* %336)
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %338, %struct.TYPE_17__** %7, align 8
  br label %339

339:                                              ; preds = %326, %39
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  ret %struct.TYPE_17__* %340
}

declare dso_local %struct.TYPE_17__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewCounter(...) #1

declare dso_local i8* @NewLock(...) #1

declare dso_local i32 @NewRef(...) #1

declare dso_local i32 @CopyStr(i8*) #1

declare dso_local i32 @Tick64(...) #1

declare dso_local i8* @NewTraffic(...) #1

declare dso_local i32 @NewEvent(...) #1

declare dso_local i32 @NewCancel(...) #1

declare dso_local i32 @NewCancelList(...) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @Copy(%struct.TYPE_15__*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @GetGlobalServerFlag(i32) #1

declare dso_local i32 @MAKESURE(i32, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @StrLen(i32) #1

declare dso_local i64 @OS_IS_WINDOWS_9X(i32) #1

declare dso_local %struct.TYPE_14__* @GetOsInfo(...) #1

declare dso_local i32* @CloneX(i32*) #1

declare dso_local i32* @CloneK(i32*) #1

declare dso_local i64 @StrCmpi(i32, i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32* @NewThread(i32, i8*) #1

declare dso_local i32 @WaitThreadInit(i32*) #1

declare dso_local i32 @ReleaseThread(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
