; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_help.c_tool_list_engines.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_help.c_tool_list_engines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i8*, %struct.curl_slist* }

@CURLINFO_SSL_ENGINES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Build-time engines:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"  <none>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tool_list_engines() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.curl_slist*, align 8
  %3 = call i32* (...) @curl_easy_init()
  store i32* %3, i32** %1, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %2, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = load i32, i32* @CURLINFO_SSL_ENGINES, align 4
  %6 = call i32 @curl_easy_getinfo(i32* %4, i32 %5, %struct.curl_slist** %2)
  %7 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  %9 = icmp ne %struct.curl_slist* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %19, %10
  %12 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  %13 = icmp ne %struct.curl_slist* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  %16 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %14
  %20 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  %21 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %20, i32 0, i32 1
  %22 = load %struct.curl_slist*, %struct.curl_slist** %21, align 8
  store %struct.curl_slist* %22, %struct.curl_slist** %2, align 8
  br label %11

23:                                               ; preds = %11
  br label %26

24:                                               ; preds = %0
  %25 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %23
  %27 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  %28 = call i32 @curl_slist_free_all(%struct.curl_slist* %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @curl_easy_cleanup(i32* %29)
  ret void
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, %struct.curl_slist**) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
