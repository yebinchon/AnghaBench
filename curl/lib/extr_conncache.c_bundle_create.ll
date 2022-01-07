; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_conncache.c_bundle_create.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_conncache.c_bundle_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }
%struct.connectbundle = type { i32, i32, i64 }

@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@BUNDLE_UNKNOWN = common dso_local global i32 0, align 4
@conn_llist_dtor = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, %struct.connectbundle**)* @bundle_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bundle_create(%struct.Curl_easy* %0, %struct.connectbundle** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.connectbundle**, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store %struct.connectbundle** %1, %struct.connectbundle*** %5, align 8
  %6 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %7 = load %struct.connectbundle**, %struct.connectbundle*** %5, align 8
  %8 = load %struct.connectbundle*, %struct.connectbundle** %7, align 8
  %9 = icmp eq %struct.connectbundle* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @DEBUGASSERT(i32 %10)
  %12 = call %struct.connectbundle* @malloc(i32 16)
  %13 = load %struct.connectbundle**, %struct.connectbundle*** %5, align 8
  store %struct.connectbundle* %12, %struct.connectbundle** %13, align 8
  %14 = load %struct.connectbundle**, %struct.connectbundle*** %5, align 8
  %15 = load %struct.connectbundle*, %struct.connectbundle** %14, align 8
  %16 = icmp ne %struct.connectbundle* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %18, i32* %3, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.connectbundle**, %struct.connectbundle*** %5, align 8
  %21 = load %struct.connectbundle*, %struct.connectbundle** %20, align 8
  %22 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @BUNDLE_UNKNOWN, align 4
  %24 = load %struct.connectbundle**, %struct.connectbundle*** %5, align 8
  %25 = load %struct.connectbundle*, %struct.connectbundle** %24, align 8
  %26 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.connectbundle**, %struct.connectbundle*** %5, align 8
  %28 = load %struct.connectbundle*, %struct.connectbundle** %27, align 8
  %29 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %28, i32 0, i32 0
  %30 = load i64, i64* @conn_llist_dtor, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @Curl_llist_init(i32* %29, i32 %31)
  %33 = load i32, i32* @CURLE_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %19, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local %struct.connectbundle* @malloc(i32) #1

declare dso_local i32 @Curl_llist_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
