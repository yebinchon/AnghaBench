; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_backward_references_hq.c_ComputeDistanceCache.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_backward_references_hq.c_ComputeDistanceCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, %struct.TYPE_7__*, i32*)* @ComputeDistanceCache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeDistanceCache(i64 %0, i32* %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  br label %20

20:                                               ; preds = %28, %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* %10, align 8
  %25 = icmp ugt i64 %24, 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ false, %20 ], [ %25, %23 ]
  br i1 %27, label %28, label %61

28:                                               ; preds = %26
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 134217727
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %11, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %37
  %39 = call i64 @ZopfliNodeCopyLength(%struct.TYPE_7__* %38)
  store i64 %39, i64* %12, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %41
  %43 = call i64 @ZopfliNodeCopyDistance(%struct.TYPE_7__* %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %12, align 8
  %54 = sub i64 %52, %53
  %55 = load i64, i64* %11, align 8
  %56 = sub i64 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  br label %20

61:                                               ; preds = %26
  br label %62

62:                                               ; preds = %73, %61
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %6, align 8
  %68 = load i32, i32* %66, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %62

76:                                               ; preds = %62
  ret void
}

declare dso_local i64 @ZopfliNodeCopyLength(%struct.TYPE_7__*) #1

declare dso_local i64 @ZopfliNodeCopyDistance(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
