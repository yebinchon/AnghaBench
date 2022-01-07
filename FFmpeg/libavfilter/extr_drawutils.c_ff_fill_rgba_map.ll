; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_fill_rgba_map.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_fill_rgba_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALPHA = common dso_local global i64 0, align 8
@RED = common dso_local global i64 0, align 8
@GREEN = common dso_local global i64 0, align 8
@BLUE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_fill_rgba_map(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %72 [
    i32 162, label %7
    i32 160, label %7
    i32 163, label %20
    i32 161, label %20
    i32 131, label %33
    i32 132, label %33
    i32 129, label %33
    i32 128, label %33
    i32 134, label %33
    i32 130, label %33
    i32 133, label %33
    i32 156, label %46
    i32 157, label %46
    i32 154, label %46
    i32 153, label %46
    i32 155, label %46
    i32 159, label %46
    i32 158, label %46
    i32 135, label %59
    i32 136, label %59
    i32 143, label %59
    i32 144, label %59
    i32 141, label %59
    i32 142, label %59
    i32 139, label %59
    i32 140, label %59
    i32 137, label %59
    i32 138, label %59
    i32 152, label %59
    i32 150, label %59
    i32 151, label %59
    i32 148, label %59
    i32 149, label %59
    i32 146, label %59
    i32 147, label %59
    i32 145, label %59
  ]

7:                                                ; preds = %2, %2
  %8 = load i32*, i32** %4, align 8
  %9 = load i64, i64* @ALPHA, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* @RED, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 1, i32* %13, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* @GREEN, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 2, i32* %16, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* @BLUE, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 3, i32* %19, align 4
  br label %75

20:                                               ; preds = %2, %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i64, i64* @ALPHA, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* @BLUE, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 1, i32* %26, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* @GREEN, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 2, i32* %29, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* @RED, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 3, i32* %32, align 4
  br label %75

33:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* @RED, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i64, i64* @GREEN, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 1, i32* %39, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i64, i64* @BLUE, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 2, i32* %42, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i64, i64* @ALPHA, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 3, i32* %45, align 4
  br label %75

46:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* @BLUE, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 0, i32* %49, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* @GREEN, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 1, i32* %52, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* @RED, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 2, i32* %55, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i64, i64* @ALPHA, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 3, i32* %58, align 4
  br label %75

59:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %60 = load i32*, i32** %4, align 8
  %61 = load i64, i64* @GREEN, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 0, i32* %62, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = load i64, i64* @BLUE, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 1, i32* %65, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i64, i64* @RED, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 2, i32* %68, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* @ALPHA, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 3, i32* %71, align 4
  br label %75

72:                                               ; preds = %2
  %73 = load i32, i32* @EINVAL, align 4
  %74 = call i32 @AVERROR(i32 %73)
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %59, %46, %33, %20, %7
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
