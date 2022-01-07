; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ldap.c_Curl_ldap.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ldap.c_Curl_ldap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i8*, i8*, i64, %struct.TYPE_21__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__*, %struct.Curl_easy* }
%struct.TYPE_21__ = type { i8*, i32 }
%struct.TYPE_18__ = type { i8*, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_20__, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i8*, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@LDAP_VERSION3 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"LDAP local: LDAP Vendor = %s ; LDAP Version = %d\0A\00", align 1
@LDAP_VENDOR_NAME = common dso_local global i32 0, align 4
@LDAP_VENDOR_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"LDAP local: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"LDAP local: %s\00", align 1
@CURLE_LDAP_INVALID_URL = common dso_local global i64 0, align 8
@PROTOPT_SSL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"LDAP local: trying to establish %s connection\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"encrypted\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"cleartext\00", align 1
@LDAP_OPT_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"LDAP local: Cannot connect to %s:%ld\00", align 1
@CURLE_COULDNT_CONNECT = common dso_local global i64 0, align 8
@LDAP_VERSION2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"LDAP local: bind via ldap_simple_bind_s %s\00", align 1
@CURLE_LDAP_CANNOT_BIND = common dso_local global i64 0, align 8
@LDAP_SIZELIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"LDAP remote: %s\00", align 1
@CURLE_LDAP_SEARCH_FAILED = common dso_local global i64 0, align 8
@CLIENTWRITE_BODY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"DN: \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c";binary\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Received %d entries\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"There are more than %d entries\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [38 x i8] c"LDAP connection always disable re-use\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@CURLE_SSL_CERTPROBLEM = common dso_local global i64 0, align 8
@LDAPSSL_CERT_FILETYPE_B64 = common dso_local global i32 0, align 4
@LDAPSSL_CERT_FILETYPE_DER = common dso_local global i32 0, align 4
@LDAPSSL_VERIFY_NONE = common dso_local global i32 0, align 4
@LDAPSSL_VERIFY_SERVER = common dso_local global i32 0, align 4
@LDAP_OPT_NETWORK_TIMEOUT = common dso_local global i32 0, align 4
@LDAP_OPT_ON = common dso_local global i32* null, align 8
@LDAP_OPT_SSL = common dso_local global i32 0, align 4
@LDAP_OPT_X_TLS = common dso_local global i32 0, align 4
@LDAP_OPT_X_TLS_CACERTFILE = common dso_local global i32 0, align 4
@LDAP_OPT_X_TLS_DEMAND = common dso_local global i32 0, align 4
@LDAP_OPT_X_TLS_HARD = common dso_local global i32 0, align 4
@LDAP_OPT_X_TLS_NEVER = common dso_local global i32 0, align 4
@LDAP_OPT_X_TLS_REQUIRE_CERT = common dso_local global i32 0, align 4
@LDAP_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @Curl_ldap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Curl_ldap(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.Curl_easy*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_23__**, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i32* %1, i32** %4, align 8
  %30 = load i64, i64* @CURLE_OK, align 8
  store i64 %30, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %31 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %32 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %31, i32 0, i32 7
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %32, align 8
  store %struct.Curl_easy* %33, %struct.Curl_easy** %12, align 8
  %34 = load i32, i32* @LDAP_VERSION3, align 4
  store i32 %34, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %38 = load i32, i32* @LDAP_VENDOR_NAME, align 4
  %39 = load i32, i32* @LDAP_VENDOR_VERSION, align 4
  %40 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %42 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %43 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %48 = call i32 @_ldap_url_parse(%struct.connectdata* %47, %struct.TYPE_22__** %8)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %2
  %52 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i8* @ldap_err2string(i32 %53)
  %55 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load i64, i64* @CURLE_LDAP_INVALID_URL, align 8
  store i64 %56, i64* %5, align 8
  br label %475

57:                                               ; preds = %2
  %58 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %59 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %58, i32 0, i32 6
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PROTOPT_SSL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 1, i32* %14, align 4
  br label %67

67:                                               ; preds = %66, %57
  %68 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %73 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  %74 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %75 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %18, align 8
  %78 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %79 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %67
  %84 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %85 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %19, align 8
  %87 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %88 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %20, align 8
  br label %90

90:                                               ; preds = %83, %67
  %91 = load i32, i32* @LDAP_OPT_PROTOCOL_VERSION, align 4
  %92 = call i32 (i32*, i32, ...) @ldap_set_option(i32* null, i32 %91, i32* %13)
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %117

96:                                               ; preds = %90
  %97 = load i8*, i8** %18, align 8
  %98 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %99 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32* @ldap_init(i8* %97, i32 %101)
  store i32* %102, i32** %7, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %96
  %106 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %107 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %108 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %112 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %106, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %110, i64 %113)
  %115 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %115, i64* %5, align 8
  br label %475

116:                                              ; preds = %96
  br label %117

117:                                              ; preds = %116, %95
  %118 = load i32*, i32** %7, align 8
  %119 = load i8*, i8** %19, align 8
  %120 = load i8*, i8** %20, align 8
  %121 = call i32 @ldap_simple_bind_s(i32* %118, i8* %119, i8* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load i32, i32* @LDAP_VERSION2, align 4
  store i32 %128, i32* %13, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* @LDAP_OPT_PROTOCOL_VERSION, align 4
  %131 = call i32 (i32*, i32, ...) @ldap_set_option(i32* %129, i32 %130, i32* %13)
  %132 = load i32*, i32** %7, align 8
  %133 = load i8*, i8** %19, align 8
  %134 = load i8*, i8** %20, align 8
  %135 = call i32 @ldap_simple_bind_s(i32* %132, i8* %133, i8* %134)
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %127, %124, %117
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i8* @ldap_err2string(i32 %141)
  %143 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %140, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %142)
  %144 = load i64, i64* @CURLE_LDAP_CANNOT_BIND, align 8
  store i64 %144, i64* %5, align 8
  br label %475

145:                                              ; preds = %136
  %146 = load i32*, i32** %7, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ldap_search_s(i32* %146, i32 %149, i32 %152, i32 %155, i32 %158, i32 0, i32** %9)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %145
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @LDAP_SIZELIMIT_EXCEEDED, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i8* @ldap_err2string(i32 %168)
  %170 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %167, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %169)
  %171 = load i64, i64* @CURLE_LDAP_SEARCH_FAILED, align 8
  store i64 %171, i64* %5, align 8
  br label %475

