; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_imc_read_level_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_imc_read_level_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@huffman_vlc = common dso_local global %struct.TYPE_5__** null, align 8
@imc_cb_select = common dso_local global i64** null, align 8
@BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32*)* @imc_read_level_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imc_read_level_coeffs(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x %struct.TYPE_5__*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @huffman_vlc, align 8
  %15 = load i32, i32* %11, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 0
  %20 = getelementptr inbounds [4 x %struct.TYPE_5__*], [4 x %struct.TYPE_5__*]* %8, i64 0, i64 0
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %20, align 16
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @huffman_vlc, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %21, i64 %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 1
  %27 = getelementptr inbounds [4 x %struct.TYPE_5__*], [4 x %struct.TYPE_5__*]* %8, i64 0, i64 1
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %27, align 8
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @huffman_vlc, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %28, i64 %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 2
  %34 = getelementptr inbounds [4 x %struct.TYPE_5__*], [4 x %struct.TYPE_5__*]* %8, i64 0, i64 2
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %34, align 16
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @huffman_vlc, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %35, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 3
  %41 = getelementptr inbounds [4 x %struct.TYPE_5__*], [4 x %struct.TYPE_5__*]* %8, i64 0, i64 3
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %41, align 8
  %42 = load i64**, i64*** @imc_cb_select, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64*, i64** %42, i64 %44
  %46 = load i64*, i64** %45, align 8
  store i64* %46, i64** %10, align 8
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %3
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @get_bits(i32* %56, i32 7)
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %109, %60
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @BANDS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %112

66:                                               ; preds = %62
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64*, i64** %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds [4 x %struct.TYPE_5__*], [4 x %struct.TYPE_5__*]* %8, i64 0, i64 %73
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i64*, i64** %10, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds [4 x %struct.TYPE_5__*], [4 x %struct.TYPE_5__*]* %8, i64 0, i64 %82
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @get_vlc2(i32* %68, i32 %77, i32 %86, i32 2)
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 17
  br i1 %97, label %98, label %108

98:                                               ; preds = %66
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = call i32 @get_bits(i32* %100, i32 4)
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %101
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %98, %66
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %62

112:                                              ; preds = %62
  ret void
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
