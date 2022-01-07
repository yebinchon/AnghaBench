; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Proxy.c_ProxySocks5Connect.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Proxy.c_ProxySocks5Connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_17__ = type { i64, i64, i32*, i32*, i64, i32*, i32* }
%struct.TYPE_18__ = type { i32*, i32* }
%struct.TYPE_19__ = type { i32, i32 }

@PROXY_ERROR_PARAMETER = common dso_local global i32 0, align 4
@PROXY_ERROR_CANCELED = common dso_local global i32 0, align 4
@PROXY_ERROR_CONNECTION = common dso_local global i32 0, align 4
@PROXY_CONNECTION_TIMEOUT = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [76 x i8] c"ProxySocks5Connect(): [Phase 1] Failed to send initial data to the server.\0A\00", align 1
@PROXY_ERROR_DISCONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"ProxySocks5Connect(): [Phase 1] Failed to receive initial data response from the server.\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"ProxySocks5Connect(): [Phase 1] Unmatching version: %u.\0A\00", align 1
@PROXY_ERROR_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [83 x i8] c"ProxySocks5Connect(): [Phase 1] Failed to send authentication data to the server.\0A\00", align 1
@.str.4 = private unnamed_addr constant [97 x i8] c"ProxySocks5Connect(): [Phase 1] Failed to receive authentication data response from the server.\0A\00", align 1
@.str.5 = private unnamed_addr constant [92 x i8] c"ProxySocks5Connect(): [Phase 1] Authentication failure, error code sent by the server: %u.\0A\00", align 1
@PROXY_ERROR_AUTHENTICATION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [68 x i8] c"ProxySocks5Connect(): [Phase 2] Failed to send data to the server.\0A\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"ProxySocks5Connect(): [Phase 2] Failed to receive response from the server.\0A\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"ProxySocks5Connect(): [Phase 2] Malformed response received from the server.\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"ProxySocks5Connect(): [Phase 2] Unmatching version: %u.\0A\00", align 1
@PROXY_ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [76 x i8] c"ProxySocks5Connect(): [Phase 2] Connection to target failed with error: %u\0A\00", align 1
@PROXY_ERROR_TARGET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [66 x i8] c"ProxySocks5Connect(): [Phase 2] Connection failed with error: %u\0A\00", align 1
@PROXY_ERROR_GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProxySocks5Connect(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = icmp eq %struct.TYPE_16__* %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = icmp eq %struct.TYPE_17__* %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @IsEmptyStr(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @IsEmptyStr(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %33, %28, %23, %20, %3
  %46 = load i32, i32* @PROXY_ERROR_PARAMETER, align 4
  store i32 %46, i32* %4, align 4
  br label %362

47:                                               ; preds = %39
  %48 = load i32*, i32** %7, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32* %8, i32** %7, align 8
  br label %58

51:                                               ; preds = %47
  %52 = load i32*, i32** %7, align 8
  %53 = load volatile i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @PROXY_ERROR_CANCELED, align 4
  store i32 %56, i32* %4, align 4
  br label %362

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %50
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = call i32 @Zero(%struct.TYPE_16__* %59, i32 16)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = call i32* @Internal_ProxyTcpConnect(%struct.TYPE_17__* %61, i32* %62, i32* %64)
  store i32* %65, i32** %15, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* @PROXY_ERROR_CONNECTION, align 4
  store i32 %69, i32* %4, align 4
  br label %362

70:                                               ; preds = %58
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* @PROXY_CONNECTION_TIMEOUT, align 4
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i64, i64* @INFINITE, align 8
  br label %83

79:                                               ; preds = %70
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  br label %83

83:                                               ; preds = %79, %77
  %84 = phi i64 [ %78, %77 ], [ %82, %79 ]
  %85 = call i64 @MIN(i32 %72, i64 %84)
  %86 = call i32 @SetTimeout(i32* %71, i64 %85)
  %87 = call %struct.TYPE_19__* (...) @NewBuf()
  store %struct.TYPE_19__* %87, %struct.TYPE_19__** %16, align 8
  store i32 5, i32* %9, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %89 = call i32 @WriteBuf(%struct.TYPE_19__* %88, i32* %9, i32 4)
  store i32 2, i32* %9, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %91 = call i32 @WriteBuf(%struct.TYPE_19__* %90, i32* %9, i32 4)
  store i32 0, i32* %9, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %93 = call i32 @WriteBuf(%struct.TYPE_19__* %92, i32* %9, i32 4)
  store i32 2, i32* %9, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %95 = call i32 @WriteBuf(%struct.TYPE_19__* %94, i32* %9, i32 4)
  %96 = load i32*, i32** %15, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @SendAll(i32* %96, i32 %99, i32 %102, i32 0)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %83
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %108 = call i32 @FreeBuf(%struct.TYPE_19__* %107)
  %109 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @PROXY_ERROR_DISCONNECTED, align 4
  store i32 %110, i32* %14, align 4
  br label %356

111:                                              ; preds = %83
  %112 = load i32*, i32** %15, align 8
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %114 = call i32 @RecvAll(i32* %112, i32* %113, i32 8, i32 0)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %118 = call i32 @FreeBuf(%struct.TYPE_19__* %117)
  %119 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @PROXY_ERROR_DISCONNECTED, align 4
  store i32 %120, i32* %14, align 4
  br label %356

121:                                              ; preds = %111
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 5
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %127 = call i32 @FreeBuf(%struct.TYPE_19__* %126)
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @PROXY_ERROR_VERSION, align 4
  store i32 %131, i32* %14, align 4
  br label %356

132:                                              ; preds = %121
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %134 = call i32 @ClearBuf(%struct.TYPE_19__* %133)
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %198

138:                                              ; preds = %132
  store i32 1, i32* %9, align 4
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %140 = call i32 @WriteBuf(%struct.TYPE_19__* %139, i32* %9, i32 4)
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @StrLen(i32* %143)
  store i32 %144, i32* %9, align 4
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %146 = call i32 @WriteBuf(%struct.TYPE_19__* %145, i32* %9, i32 4)
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @WriteBuf(%struct.TYPE_19__* %147, i32* %150, i32 %151)
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @StrLen(i32* %155)
  store i32 %156, i32* %9, align 4
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %158 = call i32 @WriteBuf(%struct.TYPE_19__* %157, i32* %9, i32 4)
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 6
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @WriteBuf(%struct.TYPE_19__* %159, i32* %162, i32 %163)
  %165 = load i32*, i32** %15, align 8
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @SendAll(i32* %165, i32 %168, i32 %171, i32 0)
  store i32 %172, i32* %14, align 4
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %174 = call i32 @ClearBuf(%struct.TYPE_19__* %173)
  %175 = load i32, i32* %14, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %138
  %178 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %179 = load i32, i32* @PROXY_ERROR_DISCONNECTED, align 4
  store i32 %179, i32* %14, align 4
  br label %356

180:                                              ; preds = %138
  %181 = load i32*, i32** %15, align 8
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %183 = call i32 @RecvAll(i32* %181, i32* %182, i32 8, i32 0)
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.4, i64 0, i64 0))
  %187 = load i32, i32* @PROXY_ERROR_DISCONNECTED, align 4
  store i32 %187, i32* %14, align 4
  br label %356

188:                                              ; preds = %180
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.5, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* @PROXY_ERROR_AUTHENTICATION, align 4
  store i32 %196, i32* %14, align 4
  br label %356

197:                                              ; preds = %188
  br label %198

198:                                              ; preds = %197, %132
  store i32 5, i32* %9, align 4
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %200 = call i32 @WriteBuf(%struct.TYPE_19__* %199, i32* %9, i32 4)
  store i32 1, i32* %9, align 4
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %202 = call i32 @WriteBuf(%struct.TYPE_19__* %201, i32* %9, i32 4)
  store i32 0, i32* %9, align 4
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %204 = call i32 @WriteBuf(%struct.TYPE_19__* %203, i32* %9, i32 4)
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @StrToIP(%struct.TYPE_18__* %13, i32* %207)
  %209 = call i64 @IsZeroIp(%struct.TYPE_18__* %13)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %198
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @StrLen(i32* %214)
  store i32 %215, i32* %17, align 4
  store i32 3, i32* %9, align 4
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %217 = call i32 @WriteBuf(%struct.TYPE_19__* %216, i32* %9, i32 4)
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %219 = call i32 @WriteBuf(%struct.TYPE_19__* %218, i32* %17, i32 4)
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %17, align 4
  %225 = call i32 @WriteBuf(%struct.TYPE_19__* %220, i32* %223, i32 %224)
  br label %244

226:                                              ; preds = %198
  %227 = call i64 @IsIP6(%struct.TYPE_18__* %13)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %226
  store i32 4, i32* %9, align 4
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %231 = call i32 @WriteBuf(%struct.TYPE_19__* %230, i32* %9, i32 4)
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @WriteBuf(%struct.TYPE_19__* %232, i32* %234, i32 8)
  br label %243

236:                                              ; preds = %226
  store i32 1, i32* %9, align 4
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %238 = call i32 @WriteBuf(%struct.TYPE_19__* %237, i32* %9, i32 4)
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @WriteBuf(%struct.TYPE_19__* %239, i32* %241, i32 8)
  br label %243

243:                                              ; preds = %236, %229
  br label %244

244:                                              ; preds = %243, %211
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @Endian16(i64 %247)
  store i32 %248, i32* %12, align 4
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %250 = call i32 @WriteBuf(%struct.TYPE_19__* %249, i32* %12, i32 4)
  %251 = load i32*, i32** %15, align 8
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @SendAll(i32* %251, i32 %254, i32 %257, i32 0)
  store i32 %258, i32* %14, align 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %260 = call i32 @FreeBuf(%struct.TYPE_19__* %259)
  %261 = load i32, i32* %14, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %244
  %264 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  %265 = load i32, i32* @PROXY_ERROR_DISCONNECTED, align 4
  store i32 %265, i32* %14, align 4
  br label %356

266:                                              ; preds = %244
  %267 = call i32* @Malloc(i32 4)
  store i32* %267, i32** %11, align 8
  %268 = load i32*, i32** %15, align 8
  %269 = load i32*, i32** %11, align 8
  %270 = call i32 @RecvAll(i32* %268, i32* %269, i32 4, i32 0)
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %266
  %273 = load i32*, i32** %11, align 8
  %274 = call i32 @Free(i32* %273)
  %275 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0))
  %276 = load i32, i32* @PROXY_ERROR_DISCONNECTED, align 4
  store i32 %276, i32* %14, align 4
  br label %356

