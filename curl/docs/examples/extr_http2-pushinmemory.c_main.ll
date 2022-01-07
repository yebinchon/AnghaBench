; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_http2-pushinmemory.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_http2-pushinmemory.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.CURLMsg = type { i64, i32* }

@CURLMOPT_PIPELINING = common dso_local global i32 0, align 4
@CURLPIPE_MULTIPLEX = common dso_local global i32* null, align 8
@CURLMOPT_PUSHFUNCTION = common dso_local global i32 0, align 4
@server_push_callback = common dso_local global i32* null, align 8
@CURLMOPT_PUSHDATA = common dso_local global i32 0, align 4
@CURLMSG_DONE = common dso_local global i64 0, align 8
@pushindex = common dso_local global i32 0, align 4
@files = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.CURLMsg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  %12 = call i32* (...) @curl_multi_init()
  store i32* %12, i32** %3, align 8
  %13 = call i32* (...) @curl_easy_init()
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @setup(i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @curl_multi_add_handle(i32* %16, i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @CURLMOPT_PIPELINING, align 4
  %21 = load i32*, i32** @CURLPIPE_MULTIPLEX, align 8
  %22 = call i32 @curl_multi_setopt(i32* %19, i32 %20, i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @CURLMOPT_PUSHFUNCTION, align 4
  %25 = load i32*, i32** @server_push_callback, align 8
  %26 = call i32 @curl_multi_setopt(i32* %23, i32 %24, i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @CURLMOPT_PUSHDATA, align 4
  %29 = call i32 @curl_multi_setopt(i32* %27, i32 %28, i32* %5)
  br label %30

30:                                               ; preds = %72, %0
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %30
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @curl_multi_perform(i32* %34, i32* %4)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %73

39:                                               ; preds = %33
  %40 = load i32*, i32** %3, align 8
  %41 = call i64 @curl_multi_wait(i32* %40, i32* null, i32 0, i32 1000, i32* %8)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %73

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %69, %45
  store i32 0, i32* %10, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call %struct.CURLMsg* @curl_multi_info_read(i32* %47, i32* %10)
  store %struct.CURLMsg* %48, %struct.CURLMsg** %7, align 8
  %49 = load %struct.CURLMsg*, %struct.CURLMsg** %7, align 8
  %50 = icmp ne %struct.CURLMsg* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load %struct.CURLMsg*, %struct.CURLMsg** %7, align 8
  %53 = getelementptr inbounds %struct.CURLMsg, %struct.CURLMsg* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CURLMSG_DONE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.CURLMsg*, %struct.CURLMsg** %7, align 8
  %59 = getelementptr inbounds %struct.CURLMsg, %struct.CURLMsg* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %11, align 8
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %5, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @curl_multi_remove_handle(i32* %63, i32* %64)
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @curl_easy_cleanup(i32* %66)
  br label %68

68:                                               ; preds = %57, %51, %46
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.CURLMsg*, %struct.CURLMsg** %7, align 8
  %71 = icmp ne %struct.CURLMsg* %70, null
  br i1 %71, label %46, label %72

72:                                               ; preds = %69
  br label %30

73:                                               ; preds = %44, %38, %30
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @curl_multi_cleanup(i32* %74)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %88, %73
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @pushindex, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @free(i32 %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %76

91:                                               ; preds = %76
  ret i32 0
}

declare dso_local i32* @curl_multi_init(...) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @setup(i32*) #1

declare dso_local i32 @curl_multi_add_handle(i32*, i32*) #1

declare dso_local i32 @curl_multi_setopt(i32*, i32, i32*) #1

declare dso_local i64 @curl_multi_perform(i32*, i32*) #1

declare dso_local i64 @curl_multi_wait(i32*, i32*, i32, i32, i32*) #1

declare dso_local %struct.CURLMsg* @curl_multi_info_read(i32*, i32*) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