172:                                              ; preds = %162, %145
  store i32 0, i32* %11, align 4
  %173 = load i32*, i32** %7, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = call i32* @ldap_first_entry(i32* %173, i32* %174)
  store i32* %175, i32** %10, align 8
  br label %176

176:                                              ; preds = %468, %172
  %177 = load i32*, i32** %10, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %474

179:                                              ; preds = %176
  store i32* null, i32** %21, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = call i8* @ldap_get_dn(i32* %180, i32* %181)
  store i8* %182, i8** %24, align 8
  store i8* %182, i8** %26, align 8
  %183 = load i8*, i8** %24, align 8
  %184 = call i64 @strlen(i8* %183)
  store i64 %184, i64* %25, align 8
  %185 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %186 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %187 = call i64 @Curl_client_write(%struct.connectdata* %185, i32 %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  store i64 %187, i64* %5, align 8
  %188 = load i64, i64* %5, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %179
  %191 = load i8*, i8** %26, align 8
  %192 = call i32 @ldap_memfree(i8* %191)
  br label %475

193:                                              ; preds = %179
  %194 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %195 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %196 = load i8*, i8** %24, align 8
  %197 = load i64, i64* %25, align 8
  %198 = trunc i64 %197 to i32
  %199 = call i64 @Curl_client_write(%struct.connectdata* %194, i32 %195, i8* %196, i32 %198)
  store i64 %199, i64* %5, align 8
  %200 = load i64, i64* %5, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %193
  %203 = load i8*, i8** %26, align 8
  %204 = call i32 @ldap_memfree(i8* %203)
  br label %475

205:                                              ; preds = %193
  %206 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %207 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %208 = call i64 @Curl_client_write(%struct.connectdata* %206, i32 %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 1)
  store i64 %208, i64* %5, align 8
  %209 = load i64, i64* %5, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = load i8*, i8** %26, align 8
  %213 = call i32 @ldap_memfree(i8* %212)
  br label %475

214:                                              ; preds = %205
  %215 = load i64, i64* %25, align 8
  %216 = add i64 %215, 5
  %217 = load i64, i64* %17, align 8
  %218 = add i64 %217, %216
  store i64 %218, i64* %17, align 8
  %219 = load i8*, i8** %26, align 8
  %220 = call i32 @ldap_memfree(i8* %219)
  %221 = load i32*, i32** %7, align 8
  %222 = load i32*, i32** %10, align 8
  %223 = call i8* @ldap_first_attribute(i32* %221, i32* %222, i32** %21)
  store i8* %223, i8** %22, align 8
  br label %224

224:                                              ; preds = %456, %214
  %225 = load i8*, i8** %22, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %461

227:                                              ; preds = %224
  %228 = load i8*, i8** %22, align 8
  store i8* %228, i8** %29, align 8
  %229 = load i8*, i8** %29, align 8
  %230 = call i64 @strlen(i8* %229)
  store i64 %230, i64* %28, align 8
  %231 = load i32*, i32** %7, align 8
  %232 = load i32*, i32** %10, align 8
  %233 = load i8*, i8** %22, align 8
  %234 = call %struct.TYPE_23__** @ldap_get_values_len(i32* %231, i32* %232, i8* %233)
  store %struct.TYPE_23__** %234, %struct.TYPE_23__*** %27, align 8
  %235 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %236 = icmp ne %struct.TYPE_23__** %235, null
  br i1 %236, label %237, label %441

237:                                              ; preds = %227
  store i32 0, i32* %23, align 4
  br label %238

238:                                              ; preds = %435, %237
  %239 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %240 = load i32, i32* %23, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %239, i64 %241
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %242, align 8
  %244 = icmp ne %struct.TYPE_23__* %243, null
  br i1 %244, label %245, label %438

245:                                              ; preds = %238
  %246 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %247 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %248 = call i64 @Curl_client_write(%struct.connectdata* %246, i32 %247, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 1)
  store i64 %248, i64* %5, align 8
  %249 = load i64, i64* %5, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %262

251:                                              ; preds = %245
  %252 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %253 = call i32 @ldap_value_free_len(%struct.TYPE_23__** %252)
  %254 = load i8*, i8** %22, align 8
  %255 = call i32 @ldap_memfree(i8* %254)
  %256 = load i32*, i32** %21, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %258, label %261

258:                                              ; preds = %251
  %259 = load i32*, i32** %21, align 8
  %260 = call i32 @ber_free(i32* %259, i32 0)
  br label %261

261:                                              ; preds = %258, %251
  br label %475

262:                                              ; preds = %245
  %263 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %264 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %265 = load i8*, i8** %29, align 8
  %266 = load i64, i64* %28, align 8
  %267 = trunc i64 %266 to i32
  %268 = call i64 @Curl_client_write(%struct.connectdata* %263, i32 %264, i8* %265, i32 %267)
  store i64 %268, i64* %5, align 8
  %269 = load i64, i64* %5, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %282

271:                                              ; preds = %262
  %272 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %273 = call i32 @ldap_value_free_len(%struct.TYPE_23__** %272)
  %274 = load i8*, i8** %22, align 8
  %275 = call i32 @ldap_memfree(i8* %274)
  %276 = load i32*, i32** %21, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %271
  %279 = load i32*, i32** %21, align 8
  %280 = call i32 @ber_free(i32* %279, i32 0)
  br label %281

281:                                              ; preds = %278, %271
  br label %475

282:                                              ; preds = %262
  %283 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %284 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %285 = call i64 @Curl_client_write(%struct.connectdata* %283, i32 %284, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 2)
  store i64 %285, i64* %5, align 8
  %286 = load i64, i64* %5, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %299

288:                                              ; preds = %282
  %289 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %290 = call i32 @ldap_value_free_len(%struct.TYPE_23__** %289)
  %291 = load i8*, i8** %22, align 8
  %292 = call i32 @ldap_memfree(i8* %291)
  %293 = load i32*, i32** %21, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %288
  %296 = load i32*, i32** %21, align 8
  %297 = call i32 @ber_free(i32* %296, i32 0)
  br label %298

298:                                              ; preds = %295, %288
  br label %475

299:                                              ; preds = %282
  %300 = load i64, i64* %28, align 8
  %301 = add i64 %300, 3
  %302 = load i64, i64* %17, align 8
  %303 = add i64 %302, %301
  store i64 %303, i64* %17, align 8
  %304 = load i64, i64* %28, align 8
  %305 = icmp ugt i64 %304, 7
  br i1 %305, label %306, label %373

306:                                              ; preds = %299
  %307 = load i8*, i8** %29, align 8
  %308 = load i64, i64* %28, align 8
  %309 = sub i64 %308, 7
  %310 = getelementptr inbounds i8, i8* %307, i64 %309
  %311 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %310)
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %373