277:                                              ; preds = %266
  %278 = load i32*, i32** %11, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %280, i32* %281, align 4
  %282 = load i32*, i32** %11, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 1
  %284 = load i32, i32* %283, align 4
  %285 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %284, i32* %285, align 4
  %286 = load i32*, i32** %11, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 3
  %288 = load i32, i32* %287, align 4
  switch i32 %288, label %317 [
    i32 1, label %289
    i32 4, label %295
    i32 3, label %301
  ]

289:                                              ; preds = %277
  %290 = load i32*, i32** %11, align 8
  %291 = call i32* @ReAlloc(i32* %290, i32 6)
  store i32* %291, i32** %11, align 8
  %292 = load i32*, i32** %15, align 8
  %293 = load i32*, i32** %11, align 8
  %294 = call i32 @RecvAll(i32* %292, i32* %293, i32 6, i32 0)
  store i32 %294, i32* %14, align 4
  br label %317

295:                                              ; preds = %277
  %296 = load i32*, i32** %11, align 8
  %297 = call i32* @ReAlloc(i32* %296, i32 18)
  store i32* %297, i32** %11, align 8
  %298 = load i32*, i32** %15, align 8
  %299 = load i32*, i32** %11, align 8
  %300 = call i32 @RecvAll(i32* %298, i32* %299, i32 18, i32 0)
  store i32 %300, i32* %14, align 4
  br label %317

