; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_llist.c_Curl_llist_remove.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_llist.c_Curl_llist_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_llist = type { i64, i32 (i8*, i8*)*, %struct.TYPE_2__*, %struct.curl_llist_element* }
%struct.TYPE_2__ = type { %struct.curl_llist_element* }
%struct.curl_llist_element = type { %struct.curl_llist_element*, %struct.TYPE_2__*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_llist_remove(%struct.curl_llist* %0, %struct.curl_llist_element* %1, i8* %2) #0 {
  %4 = alloca %struct.curl_llist*, align 8
  %5 = alloca %struct.curl_llist_element*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.curl_llist* %0, %struct.curl_llist** %4, align 8
  store %struct.curl_llist_element* %1, %struct.curl_llist_element** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %9 = icmp eq %struct.curl_llist_element* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load %struct.curl_llist*, %struct.curl_llist** %4, align 8
  %12 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %3
  br label %106

16:                                               ; preds = %10
  %17 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %18 = load %struct.curl_llist*, %struct.curl_llist** %4, align 8
  %19 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %18, i32 0, i32 3
  %20 = load %struct.curl_llist_element*, %struct.curl_llist_element** %19, align 8
  %21 = icmp eq %struct.curl_llist_element* %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %24 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %23, i32 0, i32 0
  %25 = load %struct.curl_llist_element*, %struct.curl_llist_element** %24, align 8
  %26 = load %struct.curl_llist*, %struct.curl_llist** %4, align 8
  %27 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %26, i32 0, i32 3
  store %struct.curl_llist_element* %25, %struct.curl_llist_element** %27, align 8
  %28 = load %struct.curl_llist*, %struct.curl_llist** %4, align 8
  %29 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %28, i32 0, i32 3
  %30 = load %struct.curl_llist_element*, %struct.curl_llist_element** %29, align 8
  %31 = icmp eq %struct.curl_llist_element* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.curl_llist*, %struct.curl_llist** %4, align 8
  %34 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %33, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %34, align 8
  br label %40

35:                                               ; preds = %22
  %36 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %37 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %36, i32 0, i32 0
  %38 = load %struct.curl_llist_element*, %struct.curl_llist_element** %37, align 8
  %39 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %38, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %39, align 8
  br label %40

40:                                               ; preds = %35, %32
  br label %80

41:                                               ; preds = %16
  %42 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %43 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %48 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %47, i32 0, i32 0
  %49 = load %struct.curl_llist_element*, %struct.curl_llist_element** %48, align 8
  %50 = load %struct.curl_llist*, %struct.curl_llist** %4, align 8
  %51 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %50, i32 0, i32 3
  store %struct.curl_llist_element* %49, %struct.curl_llist_element** %51, align 8
  br label %60

52:                                               ; preds = %41
  %53 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %54 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %53, i32 0, i32 0
  %55 = load %struct.curl_llist_element*, %struct.curl_llist_element** %54, align 8
  %56 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %57 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store %struct.curl_llist_element* %55, %struct.curl_llist_element** %59, align 8
  br label %60

60:                                               ; preds = %52, %46
  %61 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %62 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %61, i32 0, i32 0
  %63 = load %struct.curl_llist_element*, %struct.curl_llist_element** %62, align 8
  %64 = icmp ne %struct.curl_llist_element* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %67 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load %struct.curl_llist*, %struct.curl_llist** %4, align 8
  %70 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %69, i32 0, i32 2
  store %struct.TYPE_2__* %68, %struct.TYPE_2__** %70, align 8
  br label %79

71:                                               ; preds = %60
  %72 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %73 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %76 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %75, i32 0, i32 0
  %77 = load %struct.curl_llist_element*, %struct.curl_llist_element** %76, align 8
  %78 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %77, i32 0, i32 1
  store %struct.TYPE_2__* %74, %struct.TYPE_2__** %78, align 8
  br label %79

79:                                               ; preds = %71, %65
  br label %80

80:                                               ; preds = %79, %40
  %81 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %82 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = bitcast i32* %83 to i8*
  store i8* %84, i8** %7, align 8
  %85 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %86 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  %87 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %88 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %87, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %88, align 8
  %89 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %90 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %89, i32 0, i32 0
  store %struct.curl_llist_element* null, %struct.curl_llist_element** %90, align 8
  %91 = load %struct.curl_llist*, %struct.curl_llist** %4, align 8
  %92 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  %95 = load %struct.curl_llist*, %struct.curl_llist** %4, align 8
  %96 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %95, i32 0, i32 1
  %97 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %96, align 8
  %98 = icmp ne i32 (i8*, i8*)* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %80
  %100 = load %struct.curl_llist*, %struct.curl_llist** %4, align 8
  %101 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %100, i32 0, i32 1
  %102 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %101, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 %102(i8* %103, i8* %104)
  br label %106

106:                                              ; preds = %15, %99, %80
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
