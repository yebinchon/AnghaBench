; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_res0.c_res2_forward.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_res0.c_res2_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@_encodepart = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res2_forward(i32* %0, %struct.TYPE_4__* %1, i32* %2, i32** %3, i32* %4, i32 %5, i64** %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32** %3, i32*** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i64** %6, i64*** %16, align 8
  store i32 %7, i32* %17, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %21, align 8
  %34 = mul nsw i64 %32, %33
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32* @_vorbis_block_alloc(%struct.TYPE_4__* %30, i32 %36)
  store i32* %37, i32** %23, align 8
  store i64 0, i64* %18, align 8
  br label %38

38:                                               ; preds = %78, %8
  %39 = load i64, i64* %18, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %38
  %44 = load i32**, i32*** %13, align 8
  %45 = load i64, i64* %18, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %24, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load i64, i64* %18, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i64, i64* %22, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %22, align 8
  br label %56

56:                                               ; preds = %53, %43
  store i64 0, i64* %19, align 8
  %57 = load i64, i64* %18, align 8
  store i64 %57, i64* %20, align 8
  br label %58

58:                                               ; preds = %70, %56
  %59 = load i64, i64* %19, align 8
  %60 = load i64, i64* %21, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i32*, i32** %24, align 8
  %64 = load i64, i64* %19, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %23, align 8
  %68 = load i64, i64* %20, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i64, i64* %19, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %19, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %20, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %20, align 8
  br label %58

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %18, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %18, align 8
  br label %38

81:                                               ; preds = %38
  %82 = load i64, i64* %22, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %17, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load i64**, i64*** %16, align 8
  %89 = load i32, i32* @_encodepart, align 4
  %90 = call i32 (i32*, i32*, i32**, i32, i64**, i32, ...) @_01forward(i32* %86, i32* %87, i32** %23, i32 1, i64** %88, i32 %89)
  store i32 %90, i32* %9, align 4
  br label %92

91:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %84
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local i32* @_vorbis_block_alloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @_01forward(i32*, i32*, i32**, i32, i64**, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
