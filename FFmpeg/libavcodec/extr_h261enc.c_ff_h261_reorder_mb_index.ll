; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h261enc.c_ff_h261_reorder_mb_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h261enc.c_ff_h261_reorder_mb_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64*** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h261_reorder_mb_index(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %9, %12
  %14 = add nsw i32 %6, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = srem i32 %15, 11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = srem i32 %19, 33
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = call i32 @h261_encode_gob_header(%struct.TYPE_6__* %23, i32 0)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  %28 = load i64***, i64**** %27, align 8
  %29 = getelementptr inbounds i64**, i64*** %28, i64 0
  %30 = load i64**, i64*** %29, align 8
  %31 = getelementptr inbounds i64*, i64** %30, i64 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  %36 = load i64***, i64**** %35, align 8
  %37 = getelementptr inbounds i64**, i64*** %36, i64 0
  %38 = load i64**, i64*** %37, align 8
  %39 = getelementptr inbounds i64*, i64** %38, i64 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %25, %1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ff_h261_get_picture_format(i32 %45, i32 %48)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %83

51:                                               ; preds = %42
  %52 = load i32, i32* %3, align 4
  %53 = srem i32 %52, 11
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sdiv i32 %56, 11
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = srem i32 %58, 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %3, align 4
  %63 = sdiv i32 %62, 3
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = srem i32 %64, 2
  %66 = mul nsw i32 11, %65
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = mul nsw i32 3, %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = call i32 @ff_init_block_index(%struct.TYPE_6__* %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = call i32 @ff_update_block_index(%struct.TYPE_6__* %81)
  br label %83

83:                                               ; preds = %51, %42
  ret void
}

declare dso_local i32 @h261_encode_gob_header(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ff_h261_get_picture_format(i32, i32) #1

declare dso_local i32 @ff_init_block_index(%struct.TYPE_6__*) #1

declare dso_local i32 @ff_update_block_index(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
