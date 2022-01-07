; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_multi_do.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_multi_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.connectdata* }
%struct.connectdata = type { i32 (%struct.connectdata*, i32*)*, %struct.connectdata* }

@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, i32*)* @multi_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multi_do(%struct.Curl_easy* %0, i32* %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.connectdata*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @CURLE_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %9 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %8, i32 0, i32 0
  %10 = load %struct.connectdata*, %struct.connectdata** %9, align 8
  store %struct.connectdata* %10, %struct.connectdata** %6, align 8
  %11 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %12 = call i32 @DEBUGASSERT(%struct.connectdata* %11)
  %13 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 1
  %15 = load %struct.connectdata*, %struct.connectdata** %14, align 8
  %16 = call i32 @DEBUGASSERT(%struct.connectdata* %15)
  %17 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 1
  %19 = load %struct.connectdata*, %struct.connectdata** %18, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 0
  %21 = load i32 (%struct.connectdata*, i32*)*, i32 (%struct.connectdata*, i32*)** %20, align 8
  %22 = icmp ne i32 (%struct.connectdata*, i32*)* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %2
  %24 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %25 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %24, i32 0, i32 1
  %26 = load %struct.connectdata*, %struct.connectdata** %25, align 8
  %27 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %26, i32 0, i32 0
  %28 = load i32 (%struct.connectdata*, i32*)*, i32 (%struct.connectdata*, i32*)** %27, align 8
  %29 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 %28(%struct.connectdata* %29, i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %23
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %40 = call i32 @do_complete(%struct.connectdata* %39)
  br label %41

41:                                               ; preds = %38, %34, %23
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @DEBUGASSERT(%struct.connectdata*) #1

declare dso_local i32 @do_complete(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
