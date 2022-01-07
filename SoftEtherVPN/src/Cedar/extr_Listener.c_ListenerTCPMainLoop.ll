; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Listener.c_ListenerTCPMainLoop.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Listener.c_ListenerTCPMainLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i64, i32, %struct.TYPE_18__*, i8*, i32, i32, %struct.TYPE_20__*, i32, i32*, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ListenerTCPMainLoop Starts.\0A\00", align 1
@LISTENER_STATUS_TRYING = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Status = LISTENER_STATUS_TRYING\0A\00", align 1
@LISTENER_TCP = common dso_local global i64 0, align 8
@LISTENER_INPROC = common dso_local global i64 0, align 8
@LISTENER_RUDP = common dso_local global i64 0, align 8
@VPN_RUDP_SVC_NAME = common dso_local global i32 0, align 4
@ListenerRUDPRpcRecvProc = common dso_local global i32 0, align 4
@LISTENER_ICMP = common dso_local global i64 0, align 8
@IP_PROTO_ICMPV4 = common dso_local global i32 0, align 4
@LISTENER_DNS = common dso_local global i64 0, align 8
@LISTENER_REVERSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"LS_LISTENER_START_2\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"LS_LISTENER_START_3\00", align 1
@LISTEN_RETRY_TIME = common dso_local global i32 0, align 4
@LISTEN_RETRY_TIME_NOIPV6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"IPv6 is not supported.\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Listener Halt.\0A\00", align 1
@LISTENER_STATUS_LISTENING = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"Status = LISTENER_STATUS_LISTENING\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Accept()\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Accepted.\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Accept Canceled.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ListenerTCPMainLoop(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = icmp eq %struct.TYPE_19__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %313

10:                                               ; preds = %1
  %11 = call i32 @Debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** @LISTENER_STATUS_TRYING, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 5
  store i8* %12, i8** %14, align 8
  br label %15

15:                                               ; preds = %10, %312
  store i32 1, i32* %5, align 4
  %16 = call i32 @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i8*, i8** @LISTENER_STATUS_TRYING, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 5
  store i8* %17, i8** %19, align 8
  br label %20

20:                                               ; preds = %15, %247
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %313

26:                                               ; preds = %20
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LISTENER_TCP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %26
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %32
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = icmp eq %struct.TYPE_17__* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_18__* @ListenEx2(i32 %47, i32 %50, i32 %53, i32* null)
  store %struct.TYPE_18__* %54, %struct.TYPE_18__** %4, align 8
  br label %72

55:                                               ; preds = %37
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = call %struct.TYPE_18__* @ListenEx2(i32 %58, i32 %61, i32 %64, i32* %70)
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %4, align 8
  br label %72

72:                                               ; preds = %55, %44
  br label %81

73:                                               ; preds = %32
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.TYPE_18__* @ListenEx6(i32 %76, i32 %79)
  store %struct.TYPE_18__* %80, %struct.TYPE_18__** %4, align 8
  br label %81

81:                                               ; preds = %73, %72
  br label %159

82:                                               ; preds = %26
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @LISTENER_INPROC, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call %struct.TYPE_18__* (...) @ListenInProc()
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %4, align 8
  br label %158

90:                                               ; preds = %82
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @LISTENER_RUDP, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %90
  %97 = load i32, i32* @VPN_RUDP_SVC_NAME, align 4
  %98 = load i32, i32* @ListenerRUDPRpcRecvProc, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 10
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = call %struct.TYPE_18__* @ListenRUDPEx(i32 %97, i32* null, i32 %98, i32* null, i32 0, i32 0, i32 0, i32* %101, i32 %104, i32* %110)
  store %struct.TYPE_18__* %111, %struct.TYPE_18__** %4, align 8
  br label %157

112:                                              ; preds = %90
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @LISTENER_ICMP, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load i32, i32* @VPN_RUDP_SVC_NAME, align 4
  %120 = load i32, i32* @ListenerRUDPRpcRecvProc, align 4
  %121 = load i32, i32* @IP_PROTO_ICMPV4, align 4
  %122 = call i32 @MAKE_SPECIAL_PORT(i32 %121)
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = call %struct.TYPE_18__* @ListenRUDPEx(i32 %119, i32* null, i32 %120, i32* null, i32 %122, i32 1, i32 0, i32* null, i32 0, i32* %128)
  store %struct.TYPE_18__* %129, %struct.TYPE_18__** %4, align 8
  br label %156

130:                                              ; preds = %112
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @LISTENER_DNS, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  %137 = load i32, i32* @VPN_RUDP_SVC_NAME, align 4
  %138 = load i32, i32* @ListenerRUDPRpcRecvProc, align 4
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = call %struct.TYPE_18__* @ListenRUDPEx(i32 %137, i32* null, i32 %138, i32* null, i32 53, i32 1, i32 1, i32* null, i32 0, i32* %144)
  store %struct.TYPE_18__* %145, %struct.TYPE_18__** %4, align 8
  br label %155

146:                                              ; preds = %130
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @LISTENER_REVERSE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = call %struct.TYPE_18__* (...) @ListenReverse()
  store %struct.TYPE_18__* %153, %struct.TYPE_18__** %4, align 8
  br label %154

