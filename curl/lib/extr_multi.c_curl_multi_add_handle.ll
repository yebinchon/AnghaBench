; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_add_handle.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_add_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { i32, i32, i32, %struct.Curl_easy*, %struct.Curl_easy*, i32, %struct.TYPE_12__, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.Curl_easy = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.Curl_multi*, %struct.Curl_easy*, %struct.Curl_easy*, i32*, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32, i32, i32, i64* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_8__ = type { i64, i32* }

@CURLM_BAD_HANDLE = common dso_local global i32 0, align 4
@CURLM_BAD_EASY_HANDLE = common dso_local global i32 0, align 4
@CURLM_ADDED_ALREADY = common dso_local global i32 0, align 4
@CURLM_RECURSIVE_API_CALL = common dso_local global i32 0, align 4
@CURLM_STATE_INIT = common dso_local global i32 0, align 4
@HCACHE_NONE = common dso_local global i64 0, align 8
@HCACHE_MULTI = common dso_local global i64 0, align 8
@CURL_LOCK_DATA_CONNECT = common dso_local global i32 0, align 4
@EXPIRE_RUN_NOW = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_PSL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_multi_add_handle(%struct.Curl_multi* %0, %struct.Curl_easy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_multi*, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %4, align 8
  store %struct.Curl_easy* %1, %struct.Curl_easy** %5, align 8
  %7 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %8 = call i32 @GOOD_MULTI_HANDLE(%struct.Curl_multi* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @CURLM_BAD_HANDLE, align 4
  store i32 %11, i32* %3, align 4
  br label %188

12:                                               ; preds = %2
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %14 = call i32 @GOOD_EASY_HANDLE(%struct.Curl_easy* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @CURLM_BAD_EASY_HANDLE, align 4
  store i32 %17, i32* %3, align 4
  br label %188

18:                                               ; preds = %12
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %20 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %19, i32 0, i32 2
  %21 = load %struct.Curl_multi*, %struct.Curl_multi** %20, align 8
  %22 = icmp ne %struct.Curl_multi* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @CURLM_ADDED_ALREADY, align 4
  store i32 %24, i32* %3, align 4
  br label %188

25:                                               ; preds = %18
  %26 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %27 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @CURLM_RECURSIVE_API_CALL, align 4
  store i32 %31, i32* %3, align 4
  br label %188

32:                                               ; preds = %25
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %34 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = call i32 @Curl_llist_init(i32* %35, i32* null)
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %38 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %44 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %32
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %50 = load i32, i32* @CURLM_STATE_INIT, align 4
  %51 = call i32 @multistate(%struct.Curl_easy* %49, i32 %50)
  %52 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %53 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %59 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @HCACHE_NONE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %57, %48
  %65 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %66 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %65, i32 0, i32 7
  %67 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %68 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i32* %66, i32** %69, align 8
  %70 = load i64, i64* @HCACHE_MULTI, align 8
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %72 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  br label %74

74:                                               ; preds = %64, %57
  %75 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %76 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %75, i32 0, i32 6
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = icmp ne %struct.TYPE_9__* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %81 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %80, i32 0, i32 6
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CURL_LOCK_DATA_CONNECT, align 4
  %86 = shl i32 1, %85
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  %90 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %91 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %90, i32 0, i32 6
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %95 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %96, align 8
  br label %103

97:                                               ; preds = %79, %74
  %98 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %99 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %98, i32 0, i32 6
  %100 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %101 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  store %struct.TYPE_12__* %99, %struct.TYPE_12__** %102, align 8
  br label %103

103:                                              ; preds = %97, %89
  %104 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %105 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %104, i32 0, i32 4
  store %struct.Curl_easy* null, %struct.Curl_easy** %105, align 8
  %106 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %107 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %106, i32 0, i32 3
  %108 = load %struct.Curl_easy*, %struct.Curl_easy** %107, align 8
  %109 = icmp ne %struct.Curl_easy* %108, null
  br i1 %109, label %110, label %123

110:                                              ; preds = %103
  %111 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %112 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %111, i32 0, i32 4
  %113 = load %struct.Curl_easy*, %struct.Curl_easy** %112, align 8
  store %struct.Curl_easy* %113, %struct.Curl_easy** %6, align 8
  %114 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %115 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %116 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %115, i32 0, i32 4
  store %struct.Curl_easy* %114, %struct.Curl_easy** %116, align 8
  %117 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %118 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %119 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %118, i32 0, i32 3
  store %struct.Curl_easy* %117, %struct.Curl_easy** %119, align 8
  %120 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %121 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %122 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %121, i32 0, i32 4
  store %struct.Curl_easy* %120, %struct.Curl_easy** %122, align 8
  br label %131

123:                                              ; preds = %103
  %124 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %125 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %124, i32 0, i32 3
  store %struct.Curl_easy* null, %struct.Curl_easy** %125, align 8
  %126 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %127 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %128 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %127, i32 0, i32 3
  store %struct.Curl_easy* %126, %struct.Curl_easy** %128, align 8
  %129 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %130 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %129, i32 0, i32 4
  store %struct.Curl_easy* %126, %struct.Curl_easy** %130, align 8
  br label %131

131:                                              ; preds = %123, %110
  %132 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %133 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %134 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %133, i32 0, i32 2
  store %struct.Curl_multi* %132, %struct.Curl_multi** %134, align 8
  %135 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %136 = load i32, i32* @EXPIRE_RUN_NOW, align 4
  %137 = call i32 @Curl_expire(%struct.Curl_easy* %135, i32 0, i32 %136)
  %138 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %139 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  %142 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %143 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %147 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %146, i32 0, i32 0
  %148 = call i32 @memset(i32* %147, i32 0, i32 4)
  %149 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %150 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %154 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  store i32 %152, i32* %160, align 4
  %161 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %162 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %166 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  store i32 %164, i32* %172, align 4
  %173 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %174 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %178 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  store i32 %176, i32* %184, align 4
  %185 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %186 = call i32 @Curl_update_timer(%struct.Curl_multi* %185)
  %187 = load i32, i32* @CURLM_OK, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %131, %30, %23, %16, %10
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @GOOD_MULTI_HANDLE(%struct.Curl_multi*) #1

declare dso_local i32 @GOOD_EASY_HANDLE(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_llist_init(i32*, i32*) #1

declare dso_local i32 @multistate(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_expire(%struct.Curl_easy*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @Curl_update_timer(%struct.Curl_multi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
