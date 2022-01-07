; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pingpong.c_Curl_pp_flushsend.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pingpong.c_Curl_pp_flushsend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong = type { i64, i64, i64, i32, %struct.connectdata* }
%struct.connectdata = type { i32* }

@FIRSTSOCKET = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_pp_flushsend(%struct.pingpong* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pingpong*, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.pingpong* %0, %struct.pingpong** %3, align 8
  %8 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %9 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %8, i32 0, i32 4
  %10 = load %struct.connectdata*, %struct.connectdata** %9, align 8
  store %struct.connectdata* %10, %struct.connectdata** %4, align 8
  %11 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @FIRSTSOCKET, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %20 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %23 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %27 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %31 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @Curl_write(%struct.connectdata* %17, i32 %18, i64 %29, i64 %32, i64* %5)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %2, align 8
  br label %66

38:                                               ; preds = %1
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %41 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %47 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %64

50:                                               ; preds = %38
  %51 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %52 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @free(i64 %53)
  %55 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %56 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %58 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %60 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = call i32 (...) @Curl_now()
  %62 = load %struct.pingpong*, %struct.pingpong** %3, align 8
  %63 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %50, %44
  %65 = load i64, i64* @CURLE_OK, align 8
  store i64 %65, i64* %2, align 8
  br label %66

66:                                               ; preds = %64, %36
  %67 = load i64, i64* %2, align 8
  ret i64 %67
}

declare dso_local i64 @Curl_write(%struct.connectdata*, i32, i64, i64, i64*) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @Curl_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
