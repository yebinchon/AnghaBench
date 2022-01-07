; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_compute_tree_from_histo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_compute_tree_from_histo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman_decoder = type { i32, i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @huffman_compute_tree_from_histo(%struct.huffman_decoder* %0) #0 {
  %2 = alloca %struct.huffman_decoder*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.huffman_decoder* %0, %struct.huffman_decoder** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %12 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %17 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %61
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %34, %35
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %7, align 4
  %38 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @huffman_build_tree(%struct.huffman_decoder* %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %44 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %53, %54
  %56 = icmp sle i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %47
  br label %62

58:                                               ; preds = %52
  br label %61

59:                                               ; preds = %33
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %58
  br label %33

62:                                               ; preds = %57
  %63 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %64 = call i32 @huffman_assign_canonical_codes(%struct.huffman_decoder* %63)
  ret i32 %64
}

declare dso_local i32 @huffman_build_tree(%struct.huffman_decoder*, i32, i32) #1

declare dso_local i32 @huffman_assign_canonical_codes(%struct.huffman_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
