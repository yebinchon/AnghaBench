; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib643.c_once.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib643.c_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WriteThis = type { i8*, i8* }

@CURLE_OK = common dso_local global i32 0, align 4
@data = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_mime_init() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"curl_mime_addpart(1) failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"sendfile\00", align 1
@read_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"postit2.c\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"sendfile alternative\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"file name 2\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"curl_mime_xxx(1) = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"curl_mime_addpart(2) failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"callbackdata\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"curl_mime_xxx(2) = %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"curl_mime_addpart(3) failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@CURL_ZERO_TERMINATED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"curl_mime_xxx(3) = %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"curl_mime_addpart(4) failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"submit\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"curl_mime_xxx(4) = %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"curl_mime_addpart(5) failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"somename\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"somefile.txt\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"blah blah\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"curl_mime_xxx(5) = %s\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_MIMEPOST = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @once(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.WriteThis, align 8
  %11 = alloca %struct.WriteThis, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @CURLE_OK, align 4
  store i32 %13, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* inttoptr (i64 -1 to i8*), i8** %12, align 8
  %14 = load i8*, i8** @data, align 8
  %15 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %10, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** @data, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %10, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = call i32* (...) @curl_easy_init()
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (...) @curl_global_cleanup()
  %28 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %28, i32* %3, align 4
  br label %255

