; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_next_element.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hash.c_Curl_hash_next_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_hash_element = type { i32 }
%struct.curl_hash_iterator = type { i32, %struct.TYPE_4__*, %struct.curl_hash* }
%struct.TYPE_4__ = type { %struct.curl_hash_element*, %struct.TYPE_4__* }
%struct.curl_hash = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.curl_hash_element* @Curl_hash_next_element(%struct.curl_hash_iterator* %0) #0 {
  %2 = alloca %struct.curl_hash_element*, align 8
  %3 = alloca %struct.curl_hash_iterator*, align 8
  %4 = alloca %struct.curl_hash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.curl_hash_element*, align 8
  store %struct.curl_hash_iterator* %0, %struct.curl_hash_iterator** %3, align 8
  %7 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %3, align 8
  %8 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %7, i32 0, i32 2
  %9 = load %struct.curl_hash*, %struct.curl_hash** %8, align 8
  store %struct.curl_hash* %9, %struct.curl_hash** %4, align 8
  %10 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %3, align 8
  %11 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %3, align 8
  %16 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %3, align 8
  %21 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %20, i32 0, i32 1
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %21, align 8
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %3, align 8
  %24 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %67, label %27

27:                                               ; preds = %22
  %28 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %3, align 8
  %29 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %63, %27
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.curl_hash*, %struct.curl_hash** %4, align 8
  %34 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %31
  %38 = load %struct.curl_hash*, %struct.curl_hash** %4, align 8
  %39 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %37
  %48 = load %struct.curl_hash*, %struct.curl_hash** %4, align 8
  %49 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %3, align 8
  %57 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %56, i32 0, i32 1
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %3, align 8
  %61 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %66

62:                                               ; preds = %37
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %31

66:                                               ; preds = %47, %31
  br label %67

67:                                               ; preds = %66, %22
  %68 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %3, align 8
  %69 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = icmp ne %struct.TYPE_4__* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %3, align 8
  %74 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.curl_hash_element*, %struct.curl_hash_element** %76, align 8
  store %struct.curl_hash_element* %77, %struct.curl_hash_element** %6, align 8
  %78 = load %struct.curl_hash_element*, %struct.curl_hash_element** %6, align 8
  store %struct.curl_hash_element* %78, %struct.curl_hash_element** %2, align 8
  br label %82

79:                                               ; preds = %67
  %80 = load %struct.curl_hash_iterator*, %struct.curl_hash_iterator** %3, align 8
  %81 = getelementptr inbounds %struct.curl_hash_iterator, %struct.curl_hash_iterator* %80, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %81, align 8
  store %struct.curl_hash_element* null, %struct.curl_hash_element** %2, align 8
  br label %82

82:                                               ; preds = %79, %72
  %83 = load %struct.curl_hash_element*, %struct.curl_hash_element** %2, align 8
  ret %struct.curl_hash_element* %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
