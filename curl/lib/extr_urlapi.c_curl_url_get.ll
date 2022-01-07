; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_urlapi.c_curl_url_get.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_urlapi.c_curl_url_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.Curl_handler = type { i8*, i32 }

@CURLUE_UNKNOWN_PART = common dso_local global i32 0, align 4
@CURLU_URLDECODE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CURLUE_BAD_HANDLE = common dso_local global i32 0, align 4
@CURLUE_BAD_PARTPOINTER = common dso_local global i32 0, align 4
@CURLUE_NO_SCHEME = common dso_local global i32 0, align 4
@CURLUE_NO_USER = common dso_local global i32 0, align 4
@CURLUE_NO_PASSWORD = common dso_local global i32 0, align 4
@CURLUE_NO_OPTIONS = common dso_local global i32 0, align 4
@CURLUE_NO_HOST = common dso_local global i32 0, align 4
@CURLUE_NO_PORT = common dso_local global i32 0, align 4
@CURLU_DEFAULT_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@CURLU_NO_DEFAULT_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@CURLUE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURLUE_NO_QUERY = common dso_local global i32 0, align 4
@CURLUE_NO_FRAGMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"file://%s%s%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CURLU_DEFAULT_SCHEME = common dso_local global i32 0, align 4
@DEFAULT_SCHEME = common dso_local global i64 0, align 8
@PROTOPT_URLOPTIONS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"%%25%s]\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%s://%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@CURLUE_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CURLUE_URLDECODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_url_get(%struct.TYPE_3__* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [7 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.Curl_handler*, align 8
  %16 = alloca %struct.Curl_handler*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.Curl_handler*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %29 = load i32, i32* @CURLUE_UNKNOWN_PART, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @CURLU_URLDECODE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* @CURLUE_BAD_HANDLE, align 4
  store i32 %41, i32* %5, align 4
  br label %575

42:                                               ; preds = %4
  %43 = load i8**, i8*** %8, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @CURLUE_BAD_PARTPOINTER, align 4
  store i32 %46, i32* %5, align 4
  br label %575

47:                                               ; preds = %42
  %48 = load i8**, i8*** %8, align 8
  store i8* null, i8** %48, align 8
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %517 [
    i32 131, label %50
    i32 129, label %56
    i32 135, label %61
    i32 136, label %66
    i32 137, label %71
    i32 128, label %76
    i32 133, label %80
    i32 134, label %145
    i32 132, label %163
    i32 138, label %169
    i32 130, label %174
  ]

50:                                               ; preds = %47
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %10, align 8
  %54 = load i32, i32* @CURLUE_NO_SCHEME, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %13, align 4
  br label %518

56:                                               ; preds = %47
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %10, align 8
  %60 = load i32, i32* @CURLUE_NO_USER, align 4
  store i32 %60, i32* %11, align 4
  br label %518

61:                                               ; preds = %47
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %10, align 8
  %65 = load i32, i32* @CURLUE_NO_PASSWORD, align 4
  store i32 %65, i32* %11, align 4
  br label %518

66:                                               ; preds = %47
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %10, align 8
  %70 = load i32, i32* @CURLUE_NO_OPTIONS, align 4
  store i32 %70, i32* %11, align 4
  br label %518

71:                                               ; preds = %47
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %10, align 8
  %75 = load i32, i32* @CURLUE_NO_HOST, align 4
  store i32 %75, i32* %11, align 4
  br label %518

76:                                               ; preds = %47
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %10, align 8
  br label %518

80:                                               ; preds = %47
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 6
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %10, align 8
  %84 = load i32, i32* @CURLUE_NO_PORT, align 4
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %13, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %113, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @CURLU_DEFAULT_PORT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call %struct.Curl_handler* @Curl_builtin_scheme(i8* %101)
  store %struct.Curl_handler* %102, %struct.Curl_handler** %15, align 8
  %103 = load %struct.Curl_handler*, %struct.Curl_handler** %15, align 8
  %104 = icmp ne %struct.Curl_handler* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %107 = load %struct.Curl_handler*, %struct.Curl_handler** %15, align 8
  %108 = getelementptr inbounds %struct.Curl_handler, %struct.Curl_handler* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @msnprintf(i8* %106, i32 7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %109)
  %111 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  store i8* %111, i8** %10, align 8
  br label %112