154:                                              ; preds = %152, %146
  br label %155

155:                                              ; preds = %154, %136
  br label %156

156:                                              ; preds = %155, %118
  br label %157

157:                                              ; preds = %156, %96
  br label %158

158:                                              ; preds = %157, %88
  br label %159

159:                                              ; preds = %158, %81
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %161 = icmp ne %struct.TYPE_18__* %160, null
  br i1 %161, label %162, label %197

162:                                              ; preds = %159
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @AddRef(i32 %165)
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @Lock(i32 %169)
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 4
  store %struct.TYPE_18__* %171, %struct.TYPE_18__** %173, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @Unlock(i32 %176)
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %162
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @LISTENER_TCP, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %196

188:                                              ; preds = %182
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %190, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (%struct.TYPE_20__*, i8*, i32, ...) @SLog(%struct.TYPE_20__* %191, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %188, %182, %162
  br label %248

197:                                              ; preds = %159
  %198 = load i32, i32* %5, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %222

200:                                              ; preds = %197
  store i32 0, i32* %5, align 4
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %221

205:                                              ; preds = %200
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @LISTENER_TCP, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %205
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %213, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @LISTEN_RETRY_TIME, align 4
  %219 = sdiv i32 %218, 1000
  %220 = call i32 (%struct.TYPE_20__*, i8*, i32, ...) @SLog(%struct.TYPE_20__* %214, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %217, i32 %219)
  br label %221

221:                                              ; preds = %211, %205, %200
  br label %222

222:                                              ; preds = %221, %197
  %223 = load i32, i32* @LISTEN_RETRY_TIME, align 4
  store i32 %223, i32* %6, align 4
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %222
  %229 = call i32 (...) @IsIPv6Supported()
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32, i32* @LISTEN_RETRY_TIME_NOIPV6, align 4
  store i32 %232, i32* %6, align 4
  %233 = call i32 @Debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %234

234:                                              ; preds = %231, %228
  br label %235

235:                                              ; preds = %234, %222
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = call i32 @Wait(i32 %238, i32 %239)
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %235
  %246 = call i32 @Debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %313

247:                                              ; preds = %235
  br label %20

248:                                              ; preds = %196
  %249 = load i8*, i8** @LISTENER_STATUS_LISTENING, align 8
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 5
  store i8* %249, i8** %251, align 8
  %252 = call i32 @Debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %248
  br label %273

258:                                              ; preds = %248
  br label %259

259:                                              ; preds = %258, %304
  %260 = call i32 @Debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %262 = call %struct.TYPE_18__* @Accept(%struct.TYPE_18__* %261)
  store %struct.TYPE_18__* %262, %struct.TYPE_18__** %3, align 8
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %264 = icmp ne %struct.TYPE_18__* %263, null
  br i1 %264, label %265, label %272

265:                                              ; preds = %259
  %266 = call i32 @Debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %269 = call i32 @TCPAccepted(%struct.TYPE_19__* %267, %struct.TYPE_18__* %268)
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %271 = call i32 @ReleaseSock(%struct.TYPE_18__* %270)
  br label %304

272:                                              ; preds = %259
  br label %273

273:                                              ; preds = %272, %257
  %274 = call i32 @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %276 = call i32 @Disconnect(%struct.TYPE_18__* %275)
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %278 = call i32 @ReleaseSock(%struct.TYPE_18__* %277)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @Lock(i32 %281)
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 4
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %284, align 8
  %286 = icmp ne %struct.TYPE_18__* %285, null
  br i1 %286, label %287, label %293

287:                                              ; preds = %273
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 4
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %289, align 8
  store %struct.TYPE_18__* %290, %struct.TYPE_18__** %4, align 8
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %292, align 8
  br label %293

293:                                              ; preds = %287, %273
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @Unlock(i32 %296)
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %299 = icmp ne %struct.TYPE_18__* %298, null
  br i1 %299, label %300, label %303

300:                                              ; preds = %293
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %302 = call i32 @ReleaseSock(%struct.TYPE_18__* %301)
  br label %303

303:                                              ; preds = %300, %293
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  br label %305

304:                                              ; preds = %265
  br label %259

305:                                              ; preds = %303
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %305
  %311 = call i32 @Debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %313

312:                                              ; preds = %305
  br label %15

313:                                              ; preds = %310, %245, %25, %9
  ret void
}

declare dso_local i32 @Debug(i8*) #1

declare dso_local %struct.TYPE_18__* @ListenEx2(i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_18__* @ListenEx6(i32, i32) #1

declare dso_local %struct.TYPE_18__* @ListenInProc(...) #1

declare dso_local %struct.TYPE_18__* @ListenRUDPEx(i32, i32*, i32, i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @MAKE_SPECIAL_PORT(i32) #1

declare dso_local %struct.TYPE_18__* @ListenReverse(...) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @SLog(%struct.TYPE_20__*, i8*, i32, ...) #1

declare dso_local i32 @IsIPv6Supported(...) #1

declare dso_local i32 @Wait(i32, i32) #1

declare dso_local %struct.TYPE_18__* @Accept(%struct.TYPE_18__*) #1

declare dso_local i32 @TCPAccepted(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_18__*) #1

declare dso_local i32 @Disconnect(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
