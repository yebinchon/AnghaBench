; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_reuse_conn.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_reuse_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32*, i32, i32*, %struct.TYPE_7__, %struct.TYPE_6__, i32*, i32*, i32*, %struct.TYPE_5__, i32*, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32*, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32*, i32*, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32* }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*, %struct.connectdata*)* @reuse_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reuse_conn(%struct.connectdata* %0, %struct.connectdata* %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.connectdata*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store %struct.connectdata* %1, %struct.connectdata** %4, align 8
  %5 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %6 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = call i32 @free_idnconverted_hostname(%struct.TYPE_8__* %7)
  %9 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = call i32 @free_idnconverted_hostname(%struct.TYPE_8__* %11)
  %13 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @free(i32* %17)
  %19 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @free(i32* %23)
  %25 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %26 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %25, i32 0, i32 16
  %27 = call i32 @Curl_free_primary_ssl_config(i32* %26)
  %28 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %29 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %28, i32 0, i32 15
  %30 = call i32 @Curl_free_primary_ssl_config(i32* %29)
  %31 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %32 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %31, i32 0, i32 14
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %35 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %34, i32 0, i32 14
  store i32 %33, i32* %35, align 8
  %36 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %37 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %36, i32 0, i32 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %41 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i64 %39, i64* %42, align 8
  %43 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %44 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %2
  %49 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %50 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @Curl_safefree(i32* %51)
  %53 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %54 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @Curl_safefree(i32* %55)
  %57 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %58 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %57, i32 0, i32 7
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %61 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %60, i32 0, i32 7
  store i32* %59, i32** %61, align 8
  %62 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %63 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %66 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %65, i32 0, i32 6
  store i32* %64, i32** %66, align 8
  %67 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %68 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %67, i32 0, i32 7
  store i32* null, i32** %68, align 8
  %69 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %70 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %69, i32 0, i32 6
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %48, %2
  %72 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %73 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %77 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i64 %75, i64* %78, align 8
  %79 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %80 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %145

84:                                               ; preds = %71
  %85 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %86 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @Curl_safefree(i32* %88)
  %90 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %91 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @Curl_safefree(i32* %93)
  %95 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %96 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @Curl_safefree(i32* %98)
  %100 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %101 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @Curl_safefree(i32* %103)
  %105 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %106 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %110 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i32* %108, i32** %111, align 8
  %112 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %113 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %117 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32* %115, i32** %118, align 8
  %119 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %120 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %124 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32* %122, i32** %125, align 8
  %126 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %127 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %131 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  store i32* %129, i32** %132, align 8
  %133 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %134 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  store i32* null, i32** %135, align 8
  %136 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %137 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  store i32* null, i32** %138, align 8
  %139 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %140 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  store i32* null, i32** %141, align 8
  %142 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %143 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %84, %71
  %146 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %147 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %146, i32 0, i32 13
  %148 = call i32 @free_idnconverted_hostname(%struct.TYPE_8__* %147)
  %149 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %150 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %149, i32 0, i32 12
  %151 = call i32 @free_idnconverted_hostname(%struct.TYPE_8__* %150)
  %152 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %153 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %152, i32 0, i32 13
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @Curl_safefree(i32* %155)
  %157 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %158 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %157, i32 0, i32 12
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @Curl_safefree(i32* %160)
  %162 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %163 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %162, i32 0, i32 13
  %164 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %165 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %164, i32 0, i32 13
  %166 = bitcast %struct.TYPE_8__* %163 to i8*
  %167 = bitcast %struct.TYPE_8__* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %166, i8* align 8 %167, i64 8, i1 false)
  %168 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %169 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %168, i32 0, i32 12
  %170 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %171 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %170, i32 0, i32 12
  %172 = bitcast %struct.TYPE_8__* %169 to i8*
  %173 = bitcast %struct.TYPE_8__* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %172, i8* align 8 %173, i64 8, i1 false)
  %174 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %175 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %178 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %177, i32 0, i32 11
  store i32 %176, i32* %178, align 4
  %179 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %180 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %179, i32 0, i32 10
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %183 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %182, i32 0, i32 10
  store i32 %181, i32* %183, align 8
  %184 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %185 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %184, i32 0, i32 9
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @Curl_safefree(i32* %186)
  %188 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %189 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %188, i32 0, i32 9
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %192 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %191, i32 0, i32 9
  store i32* %190, i32** %192, align 8
  %193 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %194 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %193, i32 0, i32 9
  store i32* null, i32** %194, align 8
  %195 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %196 = call i32 @Curl_persistconninfo(%struct.connectdata* %195)
  %197 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %198 = call i32 @conn_reset_all_postponed_data(%struct.connectdata* %197)
  %199 = load i32, i32* @TRUE, align 4
  %200 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %201 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %200, i32 0, i32 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  store i32 %199, i32* %202, align 8
  %203 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %204 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %203, i32 0, i32 7
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @Curl_safefree(i32* %205)
  %207 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %208 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %207, i32 0, i32 6
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @Curl_safefree(i32* %209)
  %211 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %212 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @Curl_safefree(i32* %213)
  %215 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %216 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @Curl_safefree(i32* %218)
  %220 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %221 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 @Curl_safefree(i32* %223)
  %225 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %226 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @Curl_safefree(i32* %228)
  %230 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %231 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @Curl_safefree(i32* %233)
  %235 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %236 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @Curl_safefree(i32* %237)
  %239 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %240 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %239, i32 0, i32 1
  %241 = call i32 @Curl_llist_destroy(i32* %240, i32* null)
  ret void
}

declare dso_local i32 @free_idnconverted_hostname(%struct.TYPE_8__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @Curl_free_primary_ssl_config(i32*) #1

declare dso_local i32 @Curl_safefree(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Curl_persistconninfo(%struct.connectdata*) #1

declare dso_local i32 @conn_reset_all_postponed_data(%struct.connectdata*) #1

declare dso_local i32 @Curl_llist_destroy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
