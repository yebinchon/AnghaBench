; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_bitstream.c_bitstream_peek.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_bitstream.c_bitstream_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitstream = type { i32, i64, i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitstream_peek(%struct.bitstream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitstream*, align 8
  %5 = alloca i32, align 4
  store %struct.bitstream* %0, %struct.bitstream** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.bitstream*, %struct.bitstream** %4, align 8
  %12 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %47, %15
  %17 = load %struct.bitstream*, %struct.bitstream** %4, align 8
  %18 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %19, 24
  br i1 %20, label %21, label %56

21:                                               ; preds = %16
  %22 = load %struct.bitstream*, %struct.bitstream** %4, align 8
  %23 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bitstream*, %struct.bitstream** %4, align 8
  %26 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %21
  %30 = load %struct.bitstream*, %struct.bitstream** %4, align 8
  %31 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.bitstream*, %struct.bitstream** %4, align 8
  %34 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bitstream*, %struct.bitstream** %4, align 8
  %39 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 24, %40
  %42 = shl i32 %37, %41
  %43 = load %struct.bitstream*, %struct.bitstream** %4, align 8
  %44 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %29, %21
  %48 = load %struct.bitstream*, %struct.bitstream** %4, align 8
  %49 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.bitstream*, %struct.bitstream** %4, align 8
  %53 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 8
  store i32 %55, i32* %53, align 8
  br label %16

56:                                               ; preds = %16
  br label %57

57:                                               ; preds = %56, %9
  %58 = load %struct.bitstream*, %struct.bitstream** %4, align 8
  %59 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 32, %61
  %63 = ashr i32 %60, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %8
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
