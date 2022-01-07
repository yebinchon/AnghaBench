; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.c_decode_units.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.c_decode_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32*, i32*, i32*)* @decode_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_units(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %14, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %26, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %24, i64 %30
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @decode_unit(%struct.TYPE_4__* %19, i32* %31, i32 400, i32* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %7, align 4
  br label %109

38:                                               ; preds = %6
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 6
  %42 = and i32 %41, 4032
  %43 = load i32*, i32** %13, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %14, align 4
  %47 = ashr i32 %45, %46
  %48 = load i32*, i32** %12, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %54, i64 %60
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @decode_unit(%struct.TYPE_4__* %49, i32* %61, i32 400, i32* %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %38
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %7, align 4
  br label %109

68:                                               ; preds = %38
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 6
  %72 = and i32 %71, 4032
  %73 = load i32*, i32** %13, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %14, align 4
  %77 = ashr i32 %75, %76
  %78 = load i32*, i32** %12, align 8
  store i32 %77, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %86, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %84, i64 %90
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @decode_unit(%struct.TYPE_4__* %79, i32* %91, i32 400, i32* %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %68
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %7, align 4
  br label %109

98:                                               ; preds = %68
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 6
  %102 = and i32 %101, 4032
  %103 = load i32*, i32** %13, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %14, align 4
  %107 = ashr i32 %105, %106
  %108 = load i32*, i32** %12, align 8
  store i32 %107, i32* %108, align 4
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %98, %96, %66, %36
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @decode_unit(%struct.TYPE_4__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
