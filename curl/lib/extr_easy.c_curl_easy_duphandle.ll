; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_easy_duphandle.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_easy_duphandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, %struct.TYPE_8__, %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i8*, i8*, i32*, i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8*, i32, i32*, i32*, i64 }
%struct.TYPE_8__ = type { i64*, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@HEADERSIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@STRING_SSL_ENGINE = common dso_local global i64 0, align 8
@CURLEASY_MAGIC_NUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Curl_easy* @curl_easy_duphandle(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.Curl_easy*, align 8
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  %5 = call %struct.Curl_easy* @calloc(i32 1, i32 136)
  store %struct.Curl_easy* %5, %struct.Curl_easy** %4, align 8
  %6 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %7 = icmp eq %struct.Curl_easy* null, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %219

9:                                                ; preds = %1
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  store i64 %13, i64* %16, align 8
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i8* @malloc(i64 %21)
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %24 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %27 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %9
  br label %219

32:                                               ; preds = %9
  %33 = load i64, i64* @HEADERSIZE, align 8
  %34 = call i8* @malloc(i64 %33)
  %35 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %36 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %39 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %219

44:                                               ; preds = %32
  %45 = load i64, i64* @HEADERSIZE, align 8
  %46 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %47 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 5
  store i64 %45, i64* %48, align 8
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %51 = call i64 @dupset(%struct.Curl_easy* %49, %struct.Curl_easy* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %219

54:                                               ; preds = %44
  %55 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %56 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  %58 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %59 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  %61 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %62 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %66 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %69 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %73 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %76 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %75, i32 0, i32 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = icmp ne %struct.TYPE_11__* %77, null
  br i1 %78, label %79, label %102

79:                                               ; preds = %54
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %81 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %82 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %81, i32 0, i32 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %87 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %86, i32 0, i32 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %90 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.TYPE_11__* @Curl_cookie_init(%struct.Curl_easy* %80, i32 %85, %struct.TYPE_11__* %88, i32 %92)
  %94 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %95 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %94, i32 0, i32 4
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %95, align 8
  %96 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %97 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %96, i32 0, i32 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = icmp ne %struct.TYPE_11__* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %79
  br label %219

101:                                              ; preds = %79
  br label %102

102:                                              ; preds = %101, %54
  %103 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %104 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %124

108:                                              ; preds = %102
  %109 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %110 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i32* @Curl_slist_duplicate(i32* %112)
  %114 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %115 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  store i32* %113, i32** %116, align 8
  %117 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %118 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %108
  br label %219

123:                                              ; preds = %108
  br label %124

124:                                              ; preds = %123, %102
  %125 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %126 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %150

130:                                              ; preds = %124
  %131 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %132 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @strdup(i8* %134)
  %136 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %137 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store i8* %135, i8** %138, align 8
  %139 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %140 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %130
  br label %219

145:                                              ; preds = %130
  %146 = load i8*, i8** @TRUE, align 8
  %147 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %148 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 4
  store i8* %146, i8** %149, align 8
  br label %150

150:                                              ; preds = %145, %124
  %151 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %152 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %176

156:                                              ; preds = %150
  %157 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %158 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i8* @strdup(i8* %160)
  %162 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %163 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  store i8* %161, i8** %164, align 8
  %165 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %166 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %156
  br label %219

171:                                              ; preds = %156
  %172 = load i8*, i8** @TRUE, align 8
  %173 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %174 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 3
  store i8* %172, i8** %175, align 8
  br label %176

176:                                              ; preds = %171, %150
  %177 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %178 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* @STRING_SSL_ENGINE, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %176
  %186 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %187 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %188 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = load i64, i64* @STRING_SSL_ENGINE, align 8
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @Curl_ssl_set_engine(%struct.Curl_easy* %186, i64 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %185
  br label %219

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %197, %176
  %199 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %200 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %201 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  %203 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %204 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @Curl_resolver_duphandle(%struct.Curl_easy* %199, i32* %202, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %198
  br label %219

210:                                              ; preds = %198
  %211 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %212 = call i32 @Curl_convert_setup(%struct.Curl_easy* %211)
  %213 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %214 = call i32 @Curl_initinfo(%struct.Curl_easy* %213)
  %215 = load i32, i32* @CURLEASY_MAGIC_NUMBER, align 4
  %216 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %217 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  %218 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  store %struct.Curl_easy* %218, %struct.Curl_easy** %2, align 8
  br label %256

219:                                              ; preds = %209, %196, %170, %144, %122, %100, %53, %43, %31, %8
  %220 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %221 = icmp ne %struct.Curl_easy* %220, null
  br i1 %221, label %222, label %255

222:                                              ; preds = %219
  %223 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %224 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = call i32 @curl_slist_free_all(i32* %226)
  %228 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %229 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 2
  store i32* null, i32** %230, align 8
  %231 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %232 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @Curl_safefree(i8* %234)
  %236 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %237 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @Curl_safefree(i8* %239)
  %241 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %242 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @Curl_safefree(i8* %244)
  %246 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %247 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @Curl_safefree(i8* %249)
  %251 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %252 = call i32 @Curl_freeset(%struct.Curl_easy* %251)
  %253 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %254 = call i32 @free(%struct.Curl_easy* %253)
  br label %255

255:                                              ; preds = %222, %219
  store %struct.Curl_easy* null, %struct.Curl_easy** %2, align 8
  br label %256

256:                                              ; preds = %255, %210
  %257 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  ret %struct.Curl_easy* %257
}

declare dso_local %struct.Curl_easy* @calloc(i32, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @dupset(%struct.Curl_easy*, %struct.Curl_easy*) #1

declare dso_local %struct.TYPE_11__* @Curl_cookie_init(%struct.Curl_easy*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32* @Curl_slist_duplicate(i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @Curl_ssl_set_engine(%struct.Curl_easy*, i64) #1

declare dso_local i64 @Curl_resolver_duphandle(%struct.Curl_easy*, i32*, i32) #1

declare dso_local i32 @Curl_convert_setup(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_initinfo(%struct.Curl_easy*) #1

declare dso_local i32 @curl_slist_free_all(i32*) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i32 @Curl_freeset(%struct.Curl_easy*) #1

declare dso_local i32 @free(%struct.Curl_easy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
