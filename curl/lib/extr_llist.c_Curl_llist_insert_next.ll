; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_llist.c_Curl_llist_insert_next.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_llist.c_Curl_llist_insert_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_llist = type { i64, %struct.curl_llist_element*, %struct.curl_llist_element* }
%struct.curl_llist_element = type { %struct.curl_llist_element*, %struct.curl_llist_element*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_llist_insert_next(%struct.curl_llist* %0, %struct.curl_llist_element* %1, i8* %2, %struct.curl_llist_element* %3) #0 {
  %5 = alloca %struct.curl_llist*, align 8
  %6 = alloca %struct.curl_llist_element*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.curl_llist_element*, align 8
  store %struct.curl_llist* %0, %struct.curl_llist** %5, align 8
  store %struct.curl_llist_element* %1, %struct.curl_llist_element** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.curl_llist_element* %3, %struct.curl_llist_element** %8, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %11 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %13 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %4
  %17 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %18 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %19 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %18, i32 0, i32 2
  store %struct.curl_llist_element* %17, %struct.curl_llist_element** %19, align 8
  %20 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %21 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %20, i32 0, i32 2
  %22 = load %struct.curl_llist_element*, %struct.curl_llist_element** %21, align 8
  %23 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %22, i32 0, i32 1
  store %struct.curl_llist_element* null, %struct.curl_llist_element** %23, align 8
  %24 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %25 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %24, i32 0, i32 2
  %26 = load %struct.curl_llist_element*, %struct.curl_llist_element** %25, align 8
  %27 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %26, i32 0, i32 0
  store %struct.curl_llist_element* null, %struct.curl_llist_element** %27, align 8
  %28 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %29 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %30 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %29, i32 0, i32 1
  store %struct.curl_llist_element* %28, %struct.curl_llist_element** %30, align 8
  br label %84

31:                                               ; preds = %4
  %32 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %33 = icmp ne %struct.curl_llist_element* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %36 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %35, i32 0, i32 0
  %37 = load %struct.curl_llist_element*, %struct.curl_llist_element** %36, align 8
  br label %42

38:                                               ; preds = %31
  %39 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %40 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %39, i32 0, i32 2
  %41 = load %struct.curl_llist_element*, %struct.curl_llist_element** %40, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi %struct.curl_llist_element* [ %37, %34 ], [ %41, %38 ]
  %44 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %45 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %44, i32 0, i32 0
  store %struct.curl_llist_element* %43, %struct.curl_llist_element** %45, align 8
  %46 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %47 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %48 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %47, i32 0, i32 1
  store %struct.curl_llist_element* %46, %struct.curl_llist_element** %48, align 8
  %49 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %50 = icmp ne %struct.curl_llist_element* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %42
  %52 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %53 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %54 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %53, i32 0, i32 2
  %55 = load %struct.curl_llist_element*, %struct.curl_llist_element** %54, align 8
  %56 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %55, i32 0, i32 1
  store %struct.curl_llist_element* %52, %struct.curl_llist_element** %56, align 8
  %57 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %58 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %59 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %58, i32 0, i32 2
  store %struct.curl_llist_element* %57, %struct.curl_llist_element** %59, align 8
  br label %76

60:                                               ; preds = %42
  %61 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %62 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %61, i32 0, i32 0
  %63 = load %struct.curl_llist_element*, %struct.curl_llist_element** %62, align 8
  %64 = icmp ne %struct.curl_llist_element* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %67 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %68 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %67, i32 0, i32 0
  %69 = load %struct.curl_llist_element*, %struct.curl_llist_element** %68, align 8
  %70 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %69, i32 0, i32 1
  store %struct.curl_llist_element* %66, %struct.curl_llist_element** %70, align 8
  br label %75

71:                                               ; preds = %60
  %72 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %73 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %74 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %73, i32 0, i32 1
  store %struct.curl_llist_element* %72, %struct.curl_llist_element** %74, align 8
  br label %75

75:                                               ; preds = %71, %65
  br label %76

76:                                               ; preds = %75, %51
  %77 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %78 = icmp ne %struct.curl_llist_element* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %81 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %82 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %81, i32 0, i32 0
  store %struct.curl_llist_element* %80, %struct.curl_llist_element** %82, align 8
  br label %83

83:                                               ; preds = %79, %76
  br label %84

84:                                               ; preds = %83, %16
  %85 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %86 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
