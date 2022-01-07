; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/extr_ringbuf.c_vRingbufferGetInfo.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/extr_ringbuf.c_vRingbufferGetInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vRingbufferGetInfo(i64 %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %13, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %17 = call i32 @configASSERT(%struct.TYPE_3__* %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @portENTER_CRITICAL(i32* %19)
  %21 = load i64*, i64** %8, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %6
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = load i64*, i64** %8, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %23, %6
  %33 = load i64*, i64** %9, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = load i64*, i64** %9, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %35, %32
  %45 = load i64*, i64** %10, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = load i64*, i64** %10, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %47, %44
  %57 = load i64*, i64** %11, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = load i64*, i64** %11, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %59, %56
  %69 = load i64*, i64** %12, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %12, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %68
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = call i32 @portEXIT_CRITICAL(i32* %78)
  ret void
}

declare dso_local i32 @configASSERT(%struct.TYPE_3__*) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
