; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_curl_certinfo_free_all.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_curl_certinfo_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_certinfo = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @curl_certinfo_free_all(%struct.curl_certinfo* %0) #0 {
  %2 = alloca %struct.curl_certinfo*, align 8
  %3 = alloca i32, align 4
  store %struct.curl_certinfo* %0, %struct.curl_certinfo** %2, align 8
  %4 = load %struct.curl_certinfo*, %struct.curl_certinfo** %2, align 8
  %5 = icmp ne %struct.curl_certinfo* %4, null
  br i1 %5, label %6, label %40

6:                                                ; preds = %1
  %7 = load %struct.curl_certinfo*, %struct.curl_certinfo** %2, align 8
  %8 = getelementptr inbounds %struct.curl_certinfo, %struct.curl_certinfo* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %27, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.curl_certinfo*, %struct.curl_certinfo** %2, align 8
  %15 = getelementptr inbounds %struct.curl_certinfo, %struct.curl_certinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.curl_certinfo*, %struct.curl_certinfo** %2, align 8
  %20 = getelementptr inbounds %struct.curl_certinfo, %struct.curl_certinfo* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @curl_slist_free_all(i32 %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.curl_certinfo*, %struct.curl_certinfo** %2, align 8
  %32 = getelementptr inbounds %struct.curl_certinfo, %struct.curl_certinfo* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = call i32 @free(i8* %34)
  br label %36

36:                                               ; preds = %30, %6
  %37 = load %struct.curl_certinfo*, %struct.curl_certinfo** %2, align 8
  %38 = bitcast %struct.curl_certinfo* %37 to i8*
  %39 = call i32 @free(i8* %38)
  br label %40

40:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @curl_slist_free_all(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
