; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_connect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.connectdata = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CURLE_NO_CONNECTION_AVAILABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_connect(%struct.Curl_easy* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.connectdata*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = load i32*, i32** %6, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %13 = call i32 @Curl_free_request_state(%struct.Curl_easy* %12)
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 1
  %16 = call i32 @memset(%struct.TYPE_2__* %15, i32 0, i32 4)
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @create_conn(%struct.Curl_easy* %20, %struct.connectdata** %9, i32* %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %3
  %26 = load %struct.connectdata*, %struct.connectdata** %9, align 8
  %27 = call i64 @CONN_INUSE(%struct.connectdata* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @TRUE, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %41

32:                                               ; preds = %25
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.connectdata*, %struct.connectdata** %9, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @Curl_setup_conn(%struct.connectdata* %37, i32* %38)
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @CURLE_NO_CONNECTION_AVAILABLE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %4, align 8
  br label %75

48:                                               ; preds = %42
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.connectdata*, %struct.connectdata** %9, align 8
  %53 = icmp ne %struct.connectdata* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %56 = load %struct.connectdata*, %struct.connectdata** %9, align 8
  %57 = load i32, i32* @TRUE, align 4
  %58 = call i32 @Curl_disconnect(%struct.Curl_easy* %55, %struct.connectdata* %56, i32 %57)
  br label %72

59:                                               ; preds = %51, %48
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %64 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %69 = load %struct.connectdata*, %struct.connectdata** %9, align 8
  %70 = call i32 @Curl_attach_connnection(%struct.Curl_easy* %68, %struct.connectdata* %69)
  br label %71

71:                                               ; preds = %67, %62, %59
  br label %72

72:                                               ; preds = %71, %54
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %8, align 8
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %73, %46
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local i32 @Curl_free_request_state(%struct.Curl_easy*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @create_conn(%struct.Curl_easy*, %struct.connectdata**, i32*) #1

declare dso_local i64 @CONN_INUSE(%struct.connectdata*) #1

declare dso_local i64 @Curl_setup_conn(%struct.connectdata*, i32*) #1

declare dso_local i32 @Curl_disconnect(%struct.Curl_easy*, %struct.connectdata*, i32) #1

declare dso_local i32 @Curl_attach_connnection(%struct.Curl_easy*, %struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