313:                                              ; preds = %306
  %314 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %315 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %316 = load i32, i32* %23, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %315, i64 %317
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8
  %322 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %323 = load i32, i32* %23, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %322, i64 %324
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = call i64 @Curl_base64_encode(%struct.Curl_easy* %314, i8* %321, i32 %328, i8** %15, i64* %16)
  store i64 %329, i64* %5, align 8
  %330 = load i64, i64* %5, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %343

332:                                              ; preds = %313
  %333 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %334 = call i32 @ldap_value_free_len(%struct.TYPE_23__** %333)
  %335 = load i8*, i8** %22, align 8
  %336 = call i32 @ldap_memfree(i8* %335)
  %337 = load i32*, i32** %21, align 8
  %338 = icmp ne i32* %337, null
  br i1 %338, label %339, label %342

339:                                              ; preds = %332
  %340 = load i32*, i32** %21, align 8
  %341 = call i32 @ber_free(i32* %340, i32 0)
  br label %342

342:                                              ; preds = %339, %332
  br label %475

343:                                              ; preds = %313
  %344 = load i64, i64* %16, align 8
  %345 = icmp ugt i64 %344, 0
  br i1 %345, label %346, label %372

346:                                              ; preds = %343
  %347 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %348 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %349 = load i8*, i8** %15, align 8
  %350 = load i64, i64* %16, align 8
  %351 = trunc i64 %350 to i32
  %352 = call i64 @Curl_client_write(%struct.connectdata* %347, i32 %348, i8* %349, i32 %351)
  store i64 %352, i64* %5, align 8
  %353 = load i8*, i8** %15, align 8
  %354 = call i32 @free(i8* %353)
  %355 = load i64, i64* %5, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %368