29:                                               ; preds = %2
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @curl_mime_init(i32* %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @curl_easy_cleanup(i32* %37)
  %39 = call i32 (...) @curl_global_cleanup()
  %40 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %40, i32* %3, align 4
  br label %255

41:                                               ; preds = %29
  %42 = load i32*, i32** %8, align 8
  %43 = call i32* @curl_mime_addpart(i32* %42)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @curl_mime_free(i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @curl_easy_cleanup(i32* %51)
  %53 = call i32 (...) @curl_global_cleanup()
  %54 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %54, i32* %3, align 4
  br label %255

55:                                               ; preds = %41
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @curl_mime_name(i32* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %9, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* @read_callback, align 4
  %67 = call i32 @curl_mime_data_cb(i32* %64, i8* %65, i32 %66, i32* null, i32* null, %struct.WriteThis* %10)
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @curl_mime_filename(i32* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %71, %68
  br label %92

75:                                               ; preds = %55
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @curl_mime_name(i32* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %9, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* @read_callback, align 4
  %84 = call i32 @curl_mime_data_cb(i32* %81, i8* %82, i32 %83, i32* null, i32* null, %struct.WriteThis* %10)
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @curl_mime_filename(i32* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = call i8* @curl_easy_strerror(i32 %96)
  %98 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i8*, i8** @data, align 8
  %101 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %11, i32 0, i32 1
  store i8* %100, i8** %101, align 8
  %102 = load i8*, i8** @data, align 8
  %103 = call i64 @strlen(i8* %102)
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %12, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %11, i32 0, i32 0
  store i8* %105, i8** %106, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = call i32* @curl_mime_addpart(i32* %107)
  store i32* %108, i32** %9, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %99
  %112 = load i32, i32* @stderr, align 4
  %113 = call i32 @fprintf(i32 %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @curl_mime_free(i32* %114)
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @curl_easy_cleanup(i32* %116)
  %118 = call i32 (...) @curl_global_cleanup()
  %119 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %119, i32* %3, align 4
  br label %255

120:                                              ; preds = %99
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @curl_mime_name(i32* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load i32*, i32** %9, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = load i32, i32* @read_callback, align 4
  %129 = call i32 @curl_mime_data_cb(i32* %126, i8* %127, i32 %128, i32* null, i32* null, %struct.WriteThis* %11)
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32, i32* %7, align 4
  %135 = call i8* @curl_easy_strerror(i32 %134)
  %136 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %133, %130
  %138 = load i32*, i32** %8, align 8
  %139 = call i32* @curl_mime_addpart(i32* %138)
  store i32* %139, i32** %9, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %151, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @stderr, align 4
  %144 = call i32 @fprintf(i32 %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @curl_mime_free(i32* %145)
  %147 = load i32*, i32** %6, align 8
  %148 = call i32 @curl_easy_cleanup(i32* %147)
  %149 = call i32 (...) @curl_global_cleanup()
  %150 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %150, i32* %3, align 4
  br label %255

151:                                              ; preds = %137
  %152 = load i32*, i32** %9, align 8
  %153 = call i32 @curl_mime_name(i32* %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %151
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %159 = call i32 (i32*, i8*, ...) @curl_mime_data(i32* %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %156, %151
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32, i32* %7, align 4
  %165 = call i8* @curl_easy_strerror(i32 %164)
  %166 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %163, %160
  %168 = load i32*, i32** %8, align 8
  %169 = call i32* @curl_mime_addpart(i32* %168)
  store i32* %169, i32** %9, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %181, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* @stderr, align 4
  %174 = call i32 @fprintf(i32 %173, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %175 = load i32*, i32** %8, align 8
  %176 = call i32 @curl_mime_free(i32* %175)
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @curl_easy_cleanup(i32* %177)
  %179 = call i32 (...) @curl_global_cleanup()
  %180 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %180, i32* %3, align 4
  br label %255

181:                                              ; preds = %167
  %182 = load i32*, i32** %9, align 8
  %183 = call i32 @curl_mime_name(i32* %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %181
  %187 = load i32*, i32** %9, align 8
  %188 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %189 = call i32 (i32*, i8*, ...) @curl_mime_data(i32* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %188)
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %186, %181
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32, i32* %7, align 4
  %195 = call i8* @curl_easy_strerror(i32 %194)
  %196 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %193, %190
  %198 = load i32*, i32** %8, align 8
  %199 = call i32* @curl_mime_addpart(i32* %198)
  store i32* %199, i32** %9, align 8
  %200 = load i32*, i32** %9, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %211, label %202

202:                                              ; preds = %197
  %203 = load i32, i32* @stderr, align 4
  %204 = call i32 @fprintf(i32 %203, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %205 = load i32*, i32** %8, align 8
  %206 = call i32 @curl_mime_free(i32* %205)
  %207 = load i32*, i32** %6, align 8
  %208 = call i32 @curl_easy_cleanup(i32* %207)
  %209 = call i32 (...) @curl_global_cleanup()
  %210 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %210, i32* %3, align 4
  br label %255

211:                                              ; preds = %197
  %212 = load i32*, i32** %9, align 8
  %213 = call i32 @curl_mime_name(i32* %212, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %211
  %217 = load i32*, i32** %9, align 8
  %218 = call i32 @curl_mime_filename(i32* %217, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  store i32 %218, i32* %7, align 4
  br label %219

219:                                              ; preds = %216, %211
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = load i32*, i32** %9, align 8
  %224 = call i32 (i32*, i8*, ...) @curl_mime_data(i32* %223, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 9)
  store i32 %224, i32* %7, align 4
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load i32, i32* %7, align 4
  %230 = call i8* @curl_easy_strerror(i32 %229)
  %231 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i8* %230)
  br label %232

232:                                              ; preds = %228, %225
  %233 = load i32*, i32** %6, align 8
  %234 = load i32, i32* @CURLOPT_URL, align 4
  %235 = load i8*, i8** %4, align 8
  %236 = call i32 (i32*, i32, ...) @test_setopt(i32* %233, i32 %234, i8* %235)
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* @CURLOPT_MIMEPOST, align 4
  %239 = load i32*, i32** %8, align 8
  %240 = call i32 (i32*, i32, ...) @test_setopt(i32* %237, i32 %238, i32* %239)
  %241 = load i32*, i32** %6, align 8
  %242 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %243 = call i32 (i32*, i32, ...) @test_setopt(i32* %241, i32 %242, i64 1)
  %244 = load i32*, i32** %6, align 8
  %245 = load i32, i32* @CURLOPT_HEADER, align 4
  %246 = call i32 (i32*, i32, ...) @test_setopt(i32* %244, i32 %245, i64 1)
  %247 = load i32*, i32** %6, align 8
  %248 = call i32 @curl_easy_perform(i32* %247)
  store i32 %248, i32* %7, align 4
  br label %249

249:                                              ; preds = %232
  %250 = load i32*, i32** %6, align 8
  %251 = call i32 @curl_easy_cleanup(i32* %250)
  %252 = load i32*, i32** %8, align 8
  %253 = call i32 @curl_mime_free(i32* %252)
  %254 = load i32, i32* %7, align 4
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %249, %202, %172, %142, %111, %46, %34, %24
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32* @curl_mime_init(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32* @curl_mime_addpart(i32*) #1

declare dso_local i32 @curl_mime_free(i32*) #1

declare dso_local i32 @curl_mime_name(i32*, i8*) #1

declare dso_local i32 @curl_mime_data_cb(i32*, i8*, i32, i32*, i32*, %struct.WriteThis*) #1

declare dso_local i32 @curl_mime_filename(i32*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_mime_data(i32*, i8*, ...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
