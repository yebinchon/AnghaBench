; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_clear_screen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_clear_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32 }

@vinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ISO_CHAR_HEIGHT = common dso_local global i32 0, align 4
@vc_color_back = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @vc_clear_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc_clear_screen(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 5), align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %130

21:                                               ; preds = %5
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 8
  %23 = load i32, i32* @ISO_CHAR_HEIGHT, align 4
  %24 = ashr i32 %23, 2
  %25 = mul nsw i32 %22, %24
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 4
  %27 = ashr i32 %26, 2
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 8
  %29 = ashr i32 %28, 2
  store i32 %29, i32* %17, align 4
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 4), align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %11, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 4), align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %12, align 8
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %104 [
    i32 0, label %35
    i32 1, label %58
    i32 2, label %79
  ]

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @gc_clear_line(i32 %36, i32 %37, i32 0)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sub i32 %40, 1
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  %46 = load i32, i32* %14, align 4
  %47 = mul i32 %45, %46
  %48 = load i32*, i32** %11, align 8
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %14, align 4
  %53 = mul i32 %51, %52
  %54 = load i32*, i32** %12, align 8
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %12, align 8
  br label %57

57:                                               ; preds = %43, %35
  br label %104

58:                                               ; preds = %21
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @gc_clear_line(i32 %59, i32 %60, i32 1)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %14, align 4
  %68 = mul i32 %66, %67
  %69 = load i32*, i32** %11, align 8
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %11, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %14, align 4
  %74 = mul i32 %72, %73
  %75 = load i32*, i32** %12, align 8
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %12, align 8
  br label %78

78:                                               ; preds = %65, %58
  br label %104

79:                                               ; preds = %21
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %14, align 4
  %82 = mul i32 %80, %81
  %83 = load i32*, i32** %11, align 8
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %11, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 2), align 8
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %79
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 3), align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32*, i32** %12, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %12, align 8
  br label %103

96:                                               ; preds = %79
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %14, align 4
  %99 = mul i32 %97, %98
  %100 = load i32*, i32** %12, align 8
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %12, align 8
  br label %103

103:                                              ; preds = %96, %89
  br label %104

104:                                              ; preds = %21, %103, %78, %57
  %105 = load i32*, i32** %11, align 8
  store i32* %105, i32** %13, align 8
  br label %106

106:                                              ; preds = %125, %104
  %107 = load i32*, i32** %13, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = icmp ult i32* %107, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  store i32 0, i32* %15, align 4
  br label %111

111:                                              ; preds = %121, %110
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load i32, i32* @vc_color_back, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %15, align 4
  br label %111

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %17, align 4
  %127 = load i32*, i32** %13, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %13, align 8
  br label %106

130:                                              ; preds = %20, %106
  ret void
}

declare dso_local i32 @gc_clear_line(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
