; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_Curl_formadd_convert.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_Curl_formadd_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_forms = type { i8* }

@MAX_CONV_EXPANSION = common dso_local global i32 0, align 4
@ASCII_CCSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.curl_forms*, i32, i32, i32)* @Curl_formadd_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Curl_formadd_convert(%struct.curl_forms* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.curl_forms*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.curl_forms* %0, %struct.curl_forms** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = load %struct.curl_forms*, %struct.curl_forms** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %16, i64 %18
  %20 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %100

24:                                               ; preds = %15
  %25 = load i32, i32* %8, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.curl_forms*, %struct.curl_forms** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %28, i64 %30
  %32 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %10, align 4
  br label %44

35:                                               ; preds = %24
  %36 = load %struct.curl_forms*, %struct.curl_forms** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %36, i64 %38
  %40 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %35, %27
  %45 = load i32, i32* @MAX_CONV_EXPANSION, align 4
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %45, %46
  %48 = call i8* @malloc(i32 %47)
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  br label %100

52:                                               ; preds = %44
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* @MAX_CONV_EXPANSION, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* @ASCII_CCSID, align 4
  %58 = load %struct.curl_forms*, %struct.curl_forms** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %58, i64 %60
  %62 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @convert(i8* %53, i32 %56, i32 %57, i8* %63, i32 %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %52
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @free(i8* %70)
  store i32 -1, i32* %5, align 4
  br label %100

72:                                               ; preds = %52
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i8* @realloc(i8* %73, i32 %74)
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i8*, i8** %12, align 8
  store i8* %79, i8** %11, align 8
  br label %80

80:                                               ; preds = %78, %72
  %81 = load i8*, i8** %11, align 8
  %82 = load %struct.curl_forms*, %struct.curl_forms** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %82, i64 %84
  %86 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %85, i32 0, i32 0
  store i8* %81, i8** %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.curl_forms*, %struct.curl_forms** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %93, i64 %95
  %97 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %96, i32 0, i32 0
  store i8* %92, i8** %97, align 8
  br label %98

98:                                               ; preds = %89, %80
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %69, %51, %23
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @convert(i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