301:                                              ; preds = %277
  %302 = load i32*, i32** %15, align 8
  %303 = call i32 @RecvAll(i32* %302, i32* %9, i32 1, i32 0)
  store i32 %303, i32* %14, align 4
  %304 = load i32, i32* %14, align 4
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %316

306:                                              ; preds = %301
  %307 = load i32*, i32** %11, align 8
  %308 = load i32, i32* %9, align 4
  %309 = add nsw i32 %308, 2
  %310 = call i32* @ReAlloc(i32* %307, i32 %309)
  store i32* %310, i32** %11, align 8
  %311 = load i32*, i32** %15, align 8
  %312 = load i32*, i32** %11, align 8
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %313, 2
  %315 = call i32 @RecvAll(i32* %311, i32* %312, i32 %314, i32 0)
  store i32 %315, i32* %14, align 4
  br label %316

316:                                              ; preds = %306, %301
  br label %317

317:                                              ; preds = %316, %277, %295, %289
  %318 = load i32*, i32** %11, align 8
  %319 = call i32 @Free(i32* %318)
  %320 = load i32, i32* %14, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %317
  %323 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0))
  %324 = load i32, i32* @PROXY_ERROR_DISCONNECTED, align 4
  store i32 %324, i32* %14, align 4
  br label %356

