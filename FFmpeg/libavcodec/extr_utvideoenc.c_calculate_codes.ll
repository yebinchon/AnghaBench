; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideoenc.c_calculate_codes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideoenc.c_calculate_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@ff_ut_huff_cmp_len = common dso_local global i32 0, align 4
@huff_cmp_sym = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @calculate_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_codes(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = load i32, i32* @ff_ut_huff_cmp_len, align 4
  %8 = call i32 @qsort(%struct.TYPE_4__* %6, i32 256, i32 8, i32 %7)
  store i32 255, i32* %3, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %17, %9
  %21 = phi i1 [ false, %9 ], [ %19, %17 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %3, align 4
  br label %9

25:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %55, %25
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 32, %37
  %39 = ashr i32 %31, %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %39, i32* %44, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = lshr i32 -2147483648, %51
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %30
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %4, align 4
  br label %27

58:                                               ; preds = %27
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = load i32, i32* @huff_cmp_sym, align 4
  %61 = call i32 @qsort(%struct.TYPE_4__* %59, i32 256, i32 8, i32 %60)
  ret void
}

declare dso_local i32 @qsort(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
