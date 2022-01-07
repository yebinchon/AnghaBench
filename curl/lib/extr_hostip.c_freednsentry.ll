; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hostip.c_freednsentry.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hostip.c_freednsentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_dns_entry = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @freednsentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freednsentry(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Curl_dns_entry*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.Curl_dns_entry*
  store %struct.Curl_dns_entry* %5, %struct.Curl_dns_entry** %3, align 8
  %6 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %3, align 8
  %7 = icmp ne %struct.Curl_dns_entry* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %3, align 8
  %10 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i1 [ false, %1 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @DEBUGASSERT(i32 %15)
  %17 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %3, align 8
  %18 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %3, align 8
  %22 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %3, align 8
  %27 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @Curl_freeaddrinfo(i32 %28)
  %30 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %3, align 8
  %31 = call i32 @free(%struct.Curl_dns_entry* %30)
  br label %32

32:                                               ; preds = %25, %13
  ret void
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i32 @Curl_freeaddrinfo(i32) #1

declare dso_local i32 @free(%struct.Curl_dns_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
