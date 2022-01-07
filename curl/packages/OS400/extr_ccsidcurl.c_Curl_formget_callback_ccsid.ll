; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_Curl_formget_callback_ccsid.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_Curl_formget_callback_ccsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i8*, i64)*, i32, i32 }

@MAX_CONV_EXPANSION = common dso_local global i64 0, align 8
@ASCII_CCSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @Curl_formget_callback_ccsid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Curl_formget_callback_ccsid(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** %18, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 %19(i32 %22, i8* %23, i64 %24)
  store i64 %25, i64* %4, align 8
  br label %73

26:                                               ; preds = %3
  %27 = load i64, i64* @MAX_CONV_EXPANSION, align 8
  %28 = load i64, i64* %7, align 8
  %29 = mul i64 %27, %28
  %30 = call i8* @malloc(i64 %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i64 -1, i64* %4, align 8
  br label %73

34:                                               ; preds = %26
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* @MAX_CONV_EXPANSION, align 8
  %37 = load i64, i64* %7, align 8
  %38 = mul i64 %36, %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* @ASCII_CCSID, align 4
  %45 = call i32 @convert(i8* %35, i64 %38, i32 %41, i8* %42, i64 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @free(i8* %49)
  store i64 -1, i64* %4, align 8
  br label %73

51:                                               ; preds = %34
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = call i64 %54(i32 %57, i8* %58, i64 %60)
  store i64 %61, i64* %11, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i64, i64* %11, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i64, i64* %7, align 8
  br label %71

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i64 [ %69, %68 ], [ -1, %70 ]
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %71, %48, %33, %16
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @convert(i8*, i64, i32, i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
