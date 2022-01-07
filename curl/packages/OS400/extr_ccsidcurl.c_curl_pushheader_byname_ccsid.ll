; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_curl_pushheader_byname_ccsid.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_curl_pushheader_byname_ccsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_pushheaders = type { i32 }

@ASCII_CCSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @curl_pushheader_byname_ccsid(%struct.curl_pushheaders* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.curl_pushheaders*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.curl_pushheaders* %0, %struct.curl_pushheaders** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %4
  %14 = load i32, i32* @ASCII_CCSID, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @dynconvert(i32 %14, i8* %15, i32 -1, i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load %struct.curl_pushheaders*, %struct.curl_pushheaders** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @curl_pushheader_byname(%struct.curl_pushheaders* %21, i8* %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @free(i8* %24)
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* @ASCII_CCSID, align 4
  %32 = call i8* @dynconvert(i32 %29, i8* %30, i32 -1, i32 %31)
  store i8* %32, i8** %9, align 8
  br label %33

33:                                               ; preds = %28, %20
  br label %34

34:                                               ; preds = %33, %13
  br label %35

35:                                               ; preds = %34, %4
  %36 = load i8*, i8** %9, align 8
  ret i8* %36
}

declare dso_local i8* @dynconvert(i32, i8*, i32, i32) #1

declare dso_local i8* @curl_pushheader_byname(%struct.curl_pushheaders*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
