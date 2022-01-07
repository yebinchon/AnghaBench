; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_main.c_main_init.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_main.c_main_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.GlobalConfig* }

@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PARALLEL_DEFAULT = common dso_local global i32 0, align 4
@CURL_GLOBAL_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"error retrieving curl library information\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"error initializing curl library\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"error initializing curl\0A\00", align 1
@CURLE_FAILED_INIT = common dso_local global i64 0, align 8
@_STAT_DIRSIZE = common dso_local global i32 0, align 4
@_STAT_EXEC_MAGIC = common dso_local global i32 0, align 4
@_STAT_INODE = common dso_local global i32 0, align 4
@_djstat_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.GlobalConfig*)* @main_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @main_init(%struct.GlobalConfig* %0) #0 {
  %2 = alloca %struct.GlobalConfig*, align 8
  %3 = alloca i64, align 8
  store %struct.GlobalConfig* %0, %struct.GlobalConfig** %2, align 8
  %4 = load i64, i64* @CURLE_OK, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %6 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %5, i32 0, i32 0
  store i32 -1, i32* %6, align 8
  %7 = load i32, i32* @stderr, align 4
  %8 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %9 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %12 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @PARALLEL_DEFAULT, align 4
  %14 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %15 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = call %struct.TYPE_4__* @malloc(i32 4)
  %17 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %18 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %17, i32 0, i32 2
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %18, align 8
  %19 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %20 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %19, i32 0, i32 1
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %20, align 8
  %21 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %22 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %60

25:                                               ; preds = %1
  %26 = load i32, i32* @CURL_GLOBAL_DEFAULT, align 4
  %27 = call i64 @curl_global_init(i32 %26)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %25
  %31 = call i64 (...) @get_libcurl_info()
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %36 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @config_init(%struct.TYPE_4__* %37)
  %39 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %40 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %41 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store %struct.GlobalConfig* %39, %struct.GlobalConfig** %43, align 8
  br label %51

44:                                               ; preds = %30
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @helpf(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %48 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @free(%struct.TYPE_4__* %49)
  br label %51

51:                                               ; preds = %44, %34
  br label %59

52:                                               ; preds = %25
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @helpf(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %56 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i32 @free(%struct.TYPE_4__* %57)
  br label %59

59:                                               ; preds = %52, %51
  br label %64

60:                                               ; preds = %1
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 @helpf(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i64, i64* @CURLE_FAILED_INIT, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %60, %59
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i64 @get_libcurl_info(...) #1

declare dso_local i32 @config_init(%struct.TYPE_4__*) #1

declare dso_local i32 @helpf(i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
