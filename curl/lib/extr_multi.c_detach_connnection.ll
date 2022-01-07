; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_detach_connnection.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_detach_connnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.connectdata*, i32 }
%struct.connectdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Curl_easy*)* @detach_connnection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detach_connnection(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.Curl_easy*, align 8
  %3 = alloca %struct.connectdata*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %2, align 8
  %4 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %5 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %4, i32 0, i32 0
  %6 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  store %struct.connectdata* %6, %struct.connectdata** %3, align 8
  %7 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %8 = icmp ne %struct.connectdata* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 0
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %13 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %12, i32 0, i32 1
  %14 = call i32 @Curl_llist_remove(i32* %11, i32* %13, i32* null)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 0
  store %struct.connectdata* null, %struct.connectdata** %17, align 8
  ret void
}

declare dso_local i32 @Curl_llist_remove(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
