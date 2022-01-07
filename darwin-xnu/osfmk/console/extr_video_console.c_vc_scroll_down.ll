; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_scroll_down.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_scroll_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@vinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ISO_CHAR_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @vc_scroll_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc_scroll_down(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 3), align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %84

17:                                               ; preds = %3
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 8
  %19 = load i32, i32* @ISO_CHAR_HEIGHT, align 4
  %20 = ashr i32 %19, 2
  %21 = mul nsw i32 %18, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 8
  %23 = ashr i32 %22, 2
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 4
  %25 = ashr i32 %24, 2
  store i32 %25, i32* %13, align 4
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 2), align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = sub i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = sub i64 0, %36
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %4, align 4
  %42 = mul i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  store i32* %45, i32** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sub i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = sub i32 %48, %49
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %83, %17
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %10, align 4
  %54 = icmp ugt i32 %52, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %80, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ISO_CHAR_HEIGHT, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %56
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 4
  %64 = ashr i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @video_scroll_down(i32* %61, i32* %67, i32* %68)
  %70 = load i32, i32* %12, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = zext i32 %70 to i64
  %73 = sub i64 0, %72
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32* %74, i32** %7, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = zext i32 %75 to i64
  %78 = sub i64 0, %77
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32* %79, i32** %8, align 8
  br label %80

80:                                               ; preds = %60
  %81 = load i32, i32* %11, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %56

83:                                               ; preds = %56
  br label %51

84:                                               ; preds = %16, %51
  ret void
}

declare dso_local i32 @video_scroll_down(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
