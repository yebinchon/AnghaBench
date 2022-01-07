; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_close.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32, %struct.TYPE_18__, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_12__, i32*, %struct.TYPE_11__, %struct.TYPE_10__, i64, i32*, %struct.Curl_multi* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.Curl_easy* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.Curl_easy* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32*, i32*, i32*, i32*, i32*, %struct.Curl_easy*, i64, i32 }
%struct.TYPE_12__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32*, i64 }
%struct.Curl_multi = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_SHARE = common dso_local global i32 0, align 4
@CURL_LOCK_ACCESS_SINGLE = common dso_local global i32 0, align 4
@STRING_ALTSVC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_close(%struct.Curl_easy** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Curl_easy**, align 8
  %4 = alloca %struct.Curl_multi*, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  store %struct.Curl_easy** %0, %struct.Curl_easy*** %3, align 8
  %6 = load %struct.Curl_easy**, %struct.Curl_easy*** %3, align 8
  %7 = icmp ne %struct.Curl_easy** %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.Curl_easy**, %struct.Curl_easy*** %3, align 8
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %11 = icmp ne %struct.Curl_easy* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @CURLE_OK, align 4
  store i32 %13, i32* %2, align 4
  br label %199

14:                                               ; preds = %8
  %15 = load %struct.Curl_easy**, %struct.Curl_easy*** %3, align 8
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  store %struct.Curl_easy* %16, %struct.Curl_easy** %5, align 8
  %17 = load %struct.Curl_easy**, %struct.Curl_easy*** %3, align 8
  store %struct.Curl_easy* null, %struct.Curl_easy** %17, align 8
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %19 = call i32 @Curl_expire_clear(%struct.Curl_easy* %18)
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 10
  %22 = load %struct.Curl_multi*, %struct.Curl_multi** %21, align 8
  store %struct.Curl_multi* %22, %struct.Curl_multi** %4, align 8
  %23 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %24 = icmp ne %struct.Curl_multi* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %27 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %26, i32 0, i32 10
  %28 = load %struct.Curl_multi*, %struct.Curl_multi** %27, align 8
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %30 = call i32 @curl_multi_remove_handle(%struct.Curl_multi* %28, %struct.Curl_easy* %29)
  br label %31

31:                                               ; preds = %25, %14
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %33 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %32, i32 0, i32 9
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %38 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %37, i32 0, i32 9
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @curl_multi_cleanup(i32* %39)
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %42 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %41, i32 0, i32 9
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %45 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 8
  %47 = call i32 @Curl_llist_destroy(i32* %46, i32* null)
  %48 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %49 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %48, i32 0, i32 8
  store i64 0, i64* %49, align 8
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %51 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %43
  %56 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %57 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 6
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %58, align 8
  %60 = call i32 @free(%struct.Curl_easy* %59)
  br label %61

61:                                               ; preds = %55, %43
  %62 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %63 = call i32 @Curl_free_request_state(%struct.Curl_easy* %62)
  %64 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %65 = call i32 @Curl_ssl_close_all(%struct.Curl_easy* %64)
  %66 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %67 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @Curl_safefree(i32* %69)
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %72 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @Curl_safefree(i32* %74)
  %76 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %77 = call i32 @Curl_ssl_free_certinfo(%struct.Curl_easy* %76)
  %78 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %79 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load %struct.Curl_easy*, %struct.Curl_easy** %80, align 8
  %82 = call i32 @free(%struct.Curl_easy* %81)
  %83 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %84 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  store %struct.Curl_easy* null, %struct.Curl_easy** %85, align 8
  %86 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %87 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %61
  %92 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %93 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @Curl_safefree(i32* %95)
  %97 = load i64, i64* @FALSE, align 8
  %98 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %99 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  store i64 %97, i64* %100, align 8
  br label %101

101:                                              ; preds = %91, %61
  %102 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %103 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  %105 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %106 = call i32 @up_free(%struct.Curl_easy* %105)
  %107 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %108 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @Curl_safefree(i32* %110)
  %112 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %113 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @Curl_safefree(i32* %115)
  %117 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %118 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @Curl_safefree(i32* %120)
  %122 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %123 = load i32, i32* @TRUE, align 4
  %124 = call i32 @Curl_flush_cookies(%struct.Curl_easy* %122, i32 %123)
  %125 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %126 = call i32 @Curl_http_auth_cleanup_digest(%struct.Curl_easy* %125)
  %127 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %128 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @Curl_safefree(i32* %130)
  %132 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %133 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @Curl_safefree(i32* %135)
  %137 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %138 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @Curl_resolver_cleanup(i32 %140)
  %142 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %143 = call i32 @Curl_http2_cleanup_dependencies(%struct.Curl_easy* %142)
  %144 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %145 = call i32 @Curl_convert_close(%struct.Curl_easy* %144)
  %146 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %147 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %146, i32 0, i32 2
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = icmp ne %struct.TYPE_14__* %148, null
  br i1 %149, label %150, label %164

150:                                              ; preds = %101
  %151 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %152 = load i32, i32* @CURL_LOCK_DATA_SHARE, align 4
  %153 = load i32, i32* @CURL_LOCK_ACCESS_SINGLE, align 4
  %154 = call i32 @Curl_share_lock(%struct.Curl_easy* %151, i32 %152, i32 %153)
  %155 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %156 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %155, i32 0, i32 2
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %158, align 4
  %161 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %162 = load i32, i32* @CURL_LOCK_DATA_SHARE, align 4
  %163 = call i32 @Curl_share_unlock(%struct.Curl_easy* %161, i32 %162)
  br label %164

164:                                              ; preds = %150, %101
  %165 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %166 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load %struct.Curl_easy*, %struct.Curl_easy** %172, align 8
  %174 = call i32 @free(%struct.Curl_easy* %173)
  %175 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %176 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i64 1
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = load %struct.Curl_easy*, %struct.Curl_easy** %182, align 8
  %184 = call i32 @free(%struct.Curl_easy* %183)
  %185 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %186 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @curl_slist_free_all(i32 %189)
  %191 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %192 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %191, i32 0, i32 0
  %193 = call i32 @Curl_wildcard_dtor(i32* %192)
  %194 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %195 = call i32 @Curl_freeset(%struct.Curl_easy* %194)
  %196 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %197 = call i32 @free(%struct.Curl_easy* %196)
  %198 = load i32, i32* @CURLE_OK, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %164, %12
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @Curl_expire_clear(%struct.Curl_easy*) #1

declare dso_local i32 @curl_multi_remove_handle(%struct.Curl_multi*, %struct.Curl_easy*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @Curl_llist_destroy(i32*, i32*) #1

declare dso_local i32 @free(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_free_request_state(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_ssl_close_all(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_safefree(i32*) #1

declare dso_local i32 @Curl_ssl_free_certinfo(%struct.Curl_easy*) #1

declare dso_local i32 @up_free(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_flush_cookies(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_http_auth_cleanup_digest(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_resolver_cleanup(i32) #1

declare dso_local i32 @Curl_http2_cleanup_dependencies(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_convert_close(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_share_lock(%struct.Curl_easy*, i32, i32) #1

declare dso_local i32 @Curl_share_unlock(%struct.Curl_easy*, i32) #1

declare dso_local i32 @curl_slist_free_all(i32) #1

declare dso_local i32 @Curl_wildcard_dtor(i32*) #1

declare dso_local i32 @Curl_freeset(%struct.Curl_easy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