112:                                              ; preds = %105, %98
  br label %144

113:                                              ; preds = %93, %88, %80
  %114 = load i8*, i8** %10, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %143

116:                                              ; preds = %113
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %143

121:                                              ; preds = %116
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call %struct.Curl_handler* @Curl_builtin_scheme(i8* %124)
  store %struct.Curl_handler* %125, %struct.Curl_handler** %16, align 8
  %126 = load %struct.Curl_handler*, %struct.Curl_handler** %16, align 8
  %127 = icmp ne %struct.Curl_handler* %126, null
  br i1 %127, label %128, label %142

128:                                              ; preds = %121
  %129 = load %struct.Curl_handler*, %struct.Curl_handler** %16, align 8
  %130 = getelementptr inbounds %struct.Curl_handler, %struct.Curl_handler* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 7
  %134 = load i8*, i8** %133, align 8
  %135 = icmp eq i8* %131, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @CURLU_NO_DEFAULT_PORT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i8* null, i8** %10, align 8
  br label %142

142:                                              ; preds = %141, %136, %128, %121
  br label %143

143:                                              ; preds = %142, %116, %113
  br label %144

144:                                              ; preds = %143, %112
  br label %518

145:                                              ; preds = %47
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 8
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %10, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %162, label %151

151:                                              ; preds = %145
  %152 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 8
  store i8* %152, i8** %154, align 8
  store i8* %152, i8** %10, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 8
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %151
  %160 = load i32, i32* @CURLUE_OUT_OF_MEMORY, align 4
  store i32 %160, i32* %5, align 4
  br label %575

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161, %145
  br label %518

163:                                              ; preds = %47
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 9
  %166 = load i8*, i8** %165, align 8
  store i8* %166, i8** %10, align 8
  %167 = load i32, i32* @CURLUE_NO_QUERY, align 4
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %13, align 4
  store i32 %168, i32* %14, align 4
  br label %518

169:                                              ; preds = %47
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 10
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** %10, align 8
  %173 = load i32, i32* @CURLUE_NO_FRAGMENT, align 4
  store i32 %173, i32* %11, align 4
  br label %518

174:                                              ; preds = %47
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  store i8* %177, i8** %19, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 6
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %213

185:                                              ; preds = %174
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @strcasecompare(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %213

191:                                              ; preds = %185
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 8
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 10
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 10
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %191
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 10
  %208 = load i8*, i8** %207, align 8
  br label %210

209:                                              ; preds = %191
  br label %210

210:                                              ; preds = %209, %205
  %211 = phi i8* [ %208, %205 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %209 ]
  %212 = call i8* (i8*, i8*, i8*, i8*, ...) @aprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %194, i8* %200, i8* %211)
  store i8* %212, i8** %17, align 8
  br label %508

213:                                              ; preds = %185, %174
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 4
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %220, label %218

218:                                              ; preds = %213
  %219 = load i32, i32* @CURLUE_NO_HOST, align 4
  store i32 %219, i32* %5, align 4
  br label %575

220:                                              ; preds = %213
  store %struct.Curl_handler* null, %struct.Curl_handler** %22, align 8
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  store i8* %228, i8** %18, align 8
  br label %240

229:                                              ; preds = %220
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* @CURLU_DEFAULT_SCHEME, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load i64, i64* @DEFAULT_SCHEME, align 8
  %236 = inttoptr i64 %235 to i8*
  store i8* %236, i8** %18, align 8
  br label %239

237:                                              ; preds = %229
  %238 = load i32, i32* @CURLUE_NO_SCHEME, align 4
  store i32 %238, i32* %5, align 4
  br label %575

239:                                              ; preds = %234
  br label %240

240:                                              ; preds = %239, %225
  %241 = load i8*, i8** %18, align 8
  %242 = call %struct.Curl_handler* @Curl_builtin_scheme(i8* %241)
  store %struct.Curl_handler* %242, %struct.Curl_handler** %22, align 8
  %243 = load i8*, i8** %20, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %261, label %245

