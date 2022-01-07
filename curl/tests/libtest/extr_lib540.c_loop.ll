; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib540.c_loop.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib540.c_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.timeval = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@CURLMSG_DONE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"R: %d - %s\0A\00", align 1
@NUM_HANDLES = common dso_local global i32 0, align 4
@eh = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"E: CURLMsg (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i8*, %struct.curl_slist*)* @loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop(i32 %0, i32* %1, i8* %2, i8* %3, %struct.curl_slist* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.curl_slist*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.timeval, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.curl_slist* %4, %struct.curl_slist** %11, align 8
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %20, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.curl_slist*, %struct.curl_slist** %11, align 8
  %30 = call i32 @init(i32 %25, i32* %26, i8* %27, i8* %28, %struct.curl_slist* %29)
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %20, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %20, align 4
  store i32 %34, i32* %6, align 4
  br label %176

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %174, %35
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %175

39:                                               ; preds = %36
  store i32 -99, i32* %21, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @res_multi_perform(i32* %40, i32* %15)
  %42 = load i32, i32* %20, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %20, align 4
  store i32 %45, i32* %6, align 4
  br label %176

46:                                               ; preds = %39
  %47 = call i32 (...) @res_test_timedout()
  %48 = load i32, i32* %20, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %20, align 4
  store i32 %51, i32* %6, align 4
  br label %176

52:                                               ; preds = %46
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %106

55:                                               ; preds = %52
  %56 = call i32 @FD_ZERO(i32* %16)
  %57 = call i32 @FD_ZERO(i32* %17)
  %58 = call i32 @FD_ZERO(i32* %18)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @res_multi_fdset(i32* %59, i32* %16, i32* %17, i32* %18, i32* %21)
  %61 = load i32, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %20, align 4
  store i32 %64, i32* %6, align 4
  br label %176

65:                                               ; preds = %55
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @res_multi_timeout(i32* %66, i64* %13)
  %68 = load i32, i32* %20, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %20, align 4
  store i32 %71, i32* %6, align 4
  br label %176

72:                                               ; preds = %65
  %73 = load i64, i64* %13, align 8
  %74 = icmp ne i64 %73, -1
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load i64, i64* %13, align 8
  %77 = load i32, i32* @INT_MAX, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp sgt i64 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @INT_MAX, align 4
  br label %85

82:                                               ; preds = %75
  %83 = load i64, i64* %13, align 8
  %84 = trunc i64 %83 to i32
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi i32 [ %81, %80 ], [ %84, %82 ]
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %22, align 4
  %88 = sdiv i32 %87, 1000
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %22, align 4
  %91 = srem i32 %90, 1000
  %92 = mul nsw i32 %91, 1000
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  br label %97

94:                                               ; preds = %72
  %95 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  store i32 5, i32* %95, align 4
  %96 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %85
  %98 = load i32, i32* %21, align 4
  %99 = add nsw i32 %98, 1
  %100 = call i32 @res_select_test(i32 %99, i32* %16, i32* %17, i32* %18, %struct.timeval* %19)
  %101 = load i32, i32* %20, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %20, align 4
  store i32 %104, i32* %6, align 4
  br label %176

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %52
  br label %107

107:                                              ; preds = %167, %106
  %108 = load i32*, i32** %8, align 8
  %109 = call %struct.TYPE_5__* @curl_multi_info_read(i32* %108, i32* %14)
  store %struct.TYPE_5__* %109, %struct.TYPE_5__** %12, align 8
  %110 = icmp ne %struct.TYPE_5__* %109, null
  br i1 %110, label %111, label %168

111:                                              ; preds = %107
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CURLMSG_DONE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %160

117:                                              ; preds = %111
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %24, align 8
  %121 = load i32, i32* @stderr, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @curl_easy_strerror(i64 %130)
  %132 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %126, i8* %131)
  %133 = load i32*, i32** %8, align 8
  %134 = load i32*, i32** %24, align 8
  %135 = call i32 @curl_multi_remove_handle(i32* %133, i32* %134)
  %136 = load i32*, i32** %24, align 8
  %137 = call i32 @curl_easy_cleanup(i32* %136)
  store i32 0, i32* %23, align 4
  br label %138

138:                                              ; preds = %156, %117
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* @NUM_HANDLES, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %138
  %143 = load i32**, i32*** @eh, align 8
  %144 = load i32, i32* %23, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = load i32*, i32** %24, align 8
  %149 = icmp eq i32* %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %142
  %151 = load i32**, i32*** @eh, align 8
  %152 = load i32, i32* %23, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  store i32* null, i32** %154, align 8
  br label %159

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %23, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %23, align 4
  br label %138

159:                                              ; preds = %150, %138
  br label %167

160:                                              ; preds = %111
  %161 = load i32, i32* @stderr, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %160, %159
  br label %107

168:                                              ; preds = %107
  %169 = call i32 (...) @res_test_timedout()
  %170 = load i32, i32* %20, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i32, i32* %20, align 4
  store i32 %173, i32* %6, align 4
  br label %176

174:                                              ; preds = %168
  br label %36

175:                                              ; preds = %36
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %175, %172, %103, %70, %63, %50, %44, %33
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i32 @init(i32, i32*, i8*, i8*, %struct.curl_slist*) #1

declare dso_local i32 @res_multi_perform(i32*, i32*) #1

declare dso_local i32 @res_test_timedout(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @res_multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @res_multi_timeout(i32*, i64*) #1

declare dso_local i32 @res_select_test(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local %struct.TYPE_5__* @curl_multi_info_read(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
