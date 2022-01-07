; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_multi_add_perform.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_multi_add_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { i64 }
%struct.Curl_easy = type { %struct.SingleRequest }
%struct.SingleRequest = type { i32 }
%struct.connectdata = type { i32 }

@CURLM_RECURSIVE_API_CALL = common dso_local global i32 0, align 4
@CURLM_STATE_PERFORM = common dso_local global i32 0, align 4
@KEEP_RECV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_multi_add_perform(%struct.Curl_multi* %0, %struct.Curl_easy* %1, %struct.connectdata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_multi*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca %struct.connectdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.SingleRequest*, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %5, align 8
  store %struct.Curl_easy* %1, %struct.Curl_easy** %6, align 8
  store %struct.connectdata* %2, %struct.connectdata** %7, align 8
  %10 = load %struct.Curl_multi*, %struct.Curl_multi** %5, align 8
  %11 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @CURLM_RECURSIVE_API_CALL, align 4
  store i32 %15, i32* %4, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load %struct.Curl_multi*, %struct.Curl_multi** %5, align 8
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %19 = call i32 @curl_multi_add_handle(%struct.Curl_multi* %17, %struct.Curl_easy* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %16
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %24 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %23, i32 0, i32 0
  store %struct.SingleRequest* %24, %struct.SingleRequest** %9, align 8
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %26 = call i32 @Curl_init_do(%struct.Curl_easy* %25, i32* null)
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %28 = load i32, i32* @CURLM_STATE_PERFORM, align 4
  %29 = call i32 @multistate(%struct.Curl_easy* %27, i32 %28)
  %30 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %31 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %32 = call i32 @Curl_attach_connnection(%struct.Curl_easy* %30, %struct.connectdata* %31)
  %33 = load i32, i32* @KEEP_RECV, align 4
  %34 = load %struct.SingleRequest*, %struct.SingleRequest** %9, align 8
  %35 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %22, %16
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @curl_multi_add_handle(%struct.Curl_multi*, %struct.Curl_easy*) #1

declare dso_local i32 @Curl_init_do(%struct.Curl_easy*, i32*) #1

declare dso_local i32 @multistate(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_attach_connnection(%struct.Curl_easy*, %struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
