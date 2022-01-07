; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_disconnect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }
%struct.connectdata = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.Curl_easy*, i32* }
%struct.TYPE_4__ = type { i32 (%struct.connectdata*, i32)* }
%struct.TYPE_3__ = type { i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"DISCONNECT without easy handle, ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Curl_disconnect when inuse: %zu\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_disconnect(%struct.Curl_easy* %0, %struct.connectdata* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store %struct.connectdata* %1, %struct.connectdata** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %9 = icmp ne %struct.connectdata* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @CURLE_OK, align 4
  store i32 %11, i32* %4, align 4
  br label %82

12:                                               ; preds = %3
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %14 = icmp ne %struct.Curl_easy* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %17 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @DEBUGF(i32 %17)
  %19 = load i32, i32* @CURLE_OK, align 4
  store i32 %19, i32* %4, align 4
  br label %82

20:                                               ; preds = %12
  %21 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %22 = call i64 @CONN_INUSE(%struct.connectdata* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %29 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %30 = call i64 @CONN_INUSE(%struct.connectdata* %29)
  %31 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = call i32 @DEBUGF(i32 %31)
  %33 = load i32, i32* @CURLE_OK, align 4
  store i32 %33, i32* %4, align 4
  br label %82

34:                                               ; preds = %24, %20
  %35 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %36 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %41 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %42 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @Curl_resolv_unlock(%struct.Curl_easy* %40, i32* %43)
  %45 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %46 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %49 = call i32 @Curl_hostcache_prune(%struct.Curl_easy* %48)
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %51 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %52 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %51, i32 0, i32 2
  store %struct.Curl_easy* %50, %struct.Curl_easy** %52, align 8
  %53 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %54 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %47
  %61 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %62 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.connectdata*, i32)*, i32 (%struct.connectdata*, i32)** %64, align 8
  %66 = icmp ne i32 (%struct.connectdata*, i32)* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %69 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (%struct.connectdata*, i32)*, i32 (%struct.connectdata*, i32)** %71, align 8
  %73 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 %72(%struct.connectdata* %73, i32 %74)
  br label %76

76:                                               ; preds = %67, %60
  %77 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %78 = call i32 @conn_shutdown(%struct.connectdata* %77)
  %79 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %80 = call i32 @conn_free(%struct.connectdata* %79)
  %81 = load i32, i32* @CURLE_OK, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %76, %27, %15, %10
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i64 @CONN_INUSE(%struct.connectdata*) #1

declare dso_local i32 @Curl_resolv_unlock(%struct.Curl_easy*, i32*) #1

declare dso_local i32 @Curl_hostcache_prune(%struct.Curl_easy*) #1

declare dso_local i32 @conn_shutdown(%struct.connectdata*) #1

declare dso_local i32 @conn_free(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
