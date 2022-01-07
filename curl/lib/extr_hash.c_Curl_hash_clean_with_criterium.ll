; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_clean_with_criterium.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_clean_with_criterium.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_hash = type { i32, i32, %struct.curl_llist* }
%struct.curl_llist = type { %struct.curl_llist_element* }
%struct.curl_llist_element = type { %struct.curl_llist_element*, %struct.curl_hash_element* }
%struct.curl_hash_element = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_hash_clean_with_criterium(%struct.curl_hash* %0, i8* %1, i32 (i8*, i8*)* %2) #0 {
  %4 = alloca %struct.curl_hash*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i8*)*, align 8
  %7 = alloca %struct.curl_llist_element*, align 8
  %8 = alloca %struct.curl_llist_element*, align 8
  %9 = alloca %struct.curl_llist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.curl_hash_element*, align 8
  store %struct.curl_hash* %0, %struct.curl_hash** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %6, align 8
  %12 = load %struct.curl_hash*, %struct.curl_hash** %4, align 8
  %13 = icmp ne %struct.curl_hash* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %68

15:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %65, %15
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.curl_hash*, %struct.curl_hash** %4, align 8
  %19 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %16
  %23 = load %struct.curl_hash*, %struct.curl_hash** %4, align 8
  %24 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %23, i32 0, i32 2
  %25 = load %struct.curl_llist*, %struct.curl_llist** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %25, i64 %27
  store %struct.curl_llist* %28, %struct.curl_llist** %9, align 8
  %29 = load %struct.curl_llist*, %struct.curl_llist** %9, align 8
  %30 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %29, i32 0, i32 0
  %31 = load %struct.curl_llist_element*, %struct.curl_llist_element** %30, align 8
  store %struct.curl_llist_element* %31, %struct.curl_llist_element** %7, align 8
  br label %32

32:                                               ; preds = %62, %22
  %33 = load %struct.curl_llist_element*, %struct.curl_llist_element** %7, align 8
  %34 = icmp ne %struct.curl_llist_element* %33, null
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load %struct.curl_llist_element*, %struct.curl_llist_element** %7, align 8
  %37 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %36, i32 0, i32 1
  %38 = load %struct.curl_hash_element*, %struct.curl_hash_element** %37, align 8
  store %struct.curl_hash_element* %38, %struct.curl_hash_element** %11, align 8
  %39 = load %struct.curl_llist_element*, %struct.curl_llist_element** %7, align 8
  %40 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %39, i32 0, i32 0
  %41 = load %struct.curl_llist_element*, %struct.curl_llist_element** %40, align 8
  store %struct.curl_llist_element* %41, %struct.curl_llist_element** %8, align 8
  %42 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %6, align 8
  %43 = icmp eq i32 (i8*, i8*)* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %35
  %45 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %6, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.curl_hash_element*, %struct.curl_hash_element** %11, align 8
  %48 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 %45(i8* %46, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %44, %35
  %53 = load %struct.curl_llist*, %struct.curl_llist** %9, align 8
  %54 = load %struct.curl_llist_element*, %struct.curl_llist_element** %7, align 8
  %55 = load %struct.curl_hash*, %struct.curl_hash** %4, align 8
  %56 = bitcast %struct.curl_hash* %55 to i8*
  %57 = call i32 @Curl_llist_remove(%struct.curl_llist* %53, %struct.curl_llist_element* %54, i8* %56)
  %58 = load %struct.curl_hash*, %struct.curl_hash** %4, align 8
  %59 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %52, %44
  %63 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  store %struct.curl_llist_element* %63, %struct.curl_llist_element** %7, align 8
  br label %32

64:                                               ; preds = %32
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %16

68:                                               ; preds = %14, %16
  ret void
}

declare dso_local i32 @Curl_llist_remove(%struct.curl_llist*, %struct.curl_llist_element*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
