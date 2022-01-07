; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_insert_pad.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_insert_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_insert_pad(i32 %0, i32* %1, i64 %2, i32*** %3, i32*** %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32***, align 8
  %12 = alloca i32***, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32*** %3, i32**** %11, align 8
  store i32*** %4, i32**** %12, align 8
  store i32** %5, i32*** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @FFMIN(i32 %17, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32***, i32**** %11, align 8
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %24, 1
  %26 = call i32** @av_realloc_array(i32** %22, i32 %25, i32 8)
  store i32** %26, i32*** %15, align 8
  %27 = load i32***, i32**** %12, align 8
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %30, 1
  %32 = call i32** @av_realloc_array(i32** %28, i32 %31, i32 8)
  store i32** %32, i32*** %14, align 8
  %33 = load i32**, i32*** %15, align 8
  %34 = icmp ne i32** %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load i32**, i32*** %15, align 8
  %37 = load i32***, i32**** %11, align 8
  store i32** %36, i32*** %37, align 8
  br label %38

38:                                               ; preds = %35, %6
  %39 = load i32**, i32*** %14, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32**, i32*** %14, align 8
  %43 = load i32***, i32**** %12, align 8
  store i32** %42, i32*** %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32**, i32*** %15, align 8
  %46 = icmp ne i32** %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32**, i32*** %14, align 8
  %49 = icmp ne i32** %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %7, align 4
  br label %138

53:                                               ; preds = %47
  %54 = load i32***, i32**** %11, align 8
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  %60 = load i32***, i32**** %11, align 8
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub i32 %66, %67
  %69 = zext i32 %68 to i64
  %70 = mul i64 8, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memmove(i32** %59, i32** %64, i32 %71)
  %73 = load i32***, i32**** %12, align 8
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  %79 = load i32***, i32**** %12, align 8
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sub i32 %85, %86
  %88 = zext i32 %87 to i64
  %89 = mul i64 8, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memmove(i32** %78, i32** %83, i32 %90)
  %92 = load i32***, i32**** %11, align 8
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32**, i32*** %13, align 8
  %98 = call i32 @memcpy(i32** %96, i32** %97, i32 8)
  %99 = load i32***, i32**** %12, align 8
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  store i32* null, i32** %103, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %104, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %134, %53
  %110 = load i32, i32* %16, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp ult i32 %110, %112
  br i1 %113, label %114, label %137

114:                                              ; preds = %109
  %115 = load i32***, i32**** %12, align 8
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %114
  %123 = load i32***, i32**** %12, align 8
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %122, %114
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %16, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %16, align 4
  br label %109

137:                                              ; preds = %109
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %137, %50
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32** @av_realloc_array(i32**, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memmove(i32**, i32**, i32) #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
