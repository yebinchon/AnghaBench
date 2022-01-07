; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_set_in_callback.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_set_in_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_set_in_callback(%struct.Curl_easy* %0, i32 %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %6 = icmp ne %struct.Curl_easy* %5, null
  br i1 %6, label %7, label %31

7:                                                ; preds = %2
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %9 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  br label %30

18:                                               ; preds = %7
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %20 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %26 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %18
  br label %30

30:                                               ; preds = %29, %12
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
