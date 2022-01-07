; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_setopt.c_libcurl_generate_mime_part.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_setopt.c_libcurl_generate_mime_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, i8*, i8*, i8*, i8*, i64, %struct.TYPE_4__* }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"part%d = curl_mime_addpart(mime%d);\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"curl_mime_subparts(part%d, mime%d);\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"mime%d = NULL;\00", align 1
@CURL_ZERO_TERMINATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"curl_mime_data(part%d, \22%s\22, CURL_ZERO_TERMINATED);\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"curl_mime_filedata(part%d, \22%s\22);\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"curl_mime_filename(part%d, NULL);\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"curl_mime_data_cb(part%d, -1, (curl_read_callback) fread, \\\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"                  (curl_seek_callback) fseek, NULL, stdin);\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"curl_mime_encoder(part%d, \22%s\22);\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"curl_mime_filename(part%d, \22%s\22);\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"curl_mime_name(part%d, \22%s\22);\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"curl_mime_type(part%d, \22%s\22);\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"curl_mime_headers(part%d, slist%d, 1);\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"slist%d = NULL;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.GlobalConfig*, %struct.TYPE_4__*, i32)* @libcurl_generate_mime_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @libcurl_generate_mime_part(i32* %0, %struct.GlobalConfig* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.GlobalConfig*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.GlobalConfig* %1, %struct.GlobalConfig** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* @CURLE_OK, align 8
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %14, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 7
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.GlobalConfig*, %struct.GlobalConfig** %7, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 7
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @libcurl_generate_mime_part(i32* %25, %struct.GlobalConfig* %26, %struct.TYPE_4__* %29, i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i64, i64* %10, align 8
  store i64 %35, i64* %5, align 8
  br label %215

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i8*, i32, ...) @CODE2(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %107 [
    i32 130, label %44
    i32 133, label %58
    i32 132, label %76
    i32 131, label %76
    i32 129, label %98
    i32 128, label %103
  ]

44:                                               ; preds = %37
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.GlobalConfig*, %struct.GlobalConfig** %7, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = call i64 @libcurl_generate_mime(i32* %45, %struct.GlobalConfig* %46, %struct.TYPE_4__* %47, i32* %11)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 (i8*, i32, ...) @CODE2(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i8*, ...) @CODE1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %44
  br label %108

58:                                               ; preds = %37
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %13, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @Curl_safefree(i8* %65)
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %69 = call i8* @c_escape(i8* %67, i32 %68)
  store i8* %69, i8** %12, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @NULL_CHECK(i8* %70)
  %72 = load i32, i32* %9, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 (i8*, i32, ...) @CODE2(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %72, i8* %73)
  br label %75

75:                                               ; preds = %64, %58
  br label %108

76:                                               ; preds = %37, %37
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %81 = call i8* @c_escape(i8* %79, i32 %80)
  store i8* %81, i8** %12, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @NULL_CHECK(i8* %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 (i8*, i32, ...) @CODE2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %84, i8* %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 131
  br i1 %90, label %91, label %97

91:                                               ; preds = %76
  %92 = load i8*, i8** %14, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (i8*, ...) @CODE1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %91, %76
  br label %108

98:                                               ; preds = %37
  %99 = load i8*, i8** %14, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %102

102:                                              ; preds = %101, %98
  br label %103

103:                                              ; preds = %37, %102
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (i8*, ...) @CODE1(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  %106 = call i32 @CODE0(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  br label %108

107:                                              ; preds = %37
  br label %108

108:                                              ; preds = %107, %103, %97, %75, %57
  %109 = load i64, i64* %10, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %129, label %111

111:                                              ; preds = %108
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @Curl_safefree(i8* %117)
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %123 = call i8* @c_escape(i8* %121, i32 %122)
  store i8* %123, i8** %12, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @NULL_CHECK(i8* %124)
  %126 = load i32, i32* %9, align 4
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 (i8*, i32, ...) @CODE2(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %126, i8* %127)
  br label %129

129:                                              ; preds = %116, %111, %108
  %130 = load i64, i64* %10, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %146, label %132

132:                                              ; preds = %129
  %133 = load i8*, i8** %14, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load i8*, i8** %12, align 8
  %137 = call i32 @Curl_safefree(i8* %136)
  %138 = load i8*, i8** %14, align 8
  %139 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %140 = call i8* @c_escape(i8* %138, i32 %139)
  store i8* %140, i8** %12, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = call i32 @NULL_CHECK(i8* %141)
  %143 = load i32, i32* %9, align 4
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 (i8*, i32, ...) @CODE2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %143, i8* %144)
  br label %146

146:                                              ; preds = %135, %132, %129
  %147 = load i64, i64* %10, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %167, label %149

149:                                              ; preds = %146
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %167

154:                                              ; preds = %149
  %155 = load i8*, i8** %12, align 8
  %156 = call i32 @Curl_safefree(i8* %155)
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %161 = call i8* @c_escape(i8* %159, i32 %160)
  store i8* %161, i8** %12, align 8
  %162 = load i8*, i8** %12, align 8
  %163 = call i32 @NULL_CHECK(i8* %162)
  %164 = load i32, i32* %9, align 4
  %165 = load i8*, i8** %12, align 8
  %166 = call i32 (i8*, i32, ...) @CODE2(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %164, i8* %165)
  br label %167

167:                                              ; preds = %154, %149, %146
  %168 = load i64, i64* %10, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %188, label %170

170:                                              ; preds = %167
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 5
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %188

175:                                              ; preds = %170
  %176 = load i8*, i8** %12, align 8
  %177 = call i32 @Curl_safefree(i8* %176)
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 5
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %182 = call i8* @c_escape(i8* %180, i32 %181)
  store i8* %182, i8** %12, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = call i32 @NULL_CHECK(i8* %183)
  %185 = load i32, i32* %9, align 4
  %186 = load i8*, i8** %12, align 8
  %187 = call i32 (i8*, i32, ...) @CODE2(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %185, i8* %186)
  br label %188

188:                                              ; preds = %175, %170, %167
  %189 = load i64, i64* %10, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %210, label %191

191:                                              ; preds = %188
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %191
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @libcurl_generate_slist(i64 %199, i32* %15)
  store i64 %200, i64* %10, align 8
  %201 = load i64, i64* %10, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %196
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %15, align 4
  %206 = call i32 (i8*, i32, ...) @CODE2(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 %204, i32 %205)
  %207 = load i32, i32* %15, align 4
  %208 = call i32 (i8*, ...) @CODE1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %203, %196
  br label %210

210:                                              ; preds = %209, %191, %188
  br label %211

211:                                              ; preds = %210
  %212 = load i8*, i8** %12, align 8
  %213 = call i32 @Curl_safefree(i8* %212)
  %214 = load i64, i64* %10, align 8
  store i64 %214, i64* %5, align 8
  br label %215

215:                                              ; preds = %211, %34
  %216 = load i64, i64* %5, align 8
  ret i64 %216
}

declare dso_local i32 @CODE2(i8*, i32, ...) #1

declare dso_local i64 @libcurl_generate_mime(i32*, %struct.GlobalConfig*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @CODE1(i8*, ...) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i8* @c_escape(i8*, i32) #1

declare dso_local i32 @NULL_CHECK(i8*) #1

declare dso_local i32 @CODE0(i8*) #1

declare dso_local i64 @libcurl_generate_slist(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
