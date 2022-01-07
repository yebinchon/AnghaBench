; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_easy.c_dupset.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_easy.c_dupset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i64*, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@STRING_LAST = common dso_local global i32 0, align 4
@STRING_LASTZEROTERMINATED = common dso_local global i32 0, align 4
@STRING_COPYPOSTFIELDS = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.Curl_easy*, %struct.Curl_easy*)* @dupset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dupset(%struct.Curl_easy* %0, %struct.Curl_easy* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store %struct.Curl_easy* %1, %struct.Curl_easy** %5, align 8
  %8 = load i64, i64* @CURLE_OK, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %10 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %9, i32 0, i32 0
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %12 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %11, i32 0, i32 0
  %13 = bitcast %struct.TYPE_4__* %10 to i8*
  %14 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 40, i1 false)
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %19 = call i32 @Curl_mime_initpart(i32* %17, %struct.Curl_easy* %18)
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* @STRING_LAST, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i64* %23, i32 0, i32 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %55, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @STRING_LASTZEROTERMINATED, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %35 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %42 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @Curl_setstropt(i64* %40, i64 %48)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* %3, align 8
  br label %143

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %29

58:                                               ; preds = %29
  %59 = load i32, i32* @STRING_COPYPOSTFIELDS, align 4
  store i32 %59, i32* %7, align 4
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %61 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %120

65:                                               ; preds = %58
  %66 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %67 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %120

75:                                               ; preds = %65
  %76 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %77 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %85 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @curlx_sotouz(i64 %87)
  %89 = call i64 @Curl_memdup(i64 %83, i32 %88)
  %90 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %91 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %89, i64* %96, align 8
  %97 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %98 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %75
  %107 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %107, i64* %3, align 8
  br label %143

108:                                              ; preds = %75
  %109 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %110 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %118 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  store i64 %116, i64* %119, align 8
  br label %120

120:                                              ; preds = %108, %65, %58
  %121 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %122 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %125 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = call i64 @Curl_mime_duppart(i32* %123, i32* %126)
  store i64 %127, i64* %6, align 8
  %128 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %129 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %120
  %134 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %135 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %139 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i64 %137, i64* %140, align 8
  br label %141

141:                                              ; preds = %133, %120
  %142 = load i64, i64* %6, align 8
  store i64 %142, i64* %3, align 8
  br label %143

143:                                              ; preds = %141, %106, %52
  %144 = load i64, i64* %3, align 8
  ret i64 %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Curl_mime_initpart(i32*, %struct.Curl_easy*) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i64 @Curl_setstropt(i64*, i64) #2

declare dso_local i64 @Curl_memdup(i64, i32) #2

declare dso_local i32 @curlx_sotouz(i64) #2

declare dso_local i64 @Curl_mime_duppart(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
