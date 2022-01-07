; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_sh_getentry.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_sh_getentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_sh_entry = type { i32 }
%struct.curl_hash = type { i32 }

@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Curl_sh_entry* (%struct.curl_hash*, i64)* @sh_getentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Curl_sh_entry* @sh_getentry(%struct.curl_hash* %0, i64 %1) #0 {
  %3 = alloca %struct.Curl_sh_entry*, align 8
  %4 = alloca %struct.curl_hash*, align 8
  %5 = alloca i64, align 8
  store %struct.curl_hash* %0, %struct.curl_hash** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.curl_hash*, %struct.curl_hash** %4, align 8
  %11 = bitcast i64* %5 to i8*
  %12 = call %struct.Curl_sh_entry* @Curl_hash_pick(%struct.curl_hash* %10, i8* %11, i32 8)
  store %struct.Curl_sh_entry* %12, %struct.Curl_sh_entry** %3, align 8
  br label %14

13:                                               ; preds = %2
  store %struct.Curl_sh_entry* null, %struct.Curl_sh_entry** %3, align 8
  br label %14

14:                                               ; preds = %13, %9
  %15 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %3, align 8
  ret %struct.Curl_sh_entry* %15
}

declare dso_local %struct.Curl_sh_entry* @Curl_hash_pick(%struct.curl_hash*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
