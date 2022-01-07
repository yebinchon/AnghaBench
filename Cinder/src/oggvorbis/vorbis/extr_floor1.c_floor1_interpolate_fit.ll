; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_floor1_interpolate_fit.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_floor1_interpolate_fit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @floor1_interpolate_fit(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %78

19:                                               ; preds = %5
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %78

22:                                               ; preds = %19
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* %12, align 8
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32* @_vorbis_block_alloc(i32* %23, i32 %26)
  store i32* %27, i32** %13, align 8
  store i64 0, i64* %11, align 8
  br label %28

28:                                               ; preds = %74, %22
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 65536, %33
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 32767
  %40 = mul nsw i32 %34, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 32767
  %47 = mul nsw i32 %41, %46
  %48 = add nsw i32 %40, %47
  %49 = add nsw i32 %48, 32768
  %50 = ashr i32 %49, 16
  %51 = load i32*, i32** %13, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %50, i32* %53, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 32768
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %32
  %61 = load i32*, i32** %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 32768
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32*, i32** %13, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, 32768
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %60, %32
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %11, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %11, align 8
  br label %28

77:                                               ; preds = %28
  br label %78

78:                                               ; preds = %77, %19, %5
  %79 = load i32*, i32** %13, align 8
  ret i32* %79
}

declare dso_local i32* @_vorbis_block_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
