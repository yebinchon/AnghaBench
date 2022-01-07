; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_urlapi.c_curl_url_dup.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_urlapi.c_curl_url_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_URL = type { i32 }

@scheme = common dso_local global i32 0, align 4
@user = common dso_local global i32 0, align 4
@password = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@host = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@path = common dso_local global i32 0, align 4
@query = common dso_local global i32 0, align 4
@fragment = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Curl_URL* @curl_url_dup(%struct.Curl_URL* %0) #0 {
  %2 = alloca %struct.Curl_URL*, align 8
  %3 = alloca %struct.Curl_URL*, align 8
  %4 = alloca %struct.Curl_URL*, align 8
  store %struct.Curl_URL* %0, %struct.Curl_URL** %3, align 8
  %5 = call %struct.Curl_URL* @calloc(i32 4, i32 1)
  store %struct.Curl_URL* %5, %struct.Curl_URL** %4, align 8
  %6 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %7 = icmp ne %struct.Curl_URL* %6, null
  br i1 %7, label %8, label %50

8:                                                ; preds = %1
  %9 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %10 = load %struct.Curl_URL*, %struct.Curl_URL** %3, align 8
  %11 = load i32, i32* @scheme, align 4
  %12 = call i32 @DUP(%struct.Curl_URL* %9, %struct.Curl_URL* %10, i32 %11)
  %13 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %14 = load %struct.Curl_URL*, %struct.Curl_URL** %3, align 8
  %15 = load i32, i32* @user, align 4
  %16 = call i32 @DUP(%struct.Curl_URL* %13, %struct.Curl_URL* %14, i32 %15)
  %17 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %18 = load %struct.Curl_URL*, %struct.Curl_URL** %3, align 8
  %19 = load i32, i32* @password, align 4
  %20 = call i32 @DUP(%struct.Curl_URL* %17, %struct.Curl_URL* %18, i32 %19)
  %21 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %22 = load %struct.Curl_URL*, %struct.Curl_URL** %3, align 8
  %23 = load i32, i32* @options, align 4
  %24 = call i32 @DUP(%struct.Curl_URL* %21, %struct.Curl_URL* %22, i32 %23)
  %25 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %26 = load %struct.Curl_URL*, %struct.Curl_URL** %3, align 8
  %27 = load i32, i32* @host, align 4
  %28 = call i32 @DUP(%struct.Curl_URL* %25, %struct.Curl_URL* %26, i32 %27)
  %29 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %30 = load %struct.Curl_URL*, %struct.Curl_URL** %3, align 8
  %31 = load i32, i32* @port, align 4
  %32 = call i32 @DUP(%struct.Curl_URL* %29, %struct.Curl_URL* %30, i32 %31)
  %33 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %34 = load %struct.Curl_URL*, %struct.Curl_URL** %3, align 8
  %35 = load i32, i32* @path, align 4
  %36 = call i32 @DUP(%struct.Curl_URL* %33, %struct.Curl_URL* %34, i32 %35)
  %37 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %38 = load %struct.Curl_URL*, %struct.Curl_URL** %3, align 8
  %39 = load i32, i32* @query, align 4
  %40 = call i32 @DUP(%struct.Curl_URL* %37, %struct.Curl_URL* %38, i32 %39)
  %41 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %42 = load %struct.Curl_URL*, %struct.Curl_URL** %3, align 8
  %43 = load i32, i32* @fragment, align 4
  %44 = call i32 @DUP(%struct.Curl_URL* %41, %struct.Curl_URL* %42, i32 %43)
  %45 = load %struct.Curl_URL*, %struct.Curl_URL** %3, align 8
  %46 = getelementptr inbounds %struct.Curl_URL, %struct.Curl_URL* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %49 = getelementptr inbounds %struct.Curl_URL, %struct.Curl_URL* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %8, %1
  %51 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  store %struct.Curl_URL* %51, %struct.Curl_URL** %2, align 8
  br label %55

52:                                               ; No predecessors!
  %53 = load %struct.Curl_URL*, %struct.Curl_URL** %4, align 8
  %54 = call i32 @curl_url_cleanup(%struct.Curl_URL* %53)
  store %struct.Curl_URL* null, %struct.Curl_URL** %2, align 8
  br label %55

55:                                               ; preds = %52, %50
  %56 = load %struct.Curl_URL*, %struct.Curl_URL** %2, align 8
  ret %struct.Curl_URL* %56
}

declare dso_local %struct.Curl_URL* @calloc(i32, i32) #1

declare dso_local i32 @DUP(%struct.Curl_URL*, %struct.Curl_URL*, i32) #1

declare dso_local i32 @curl_url_cleanup(%struct.Curl_URL*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
