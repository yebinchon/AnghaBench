; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_start_iterate.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_start_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_hash = type { i32 }
%struct.curl_hash_iterator = type { i32*, i64, %struct.curl_hash* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_hash_start_iterate(%struct.curl_hash* %0, %struct.curl_hash_iterator* %1) #0 {
  %3 = alloca %struct.curl_hash*, align 8
  %4 = alloca %struct.curl_hash_iterator*, align 8
  store %struct.curl_hash* %0, %struct.curl_hash** %3, align 8
  store %struct.curl_hash_iterator* %1, %struct.curl_hash_iterator** %4, align 8
  %5 = load %struct.curl_hash*, %struct.curl_hash** %3, align 8
  %6 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %4, align 8
  %7 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %6, i32 0, i32 2
  store %struct.curl_hash* %5, %struct.curl_hash** %7, align 8
  %8 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %4, align 8
  %9 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %4, align 8
  %11 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
