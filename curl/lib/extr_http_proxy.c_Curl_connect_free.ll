; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http_proxy.c_Curl_connect_free.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http_proxy.c_Curl_connect_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.connectdata* }
%struct.connectdata = type { %struct.http_connect_state* }
%struct.http_connect_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_connect_free(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.Curl_easy*, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.http_connect_state*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %2, align 8
  %5 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %6 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %5, i32 0, i32 0
  %7 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  store %struct.connectdata* %7, %struct.connectdata** %3, align 8
  %8 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 0
  %10 = load %struct.http_connect_state*, %struct.http_connect_state** %9, align 8
  store %struct.http_connect_state* %10, %struct.http_connect_state** %4, align 8
  %11 = load %struct.http_connect_state*, %struct.http_connect_state** %4, align 8
  %12 = icmp ne %struct.http_connect_state* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.http_connect_state*, %struct.http_connect_state** %4, align 8
  %15 = call i32 @free(%struct.http_connect_state* %14)
  %16 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %17 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %16, i32 0, i32 0
  store %struct.http_connect_state* null, %struct.http_connect_state** %17, align 8
  br label %18

18:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @free(%struct.http_connect_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
