; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_ConnectionExists.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_ConnectionExists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i64, %struct.TYPE_16__, %struct.TYPE_18__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_21__, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.connectdata = type { i64*, i64, i64, i64, i64, i64, i64, i64, %struct.Curl_easy*, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_20__, i64, i64, i32, %struct.TYPE_26__*, i32, %struct.TYPE_19__*, %struct.TYPE_25__, %struct.TYPE_24__, i64, i64, %struct.TYPE_23__*, i32, %struct.TYPE_20__, i64, i32* }
%struct.TYPE_28__ = type { %struct.http_conn }
%struct.http_conn = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_27__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64, i64 }
%struct.connectbundle = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.curl_llist_element* }
%struct.curl_llist_element = type { %struct.curl_llist_element*, %struct.connectdata* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Found bundle for host %s: %p [%s]\0A\00", align 1
@BUNDLE_MULTIPLEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"can multiplex\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"serially\00", align 1
@BUNDLE_UNKNOWN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"Server doesn't support multiplex yet, wait\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Server doesn't support multiplex (yet)\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Could multiplex, but not asked to!\0A\00", align 1
@BUNDLE_NO_MULTIUSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"Can not multiplex, even if we wanted to!\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Connection #%ld is still name resolving, can't reuse\0A\00", align 1
@FIRSTSOCKET = common dso_local global i64 0, align 8
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"Connection #%ld isn't open enough, can't reuse\0A\00", align 1
@PROTOPT_SSL = common dso_local global i32 0, align 4
@CURLPROXY_HTTPS = common dso_local global i64 0, align 8
@ssl_connection_complete = common dso_local global i64 0, align 8
@PROTOPT_CREDSPERREQUEST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [59 x i8] c"Connection #%ld has different SSL parameters, can't reuse\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"Connection #%ld has not started SSL connect, can't reuse\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Multiplexed connection found!\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"Found pending candidate for reuse and CURLOPT_PIPEWAIT is set\0A\00", align 1
@CURLAUTH_NTLM = common dso_local global i32 0, align 4
@CURLAUTH_NTLM_WB = common dso_local global i32 0, align 4
@NTLMSTATE_NONE = common dso_local global i64 0, align 8
@PROTO_FAMILY_HTTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, %struct.connectdata*, %struct.connectdata**, i32*, i32*)* @ConnectionExists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConnectionExists(%struct.Curl_easy* %0, %struct.connectdata* %1, %struct.connectdata** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Curl_easy*, align 8
  %8 = alloca %struct.connectdata*, align 8
  %9 = alloca %struct.connectdata**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.connectdata*, align 8
  %13 = alloca %struct.connectdata*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.connectbundle*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.curl_llist_element*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %7, align 8
  store %struct.connectdata* %1, %struct.connectdata** %8, align 8
  store %struct.connectdata** %2, %struct.connectdata*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.connectdata* null, %struct.connectdata** %13, align 8
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %14, align 4
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %23 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %24 = call i32 @IsMultiplexingPossible(%struct.Curl_easy* %22, %struct.connectdata* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32*, i32** %10, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32*, i32** %11, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %30 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %31 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.connectbundle* @Curl_conncache_find_bundle(%struct.connectdata* %29, i32 %33, i8** %17)
  store %struct.connectbundle* %34, %struct.connectbundle** %16, align 8
  %35 = load %struct.connectbundle*, %struct.connectbundle** %16, align 8
  %36 = icmp ne %struct.connectbundle* %35, null
  br i1 %36, label %37, label %657

37:                                               ; preds = %5
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %39 = load i8*, i8** %17, align 8
  %40 = load %struct.connectbundle*, %struct.connectbundle** %16, align 8
  %41 = bitcast %struct.connectbundle* %40 to i8*
  %42 = load %struct.connectbundle*, %struct.connectbundle** %16, align 8
  %43 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BUNDLE_MULTIPLEX, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %49 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %41, i8* %48)
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %37
  %53 = load %struct.connectbundle*, %struct.connectbundle** %16, align 8
  %54 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BUNDLE_UNKNOWN, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %60 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %66 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @TRUE, align 4
  %68 = load i32*, i32** %11, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %70 = call i32 @Curl_conncache_unlock(%struct.Curl_easy* %69)
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %6, align 4
  br label %687

72:                                               ; preds = %58
  %73 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %74 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %72, %52
  %77 = load %struct.connectbundle*, %struct.connectbundle** %16, align 8
  %78 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BUNDLE_MULTIPLEX, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %84 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @Curl_multiplex_wanted(i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %90 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %88, %82, %76
  %93 = load %struct.connectbundle*, %struct.connectbundle** %16, align 8
  %94 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @BUNDLE_NO_MULTIUSE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %100 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %98, %92
  br label %103

103:                                              ; preds = %102, %37
  %104 = load %struct.connectbundle*, %struct.connectbundle** %16, align 8
  %105 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load %struct.curl_llist_element*, %struct.curl_llist_element** %106, align 8
  store %struct.curl_llist_element* %107, %struct.curl_llist_element** %18, align 8
  br label %108

108:                                              ; preds = %655, %624, %607, %487, %458, %412, %390, %378, %367, %358, %347, %323, %312, %298, %287, %276, %262, %240, %199, %169, %158, %153, %124, %103
  %109 = load %struct.curl_llist_element*, %struct.curl_llist_element** %18, align 8
  %110 = icmp ne %struct.curl_llist_element* %109, null
  br i1 %110, label %111, label %656

111:                                              ; preds = %108
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %19, align 4
  %113 = load %struct.curl_llist_element*, %struct.curl_llist_element** %18, align 8
  %114 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %113, i32 0, i32 1
  %115 = load %struct.connectdata*, %struct.connectdata** %114, align 8
  store %struct.connectdata* %115, %struct.connectdata** %12, align 8
  %116 = load %struct.curl_llist_element*, %struct.curl_llist_element** %18, align 8
  %117 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %116, i32 0, i32 0
  %118 = load %struct.curl_llist_element*, %struct.curl_llist_element** %117, align 8
  store %struct.curl_llist_element* %118, %struct.curl_llist_element** %18, align 8
  %119 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %120 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %119, i32 0, i32 10
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 8
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %108

125:                                              ; preds = %111
  %126 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %127 = call i64 @CONN_INUSE(%struct.connectdata* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load %struct.connectbundle*, %struct.connectbundle** %16, align 8
  %131 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @BUNDLE_MULTIPLEX, align 8
  %134 = icmp eq i64 %132, %133
  br label %135

135:                                              ; preds = %129, %125
  %136 = phi i1 [ false, %125 ], [ %134, %129 ]
  %137 = zext i1 %136 to i32
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %20, align 8
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %135
  %142 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %143 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %142, i32 0, i32 10
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 7
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %149 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %148, i32 0, i32 10
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %108

154:                                              ; preds = %147, %141
  br label %206

155:                                              ; preds = %135
  %156 = load i64, i64* %20, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %108

159:                                              ; preds = %155
  %160 = call i64 (...) @Curl_resolver_asynch()
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %159
  %163 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %164 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %163, i32 0, i32 26
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %162
  %170 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %171 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %172 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %171, i32 0, i32 14
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %170, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %173)
  br label %108

175:                                              ; preds = %162
  br label %176

176:                                              ; preds = %175, %159
  %177 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %178 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = load i64, i64* @FIRSTSOCKET, align 8
  %181 = getelementptr inbounds i64, i64* %179, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %191, label %185

185:                                              ; preds = %176
  %186 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %187 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %186, i32 0, i32 10
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %185, %176
  %192 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %193 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %192, i32 0, i32 10
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 6
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %191
  %198 = load i32, i32* @TRUE, align 4
  store i32 %198, i32* %14, align 4
  br label %199

199:                                              ; preds = %197, %191
  %200 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %201 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %202 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %201, i32 0, i32 14
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %200, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %203)
  br label %108

205:                                              ; preds = %185
  br label %206

206:                                              ; preds = %205, %154
  %207 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %208 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %207, i32 0, i32 17
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @PROTOPT_SSL, align 4
  %213 = and i32 %211, %212
  %214 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %215 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %214, i32 0, i32 17
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @PROTOPT_SSL, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %213, %220
  br i1 %221, label %222, label %242

222:                                              ; preds = %206
  %223 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %224 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %223, i32 0, i32 17
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @get_protocol_family(i32 %227)
  %229 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %230 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %229, i32 0, i32 17
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %228, %233
  br i1 %234, label %240, label %235

235:                                              ; preds = %222
  %236 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %237 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %236, i32 0, i32 20
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %235, %222
  br label %108

241:                                              ; preds = %235
  br label %242

242:                                              ; preds = %241, %206
  %243 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %244 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %243, i32 0, i32 10
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %248 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %247, i32 0, i32 10
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %246, %250
  br i1 %251, label %262, label %252

252:                                              ; preds = %242
  %253 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %254 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %253, i32 0, i32 10
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %258 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %257, i32 0, i32 10
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %256, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %252, %242
  br label %108

263:                                              ; preds = %252
  %264 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %265 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %264, i32 0, i32 10
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %263
  %270 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %271 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %270, i32 0, i32 24
  %272 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %273 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %272, i32 0, i32 24
  %274 = call i32 @proxy_info_matches(%struct.TYPE_20__* %271, %struct.TYPE_20__* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %269
  br label %108

277:                                              ; preds = %269, %263
  %278 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %279 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %278, i32 0, i32 10
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %283 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %282, i32 0, i32 10
  %284 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %281, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %277
  br label %108

288:                                              ; preds = %277
  %289 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %290 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %289, i32 0, i32 10
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %294 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %293, i32 0, i32 10
  %295 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %292, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %288
  br label %108

299:                                              ; preds = %288
  %300 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %301 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %300, i32 0, i32 10
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %382

305:                                              ; preds = %299
  %306 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %307 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %306, i32 0, i32 11
  %308 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %309 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %308, i32 0, i32 11
  %310 = call i32 @proxy_info_matches(%struct.TYPE_20__* %307, %struct.TYPE_20__* %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %305
  br label %108

313:                                              ; preds = %305
  %314 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %315 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %314, i32 0, i32 10
  %316 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %315, i32 0, i32 4
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %319 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %318, i32 0, i32 10
  %320 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %319, i32 0, i32 4
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %317, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %313
  br label %108

324:                                              ; preds = %313
  %325 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %326 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %325, i32 0, i32 11
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @CURLPROXY_HTTPS, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %381

331:                                              ; preds = %324
  %332 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %333 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %332, i32 0, i32 17
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @PROTOPT_SSL, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %360

340:                                              ; preds = %331
  %341 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %342 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %341, i32 0, i32 23
  %343 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %344 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %343, i32 0, i32 23
  %345 = call i32 @Curl_ssl_config_matches(i32* %342, i32* %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %348, label %347

347:                                              ; preds = %340
  br label %108

348:                                              ; preds = %340
  %349 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %350 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %349, i32 0, i32 22
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %350, align 8
  %352 = load i64, i64* @FIRSTSOCKET, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @ssl_connection_complete, align 8
  %357 = icmp ne i64 %355, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %348
  br label %108

359:                                              ; preds = %348
  br label %380

360:                                              ; preds = %331
  %361 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %362 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %361, i32 0, i32 16
  %363 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %364 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %363, i32 0, i32 16
  %365 = call i32 @Curl_ssl_config_matches(i32* %362, i32* %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %368, label %367

367:                                              ; preds = %360
  br label %108

368:                                              ; preds = %360
  %369 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %370 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %369, i32 0, i32 15
  %371 = load %struct.TYPE_26__*, %struct.TYPE_26__** %370, align 8
  %372 = load i64, i64* @FIRSTSOCKET, align 8
  %373 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %371, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @ssl_connection_complete, align 8
  %377 = icmp ne i64 %375, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %368
  br label %108

379:                                              ; preds = %368
  br label %380

380:                                              ; preds = %379, %359
  br label %381

381:                                              ; preds = %380, %324
  br label %382

382:                                              ; preds = %381, %299
  %383 = load i32, i32* %15, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %391, label %385

385:                                              ; preds = %382
  %386 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %387 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %386, i32 0, i32 8
  %388 = load %struct.Curl_easy*, %struct.Curl_easy** %387, align 8
  %389 = icmp ne %struct.Curl_easy* %388, null
  br i1 %389, label %390, label %391

390:                                              ; preds = %385
  br label %108

391:                                              ; preds = %385, %382
  %392 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %393 = call i64 @CONN_INUSE(%struct.connectdata* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %413

395:                                              ; preds = %391
  %396 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %397 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %396, i32 0, i32 8
  %398 = load %struct.Curl_easy*, %struct.Curl_easy** %397, align 8
  %399 = icmp ne %struct.Curl_easy* %398, null
  br i1 %399, label %400, label %413

400:                                              ; preds = %395
  %401 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %402 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %401, i32 0, i32 8
  %403 = load %struct.Curl_easy*, %struct.Curl_easy** %402, align 8
  %404 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %407 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %406, i32 0, i32 8
  %408 = load %struct.Curl_easy*, %struct.Curl_easy** %407, align 8
  %409 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %405, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %400
  br label %108

413:                                              ; preds = %400, %395, %391
  %414 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %415 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %414, i32 0, i32 21
  %416 = load i64, i64* %415, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %423, label %418

418:                                              ; preds = %413
  %419 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %420 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %419, i32 0, i32 2
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %460

423:                                              ; preds = %418, %413
  %424 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %425 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %424, i32 0, i32 2
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %428 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = icmp ne i64 %426, %429
  br i1 %430, label %458, label %431

431:                                              ; preds = %423
  %432 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %433 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %432, i32 0, i32 3
  %434 = load i64, i64* %433, align 8
  %435 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %436 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %435, i32 0, i32 3
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %434, %437
  br i1 %438, label %458, label %439

439:                                              ; preds = %431
  %440 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %441 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %440, i32 0, i32 21
  %442 = load i64, i64* %441, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %459

444:                                              ; preds = %439
  %445 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %446 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %445, i32 0, i32 21
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %458

449:                                              ; preds = %444
  %450 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %451 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %450, i32 0, i32 21
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %454 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %453, i32 0, i32 21
  %455 = load i64, i64* %454, align 8
  %456 = call i64 @strcmp(i64 %452, i64 %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %449, %444, %431, %423
  br label %108

459:                                              ; preds = %449, %439
  br label %460

460:                                              ; preds = %459, %418
  %461 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %462 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %461, i32 0, i32 17
  %463 = load %struct.TYPE_19__*, %struct.TYPE_19__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* @PROTOPT_CREDSPERREQUEST, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %489, label %469

469:                                              ; preds = %460
  %470 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %471 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %470, i32 0, i32 13
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %474 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %473, i32 0, i32 13
  %475 = load i64, i64* %474, align 8
  %476 = call i64 @strcmp(i64 %472, i64 %475)
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %487, label %478

478:                                              ; preds = %469
  %479 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %480 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %479, i32 0, i32 12
  %481 = load i64, i64* %480, align 8
  %482 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %483 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %482, i32 0, i32 12
  %484 = load i64, i64* %483, align 8
  %485 = call i64 @strcmp(i64 %481, i64 %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %478, %469
  br label %108

488:                                              ; preds = %478
  br label %489

489:                                              ; preds = %488, %460
  %490 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %491 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %490, i32 0, i32 10
  %492 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %510

495:                                              ; preds = %489
  %496 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %497 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %496, i32 0, i32 17
  %498 = load %struct.TYPE_19__*, %struct.TYPE_19__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* @PROTOPT_SSL, align 4
  %502 = and i32 %500, %501
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %510, label %504

504:                                              ; preds = %495
  %505 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %506 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %505, i32 0, i32 10
  %507 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %506, i32 0, i32 4
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %636

510:                                              ; preds = %504, %495, %489
  %511 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %512 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %511, i32 0, i32 17
  %513 = load %struct.TYPE_19__*, %struct.TYPE_19__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %513, i32 0, i32 2
  %515 = load i32, i32* %514, align 4
  %516 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %517 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %516, i32 0, i32 17
  %518 = load %struct.TYPE_19__*, %struct.TYPE_19__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %518, i32 0, i32 2
  %520 = load i32, i32* %519, align 4
  %521 = call i64 @strcasecompare(i32 %515, i32 %520)
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %541, label %523

523:                                              ; preds = %510
  %524 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %525 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %524, i32 0, i32 17
  %526 = load %struct.TYPE_19__*, %struct.TYPE_19__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = call i32 @get_protocol_family(i32 %528)
  %530 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %531 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %530, i32 0, i32 17
  %532 = load %struct.TYPE_19__*, %struct.TYPE_19__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = icmp eq i32 %529, %534
  br i1 %535, label %536, label %635

536:                                              ; preds = %523
  %537 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %538 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %537, i32 0, i32 20
  %539 = load i64, i64* %538, align 8
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %635

541:                                              ; preds = %536, %510
  %542 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %543 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %542, i32 0, i32 10
  %544 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %543, i32 0, i32 2
  %545 = load i64, i64* %544, align 8
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %558

547:                                              ; preds = %541
  %548 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %549 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %548, i32 0, i32 19
  %550 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %553 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %552, i32 0, i32 19
  %554 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 4
  %556 = call i64 @strcasecompare(i32 %551, i32 %555)
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %635

558:                                              ; preds = %547, %541
  %559 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %560 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %559, i32 0, i32 10
  %561 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %560, i32 0, i32 3
  %562 = load i64, i64* %561, align 8
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %572

564:                                              ; preds = %558
  %565 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %566 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %565, i32 0, i32 4
  %567 = load i64, i64* %566, align 8
  %568 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %569 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %568, i32 0, i32 4
  %570 = load i64, i64* %569, align 8
  %571 = icmp eq i64 %567, %570
  br i1 %571, label %572, label %635

572:                                              ; preds = %564, %558
  %573 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %574 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %573, i32 0, i32 18
  %575 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %578 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %577, i32 0, i32 18
  %579 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 8
  %581 = call i64 @strcasecompare(i32 %576, i32 %580)
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %635

583:                                              ; preds = %572
  %584 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %585 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %584, i32 0, i32 5
  %586 = load i64, i64* %585, align 8
  %587 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %588 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %587, i32 0, i32 5
  %589 = load i64, i64* %588, align 8
  %590 = icmp eq i64 %586, %589
  br i1 %590, label %591, label %635

591:                                              ; preds = %583
  %592 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %593 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %592, i32 0, i32 17
  %594 = load %struct.TYPE_19__*, %struct.TYPE_19__** %593, align 8
  %595 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %594, i32 0, i32 1
  %596 = load i32, i32* %595, align 4
  %597 = load i32, i32* @PROTOPT_SSL, align 4
  %598 = and i32 %596, %597
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %633

600:                                              ; preds = %591
  %601 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %602 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %601, i32 0, i32 16
  %603 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %604 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %603, i32 0, i32 16
  %605 = call i32 @Curl_ssl_config_matches(i32* %602, i32* %604)
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %614, label %607

607:                                              ; preds = %600
  %608 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %609 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %610 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %609, i32 0, i32 14
  %611 = load i32, i32* %610, align 8
  %612 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %608, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0), i32 %611)
  %613 = call i32 @DEBUGF(i32 %612)
  br label %108

614:                                              ; preds = %600
  %615 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %616 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %615, i32 0, i32 15
  %617 = load %struct.TYPE_26__*, %struct.TYPE_26__** %616, align 8
  %618 = load i64, i64* @FIRSTSOCKET, align 8
  %619 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %617, i64 %618
  %620 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %619, i32 0, i32 0
  %621 = load i64, i64* %620, align 8
  %622 = load i64, i64* @ssl_connection_complete, align 8
  %623 = icmp ne i64 %621, %622
  br i1 %623, label %624, label %632

624:                                              ; preds = %614
  %625 = load i32, i32* @TRUE, align 4
  store i32 %625, i32* %14, align 4
  %626 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %627 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %628 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %627, i32 0, i32 14
  %629 = load i32, i32* %628, align 8
  %630 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %626, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i32 %629)
  %631 = call i32 @DEBUGF(i32 %630)
  br label %108

632:                                              ; preds = %614
  br label %633

633:                                              ; preds = %632, %591
  %634 = load i32, i32* @TRUE, align 4
  store i32 %634, i32* %19, align 4
  br label %635

635:                                              ; preds = %633, %583, %572, %564, %547, %536, %523
  br label %638

636:                                              ; preds = %504
  %637 = load i32, i32* @TRUE, align 4
  store i32 %637, i32* %19, align 4
  br label %638

638:                                              ; preds = %636, %635
  %639 = load i32, i32* %19, align 4
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %655

641:                                              ; preds = %638
  %642 = load i32, i32* %15, align 4
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %653

644:                                              ; preds = %641
  %645 = load i64, i64* %20, align 8
  %646 = icmp ne i64 %645, 0
  br i1 %646, label %649, label %647

647:                                              ; preds = %644
  %648 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  store %struct.connectdata* %648, %struct.connectdata** %13, align 8
  br label %656

649:                                              ; preds = %644
  %650 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  store %struct.connectdata* %650, %struct.connectdata** %13, align 8
  %651 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %652 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %651, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %656

653:                                              ; preds = %641
  %654 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  store %struct.connectdata* %654, %struct.connectdata** %13, align 8
  br label %656

655:                                              ; preds = %638
  br label %108

656:                                              ; preds = %653, %649, %647, %108
  br label %657

657:                                              ; preds = %656, %5
  %658 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %659 = icmp ne %struct.connectdata* %658, null
  br i1 %659, label %660, label %669

660:                                              ; preds = %657
  %661 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %662 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %663 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %662, i32 0, i32 8
  store %struct.Curl_easy* %661, %struct.Curl_easy** %663, align 8
  %664 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %665 = call i32 @Curl_conncache_unlock(%struct.Curl_easy* %664)
  %666 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %667 = load %struct.connectdata**, %struct.connectdata*** %9, align 8
  store %struct.connectdata* %666, %struct.connectdata** %667, align 8
  %668 = load i32, i32* @TRUE, align 4
  store i32 %668, i32* %6, align 4
  br label %687

669:                                              ; preds = %657
  %670 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %671 = call i32 @Curl_conncache_unlock(%struct.Curl_easy* %670)
  %672 = load i32, i32* %14, align 4
  %673 = icmp ne i32 %672, 0
  br i1 %673, label %674, label %685

674:                                              ; preds = %669
  %675 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %676 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %675, i32 0, i32 1
  %677 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %676, i32 0, i32 0
  %678 = load i64, i64* %677, align 8
  %679 = icmp ne i64 %678, 0
  br i1 %679, label %680, label %685

680:                                              ; preds = %674
  %681 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %682 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %681, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0))
  %683 = load i32, i32* @TRUE, align 4
  %684 = load i32*, i32** %11, align 8
  store i32 %683, i32* %684, align 4
  br label %685

685:                                              ; preds = %680, %674, %669
  %686 = load i32, i32* @FALSE, align 4
  store i32 %686, i32* %6, align 4
  br label %687

687:                                              ; preds = %685, %660, %64
  %688 = load i32, i32* %6, align 4
  ret i32 %688
}

declare dso_local i32 @IsMultiplexingPossible(%struct.Curl_easy*, %struct.connectdata*) #1

declare dso_local %struct.connectbundle* @Curl_conncache_find_bundle(%struct.connectdata*, i32, i8**) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i32 @Curl_conncache_unlock(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_multiplex_wanted(i64) #1

declare dso_local i64 @CONN_INUSE(%struct.connectdata*) #1

declare dso_local i64 @Curl_resolver_asynch(...) #1

declare dso_local i32 @get_protocol_family(i32) #1

declare dso_local i32 @proxy_info_matches(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @Curl_ssl_config_matches(i32*, i32*) #1

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local i64 @strcasecompare(i32, i32) #1

declare dso_local i32 @DEBUGF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
