; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_formdata.c_AddHttpPost.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_formdata.c_AddHttpPost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }
%struct.curl_httppost = type { i8*, i64, i8*, i8*, i64, i8*, i8*, i8*, i64, %struct.curl_httppost*, %struct.curl_httppost*, %struct.curl_slist*, i32 }

@CURL_HTTPPOST_LARGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.curl_httppost* (i8*, i64, i8*, i32, i8*, i64, i8*, i64, %struct.curl_slist*, i8*, i8*, %struct.curl_httppost*, %struct.curl_httppost**, %struct.curl_httppost**)* @AddHttpPost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.curl_httppost* @AddHttpPost(i8* %0, i64 %1, i8* %2, i32 %3, i8* %4, i64 %5, i8* %6, i64 %7, %struct.curl_slist* %8, i8* %9, i8* %10, %struct.curl_httppost* %11, %struct.curl_httppost** %12, %struct.curl_httppost** %13) #0 {
  %15 = alloca %struct.curl_httppost*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.curl_slist*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.curl_httppost*, align 8
  %28 = alloca %struct.curl_httppost**, align 8
  %29 = alloca %struct.curl_httppost**, align 8
  %30 = alloca %struct.curl_httppost*, align 8
  store i8* %0, i8** %16, align 8
  store i64 %1, i64* %17, align 8
  store i8* %2, i8** %18, align 8
  store i32 %3, i32* %19, align 4
  store i8* %4, i8** %20, align 8
  store i64 %5, i64* %21, align 8
  store i8* %6, i8** %22, align 8
  store i64 %7, i64* %23, align 8
  store %struct.curl_slist* %8, %struct.curl_slist** %24, align 8
  store i8* %9, i8** %25, align 8
  store i8* %10, i8** %26, align 8
  store %struct.curl_httppost* %11, %struct.curl_httppost** %27, align 8
  store %struct.curl_httppost** %12, %struct.curl_httppost*** %28, align 8
  store %struct.curl_httppost** %13, %struct.curl_httppost*** %29, align 8
  %31 = call %struct.curl_httppost* @calloc(i32 1, i32 104)
  store %struct.curl_httppost* %31, %struct.curl_httppost** %30, align 8
  %32 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %33 = icmp ne %struct.curl_httppost* %32, null
  br i1 %33, label %34, label %84

34:                                               ; preds = %14
  %35 = load i8*, i8** %16, align 8
  %36 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %37 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load i64, i64* %17, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64, i64* %17, align 8
  br label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %16, align 8
  %47 = call i64 @strlen(i8* %46)
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i64 [ %44, %43 ], [ %47, %45 ]
  br label %51

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i64 [ %49, %48 ], [ 0, %50 ]
  %53 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %54 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %57 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %19, align 4
  %59 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %60 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %59, i32 0, i32 12
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** %20, align 8
  %62 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %63 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* %21, align 8
  %65 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %66 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load i8*, i8** %22, align 8
  %68 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %69 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.curl_slist*, %struct.curl_slist** %24, align 8
  %71 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %72 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %71, i32 0, i32 11
  store %struct.curl_slist* %70, %struct.curl_slist** %72, align 8
  %73 = load i8*, i8** %25, align 8
  %74 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %75 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %26, align 8
  %77 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %78 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %77, i32 0, i32 7
  store i8* %76, i8** %78, align 8
  %79 = load i64, i64* %23, align 8
  %80 = load i64, i64* @CURL_HTTPPOST_LARGE, align 8
  %81 = or i64 %79, %80
  %82 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %83 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %82, i32 0, i32 8
  store i64 %81, i64* %83, align 8
  br label %85

84:                                               ; preds = %14
  store %struct.curl_httppost* null, %struct.curl_httppost** %15, align 8
  br label %114

85:                                               ; preds = %51
  %86 = load %struct.curl_httppost*, %struct.curl_httppost** %27, align 8
  %87 = icmp ne %struct.curl_httppost* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.curl_httppost*, %struct.curl_httppost** %27, align 8
  %90 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %89, i32 0, i32 10
  %91 = load %struct.curl_httppost*, %struct.curl_httppost** %90, align 8
  %92 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %93 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %92, i32 0, i32 10
  store %struct.curl_httppost* %91, %struct.curl_httppost** %93, align 8
  %94 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %95 = load %struct.curl_httppost*, %struct.curl_httppost** %27, align 8
  %96 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %95, i32 0, i32 10
  store %struct.curl_httppost* %94, %struct.curl_httppost** %96, align 8
  br label %112

97:                                               ; preds = %85
  %98 = load %struct.curl_httppost**, %struct.curl_httppost*** %29, align 8
  %99 = load %struct.curl_httppost*, %struct.curl_httppost** %98, align 8
  %100 = icmp ne %struct.curl_httppost* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %103 = load %struct.curl_httppost**, %struct.curl_httppost*** %29, align 8
  %104 = load %struct.curl_httppost*, %struct.curl_httppost** %103, align 8
  %105 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %104, i32 0, i32 9
  store %struct.curl_httppost* %102, %struct.curl_httppost** %105, align 8
  br label %109

106:                                              ; preds = %97
  %107 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %108 = load %struct.curl_httppost**, %struct.curl_httppost*** %28, align 8
  store %struct.curl_httppost* %107, %struct.curl_httppost** %108, align 8
  br label %109

109:                                              ; preds = %106, %101
  %110 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  %111 = load %struct.curl_httppost**, %struct.curl_httppost*** %29, align 8
  store %struct.curl_httppost* %110, %struct.curl_httppost** %111, align 8
  br label %112

112:                                              ; preds = %109, %88
  %113 = load %struct.curl_httppost*, %struct.curl_httppost** %30, align 8
  store %struct.curl_httppost* %113, %struct.curl_httppost** %15, align 8
  br label %114

114:                                              ; preds = %112, %84
  %115 = load %struct.curl_httppost*, %struct.curl_httppost** %15, align 8
  ret %struct.curl_httppost* %115
}

declare dso_local %struct.curl_httppost* @calloc(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
