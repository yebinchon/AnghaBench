; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_fbdev.c_vout_fbdev_clear_lines.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_fbdev.c_vout_fbdev_clear_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vout_fbdev = type { i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vout_fbdev_clear_lines(%struct.vout_fbdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vout_fbdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vout_fbdev* %0, %struct.vout_fbdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.vout_fbdev*, %struct.vout_fbdev** %4, align 8
  %10 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.vout_fbdev*, %struct.vout_fbdev** %4, align 8
  %14 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %12, %16
  %18 = sdiv i32 %17, 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = load %struct.vout_fbdev*, %struct.vout_fbdev** %4, align 8
  %23 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vout_fbdev*, %struct.vout_fbdev** %4, align 8
  %26 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %24, %28
  %30 = icmp sgt i32 %21, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %3
  %32 = load %struct.vout_fbdev*, %struct.vout_fbdev** %4, align 8
  %33 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.vout_fbdev*, %struct.vout_fbdev** %4, align 8
  %36 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %34, %38
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %31, %3
  %43 = load i32, i32* %5, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %76, %48
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.vout_fbdev*, %struct.vout_fbdev** %4, align 8
  %52 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %49
  %56 = load %struct.vout_fbdev*, %struct.vout_fbdev** %4, align 8
  %57 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.vout_fbdev*, %struct.vout_fbdev** %4, align 8
  %61 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %59, i64 %65
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %7, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = mul nsw i32 %72, %73
  %75 = call i32 @memset(i8* %71, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %55
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %49

79:                                               ; preds = %49
  br label %80

80:                                               ; preds = %79, %45, %42
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
