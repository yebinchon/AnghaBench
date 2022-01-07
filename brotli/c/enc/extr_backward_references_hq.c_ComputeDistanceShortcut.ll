; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_backward_references_hq.c_ComputeDistanceShortcut.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_backward_references_hq.c_ComputeDistanceShortcut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, %struct.TYPE_8__*)* @ComputeDistanceShortcut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ComputeDistanceShortcut(i64 %0, i64 %1, i64 %2, i64 %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %16
  %18 = call i64 @ZopfliNodeCopyLength(%struct.TYPE_8__* %17)
  store i64 %18, i64* %12, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 134217727
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %13, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %27
  %29 = call i64 @ZopfliNodeCopyDistance(%struct.TYPE_8__* %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %69

33:                                               ; preds = %5
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* %12, align 8
  %36 = add i64 %34, %35
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %39, %40
  %42 = icmp ule i64 %36, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %33
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %45, %46
  %48 = icmp ule i64 %44, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %51
  %53 = call i64 @ZopfliNodeDistanceCode(%struct.TYPE_8__* %52)
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  br label %69

58:                                               ; preds = %49, %43, %33
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %12, align 8
  %62 = sub i64 %60, %61
  %63 = load i64, i64* %13, align 8
  %64 = sub i64 %62, %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %58, %55, %32
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i64 @ZopfliNodeCopyLength(%struct.TYPE_8__*) #1

declare dso_local i64 @ZopfliNodeCopyDistance(%struct.TYPE_8__*) #1

declare dso_local i64 @ZopfliNodeDistanceCode(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