245:                                              ; preds = %240
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @CURLU_DEFAULT_PORT, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %245
  %251 = load %struct.Curl_handler*, %struct.Curl_handler** %22, align 8
  %252 = icmp ne %struct.Curl_handler* %251, null
  br i1 %252, label %253, label %260

253:                                              ; preds = %250
  %254 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %255 = load %struct.Curl_handler*, %struct.Curl_handler** %22, align 8
  %256 = getelementptr inbounds %struct.Curl_handler, %struct.Curl_handler* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @msnprintf(i8* %254, i32 7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %257)
  %259 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  store i8* %259, i8** %20, align 8
  br label %260

260:                                              ; preds = %253, %250
  br label %283

261:                                              ; preds = %245, %240
  %262 = load i8*, i8** %20, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %282

264:                                              ; preds = %261
  %265 = load %struct.Curl_handler*, %struct.Curl_handler** %22, align 8
  %266 = icmp ne %struct.Curl_handler* %265, null
  br i1 %266, label %267, label %281

267:                                              ; preds = %264
  %268 = load %struct.Curl_handler*, %struct.Curl_handler** %22, align 8
  %269 = getelementptr inbounds %struct.Curl_handler, %struct.Curl_handler* %268, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 7
  %273 = load i8*, i8** %272, align 8
  %274 = icmp eq i8* %270, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %267
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* @CURLU_NO_DEFAULT_PORT, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %275
  store i8* null, i8** %20, align 8
  br label %281

281:                                              ; preds = %280, %275, %267, %264
  br label %282

282:                                              ; preds = %281, %261
  br label %283

283:                                              ; preds = %282, %260
  %284 = load %struct.Curl_handler*, %struct.Curl_handler** %22, align 8
  %285 = icmp ne %struct.Curl_handler* %284, null
  br i1 %285, label %286, label %294

286:                                              ; preds = %283
  %287 = load %struct.Curl_handler*, %struct.Curl_handler** %22, align 8
  %288 = getelementptr inbounds %struct.Curl_handler, %struct.Curl_handler* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @PROTOPT_URLOPTIONS, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %286
  store i8* null, i8** %19, align 8
  br label %294

294:                                              ; preds = %293, %286, %283
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 4
  %297 = load i8*, i8** %296, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 0
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %300, 91
  br i1 %301, label %302, label %347

302:                                              ; preds = %294
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 5
  %305 = load i8*, i8** %304, align 8
  %306 = icmp ne i8* %305, null
  br i1 %306, label %307, label %347

307:                                              ; preds = %302
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 4
  %310 = load i8*, i8** %309, align 8
  %311 = call i64 @strlen(i8* %310)
  store i64 %311, i64* %23, align 8
  %312 = load i64, i64* %23, align 8
  %313 = add i64 %312, 3
  %314 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 5
  %316 = load i8*, i8** %315, align 8
  %317 = call i64 @strlen(i8* %316)
  %318 = add i64 %313, %317
  %319 = add i64 %318, 1
  store i64 %319, i64* %24, align 8
  %320 = load i64, i64* %24, align 8
  %321 = call i8* @malloc(i64 %320)
  store i8* %321, i8** %21, align 8
  %322 = load i8*, i8** %21, align 8
  %323 = icmp ne i8* %322, null
  br i1 %323, label %326, label %324

324:                                              ; preds = %307
  %325 = load i32, i32* @CURLUE_OUT_OF_MEMORY, align 4
  store i32 %325, i32* %5, align 4
  br label %575

326:                                              ; preds = %307
  %327 = load i8*, i8** %21, align 8
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 4
  %330 = load i8*, i8** %329, align 8
  %331 = load i64, i64* %23, align 8
  %332 = sub i64 %331, 1
  %333 = call i32 @memcpy(i8* %327, i8* %330, i64 %332)
  %334 = load i8*, i8** %21, align 8
  %335 = load i64, i64* %23, align 8
  %336 = sub i64 %335, 1
  %337 = getelementptr inbounds i8, i8* %334, i64 %336
  %338 = load i64, i64* %24, align 8
  %339 = load i64, i64* %23, align 8
  %340 = sub i64 %338, %339
  %341 = add i64 %340, 1
  %342 = trunc i64 %341 to i32
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 5
  %345 = load i8*, i8** %344, align 8
  %346 = call i32 @msnprintf(i8* %337, i32 %342, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %345)
  br label %347

