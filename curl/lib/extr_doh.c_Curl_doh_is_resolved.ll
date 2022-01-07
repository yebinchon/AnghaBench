; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_doh.c_Curl_doh_is_resolved.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_doh.c_Curl_doh_is_resolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_12__, %struct.TYPE_7__, %struct.Curl_easy* }
%struct.TYPE_12__ = type { %struct.Curl_dns_entry*, i32 }
%struct.Curl_dns_entry = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.Curl_easy = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.dohentry = type { i32 }
%struct.Curl_addrinfo = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Could not DOH-resolve: %s\00", align 1
@CURLE_COULDNT_RESOLVE_PROXY = common dso_local global i32 0, align 4
@CURLE_COULDNT_RESOLVE_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"DOH: %s type %s for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"DOH Host name: %s\0A\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_DNS = common dso_local global i32 0, align 4
@CURL_LOCK_ACCESS_SINGLE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_doh_is_resolved(%struct.connectdata* %0, %struct.Curl_dns_entry** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca %struct.Curl_dns_entry**, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dohentry, align 4
  %10 = alloca %struct.Curl_dns_entry*, align 8
  %11 = alloca %struct.Curl_addrinfo*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store %struct.Curl_dns_entry** %1, %struct.Curl_dns_entry*** %5, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 2
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %6, align 8
  %15 = load %struct.Curl_dns_entry**, %struct.Curl_dns_entry*** %5, align 8
  store %struct.Curl_dns_entry* null, %struct.Curl_dns_entry** %15, align 8
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %53, label %25

25:                                               ; preds = %2
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %27 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %25
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %37 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %38 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @failf(%struct.Curl_easy* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %43 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @CURLE_COULDNT_RESOLVE_PROXY, align 4
  br label %51

49:                                               ; preds = %35
  %50 = load i32, i32* @CURLE_COULDNT_RESOLVE_HOST, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %3, align 4
  br label %305

53:                                               ; preds = %25, %2
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %55 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %302, label %60

60:                                               ; preds = %53
  %61 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %62 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %65 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @curl_multi_remove_handle(i32 %63, i32 %71)
  %73 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %74 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = call i32 @Curl_close(i32* %79)
  %81 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %82 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %85 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @curl_multi_remove_handle(i32 %83, i32 %91)
  %93 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %94 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = call i32 @Curl_close(i32* %99)
  %101 = call i32 @init_dohentry(%struct.dohentry* %9)
  %102 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %103 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %112 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %121 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @doh_decode(i32 %110, i32 %119, i32 %127, %struct.dohentry* %9)
  store i64 %128, i64* %7, align 8
  %129 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %130 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @Curl_safefree(i32 %137)
  %139 = load i64, i64* %7, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %60
  %142 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %143 = load i64, i64* %7, align 8
  %144 = call i32 @doh_strerror(i64 %143)
  %145 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %146 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @type2name(i32 %152)
  %154 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %155 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (%struct.Curl_easy*, i8*, i32, ...) @infof(%struct.Curl_easy* %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %153, i32 %158)
  br label %160

160:                                              ; preds = %141, %60
  %161 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %162 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 1
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %171 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i64 1
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %180 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i64 1
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @doh_decode(i32 %169, i32 %178, i32 %186, %struct.dohentry* %9)
  store i64 %187, i64* %8, align 8
  %188 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %189 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i64 1
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @Curl_safefree(i32 %196)
  %198 = load i64, i64* %8, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %219

200:                                              ; preds = %160
  %201 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %202 = load i64, i64* %8, align 8
  %203 = call i32 @doh_strerror(i64 %202)
  %204 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %205 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i64 1
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @type2name(i32 %211)
  %213 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %214 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (%struct.Curl_easy*, i8*, i32, ...) @infof(%struct.Curl_easy* %201, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %203, i32 %212, i32 %217)
  br label %219

219:                                              ; preds = %200, %160
  %220 = load i64, i64* %7, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i64, i64* %8, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %299, label %225

225:                                              ; preds = %222, %219
  %226 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %227 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %228 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (%struct.Curl_easy*, i8*, i32, ...) @infof(%struct.Curl_easy* %226, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %231)
  %233 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %234 = call i32 @showdoh(%struct.Curl_easy* %233, %struct.dohentry* %9)
  %235 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %236 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %241 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call %struct.Curl_addrinfo* @doh2ai(%struct.dohentry* %9, i32 %239, i32 %244)
  store %struct.Curl_addrinfo* %245, %struct.Curl_addrinfo** %11, align 8
  %246 = load %struct.Curl_addrinfo*, %struct.Curl_addrinfo** %11, align 8
  %247 = icmp ne %struct.Curl_addrinfo* %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %225
  %249 = call i32 @de_cleanup(%struct.dohentry* %9)
  %250 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %250, i32* %3, align 4
  br label %305

251:                                              ; preds = %225
  %252 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %253 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %258 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %259 = load i32, i32* @CURL_LOCK_ACCESS_SINGLE, align 4
  %260 = call i32 @Curl_share_lock(%struct.Curl_easy* %257, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %256, %251
  %262 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %263 = load %struct.Curl_addrinfo*, %struct.Curl_addrinfo** %11, align 8
  %264 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %265 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %270 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call %struct.Curl_dns_entry* @Curl_cache_addr(%struct.Curl_easy* %262, %struct.Curl_addrinfo* %263, i32 %268, i32 %273)
  store %struct.Curl_dns_entry* %274, %struct.Curl_dns_entry** %10, align 8
  %275 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %276 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %261
  %280 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %281 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %282 = call i32 @Curl_share_unlock(%struct.Curl_easy* %280, i32 %281)
  br label %283

283:                                              ; preds = %279, %261
  %284 = call i32 @de_cleanup(%struct.dohentry* %9)
  %285 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %10, align 8
  %286 = icmp ne %struct.Curl_dns_entry* %285, null
  br i1 %286, label %290, label %287

287:                                              ; preds = %283
  %288 = load %struct.Curl_addrinfo*, %struct.Curl_addrinfo** %11, align 8
  %289 = call i32 @Curl_freeaddrinfo(%struct.Curl_addrinfo* %288)
  br label %298

290:                                              ; preds = %283
  %291 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %10, align 8
  %292 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %293 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  store %struct.Curl_dns_entry* %291, %struct.Curl_dns_entry** %294, align 8
  %295 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %10, align 8
  %296 = load %struct.Curl_dns_entry**, %struct.Curl_dns_entry*** %5, align 8
  store %struct.Curl_dns_entry* %295, %struct.Curl_dns_entry** %296, align 8
  %297 = load i32, i32* @CURLE_OK, align 4
  store i32 %297, i32* %3, align 4
  br label %305

298:                                              ; preds = %287
  br label %299

299:                                              ; preds = %298, %222
  %300 = call i32 @de_cleanup(%struct.dohentry* %9)
  %301 = load i32, i32* @CURLE_COULDNT_RESOLVE_HOST, align 4
  store i32 %301, i32* %3, align 4
  br label %305

302:                                              ; preds = %53
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* @CURLE_OK, align 4
  store i32 %304, i32* %3, align 4
  br label %305

305:                                              ; preds = %303, %299, %290, %248, %51
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @curl_multi_remove_handle(i32, i32) #1

declare dso_local i32 @Curl_close(i32*) #1

declare dso_local i32 @init_dohentry(%struct.dohentry*) #1

declare dso_local i64 @doh_decode(i32, i32, i32, %struct.dohentry*) #1

declare dso_local i32 @Curl_safefree(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32, ...) #1

declare dso_local i32 @doh_strerror(i64) #1

declare dso_local i32 @type2name(i32) #1

declare dso_local i32 @showdoh(%struct.Curl_easy*, %struct.dohentry*) #1

declare dso_local %struct.Curl_addrinfo* @doh2ai(%struct.dohentry*, i32, i32) #1

declare dso_local i32 @de_cleanup(%struct.dohentry*) #1

declare dso_local i32 @Curl_share_lock(%struct.Curl_easy*, i32, i32) #1

declare dso_local %struct.Curl_dns_entry* @Curl_cache_addr(%struct.Curl_easy*, %struct.Curl_addrinfo*, i32, i32) #1

declare dso_local i32 @Curl_share_unlock(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_freeaddrinfo(%struct.Curl_addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
