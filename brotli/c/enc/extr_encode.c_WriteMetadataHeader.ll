; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_WriteMetadataHeader.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_WriteMetadataHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64*)* @WriteMetadataHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WriteMetadataHeader(%struct.TYPE_3__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = load i64*, i64** %6, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 8
  %23 = sext i32 %22 to i64
  %24 = load i64*, i64** %6, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i64*, i64** %6, align 8
  %31 = call i32 @BrotliWriteBits(i32 1, i64 0, i64* %7, i64* %30)
  %32 = load i64*, i64** %6, align 8
  %33 = call i32 @BrotliWriteBits(i32 2, i64 3, i64* %7, i64* %32)
  %34 = load i64*, i64** %6, align 8
  %35 = call i32 @BrotliWriteBits(i32 1, i64 0, i64* %7, i64* %34)
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i64*, i64** %6, align 8
  %40 = call i32 @BrotliWriteBits(i32 2, i64 0, i64* %7, i64* %39)
  br label %66

41:                                               ; preds = %3
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %51

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = trunc i64 %46 to i32
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @Log2FloorNonZero(i32 %48)
  %50 = add nsw i32 %49, 1
  br label %51

51:                                               ; preds = %45, %44
  %52 = phi i32 [ 0, %44 ], [ %50, %45 ]
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 7
  %55 = sdiv i32 %54, 8
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64*, i64** %6, align 8
  %59 = call i32 @BrotliWriteBits(i32 2, i64 %57, i64* %7, i64* %58)
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 8, %60
  %62 = load i64, i64* %5, align 8
  %63 = sub i64 %62, 1
  %64 = load i64*, i64** %6, align 8
  %65 = call i32 @BrotliWriteBits(i32 %61, i64 %63, i64* %7, i64* %64)
  br label %66

66:                                               ; preds = %51, %38
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 7
  %69 = lshr i64 %68, 3
  ret i64 %69
}

declare dso_local i32 @BrotliWriteBits(i32, i64, i64*, i64*) #1

declare dso_local i32 @Log2FloorNonZero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