357:                                              ; preds = %346
  %358 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %359 = call i32 @ldap_value_free_len(%struct.TYPE_23__** %358)
  %360 = load i8*, i8** %22, align 8
  %361 = call i32 @ldap_memfree(i8* %360)
  %362 = load i32*, i32** %21, align 8
  %363 = icmp ne i32* %362, null
  br i1 %363, label %364, label %367

364:                                              ; preds = %357
  %365 = load i32*, i32** %21, align 8
  %366 = call i32 @ber_free(i32* %365, i32 0)
  br label %367

367:                                              ; preds = %364, %357
  br label %475

368:                                              ; preds = %346
  %369 = load i64, i64* %16, align 8
  %370 = load i64, i64* %17, align 8
  %371 = add i64 %370, %369
  store i64 %371, i64* %17, align 8
  br label %372

372:                                              ; preds = %368, %343
  br label %415

373:                                              ; preds = %306, %299
  %374 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %375 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %376 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %377 = load i32, i32* %23, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %376, i64 %378
  %380 = load %struct.TYPE_23__*, %struct.TYPE_23__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %384 = load i32, i32* %23, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %383, i64 %385
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = call i64 @Curl_client_write(%struct.connectdata* %374, i32 %375, i8* %382, i32 %389)
  store i64 %390, i64* %5, align 8
  %391 = load i64, i64* %5, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %404

