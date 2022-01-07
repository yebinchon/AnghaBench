; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_multi-app.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_multi-app.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }

@HANDLECOUNT = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"https://example.com\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ftp://example.com\00", align 1
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"curl_multi_fdset() failed, code %d.\0A\00", align 1
@__const.main.wait = private unnamed_addr constant %struct.timeval { i32 0, i64 100000, i32 0, i32 0 }, align 8
@CURLMSG_DONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"HTTP transfer completed with status %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"FTP transfer completed with status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %20 = load i32, i32* @HANDLECOUNT, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %2, align 8
  %23 = alloca i32*, i64 %21, align 16
  store i64 %21, i64* %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %33, %0
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @HANDLECOUNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = call i32* (...) @curl_easy_init()
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %23, i64 %31
  store i32* %29, i32** %32, align 8
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %24

36:                                               ; preds = %24
  %37 = getelementptr inbounds i32*, i32** %23, i64 128
  %38 = load i32*, i32** %37, align 16
  %39 = load i32, i32* @CURLOPT_URL, align 4
  %40 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %38, i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %41 = getelementptr inbounds i32*, i32** %23, i64 129
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @CURLOPT_URL, align 4
  %44 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %42, i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %45 = getelementptr inbounds i32*, i32** %23, i64 129
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %48 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %46, i32 %47, i64 1)
  %49 = call i32* (...) @curl_multi_init()
  store i32* %49, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %61, %36
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @HANDLECOUNT, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %23, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @curl_multi_add_handle(i32* %55, i32* %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %50

64:                                               ; preds = %50
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @curl_multi_perform(i32* %65, i32* %5)
  br label %67

67:                                               ; preds = %123, %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %124

70:                                               ; preds = %67
  store i32 -1, i32* %15, align 4
  store i64 -1, i64* %16, align 8
  %71 = call i32 @FD_ZERO(i32* %12)
  %72 = call i32 @FD_ZERO(i32* %13)
  %73 = call i32 @FD_ZERO(i32* %14)
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @curl_multi_timeout(i32* %76, i64* %16)
  %78 = load i64, i64* %16, align 8
  %79 = icmp sge i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %70
  %81 = load i64, i64* %16, align 8
  %82 = sdiv i64 %81, 1000
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %95

90:                                               ; preds = %80
  %91 = load i64, i64* %16, align 8
  %92 = srem i64 %91, 1000
  %93 = mul nsw i64 %92, 1000
  %94 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 %93, i64* %94, align 8
  br label %95

95:                                               ; preds = %90, %88
  br label %96

96:                                               ; preds = %95, %70
  %97 = load i32*, i32** %4, align 8
  %98 = call i64 @curl_multi_fdset(i32* %97, i32* %12, i32* %13, i32* %14, i32* %15)
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* @CURLM_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @stderr, align 4
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @fprintf(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %104)
  br label %124

106:                                              ; preds = %96
  %107 = load i32, i32* %15, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = bitcast %struct.timeval* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 bitcast (%struct.timeval* @__const.main.wait to i8*), i64 24, i1 false)
  %111 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %17)
  store i32 %111, i32* %10, align 4
  br label %116

112:                                              ; preds = %106
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  %115 = call i32 @select(i32 %114, i32* %12, i32* %13, i32* %14, %struct.timeval* %9)
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %112, %109
  %117 = load i32, i32* %10, align 4
  switch i32 %117, label %120 [
    i32 -1, label %118
    i32 0, label %119
  ]

118:                                              ; preds = %116
  br label %123

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %116, %119
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @curl_multi_perform(i32* %121, i32* %5)
  br label %123

123:                                              ; preds = %120, %118
  br label %67

124:                                              ; preds = %102, %67
  br label %125

125:                                              ; preds = %172, %124
  %126 = load i32*, i32** %4, align 8
  %127 = call %struct.TYPE_5__* @curl_multi_info_read(i32* %126, i32* %8)
  store %struct.TYPE_5__* %127, %struct.TYPE_5__** %7, align 8
  %128 = icmp ne %struct.TYPE_5__* %127, null
  br i1 %128, label %129, label %173

129:                                              ; preds = %125
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @CURLMSG_DONE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %172

135:                                              ; preds = %129
  store i32 0, i32* %18, align 4
  br label %136

136:                                              ; preds = %154, %135
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* @HANDLECOUNT, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %136
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %18, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %23, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %143, %147
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  br label %157

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %18, align 4
  br label %136

157:                                              ; preds = %152, %136
  %158 = load i32, i32* %18, align 4
  switch i32 %158, label %171 [
    i32 128, label %159
    i32 129, label %165
  ]

159:                                              ; preds = %157
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  br label %171

165:                                              ; preds = %157
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %157, %165, %159
  br label %172

172:                                              ; preds = %171, %129
  br label %125

173:                                              ; preds = %125
  %174 = load i32*, i32** %4, align 8
  %175 = call i32 @curl_multi_cleanup(i32* %174)
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %186, %173
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @HANDLECOUNT, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %176
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %23, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @curl_easy_cleanup(i32* %184)
  br label %186

186:                                              ; preds = %180
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %6, align 4
  br label %176

189:                                              ; preds = %176
  store i32 0, i32* %1, align 4
  %190 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %1, align 4
  ret i32 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @curl_easy_init(...) #2

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #2

declare dso_local i32* @curl_multi_init(...) #2

declare dso_local i32 @curl_multi_add_handle(i32*, i32*) #2

declare dso_local i32 @curl_multi_perform(i32*, i32*) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @curl_multi_timeout(i32*, i64*) #2

declare dso_local i64 @curl_multi_fdset(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local %struct.TYPE_5__* @curl_multi_info_read(i32*, i32*) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @curl_multi_cleanup(i32*) #2

declare dso_local i32 @curl_easy_cleanup(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
