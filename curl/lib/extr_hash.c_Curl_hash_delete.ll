; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_delete.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_hash = type { i32, i64 (i32, i32, i8*, i64)* }
%struct.curl_llist_element = type { %struct.curl_hash_element*, %struct.curl_llist_element* }
%struct.curl_hash_element = type { i32, i32 }
%struct.curl_llist = type { %struct.curl_llist_element* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_hash_delete(%struct.curl_hash* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.curl_hash*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.curl_llist_element*, align 8
  %9 = alloca %struct.curl_llist*, align 8
  %10 = alloca %struct.curl_hash_element*, align 8
  store %struct.curl_hash* %0, %struct.curl_hash** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.curl_hash*, %struct.curl_hash** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call %struct.curl_llist* @FETCH_LIST(%struct.curl_hash* %11, i8* %12, i64 %13)
  store %struct.curl_llist* %14, %struct.curl_llist** %9, align 8
  %15 = load %struct.curl_llist*, %struct.curl_llist** %9, align 8
  %16 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %15, i32 0, i32 0
  %17 = load %struct.curl_llist_element*, %struct.curl_llist_element** %16, align 8
  store %struct.curl_llist_element* %17, %struct.curl_llist_element** %8, align 8
  br label %18

18:                                               ; preds = %49, %3
  %19 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %20 = icmp ne %struct.curl_llist_element* %19, null
  br i1 %20, label %21, label %53

21:                                               ; preds = %18
  %22 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %23 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %22, i32 0, i32 0
  %24 = load %struct.curl_hash_element*, %struct.curl_hash_element** %23, align 8
  store %struct.curl_hash_element* %24, %struct.curl_hash_element** %10, align 8
  %25 = load %struct.curl_hash*, %struct.curl_hash** %5, align 8
  %26 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %25, i32 0, i32 1
  %27 = load i64 (i32, i32, i8*, i64)*, i64 (i32, i32, i8*, i64)** %26, align 8
  %28 = load %struct.curl_hash_element*, %struct.curl_hash_element** %10, align 8
  %29 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.curl_hash_element*, %struct.curl_hash_element** %10, align 8
  %32 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 %27(i32 %30, i32 %33, i8* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %21
  %39 = load %struct.curl_llist*, %struct.curl_llist** %9, align 8
  %40 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %41 = load %struct.curl_hash*, %struct.curl_hash** %5, align 8
  %42 = bitcast %struct.curl_hash* %41 to i8*
  %43 = call i32 @Curl_llist_remove(%struct.curl_llist* %39, %struct.curl_llist_element* %40, i8* %42)
  %44 = load %struct.curl_hash*, %struct.curl_hash** %5, align 8
  %45 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  store i32 0, i32* %4, align 4
  br label %54

48:                                               ; preds = %21
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %51 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %50, i32 0, i32 1
  %52 = load %struct.curl_llist_element*, %struct.curl_llist_element** %51, align 8
  store %struct.curl_llist_element* %52, %struct.curl_llist_element** %8, align 8
  br label %18

53:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.curl_llist* @FETCH_LIST(%struct.curl_hash*, i8*, i64) #1

declare dso_local i32 @Curl_llist_remove(%struct.curl_llist*, %struct.curl_llist_element*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