393:                                              ; preds = %373
  %394 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %395 = call i32 @ldap_value_free_len(%struct.TYPE_23__** %394)
  %396 = load i8*, i8** %22, align 8
  %397 = call i32 @ldap_memfree(i8* %396)
  %398 = load i32*, i32** %21, align 8
  %399 = icmp ne i32* %398, null
  br i1 %399, label %400, label %403

400:                                              ; preds = %393
  %401 = load i32*, i32** %21, align 8
  %402 = call i32 @ber_free(i32* %401, i32 0)
  br label %403

403:                                              ; preds = %400, %393
  br label %475

404:                                              ; preds = %373
  %405 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %406 = load i32, i32* %23, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %405, i64 %407
  %409 = load %struct.TYPE_23__*, %struct.TYPE_23__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = sext i32 %411 to i64
  %413 = load i64, i64* %17, align 8
  %414 = add nsw i64 %413, %412
  store i64 %414, i64* %17, align 8
  br label %415

415:                                              ; preds = %404, %372
  %416 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %417 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %418 = call i64 @Curl_client_write(%struct.connectdata* %416, i32 %417, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 1)
  store i64 %418, i64* %5, align 8
  %419 = load i64, i64* %5, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %432

421:                                              ; preds = %415
  %422 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %423 = call i32 @ldap_value_free_len(%struct.TYPE_23__** %422)
  %424 = load i8*, i8** %22, align 8
  %425 = call i32 @ldap_memfree(i8* %424)
  %426 = load i32*, i32** %21, align 8
  %427 = icmp ne i32* %426, null
  br i1 %427, label %428, label %431

428:                                              ; preds = %421
  %429 = load i32*, i32** %21, align 8
  %430 = call i32 @ber_free(i32* %429, i32 0)
  br label %431

431:                                              ; preds = %428, %421
  br label %475

432:                                              ; preds = %415
  %433 = load i64, i64* %17, align 8
  %434 = add nsw i64 %433, 1
  store i64 %434, i64* %17, align 8
  br label %435

435:                                              ; preds = %432
  %436 = load i32, i32* %23, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %23, align 4
  br label %238

438:                                              ; preds = %238
  %439 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %440 = call i32 @ldap_value_free_len(%struct.TYPE_23__** %439)
  br label %441

441:                                              ; preds = %438, %227
  %442 = load i8*, i8** %22, align 8
  %443 = call i32 @ldap_memfree(i8* %442)
  %444 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %445 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %446 = call i64 @Curl_client_write(%struct.connectdata* %444, i32 %445, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 1)
  store i64 %446, i64* %5, align 8
  %447 = load i64, i64* %5, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %450

449:                                              ; preds = %441
  br label %475

450:                                              ; preds = %441
  %451 = load i64, i64* %17, align 8
  %452 = add nsw i64 %451, 1
  store i64 %452, i64* %17, align 8
  %453 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %454 = load i64, i64* %17, align 8
  %455 = call i32 @Curl_pgrsSetDownloadCounter(%struct.Curl_easy* %453, i64 %454)
  br label %456

456:                                              ; preds = %450
  %457 = load i32*, i32** %7, align 8
  %458 = load i32*, i32** %10, align 8
  %459 = load i32*, i32** %21, align 8
  %460 = call i8* @ldap_next_attribute(i32* %457, i32* %458, i32* %459)
  store i8* %460, i8** %22, align 8
  br label %224

461:                                              ; preds = %224
  %462 = load i32*, i32** %21, align 8
  %463 = icmp ne i32* %462, null
  br i1 %463, label %464, label %467

464:                                              ; preds = %461
  %465 = load i32*, i32** %21, align 8
  %466 = call i32 @ber_free(i32* %465, i32 0)
  br label %467

467:                                              ; preds = %464, %461
  br label %468

468:                                              ; preds = %467
  %469 = load i32*, i32** %7, align 8
  %470 = load i32*, i32** %10, align 8
  %471 = call i32* @ldap_next_entry(i32* %469, i32* %470)
  store i32* %471, i32** %10, align 8
  %472 = load i32, i32* %11, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %11, align 4
  br label %176