347:                                              ; preds = %326, %302, %294
  %348 = load i8*, i8** %18, align 8
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 1
  %351 = load i8*, i8** %350, align 8
  %352 = icmp ne i8* %351, null
  br i1 %352, label %353, label %357

353:                                              ; preds = %347
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 1
  %356 = load i8*, i8** %355, align 8
  br label %358

357:                                              ; preds = %347
  br label %358

358:                                              ; preds = %357, %353
  %359 = phi i8* [ %356, %353 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %357 ]
  %360 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 2
  %362 = load i8*, i8** %361, align 8
  %363 = icmp ne i8* %362, null
  %364 = zext i1 %363 to i64
  %365 = select i1 %363, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %366 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 2
  %368 = load i8*, i8** %367, align 8
  %369 = icmp ne i8* %368, null
  br i1 %369, label %370, label %374

370:                                              ; preds = %358
  %371 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 2
  %373 = load i8*, i8** %372, align 8
  br label %375

374:                                              ; preds = %358
  br label %375

375:                                              ; preds = %374, %370
  %376 = phi i8* [ %373, %370 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %374 ]
  %377 = load i8*, i8** %19, align 8
  %378 = icmp ne i8* %377, null
  %379 = zext i1 %378 to i64
  %380 = select i1 %378, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %381 = load i8*, i8** %19, align 8
  %382 = icmp ne i8* %381, null
  br i1 %382, label %383, label %385

383:                                              ; preds = %375
  %384 = load i8*, i8** %19, align 8
  br label %386

385:                                              ; preds = %375
  br label %386

386:                                              ; preds = %385, %383
  %387 = phi i8* [ %384, %383 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %385 ]
  %388 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i32 0, i32 1
  %390 = load i8*, i8** %389, align 8
  %391 = icmp ne i8* %390, null
  br i1 %391, label %400, label %392

392:                                              ; preds = %386
  %393 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 2
  %395 = load i8*, i8** %394, align 8
  %396 = icmp ne i8* %395, null
  br i1 %396, label %400, label %397

397:                                              ; preds = %392
  %398 = load i8*, i8** %19, align 8
  %399 = icmp ne i8* %398, null
  br label %400

400:                                              ; preds = %397, %392, %386
  %401 = phi i1 [ true, %392 ], [ true, %386 ], [ %399, %397 ]
  %402 = zext i1 %401 to i64
  %403 = select i1 %401, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %404 = load i8*, i8** %21, align 8
  %405 = icmp ne i8* %404, null
  br i1 %405, label %406, label %408

406:                                              ; preds = %400
  %407 = load i8*, i8** %21, align 8
  br label %412

408:                                              ; preds = %400
  %409 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 4
  %411 = load i8*, i8** %410, align 8
  br label %412

412:                                              ; preds = %408, %406
  %413 = phi i8* [ %407, %406 ], [ %411, %408 ]
  %414 = load i8*, i8** %20, align 8
  %415 = icmp ne i8* %414, null
  %416 = zext i1 %415 to i64
  %417 = select i1 %415, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %418 = load i8*, i8** %20, align 8
  %419 = icmp ne i8* %418, null
  br i1 %419, label %420, label %422

420:                                              ; preds = %412
  %421 = load i8*, i8** %20, align 8
  br label %423

422:                                              ; preds = %412
  br label %423

423:                                              ; preds = %422, %420
  %424 = phi i8* [ %421, %420 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %422 ]
  %425 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %425, i32 0, i32 8
  %427 = load i8*, i8** %426, align 8
  %428 = icmp ne i8* %427, null
  br i1 %428, label %429, label %437

