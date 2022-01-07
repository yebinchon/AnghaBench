; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_easy.c_easy_perform.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_easy.c_easy_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.Curl_multi*, %struct.TYPE_2__, %struct.Curl_multi* }
%struct.TYPE_2__ = type { i32, i64* }
%struct.Curl_multi = type { i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@pipe_st = common dso_local global i32 0, align 4
@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"easy handle already used in multi handle\00", align 1
@CURLE_FAILED_INIT = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURLE_RECURSIVE_API_CALL = common dso_local global i32 0, align 4
@CURLMOPT_MAXCONNECTS = common dso_local global i32 0, align 4
@CURLM_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, i32)* @easy_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @easy_perform(%struct.Curl_easy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Curl_multi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @CURLE_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @pipe_st, align 4
  %11 = call i32 @SIGPIPE_VARIABLE(i32 %10)
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %13 = icmp ne %struct.Curl_easy* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @CURLE_BAD_FUNCTION_ARGUMENT, align 4
  store i32 %15, i32* %3, align 4
  br label %107

16:                                               ; preds = %2
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %24 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %30 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %29, i32 0, i32 0
  %31 = load %struct.Curl_multi*, %struct.Curl_multi** %30, align 8
  %32 = icmp ne %struct.Curl_multi* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %35 = call i32 @failf(%struct.Curl_easy* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @CURLE_FAILED_INIT, align 4
  store i32 %36, i32* %3, align 4
  br label %107

37:                                               ; preds = %28
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %39 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %38, i32 0, i32 2
  %40 = load %struct.Curl_multi*, %struct.Curl_multi** %39, align 8
  %41 = icmp ne %struct.Curl_multi* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %44 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %43, i32 0, i32 2
  %45 = load %struct.Curl_multi*, %struct.Curl_multi** %44, align 8
  store %struct.Curl_multi* %45, %struct.Curl_multi** %6, align 8
  br label %56

46:                                               ; preds = %37
  %47 = call %struct.Curl_multi* @Curl_multi_handle(i32 1, i32 3)
  store %struct.Curl_multi* %47, %struct.Curl_multi** %6, align 8
  %48 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %49 = icmp ne %struct.Curl_multi* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %51, i32* %3, align 4
  br label %107

52:                                               ; preds = %46
  %53 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %55 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %54, i32 0, i32 2
  store %struct.Curl_multi* %53, %struct.Curl_multi** %55, align 8
  br label %56

56:                                               ; preds = %52, %42
  %57 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %58 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @CURLE_RECURSIVE_API_CALL, align 4
  store i32 %62, i32* %3, align 4
  br label %107

63:                                               ; preds = %56
  %64 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %65 = load i32, i32* @CURLMOPT_MAXCONNECTS, align 4
  %66 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %67 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @curl_multi_setopt(%struct.Curl_multi* %64, i32 %65, i32 %69)
  %71 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %72 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %73 = call i64 @curl_multi_add_handle(%struct.Curl_multi* %71, %struct.Curl_easy* %72)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %63
  %77 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %78 = call i32 @curl_multi_cleanup(%struct.Curl_multi* %77)
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @CURLM_OUT_OF_MEMORY, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %83, i32* %3, align 4
  br label %107

84:                                               ; preds = %76
  %85 = load i32, i32* @CURLE_FAILED_INIT, align 4
  store i32 %85, i32* %3, align 4
  br label %107

86:                                               ; preds = %63
  %87 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %88 = call i32 @sigpipe_ignore(%struct.Curl_easy* %87, i32* @pipe_st)
  %89 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %90 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %91 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %90, i32 0, i32 0
  store %struct.Curl_multi* %89, %struct.Curl_multi** %91, align 8
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %96 = call i32 @easy_events(%struct.Curl_multi* %95)
  br label %100

97:                                               ; preds = %86
  %98 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %99 = call i32 @easy_transfer(%struct.Curl_multi* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i32 [ %96, %94 ], [ %99, %97 ]
  store i32 %101, i32* %8, align 4
  %102 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %103 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %104 = call i32 @curl_multi_remove_handle(%struct.Curl_multi* %102, %struct.Curl_easy* %103)
  %105 = call i32 @sigpipe_restore(i32* @pipe_st)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %100, %84, %82, %61, %50, %33, %14
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @SIGPIPE_VARIABLE(i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local %struct.Curl_multi* @Curl_multi_handle(i32, i32) #1

declare dso_local i32 @curl_multi_setopt(%struct.Curl_multi*, i32, i32) #1

declare dso_local i64 @curl_multi_add_handle(%struct.Curl_multi*, %struct.Curl_easy*) #1

declare dso_local i32 @curl_multi_cleanup(%struct.Curl_multi*) #1

declare dso_local i32 @sigpipe_ignore(%struct.Curl_easy*, i32*) #1

declare dso_local i32 @easy_events(%struct.Curl_multi*) #1

declare dso_local i32 @easy_transfer(%struct.Curl_multi*) #1

declare dso_local i32 @curl_multi_remove_handle(%struct.Curl_multi*, %struct.Curl_easy*) #1

declare dso_local i32 @sigpipe_restore(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
