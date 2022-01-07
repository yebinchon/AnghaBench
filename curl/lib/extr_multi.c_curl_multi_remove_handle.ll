; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_remove_handle.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_remove_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_14__, i32, %struct.TYPE_14__, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.curl_llist_element* }
%struct.curl_llist_element = type { %struct.Curl_message*, %struct.curl_llist_element* }
%struct.Curl_message = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.Curl_easy* }
%struct.Curl_easy = type { i64, %struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32*, %struct.TYPE_13__*, %struct.TYPE_9__, i32, %struct.TYPE_8__, %struct.curl_llist_element, i32 }
%struct.TYPE_13__ = type { %struct.Curl_easy* }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i64, i32* }

@CURLM_BAD_HANDLE = common dso_local global i32 0, align 4
@CURLM_BAD_EASY_HANDLE = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i32 0, align 4
@CURLM_RECURSIVE_API_CALL = common dso_local global i32 0, align 4
@CURLM_STATE_COMPLETED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CURLM_STATE_DO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Removed with partial response\00", align 1
@HCACHE_MULTI = common dso_local global i64 0, align 8
@HCACHE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_multi_remove_handle(%struct.Curl_multi* %0, %struct.Curl_easy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_multi*, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.curl_llist_element*, align 8
  %10 = alloca %struct.Curl_message*, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %4, align 8
  store %struct.Curl_easy* %1, %struct.Curl_easy** %5, align 8
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  store %struct.Curl_easy* %11, %struct.Curl_easy** %6, align 8
  %12 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %13 = call i32 @GOOD_MULTI_HANDLE(%struct.Curl_multi* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @CURLM_BAD_HANDLE, align 4
  store i32 %16, i32* %3, align 4
  br label %251

17:                                               ; preds = %2
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %19 = call i32 @GOOD_EASY_HANDLE(%struct.Curl_easy* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @CURLM_BAD_EASY_HANDLE, align 4
  store i32 %22, i32* %3, align 4
  br label %251

23:                                               ; preds = %17
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @CURLM_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %251

30:                                               ; preds = %23
  %31 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %32 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @CURLM_RECURSIVE_API_CALL, align 4
  store i32 %36, i32* %3, align 4
  br label %251

37:                                               ; preds = %30
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %39 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CURLM_STATE_COMPLETED, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @TRUE, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @FALSE, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %7, align 4
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %50 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %49, i32 0, i32 5
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = icmp ne %struct.TYPE_13__* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %55 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %54, i32 0, i32 5
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load %struct.Curl_easy*, %struct.Curl_easy** %57, align 8
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %60 = icmp eq %struct.Curl_easy* %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @TRUE, align 4
  br label %65

63:                                               ; preds = %53, %47
  %64 = load i32, i32* @FALSE, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %71 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %76 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %75, i32 0, i32 5
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = icmp ne %struct.TYPE_13__* %77, null
  br i1 %78, label %79, label %102

79:                                               ; preds = %74
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %81 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CURLM_STATE_DO, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %79
  %86 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %87 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CURLM_STATE_COMPLETED, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %93 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %94 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %93, i32 0, i32 5
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  store %struct.Curl_easy* %92, %struct.Curl_easy** %96, align 8
  %97 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %98 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %97, i32 0, i32 5
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = call i32 @streamclose(%struct.TYPE_13__* %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @TRUE, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %91, %85, %79, %74
  %103 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %104 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %103, i32 0, i32 5
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = icmp ne %struct.TYPE_13__* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %112 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %113 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @multi_done(%struct.Curl_easy* %111, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %110, %107
  br label %118

118:                                              ; preds = %117, %102
  %119 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %120 = call i32 @Curl_expire_clear(%struct.Curl_easy* %119)
  %121 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %122 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %121, i32 0, i32 9
  %123 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %122, i32 0, i32 0
  %124 = load %struct.Curl_message*, %struct.Curl_message** %123, align 8
  %125 = icmp ne %struct.Curl_message* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %118
  %127 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %128 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %127, i32 0, i32 5
  %129 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %130 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %129, i32 0, i32 9
  %131 = call i32 @Curl_llist_remove(%struct.TYPE_14__* %128, %struct.curl_llist_element* %130, i32* null)
  br label %132

132:                                              ; preds = %126, %118
  %133 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %134 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @HCACHE_MULTI, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %141 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %140, i32 0, i32 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store i32* null, i32** %142, align 8
  %143 = load i64, i64* @HCACHE_NONE, align 8
  %144 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %145 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %144, i32 0, i32 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i64 %143, i64* %146, align 8
  br label %147

147:                                              ; preds = %139, %132
  %148 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %149 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %148, i32 0, i32 7
  %150 = call i32 @Curl_wildcard_dtor(i32* %149)
  %151 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %152 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = call i32 @Curl_llist_destroy(i32* %153, i32* null)
  %155 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %156 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %155, i32 0, i32 6
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  store i32* null, i32** %157, align 8
  %158 = load i64, i64* @CURLM_STATE_COMPLETED, align 8
  %159 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %160 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %162 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %163 = call i32 @singlesocket(%struct.Curl_multi* %161, %struct.Curl_easy* %162)
  %164 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %165 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %164, i32 0, i32 5
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = icmp ne %struct.TYPE_13__* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %147
  %169 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %170 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %169, i32 0, i32 5
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  store %struct.Curl_easy* null, %struct.Curl_easy** %172, align 8
  %173 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %174 = call i32 @detach_connnection(%struct.Curl_easy* %173)
  br label %175

175:                                              ; preds = %168, %147
  %176 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %177 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %176, i32 0, i32 3
  store i32* null, i32** %177, align 8
  %178 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %179 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load %struct.curl_llist_element*, %struct.curl_llist_element** %180, align 8
  store %struct.curl_llist_element* %181, %struct.curl_llist_element** %9, align 8
  br label %182

182:                                              ; preds = %201, %175
  %183 = load %struct.curl_llist_element*, %struct.curl_llist_element** %9, align 8
  %184 = icmp ne %struct.curl_llist_element* %183, null
  br i1 %184, label %185, label %205

185:                                              ; preds = %182
  %186 = load %struct.curl_llist_element*, %struct.curl_llist_element** %9, align 8
  %187 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %186, i32 0, i32 0
  %188 = load %struct.Curl_message*, %struct.Curl_message** %187, align 8
  store %struct.Curl_message* %188, %struct.Curl_message** %10, align 8
  %189 = load %struct.Curl_message*, %struct.Curl_message** %10, align 8
  %190 = getelementptr inbounds %struct.Curl_message, %struct.Curl_message* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load %struct.Curl_easy*, %struct.Curl_easy** %191, align 8
  %193 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %194 = icmp eq %struct.Curl_easy* %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %185
  %196 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %197 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %196, i32 0, i32 3
  %198 = load %struct.curl_llist_element*, %struct.curl_llist_element** %9, align 8
  %199 = call i32 @Curl_llist_remove(%struct.TYPE_14__* %197, %struct.curl_llist_element* %198, i32* null)
  br label %205

200:                                              ; preds = %185
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.curl_llist_element*, %struct.curl_llist_element** %9, align 8
  %203 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %202, i32 0, i32 1
  %204 = load %struct.curl_llist_element*, %struct.curl_llist_element** %203, align 8
  store %struct.curl_llist_element* %204, %struct.curl_llist_element** %9, align 8
  br label %182

205:                                              ; preds = %195, %182
  %206 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %207 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %206, i32 0, i32 1
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = icmp ne %struct.TYPE_12__* %208, null
  br i1 %209, label %210, label %218

210:                                              ; preds = %205
  %211 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %212 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %211, i32 0, i32 2
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %215 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %214, i32 0, i32 1
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  store %struct.TYPE_11__* %213, %struct.TYPE_11__** %217, align 8
  br label %224

218:                                              ; preds = %205
  %219 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %220 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %219, i32 0, i32 2
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %223 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %222, i32 0, i32 2
  store %struct.TYPE_11__* %221, %struct.TYPE_11__** %223, align 8
  br label %224

224:                                              ; preds = %218, %210
  %225 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %226 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %225, i32 0, i32 2
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = icmp ne %struct.TYPE_11__* %227, null
  br i1 %228, label %229, label %237

229:                                              ; preds = %224
  %230 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %231 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %230, i32 0, i32 1
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %234 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %233, i32 0, i32 2
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  store %struct.TYPE_12__* %232, %struct.TYPE_12__** %236, align 8
  br label %243

237:                                              ; preds = %224
  %238 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %239 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %238, i32 0, i32 1
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %239, align 8
  %241 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %242 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %241, i32 0, i32 1
  store %struct.TYPE_12__* %240, %struct.TYPE_12__** %242, align 8
  br label %243

243:                                              ; preds = %237, %229
  %244 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %245 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %245, align 8
  %248 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %249 = call i32 @Curl_update_timer(%struct.Curl_multi* %248)
  %250 = load i32, i32* @CURLM_OK, align 4
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %243, %35, %28, %21, %15
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i32 @GOOD_MULTI_HANDLE(%struct.Curl_multi*) #1

declare dso_local i32 @GOOD_EASY_HANDLE(%struct.Curl_easy*) #1

declare dso_local i32 @streamclose(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @multi_done(%struct.Curl_easy*, i32, i32) #1

declare dso_local i32 @Curl_expire_clear(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_llist_remove(%struct.TYPE_14__*, %struct.curl_llist_element*, i32*) #1

declare dso_local i32 @Curl_wildcard_dtor(i32*) #1

declare dso_local i32 @Curl_llist_destroy(i32*, i32*) #1

declare dso_local i32 @singlesocket(%struct.Curl_multi*, %struct.Curl_easy*) #1

declare dso_local i32 @detach_connnection(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_update_timer(%struct.Curl_multi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