429:                                              ; preds = %423
  %430 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %431 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %430, i32 0, i32 8
  %432 = load i8*, i8** %431, align 8
  %433 = getelementptr inbounds i8, i8* %432, i64 0
  %434 = load i8, i8* %433, align 1
  %435 = sext i8 %434 to i32
  %436 = icmp ne i32 %435, 47
  br label %437

437:                                              ; preds = %429, %423
  %438 = phi i1 [ false, %423 ], [ %436, %429 ]
  %439 = zext i1 %438 to i64
  %440 = select i1 %438, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %441 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %441, i32 0, i32 8
  %443 = load i8*, i8** %442, align 8
  %444 = icmp ne i8* %443, null
  br i1 %444, label %445, label %449

445:                                              ; preds = %437
  %446 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %447 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %446, i32 0, i32 8
  %448 = load i8*, i8** %447, align 8
  br label %450

449:                                              ; preds = %437
  br label %450

450:                                              ; preds = %449, %445
  %451 = phi i8* [ %448, %445 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %449 ]
  %452 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i32 0, i32 9
  %454 = load i8*, i8** %453, align 8
  %455 = icmp ne i8* %454, null
  br i1 %455, label %456, label %464

456:                                              ; preds = %450
  %457 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i32 0, i32 9
  %459 = load i8*, i8** %458, align 8
  %460 = getelementptr inbounds i8, i8* %459, i64 0
  %461 = load i8, i8* %460, align 1
  %462 = sext i8 %461 to i32
  %463 = icmp ne i32 %462, 0
  br label %464

464:                                              ; preds = %456, %450
  %465 = phi i1 [ false, %450 ], [ %463, %456 ]
  %466 = zext i1 %465 to i64
  %467 = select i1 %465, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %468 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %468, i32 0, i32 9
  %470 = load i8*, i8** %469, align 8
  %471 = icmp ne i8* %470, null
  br i1 %471, label %472, label %484

472:                                              ; preds = %464
  %473 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i32 0, i32 9
  %475 = load i8*, i8** %474, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 0
  %477 = load i8, i8* %476, align 1
  %478 = sext i8 %477 to i32
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %484

480:                                              ; preds = %472
  %481 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %482 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %481, i32 0, i32 9
  %483 = load i8*, i8** %482, align 8
  br label %485

484:                                              ; preds = %472, %464
  br label %485

485:                                              ; preds = %484, %480
  %486 = phi i8* [ %483, %480 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %484 ]
  %487 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i32 0, i32 10
  %489 = load i8*, i8** %488, align 8
  %490 = icmp ne i8* %489, null
  %491 = zext i1 %490 to i64
  %492 = select i1 %490, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %493 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %494 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %493, i32 0, i32 10
  %495 = load i8*, i8** %494, align 8
  %496 = icmp ne i8* %495, null
  br i1 %496, label %497, label %501

497:                                              ; preds = %485
  %498 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %499 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %498, i32 0, i32 10
  %500 = load i8*, i8** %499, align 8
  br label %502

501:                                              ; preds = %485
  br label %502

502:                                              ; preds = %501, %497
  %503 = phi i8* [ %500, %497 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %501 ]
  %504 = call i8* (i8*, i8*, i8*, i8*, ...) @aprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %348, i8* %359, i8* %365, i8* %376, i8* %380, i8* %387, i8* %403, i8* %413, i8* %417, i8* %424, i8* %440, i8* %451, i8* %467, i8* %486, i8* %492, i8* %503)
  store i8* %504, i8** %17, align 8
  %505 = load i8*, i8** %21, align 8
  %506 = call i32 @free(i8* %505)
  br label %507

507:                                              ; preds = %502
  br label %508

508:                                              ; preds = %507, %210
  %509 = load i8*, i8** %17, align 8
  %510 = icmp ne i8* %509, null
  br i1 %510, label %513, label %511

511:                                              ; preds = %508
  %512 = load i32, i32* @CURLUE_OUT_OF_MEMORY, align 4
  store i32 %512, i32* %5, align 4
  br label %575

513:                                              ; preds = %508
  %514 = load i8*, i8** %17, align 8
  %515 = load i8**, i8*** %8, align 8
  store i8* %514, i8** %515, align 8
  %516 = load i32, i32* @CURLUE_OK, align 4
  store i32 %516, i32* %5, align 4
  br label %575

