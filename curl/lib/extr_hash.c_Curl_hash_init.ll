; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_init.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_hash = type { i32, i32*, i64, i64, i64, i64 }

@hash_element_dtor = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_hash_init(%struct.curl_hash* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.curl_hash*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.curl_hash* %0, %struct.curl_hash** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %5
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %18, %15, %5
  store i32 1, i32* %6, align 4
  br label %73

25:                                               ; preds = %21
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.curl_hash*, %struct.curl_hash** %7, align 8
  %28 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %27, i32 0, i32 5
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.curl_hash*, %struct.curl_hash** %7, align 8
  %31 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %30, i32 0, i32 4
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.curl_hash*, %struct.curl_hash** %7, align 8
  %34 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load %struct.curl_hash*, %struct.curl_hash** %7, align 8
  %36 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.curl_hash*, %struct.curl_hash** %7, align 8
  %39 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32* @malloc(i32 %43)
  %45 = load %struct.curl_hash*, %struct.curl_hash** %7, align 8
  %46 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.curl_hash*, %struct.curl_hash** %7, align 8
  %48 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %66, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.curl_hash*, %struct.curl_hash** %7, align 8
  %58 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i64, i64* @hash_element_dtor, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @Curl_llist_init(i32* %62, i32 %64)
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %52

69:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %73

70:                                               ; preds = %25
  %71 = load %struct.curl_hash*, %struct.curl_hash** %7, align 8
  %72 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  store i32 1, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %69, %24
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @Curl_llist_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