325:                                              ; preds = %317
  %326 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 5
  br i1 %328, label %329, label %335

329:                                              ; preds = %325
  %330 = load i32*, i32** %11, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 0
  %332 = load i32, i32* %331, align 4
  %333 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i32 %332)
  %334 = load i32, i32* @PROXY_ERROR_VERSION, align 4
  store i32 %334, i32* %14, align 4
  br label %356

335:                                              ; preds = %325
  %336 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %337 = load i32, i32* %336, align 4
  switch i32 %337, label %351 [
    i32 0, label %338
    i32 3, label %346
    i32 4, label %346
    i32 5, label %346
  ]

338:                                              ; preds = %335
  %339 = load i32*, i32** %15, align 8
  %340 = load i64, i64* @INFINITE, align 8
  %341 = call i32 @SetTimeout(i32* %339, i64 %340)
  %342 = load i32*, i32** %15, align 8
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 0
  store i32* %342, i32** %344, align 8
  %345 = load i32, i32* @PROXY_ERROR_SUCCESS, align 4
  store i32 %345, i32* %4, align 4
  br label %362

346:                                              ; preds = %335, %335, %335
  %347 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %348 = load i32, i32* %347, align 4
  %349 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.10, i64 0, i64 0), i32 %348)
  %350 = load i32, i32* @PROXY_ERROR_TARGET, align 4
  store i32 %350, i32* %14, align 4
  br label %356

351:                                              ; preds = %335
  %352 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %353 = load i32, i32* %352, align 4
  %354 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0), i32 %353)
  %355 = load i32, i32* @PROXY_ERROR_GENERIC, align 4
  store i32 %355, i32* %14, align 4
  br label %356

356:                                              ; preds = %351, %346, %329, %322, %272, %263, %192, %185, %177, %125, %116, %106
  %357 = load i32*, i32** %15, align 8
  %358 = call i32 @Disconnect(i32* %357)
  %359 = load i32*, i32** %15, align 8
  %360 = call i32 @ReleaseSock(i32* %359)
  %361 = load i32, i32* %14, align 4
  store i32 %361, i32* %4, align 4
  br label %362

362:                                              ; preds = %356, %338, %68, %55, %45
  %363 = load i32, i32* %4, align 4
  ret i32 %363
}

declare dso_local i64 @IsEmptyStr(i32*) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @Internal_ProxyTcpConnect(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @SetTimeout(i32*, i64) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local %struct.TYPE_19__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @SendAll(i32*, i32, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_19__*) #1

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32 @RecvAll(i32*, i32*, i32, i32) #1

declare dso_local i32 @ClearBuf(%struct.TYPE_19__*) #1

declare dso_local i32 @StrLen(i32*) #1

declare dso_local i32 @StrToIP(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @IsZeroIp(%struct.TYPE_18__*) #1

declare dso_local i64 @IsIP6(%struct.TYPE_18__*) #1

declare dso_local i32 @Endian16(i64) #1

declare dso_local i32* @Malloc(i32) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32* @ReAlloc(i32*, i32) #1

declare dso_local i32 @Disconnect(i32*) #1

declare dso_local i32 @ReleaseSock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
