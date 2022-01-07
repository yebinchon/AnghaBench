; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_Curl_formadd_release_local.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_Curl_formadd_release_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_forms = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.curl_forms*, i32, i32)* @Curl_formadd_release_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Curl_formadd_release_local(%struct.curl_forms* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.curl_forms*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.curl_forms* %0, %struct.curl_forms** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %43, %3
  %8 = load i32, i32* %5, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %11
  %16 = load %struct.curl_forms*, %struct.curl_forms** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %16, i64 %18
  %20 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @Curl_is_formadd_string(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %15
  %25 = load %struct.curl_forms*, %struct.curl_forms** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %25, i64 %27
  %29 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.curl_forms*, %struct.curl_forms** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %33, i64 %35
  %37 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @free(i8* %39)
  br label %41

41:                                               ; preds = %32, %24
  br label %42

42:                                               ; preds = %41, %15
  br label %43

43:                                               ; preds = %42, %11
  br label %7

44:                                               ; preds = %7
  %45 = load %struct.curl_forms*, %struct.curl_forms** %4, align 8
  %46 = bitcast %struct.curl_forms* %45 to i8*
  %47 = call i32 @free(i8* %46)
  ret void
}

declare dso_local i64 @Curl_is_formadd_string(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
