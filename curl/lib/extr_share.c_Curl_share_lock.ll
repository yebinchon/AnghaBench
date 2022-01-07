; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_share.c_Curl_share_lock.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_share.c_Curl_share_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.Curl_share* }
%struct.Curl_share = type { i32, i32, i32 (%struct.Curl_easy.0*, i32, i32, i32)* }
%struct.Curl_easy.0 = type opaque

@CURLSHE_INVALID = common dso_local global i32 0, align 4
@CURLSHE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_share_lock(%struct.Curl_easy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_share*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %10 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %9, i32 0, i32 0
  %11 = load %struct.Curl_share*, %struct.Curl_share** %10, align 8
  store %struct.Curl_share* %11, %struct.Curl_share** %8, align 8
  %12 = load %struct.Curl_share*, %struct.Curl_share** %8, align 8
  %13 = icmp eq %struct.Curl_share* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @CURLSHE_INVALID, align 4
  store i32 %15, i32* %4, align 4
  br label %44

16:                                               ; preds = %3
  %17 = load %struct.Curl_share*, %struct.Curl_share** %8, align 8
  %18 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %16
  %25 = load %struct.Curl_share*, %struct.Curl_share** %8, align 8
  %26 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %25, i32 0, i32 2
  %27 = load i32 (%struct.Curl_easy.0*, i32, i32, i32)*, i32 (%struct.Curl_easy.0*, i32, i32, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.Curl_easy.0*, i32, i32, i32)* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.Curl_share*, %struct.Curl_share** %8, align 8
  %31 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %30, i32 0, i32 2
  %32 = load i32 (%struct.Curl_easy.0*, i32, i32, i32)*, i32 (%struct.Curl_easy.0*, i32, i32, i32)** %31, align 8
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %34 = bitcast %struct.Curl_easy* %33 to %struct.Curl_easy.0*
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.Curl_share*, %struct.Curl_share** %8, align 8
  %38 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %32(%struct.Curl_easy.0* %34, i32 %35, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %29, %24
  br label %42

42:                                               ; preds = %41, %16
  %43 = load i32, i32* @CURLSHE_OK, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %14
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
