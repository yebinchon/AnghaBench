; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1900.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1900.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i32, i64 }

@libtest_arg2 = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLMOPT_PIPELINING = common dso_local global i32 0, align 4
@CURLMOPT_MAX_HOST_CONNECTIONS = common dso_local global i32 0, align 4
@CURLMOPT_MAX_PIPELINE_LENGTH = common dso_local global i32 0, align 4
@CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE = common dso_local global i32 0, align 4
@CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE = common dso_local global i32 0, align 4
@CURLMOPT_PIPELINING_SITE_BL = common dso_local global i32 0, align 4
@site_blacklist = common dso_local global i64 0, align 8
@CURLMOPT_PIPELINING_SERVER_BL = common dso_local global i32 0, align 4
@server_blacklist = common dso_local global i64 0, align 8
@num_handles = common dso_local global i32 0, align 4
@urltime = common dso_local global i64* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Adding handle %d\0A\00", align 1
@CURLMSG_DONE = common dso_local global i64 0, align 8
@handles = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Handle %d Completed with status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.timeval, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load i32, i32* @libtest_arg2, align 4
  %22 = call i64 @parse_url_file(i32 %21)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %199

25:                                               ; preds = %1
  %26 = call i32 (...) @start_test_timing()
  %27 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %28 = call i32 @curl_global_init(i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @multi_init(i32* %29)
  %31 = call i32 (...) @create_handles()
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @CURLMOPT_PIPELINING, align 4
  %34 = call i32 @multi_setopt(i32* %32, i32 %33, i64 1)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @CURLMOPT_MAX_HOST_CONNECTIONS, align 4
  %37 = call i32 @multi_setopt(i32* %35, i32 %36, i64 2)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @CURLMOPT_MAX_PIPELINE_LENGTH, align 4
  %40 = call i32 @multi_setopt(i32* %38, i32 %39, i64 3)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE, align 4
  %43 = call i32 @multi_setopt(i32* %41, i32 %42, i64 15000)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE, align 4
  %46 = call i32 @multi_setopt(i32* %44, i32 %45, i64 10000)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @CURLMOPT_PIPELINING_SITE_BL, align 4
  %49 = load i64, i64* @site_blacklist, align 8
  %50 = call i32 @multi_setopt(i32* %47, i32 %48, i64 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @CURLMOPT_PIPELINING_SERVER_BL, align 4
  %53 = load i64, i64* @server_blacklist, align 8
  %54 = call i32 @multi_setopt(i32* %51, i32 %52, i64 %53)
  %55 = call { i32, i64 } (...) @tutil_tvnow()
  %56 = bitcast %struct.timeval* %10 to { i32, i64 }*
  %57 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %56, i32 0, i32 0
  %58 = extractvalue { i32, i64 } %55, 0
  store i32 %58, i32* %57, align 8
  %59 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %56, i32 0, i32 1
  %60 = extractvalue { i32, i64 } %55, 1
  store i64 %60, i64* %59, align 8
  %61 = bitcast %struct.timeval* %9 to i8*
  %62 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  br label %63

63:                                               ; preds = %183, %25
  store i32 -99, i32* %16, align 4
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @num_handles, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %108

69:                                               ; preds = %63
  %70 = call { i32, i64 } (...) @tutil_tvnow()
  %71 = bitcast %struct.timeval* %18 to { i32, i64 }*
  %72 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %71, i32 0, i32 0
  %73 = extractvalue { i32, i64 } %70, 0
  store i32 %73, i32* %72, align 8
  %74 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %71, i32 0, i32 1
  %75 = extractvalue { i32, i64 } %70, 1
  store i64 %75, i64* %74, align 8
  %76 = bitcast %struct.timeval* %12 to i8*
  %77 = bitcast %struct.timeval* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  %78 = bitcast %struct.timeval* %12 to { i32, i64 }*
  %79 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %78, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = bitcast %struct.timeval* %9 to { i32, i64 }*
  %84 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %83, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @tutil_tvdiff(i32 %80, i64 %82, i32 %85, i64 %87)
  %89 = load i64*, i64** @urltime, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %88, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %69
  %96 = load i32, i32* @stdout, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @fprintf(i32 %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i8*, i8** %2, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @setup_handle(i8* %99, i32* %100, i32 %101)
  %103 = bitcast %struct.timeval* %9 to i8*
  %104 = bitcast %struct.timeval* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 16, i1 false)
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %95, %69
  br label %108

108:                                              ; preds = %107, %63
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @curl_multi_perform(i32* %109, i32* %7)
  %111 = call i32 (...) @abort_on_test_timeout()
  br label %112

112:                                              ; preds = %161, %108
  %113 = load i32*, i32** %4, align 8
  %114 = call %struct.TYPE_5__* @curl_multi_info_read(i32* %113, i32* %6)
  store %struct.TYPE_5__* %114, %struct.TYPE_5__** %5, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = icmp ne %struct.TYPE_5__* %115, null
  br i1 %116, label %117, label %160

117:                                              ; preds = %112
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @CURLMSG_DONE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %160

123:                                              ; preds = %117
  store i32 0, i32* %19, align 4
  br label %124

124:                                              ; preds = %143, %123
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* @num_handles, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** @handles, align 8
  %133 = load i32, i32* %19, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %131, %136
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %20, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  br label %146

142:                                              ; preds = %128
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %19, align 4
  br label %124

146:                                              ; preds = %141, %124
  %147 = load i32, i32* %19, align 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %151)
  %153 = load i32*, i32** %4, align 8
  %154 = load i64*, i64** @handles, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @curl_multi_remove_handle(i32* %153, i64 %158)
  br label %160

160:                                              ; preds = %146, %117, %112
  br label %161

161:                                              ; preds = %160
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %163 = icmp ne %struct.TYPE_5__* %162, null
  br i1 %163, label %112, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @num_handles, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %168
  br label %198

172:                                              ; preds = %168, %164
  %173 = call i32 @FD_ZERO(i32* %13)
  %174 = call i32 @FD_ZERO(i32* %14)
  %175 = call i32 @FD_ZERO(i32* %15)
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 @curl_multi_fdset(i32* %176, i32* %13, i32* %14, i32* %15, i32* %16)
  %178 = load i32*, i32** %4, align 8
  %179 = call i32 @curl_multi_timeout(i32* %178, i64* %17)
  %180 = load i64, i64* %17, align 8
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  store i64 1, i64* %17, align 8
  br label %183

183:                                              ; preds = %182, %172
  %184 = load i64, i64* %17, align 8
  %185 = sdiv i64 %184, 1000
  %186 = trunc i64 %185 to i32
  %187 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 %186, i32* %187, align 8
  %188 = load i64, i64* %17, align 8
  %189 = srem i64 %188, 1000
  %190 = mul nsw i64 %189, 1000
  %191 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 %190, i64* %191, align 8
  %192 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 0, i32* %192, align 8
  %193 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 1000, i64* %193, align 8
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, 1
  %196 = call i32 @select_test(i32 %195, i32* %13, i32* %14, i32* %15, %struct.timeval* %11)
  %197 = call i32 (...) @abort_on_test_timeout()
  br label %63

198:                                              ; preds = %171
  br label %199

199:                                              ; preds = %198, %24
  %200 = call i32 (...) @remove_handles()
  %201 = load i32*, i32** %4, align 8
  %202 = call i32 @curl_multi_cleanup(i32* %201)
  %203 = call i32 (...) @curl_global_cleanup()
  %204 = call i32 (...) @free_urls()
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i64 @parse_url_file(i32) #1

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @create_handles(...) #1

declare dso_local i32 @multi_setopt(i32*, i32, i64) #1

declare dso_local { i32, i64 } @tutil_tvnow(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @tutil_tvdiff(i32, i64, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @setup_handle(i8*, i32*, i32) #1

declare dso_local i32 @curl_multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local %struct.TYPE_5__* @curl_multi_info_read(i32*, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i64) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @curl_multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @curl_multi_timeout(i32*, i64*) #1

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @remove_handles(...) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @free_urls(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
