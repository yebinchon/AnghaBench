; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_add.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_hash = type { i32, i64 (i32, i32, i8*, i64)* }
%struct.curl_hash_element = type { i32, i32, i32 }
%struct.curl_llist_element = type { i64, %struct.curl_llist_element* }
%struct.curl_llist = type { i32, %struct.curl_llist_element* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Curl_hash_add(%struct.curl_hash* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.curl_hash*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.curl_hash_element*, align 8
  %11 = alloca %struct.curl_llist_element*, align 8
  %12 = alloca %struct.curl_llist*, align 8
  store %struct.curl_hash* %0, %struct.curl_hash** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.curl_hash*, %struct.curl_hash** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call %struct.curl_llist* @FETCH_LIST(%struct.curl_hash* %13, i8* %14, i64 %15)
  store %struct.curl_llist* %16, %struct.curl_llist** %12, align 8
  %17 = load %struct.curl_llist*, %struct.curl_llist** %12, align 8
  %18 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %17, i32 0, i32 1
  %19 = load %struct.curl_llist_element*, %struct.curl_llist_element** %18, align 8
  store %struct.curl_llist_element* %19, %struct.curl_llist_element** %11, align 8
  br label %20

20:                                               ; preds = %52, %4
  %21 = load %struct.curl_llist_element*, %struct.curl_llist_element** %11, align 8
  %22 = icmp ne %struct.curl_llist_element* %21, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load %struct.curl_llist_element*, %struct.curl_llist_element** %11, align 8
  %25 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.curl_hash_element*
  store %struct.curl_hash_element* %27, %struct.curl_hash_element** %10, align 8
  %28 = load %struct.curl_hash*, %struct.curl_hash** %6, align 8
  %29 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %28, i32 0, i32 1
  %30 = load i64 (i32, i32, i8*, i64)*, i64 (i32, i32, i8*, i64)** %29, align 8
  %31 = load %struct.curl_hash_element*, %struct.curl_hash_element** %10, align 8
  %32 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.curl_hash_element*, %struct.curl_hash_element** %10, align 8
  %35 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i64 %30(i32 %33, i32 %36, i8* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %23
  %42 = load %struct.curl_llist*, %struct.curl_llist** %12, align 8
  %43 = load %struct.curl_llist_element*, %struct.curl_llist_element** %11, align 8
  %44 = load %struct.curl_hash*, %struct.curl_hash** %6, align 8
  %45 = bitcast %struct.curl_hash* %44 to i8*
  %46 = call i32 @Curl_llist_remove(%struct.curl_llist* %42, %struct.curl_llist_element* %43, i8* %45)
  %47 = load %struct.curl_hash*, %struct.curl_hash** %6, align 8
  %48 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 8
  br label %56

51:                                               ; preds = %23
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.curl_llist_element*, %struct.curl_llist_element** %11, align 8
  %54 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %53, i32 0, i32 1
  %55 = load %struct.curl_llist_element*, %struct.curl_llist_element** %54, align 8
  store %struct.curl_llist_element* %55, %struct.curl_llist_element** %11, align 8
  br label %20

56:                                               ; preds = %41, %20
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call %struct.curl_hash_element* @mk_hash_element(i8* %57, i64 %58, i8* %59)
  store %struct.curl_hash_element* %60, %struct.curl_hash_element** %10, align 8
  %61 = load %struct.curl_hash_element*, %struct.curl_hash_element** %10, align 8
  %62 = icmp ne %struct.curl_hash_element* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = load %struct.curl_llist*, %struct.curl_llist** %12, align 8
  %65 = load %struct.curl_llist*, %struct.curl_llist** %12, align 8
  %66 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.curl_hash_element*, %struct.curl_hash_element** %10, align 8
  %69 = load %struct.curl_hash_element*, %struct.curl_hash_element** %10, align 8
  %70 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %69, i32 0, i32 0
  %71 = call i32 @Curl_llist_insert_next(%struct.curl_llist* %64, i32 %67, %struct.curl_hash_element* %68, i32* %70)
  %72 = load %struct.curl_hash*, %struct.curl_hash** %6, align 8
  %73 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load i8*, i8** %9, align 8
  store i8* %76, i8** %5, align 8
  br label %78

77:                                               ; preds = %56
  store i8* null, i8** %5, align 8
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i8*, i8** %5, align 8
  ret i8* %79
}

declare dso_local %struct.curl_llist* @FETCH_LIST(%struct.curl_hash*, i8*, i64) #1

declare dso_local i32 @Curl_llist_remove(%struct.curl_llist*, %struct.curl_llist_element*, i8*) #1

declare dso_local %struct.curl_hash_element* @mk_hash_element(i8*, i64, i8*) #1

declare dso_local i32 @Curl_llist_insert_next(%struct.curl_llist*, i32, %struct.curl_hash_element*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
