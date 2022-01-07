; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_share.c_Curl_share_unlock.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_share.c_Curl_share_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.Curl_share* }
%struct.Curl_share = type { i32, i32, i32 (%struct.Curl_easy.0*, i32, i32)* }
%struct.Curl_easy.0 = type opaque

@CURLSHE_INVALID = common dso_local global i32 0, align 4
@CURLSHE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_share_unlock(%struct.Curl_easy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Curl_share*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %8 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %7, i32 0, i32 0
  %9 = load %struct.Curl_share*, %struct.Curl_share** %8, align 8
  store %struct.Curl_share* %9, %struct.Curl_share** %6, align 8
  %10 = load %struct.Curl_share*, %struct.Curl_share** %6, align 8
  %11 = icmp eq %struct.Curl_share* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @CURLSHE_INVALID, align 4
  store i32 %13, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.Curl_share*, %struct.Curl_share** %6, align 8
  %16 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %14
  %23 = load %struct.Curl_share*, %struct.Curl_share** %6, align 8
  %24 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %23, i32 0, i32 2
  %25 = load i32 (%struct.Curl_easy.0*, i32, i32)*, i32 (%struct.Curl_easy.0*, i32, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.Curl_easy.0*, i32, i32)* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.Curl_share*, %struct.Curl_share** %6, align 8
  %29 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %28, i32 0, i32 2
  %30 = load i32 (%struct.Curl_easy.0*, i32, i32)*, i32 (%struct.Curl_easy.0*, i32, i32)** %29, align 8
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %32 = bitcast %struct.Curl_easy* %31 to %struct.Curl_easy.0*
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.Curl_share*, %struct.Curl_share** %6, align 8
  %35 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %30(%struct.Curl_easy.0* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %27, %22
  br label %39

39:                                               ; preds = %38, %14
  %40 = load i32, i32* @CURLSHE_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
