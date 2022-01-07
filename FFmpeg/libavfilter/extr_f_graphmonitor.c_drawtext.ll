; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_graphmonitor.c_drawtext.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_graphmonitor.c_drawtext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32**, i32* }

@avpriv_cga_font = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i8*, i32*)* @drawtext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawtext(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32*, i32** @avpriv_cga_font, align 8
  store i32* %17, i32** %11, align 8
  store i32 8, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = mul nsw i32 %27, 8
  %29 = add nsw i32 %25, %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24, %5
  br label %130

35:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %127, %35
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %130

43:                                               ; preds = %36
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %49, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %48, i64 %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %13, align 4
  %60 = mul nsw i32 %59, 8
  %61 = add nsw i32 %58, %60
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %57, i64 %63
  store i32* %64, i32** %16, align 8
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %123, %43
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %126

69:                                               ; preds = %65
  store i32 128, i32* %15, align 4
  br label %70

70:                                               ; preds = %110, %69
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %70
  %74 = load i32*, i32** %11, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i32, i32* %12, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %74, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %15, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %73
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %16, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %94, i32* %96, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %16, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %16, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %91, %73
  %108 = load i32*, i32** %16, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32* %109, i32** %16, align 8
  br label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %15, align 4
  %112 = ashr i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %70

113:                                              ; preds = %70
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 32
  %120 = load i32*, i32** %16, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %16, align 8
  br label %123

123:                                              ; preds = %113
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %65

126:                                              ; preds = %65
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %36

130:                                              ; preds = %34, %36
  ret void
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
