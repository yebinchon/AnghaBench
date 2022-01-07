; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_llist.c_Curl_llist_count.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_llist.c_Curl_llist_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_llist = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_llist_count(%struct.curl_llist* %0) #0 {
  %2 = alloca %struct.curl_llist*, align 8
  store %struct.curl_llist* %0, %struct.curl_llist** %2, align 8
  %3 = load %struct.curl_llist*, %struct.curl_llist** %2, align 8
  %4 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