517:                                              ; preds = %47
  store i8* null, i8** %10, align 8
  br label %518

518:                                              ; preds = %517, %169, %163, %162, %144, %76, %71, %66, %61, %56, %50
  %519 = load i8*, i8** %10, align 8
  %520 = icmp ne i8* %519, null
  br i1 %520, label %521, label %573

521:                                              ; preds = %518
  %522 = load i8*, i8** %10, align 8
  %523 = call i8* @strdup(i8* %522)
  %524 = load i8**, i8*** %8, align 8
  store i8* %523, i8** %524, align 8
  %525 = load i8**, i8*** %8, align 8
  %526 = load i8*, i8** %525, align 8
  %527 = icmp ne i8* %526, null
  br i1 %527, label %530, label %528

528:                                              ; preds = %521
  %529 = load i32, i32* @CURLUE_OUT_OF_MEMORY, align 4
  store i32 %529, i32* %5, align 4
  br label %575

530:                                              ; preds = %521
  %531 = load i32, i32* %14, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %552

533:                                              ; preds = %530
  %534 = load i8**, i8*** %8, align 8
  %535 = load i8*, i8** %534, align 8
  store i8* %535, i8** %25, align 8
  br label %536

536:                                              ; preds = %548, %533
  %537 = load i8*, i8** %25, align 8
  %538 = load i8, i8* %537, align 1
  %539 = icmp ne i8 %538, 0
  br i1 %539, label %540, label %551

540:                                              ; preds = %536
  %541 = load i8*, i8** %25, align 8
  %542 = load i8, i8* %541, align 1
  %543 = sext i8 %542 to i32
  %544 = icmp eq i32 %543, 43
  br i1 %544, label %545, label %547

545:                                              ; preds = %540
  %546 = load i8*, i8** %25, align 8
  store i8 32, i8* %546, align 1
  br label %547

547:                                              ; preds = %545, %540
  br label %548

548:                                              ; preds = %547
  %549 = load i8*, i8** %25, align 8
  %550 = getelementptr inbounds i8, i8* %549, i32 1
  store i8* %550, i8** %25, align 8
  br label %536

551:                                              ; preds = %536
  br label %552

552:                                              ; preds = %551, %530
  %553 = load i32, i32* %13, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %571

555:                                              ; preds = %552
  %556 = load i8**, i8*** %8, align 8
  %557 = load i8*, i8** %556, align 8
  %558 = load i32, i32* @TRUE, align 4
  %559 = call i64 @Curl_urldecode(i32* null, i8* %557, i32 0, i8** %26, i64* %27, i32 %558)
  store i64 %559, i64* %28, align 8
  %560 = load i8**, i8*** %8, align 8
  %561 = load i8*, i8** %560, align 8
  %562 = call i32 @free(i8* %561)
  %563 = load i64, i64* %28, align 8
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %568

565:                                              ; preds = %555
  %566 = load i8**, i8*** %8, align 8
  store i8* null, i8** %566, align 8
  %567 = load i32, i32* @CURLUE_URLDECODE, align 4
  store i32 %567, i32* %5, align 4
  br label %575

568:                                              ; preds = %555
  %569 = load i8*, i8** %26, align 8
  %570 = load i8**, i8*** %8, align 8
  store i8* %569, i8** %570, align 8
  br label %571

571:                                              ; preds = %568, %552
  %572 = load i32, i32* @CURLUE_OK, align 4
  store i32 %572, i32* %5, align 4
  br label %575

573:                                              ; preds = %518
  %574 = load i32, i32* %11, align 4
  store i32 %574, i32* %5, align 4
  br label %575

575:                                              ; preds = %573, %571, %565, %528, %513, %511, %324, %237, %218, %159, %45, %40
  %576 = load i32, i32* %5, align 4
  ret i32 %576
}

declare dso_local %struct.Curl_handler* @Curl_builtin_scheme(i8*) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcasecompare(i8*, i8*) #1

declare dso_local i8* @aprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @Curl_urldecode(i32*, i8*, i32, i8**, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
