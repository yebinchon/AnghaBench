; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8.c_x8_get_dc_rlf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8.c_x8_get_dc_rlf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__** }

@j_dc_vlc = common dso_local global %struct.TYPE_5__** null, align 8
@DC_VLC_BITS = common dso_local global i32 0, align 4
@DC_VLC_MTD = common dso_local global i32 0, align 4
@dc_index_offset = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32*, i32*)* @x8_get_dc_rlf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x8_get_dc_rlf(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 3
  %16 = zext i1 %15 to i32
  %17 = call i32 @av_assert2(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %20, i64 %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @get_bits(i32 %29, i32 3)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @j_dc_vlc, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 13
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %31, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %45, i64 %47
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %48, align 8
  br label %49

49:                                               ; preds = %26, %4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DC_VLC_BITS, align 4
  %63 = load i32, i32* @DC_VLC_MTD, align 4
  %64 = call i32 @get_vlc2(i32 %52, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 16
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %12, align 4
  %71 = mul nsw i32 17, %70
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %49
  %77 = load i32*, i32** %8, align 8
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %111

80:                                               ; preds = %49
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  %83 = ashr i32 %82, 1
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp sgt i32 %84, 1
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @get_bits(i32 %91, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32*, i32** @dc_index_offset, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = ashr i32 %99, 1
  %101 = add nsw i32 %98, %100
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = and i32 %102, 1
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = xor i32 %105, %106
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32*, i32** %8, align 8
  store i32 %109, i32* %110, align 4
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %80, %76
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @get_bits(i32, i32) #1

declare dso_local i32 @get_vlc2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