474:                                              ; preds = %176
  br label %475

475:                                              ; preds = %474, %449, %431, %403, %367, %342, %298, %281, %261, %211, %202, %190, %166, %139, %105, %51
  %476 = load i32*, i32** %9, align 8
  %477 = icmp ne i32* %476, null
  br i1 %477, label %478, label %485

478:                                              ; preds = %475
  %479 = load i32*, i32** %9, align 8
  %480 = call i32 @ldap_msgfree(i32* %479)
  %481 = load i32, i32* %11, align 4
  %482 = sext i32 %481 to i64
  %483 = inttoptr i64 %482 to i8*
  %484 = call i32 @LDAP_TRACE(i8* %483)
  br label %485

485:                                              ; preds = %478, %475
  %486 = load i32, i32* %6, align 4
  %487 = load i32, i32* @LDAP_SIZELIMIT_EXCEEDED, align 4
  %488 = icmp eq i32 %486, %487
  br i1 %488, label %489, label %493

489:                                              ; preds = %485
  %490 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %491 = load i32, i32* %11, align 4
  %492 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %490, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %491)
  br label %493

493:                                              ; preds = %489, %485
  %494 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %495 = icmp ne %struct.TYPE_22__* %494, null
  br i1 %495, label %496, label %499

496:                                              ; preds = %493
  %497 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %498 = call i32 @ldap_free_urldesc(%struct.TYPE_22__* %497)
  br label %499

499:                                              ; preds = %496, %493
  %500 = load i32*, i32** %7, align 8
  %501 = icmp ne i32* %500, null
  br i1 %501, label %502, label %505

502:                                              ; preds = %499
  %503 = load i32*, i32** %7, align 8
  %504 = call i32 @ldap_unbind_s(i32* %503)
  br label %505

505:                                              ; preds = %502, %499
  %506 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %507 = load i32, i32* @FALSE, align 4
  %508 = call i32 @Curl_setup_transfer(%struct.Curl_easy* %506, i32 -1, i32 -1, i32 %507, i32 -1)
  %509 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %510 = call i32 @connclose(%struct.connectdata* %509, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  %511 = load i64, i64* %5, align 8
  ret i64 %511
}

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i32 @_ldap_url_parse(%struct.connectdata*, %struct.TYPE_22__**) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i8* @ldap_err2string(i32) #1

declare dso_local i32 @ldap_set_option(i32*, i32, ...) #1

declare dso_local i32* @ldap_init(i8*, i32) #1

declare dso_local i32 @ldap_simple_bind_s(i32*, i8*, i8*) #1

declare dso_local i32 @ldap_search_s(i32*, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32* @ldap_first_entry(i32*, i32*) #1

declare dso_local i8* @ldap_get_dn(i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @Curl_client_write(%struct.connectdata*, i32, i8*, i32) #1

declare dso_local i32 @ldap_memfree(i8*) #1

declare dso_local i8* @ldap_first_attribute(i32*, i32*, i32**) #1

declare dso_local %struct.TYPE_23__** @ldap_get_values_len(i32*, i32*, i8*) #1

declare dso_local i32 @ldap_value_free_len(%struct.TYPE_23__**) #1

declare dso_local i32 @ber_free(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @Curl_base64_encode(%struct.Curl_easy*, i8*, i32, i8**, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @Curl_pgrsSetDownloadCounter(%struct.Curl_easy*, i64) #1

declare dso_local i8* @ldap_next_attribute(i32*, i32*, i32*) #1

declare dso_local i32* @ldap_next_entry(i32*, i32*) #1

declare dso_local i32 @ldap_msgfree(i32*) #1

declare dso_local i32 @LDAP_TRACE(i8*) #1

declare dso_local i32 @ldap_free_urldesc(%struct.TYPE_22__*) #1

declare dso_local i32 @ldap_unbind_s(i32*) #1

declare dso_local i32 @Curl_setup_transfer(%struct.Curl_easy*, i32, i32, i32, i32) #1

declare dso_local i32 @connclose(%struct.connectdata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
