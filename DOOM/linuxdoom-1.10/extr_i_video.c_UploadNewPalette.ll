; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_UploadNewPalette.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_UploadNewPalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@UploadNewPalette.firstcall = internal global i32 1, align 4
@X_visualinfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PseudoColor = common dso_local global i64 0, align 8
@colors = common dso_local global %struct.TYPE_4__* null, align 8
@DoRed = common dso_local global i32 0, align 4
@DoGreen = common dso_local global i32 0, align 4
@DoBlue = common dso_local global i32 0, align 4
@gammatable = common dso_local global i32** null, align 8
@usegamma = common dso_local global i64 0, align 8
@X_display = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UploadNewPalette(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @X_visualinfo, i32 0, i32 2), align 8
  %8 = load i64, i64* @PseudoColor, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %111

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @X_visualinfo, i32 0, i32 1), align 8
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %111

13:                                               ; preds = %10
  %14 = load i32, i32* @UploadNewPalette.firstcall, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  store i32 0, i32* @UploadNewPalette.firstcall, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %37, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @colors, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %21, i32* %26, align 4
  %27 = load i32, i32* @DoRed, align 4
  %28 = load i32, i32* @DoGreen, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @DoBlue, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @colors, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %31, i32* %36, align 4
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %17

40:                                               ; preds = %17
  br label %41

41:                                               ; preds = %40, %13
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %103, %41
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 256
  br i1 %44, label %45, label %106

45:                                               ; preds = %42
  %46 = load i32**, i32*** @gammatable, align 8
  %47 = load i64, i64* @usegamma, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %4, align 8
  %52 = load i32, i32* %50, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @colors, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i32 %59, i32* %64, align 4
  %65 = load i32**, i32*** @gammatable, align 8
  %66 = load i64, i64* @usegamma, align 8
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %4, align 8
  %71 = load i32, i32* %69, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = shl i32 %75, 8
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @colors, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  store i32 %78, i32* %83, align 4
  %84 = load i32**, i32*** @gammatable, align 8
  %85 = load i64, i64* @usegamma, align 8
  %86 = getelementptr inbounds i32*, i32** %84, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %4, align 8
  %90 = load i32, i32* %88, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = shl i32 %94, 8
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %95, %96
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @colors, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %45
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %42

106:                                              ; preds = %42
  %107 = load i32, i32* @X_display, align 4
  %108 = load i32, i32* %3, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @colors, align 8
  %110 = call i32 @XStoreColors(i32 %107, i32 %108, %struct.TYPE_4__* %109, i32 256)
  br label %111

111:                                              ; preds = %106, %10, %2
  ret void
}

declare dso_local i32 @XStoreColors(i32, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
