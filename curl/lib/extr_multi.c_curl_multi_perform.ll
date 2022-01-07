; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_perform.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { i32, i32, %struct.Curl_easy*, i64 }
%struct.Curl_easy = type { %struct.Curl_easy* }
%struct.Curl_tree = type { i32 }
%struct.curltime = type { i32 }

@CURLM_OK = common dso_local global i64 0, align 8
@CURLM_BAD_HANDLE = common dso_local global i64 0, align 8
@CURLM_RECURSIVE_API_CALL = common dso_local global i64 0, align 8
@pipe_st = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @curl_multi_perform(%struct.Curl_multi* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.Curl_multi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Curl_tree*, align 8
  %9 = alloca %struct.curltime, align 4
  %10 = alloca i64, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i64, i64* @CURLM_OK, align 8
  store i64 %11, i64* %7, align 8
  %12 = call i32 (...) @Curl_now()
  %13 = getelementptr inbounds %struct.curltime, %struct.curltime* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %15 = call i32 @GOOD_MULTI_HANDLE(%struct.Curl_multi* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* @CURLM_BAD_HANDLE, align 8
  store i64 %18, i64* %3, align 8
  br label %89

19:                                               ; preds = %2
  %20 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %21 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @CURLM_RECURSIVE_API_CALL, align 8
  store i64 %25, i64* %3, align 8
  br label %89

26:                                               ; preds = %19
  %27 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %28 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %27, i32 0, i32 2
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %28, align 8
  store %struct.Curl_easy* %29, %struct.Curl_easy** %6, align 8
  br label %30

30:                                               ; preds = %48, %26
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %32 = icmp ne %struct.Curl_easy* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i32, i32* @pipe_st, align 4
  %35 = call i32 @SIGPIPE_VARIABLE(i32 %34)
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %37 = call i32 @sigpipe_ignore(%struct.Curl_easy* %36, i32* @pipe_st)
  %38 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %40 = getelementptr inbounds %struct.curltime, %struct.curltime* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @multi_runsingle(%struct.Curl_multi* %38, i32 %41, %struct.Curl_easy* %39)
  store i64 %42, i64* %10, align 8
  %43 = call i32 @sigpipe_restore(i32* @pipe_st)
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %46, %33
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %50 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %49, i32 0, i32 0
  %51 = load %struct.Curl_easy*, %struct.Curl_easy** %50, align 8
  store %struct.Curl_easy* %51, %struct.Curl_easy** %6, align 8
  br label %30

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %73, %52
  %54 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %55 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.curltime, %struct.curltime* %9, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @Curl_splaygetbest(i32 %58, i32 %56, %struct.Curl_tree** %8)
  %60 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %61 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %63 = icmp ne %struct.Curl_tree* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %66 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %67 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.curltime, %struct.curltime* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @add_next_timeout(i32 %70, %struct.Curl_multi* %65, i32 %68)
  br label %72

72:                                               ; preds = %64, %53
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %75 = icmp ne %struct.Curl_tree* %74, null
  br i1 %75, label %53, label %76

76:                                               ; preds = %73
  %77 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %78 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i64, i64* @CURLM_OK, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load %struct.Curl_multi*, %struct.Curl_multi** %4, align 8
  %86 = call i32 @Curl_update_timer(%struct.Curl_multi* %85)
  br label %87

87:                                               ; preds = %84, %76
  %88 = load i64, i64* %7, align 8
  store i64 %88, i64* %3, align 8
  br label %89

89:                                               ; preds = %87, %24, %17
  %90 = load i64, i64* %3, align 8
  ret i64 %90
}

declare dso_local i32 @Curl_now(...) #1

declare dso_local i32 @GOOD_MULTI_HANDLE(%struct.Curl_multi*) #1

declare dso_local i32 @SIGPIPE_VARIABLE(i32) #1

declare dso_local i32 @sigpipe_ignore(%struct.Curl_easy*, i32*) #1

declare dso_local i64 @multi_runsingle(%struct.Curl_multi*, i32, %struct.Curl_easy*) #1

declare dso_local i32 @sigpipe_restore(i32*) #1

declare dso_local i32 @Curl_splaygetbest(i32, i32, %struct.Curl_tree**) #1

declare dso_local i32 @add_next_timeout(i32, %struct.Curl_multi*, i32) #1

declare dso_local i32 @Curl_update_timer(%struct.Curl_multi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
