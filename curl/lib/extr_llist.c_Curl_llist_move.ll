; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_llist.c_Curl_llist_move.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_llist.c_Curl_llist_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_llist = type { i64, %struct.curl_llist_element*, %struct.curl_llist_element* }
%struct.curl_llist_element = type { %struct.curl_llist_element*, %struct.curl_llist_element* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_llist_move(%struct.curl_llist* %0, %struct.curl_llist_element* %1, %struct.curl_llist* %2, %struct.curl_llist_element* %3) #0 {
  %5 = alloca %struct.curl_llist*, align 8
  %6 = alloca %struct.curl_llist_element*, align 8
  %7 = alloca %struct.curl_llist*, align 8
  %8 = alloca %struct.curl_llist_element*, align 8
  store %struct.curl_llist* %0, %struct.curl_llist** %5, align 8
  store %struct.curl_llist_element* %1, %struct.curl_llist_element** %6, align 8
  store %struct.curl_llist* %2, %struct.curl_llist** %7, align 8
  store %struct.curl_llist_element* %3, %struct.curl_llist_element** %8, align 8
  %9 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %10 = icmp eq %struct.curl_llist_element* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %13 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %4
  br label %125

17:                                               ; preds = %11
  %18 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %19 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %20 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %19, i32 0, i32 2
  %21 = load %struct.curl_llist_element*, %struct.curl_llist_element** %20, align 8
  %22 = icmp eq %struct.curl_llist_element* %18, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %25 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %24, i32 0, i32 0
  %26 = load %struct.curl_llist_element*, %struct.curl_llist_element** %25, align 8
  %27 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %28 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %27, i32 0, i32 2
  store %struct.curl_llist_element* %26, %struct.curl_llist_element** %28, align 8
  %29 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %30 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %29, i32 0, i32 2
  %31 = load %struct.curl_llist_element*, %struct.curl_llist_element** %30, align 8
  %32 = icmp eq %struct.curl_llist_element* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %35 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %34, i32 0, i32 1
  store %struct.curl_llist_element* null, %struct.curl_llist_element** %35, align 8
  br label %41

36:                                               ; preds = %23
  %37 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %38 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %37, i32 0, i32 0
  %39 = load %struct.curl_llist_element*, %struct.curl_llist_element** %38, align 8
  %40 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %39, i32 0, i32 1
  store %struct.curl_llist_element* null, %struct.curl_llist_element** %40, align 8
  br label %41

41:                                               ; preds = %36, %33
  br label %69

42:                                               ; preds = %17
  %43 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %44 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %43, i32 0, i32 0
  %45 = load %struct.curl_llist_element*, %struct.curl_llist_element** %44, align 8
  %46 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %47 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %46, i32 0, i32 1
  %48 = load %struct.curl_llist_element*, %struct.curl_llist_element** %47, align 8
  %49 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %48, i32 0, i32 0
  store %struct.curl_llist_element* %45, %struct.curl_llist_element** %49, align 8
  %50 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %51 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %50, i32 0, i32 0
  %52 = load %struct.curl_llist_element*, %struct.curl_llist_element** %51, align 8
  %53 = icmp ne %struct.curl_llist_element* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %42
  %55 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %56 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %55, i32 0, i32 1
  %57 = load %struct.curl_llist_element*, %struct.curl_llist_element** %56, align 8
  %58 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %59 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %58, i32 0, i32 1
  store %struct.curl_llist_element* %57, %struct.curl_llist_element** %59, align 8
  br label %68

60:                                               ; preds = %42
  %61 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %62 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %61, i32 0, i32 1
  %63 = load %struct.curl_llist_element*, %struct.curl_llist_element** %62, align 8
  %64 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %65 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %64, i32 0, i32 0
  %66 = load %struct.curl_llist_element*, %struct.curl_llist_element** %65, align 8
  %67 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %66, i32 0, i32 1
  store %struct.curl_llist_element* %63, %struct.curl_llist_element** %67, align 8
  br label %68

68:                                               ; preds = %60, %54
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %71 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.curl_llist*, %struct.curl_llist** %7, align 8
  %75 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %69
  %79 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %80 = load %struct.curl_llist*, %struct.curl_llist** %7, align 8
  %81 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %80, i32 0, i32 2
  store %struct.curl_llist_element* %79, %struct.curl_llist_element** %81, align 8
  %82 = load %struct.curl_llist*, %struct.curl_llist** %7, align 8
  %83 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %82, i32 0, i32 2
  %84 = load %struct.curl_llist_element*, %struct.curl_llist_element** %83, align 8
  %85 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %84, i32 0, i32 1
  store %struct.curl_llist_element* null, %struct.curl_llist_element** %85, align 8
  %86 = load %struct.curl_llist*, %struct.curl_llist** %7, align 8
  %87 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %86, i32 0, i32 2
  %88 = load %struct.curl_llist_element*, %struct.curl_llist_element** %87, align 8
  %89 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %88, i32 0, i32 0
  store %struct.curl_llist_element* null, %struct.curl_llist_element** %89, align 8
  %90 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %91 = load %struct.curl_llist*, %struct.curl_llist** %7, align 8
  %92 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %91, i32 0, i32 1
  store %struct.curl_llist_element* %90, %struct.curl_llist_element** %92, align 8
  br label %120

93:                                               ; preds = %69
  %94 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %95 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %94, i32 0, i32 0
  %96 = load %struct.curl_llist_element*, %struct.curl_llist_element** %95, align 8
  %97 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %98 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %97, i32 0, i32 0
  store %struct.curl_llist_element* %96, %struct.curl_llist_element** %98, align 8
  %99 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %100 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %101 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %100, i32 0, i32 1
  store %struct.curl_llist_element* %99, %struct.curl_llist_element** %101, align 8
  %102 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %103 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %102, i32 0, i32 0
  %104 = load %struct.curl_llist_element*, %struct.curl_llist_element** %103, align 8
  %105 = icmp ne %struct.curl_llist_element* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %93
  %107 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %108 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %109 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %108, i32 0, i32 0
  %110 = load %struct.curl_llist_element*, %struct.curl_llist_element** %109, align 8
  %111 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %110, i32 0, i32 1
  store %struct.curl_llist_element* %107, %struct.curl_llist_element** %111, align 8
  br label %116

112:                                              ; preds = %93
  %113 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %114 = load %struct.curl_llist*, %struct.curl_llist** %7, align 8
  %115 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %114, i32 0, i32 1
  store %struct.curl_llist_element* %113, %struct.curl_llist_element** %115, align 8
  br label %116

116:                                              ; preds = %112, %106
  %117 = load %struct.curl_llist_element*, %struct.curl_llist_element** %6, align 8
  %118 = load %struct.curl_llist_element*, %struct.curl_llist_element** %8, align 8
  %119 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %118, i32 0, i32 0
  store %struct.curl_llist_element* %117, %struct.curl_llist_element** %119, align 8
  br label %120

120:                                              ; preds = %116, %78
  %121 = load %struct.curl_llist*, %struct.curl_llist** %7, align 8
  %122 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %120, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
