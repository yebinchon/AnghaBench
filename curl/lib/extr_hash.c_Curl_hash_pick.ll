; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_pick.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_pick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_hash = type { i64 (i32, i32, i8*, i64)* }
%struct.curl_llist_element = type { %struct.curl_hash_element*, %struct.curl_llist_element* }
%struct.curl_hash_element = type { i8*, i32, i32 }
%struct.curl_llist = type { %struct.curl_llist_element* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Curl_hash_pick(%struct.curl_hash* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
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
  %12 = icmp ne %struct.curl_hash* %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %3
  %14 = load %struct.curl_hash*, %struct.curl_hash** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.curl_llist* @FETCH_LIST(%struct.curl_hash* %14, i8* %15, i64 %16)
  store %struct.curl_llist* %17, %struct.curl_llist** %9, align 8
  %18 = load %struct.curl_llist*, %struct.curl_llist** %9, align 8
  %19 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %18, i32 0, i32 0
  %20 = load %struct.curl_llist_element*, %struct.curl_llist_element** %19, align 8
  store %struct.curl_llist_element* %20, %struct.curl_llist_element** %8, align 8
  br label %21

21:                                               ; preds = %46, %13
  %22 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %23 = icmp ne %struct.curl_llist_element* %22, null
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  %25 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %26 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %25, i32 0, i32 0
  %27 = load %struct.curl_hash_element*, %struct.curl_hash_element** %26, align 8
  store %struct.curl_hash_element* %27, %struct.curl_hash_element** %10, align 8
  %28 = load %struct.curl_hash*, %struct.curl_hash** %5, align 8
  %29 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %28, i32 0, i32 0
  %30 = load i64 (i32, i32, i8*, i64)*, i64 (i32, i32, i8*, i64)** %29, align 8
  %31 = load %struct.curl_hash_element*, %struct.curl_hash_element** %10, align 8
  %32 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.curl_hash_element*, %struct.curl_hash_element** %10, align 8
  %35 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 %30(i32 %33, i32 %36, i8* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load %struct.curl_hash_element*, %struct.curl_hash_element** %10, align 8
  %43 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %4, align 8
  br label %52

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %48 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %47, i32 0, i32 1
  %49 = load %struct.curl_llist_element*, %struct.curl_llist_element** %48, align 8
  store %struct.curl_llist_element* %49, %struct.curl_llist_element** %8, align 8
  br label %21

50:                                               ; preds = %21
  br label %51

51:                                               ; preds = %50, %3
  store i8* null, i8** %4, align 8
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i8*, i8** %4, align 8
  ret i8* %53
}

declare dso_local %struct.curl_llist* @FETCH_LIST(%struct.curl_hash*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
