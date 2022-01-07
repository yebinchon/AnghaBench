; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ylc.c_get_tree_codes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ylc.c_get_tree_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i32*, %struct.TYPE_3__*, i32, i64, i32, i32*)* @get_tree_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_tree_codes(i64* %0, i64* %1, i32* %2, %struct.TYPE_3__* %3, i32 %4, i64 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i64* %0, i64** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %19 = load i32, i32* %13, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %59

26:                                               ; preds = %8
  %27 = load i64, i64* %14, align 8
  %28 = xor i64 %27, -1
  %29 = load i32, i32* %15, align 4
  %30 = call i64 @FFMAX(i32 %29, i32 1)
  %31 = shl i64 1, %30
  %32 = sub i64 %31, 1
  %33 = and i64 %28, %32
  %34 = load i64*, i64** %9, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  store i64 %33, i64* %38, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i64 @FFMAX(i32 %39, i32 1)
  %41 = load i64*, i64** %10, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  store i64 %40, i64* %45, align 8
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 %46, %49
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load i32*, i32** %16, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %92

59:                                               ; preds = %8
  %60 = load i64, i64* %14, align 8
  %61 = shl i64 %60, 1
  store i64 %61, i64* %14, align 8
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %15, align 4
  %64 = load i64*, i64** %9, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %14, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32*, i32** %16, align 8
  call void @get_tree_codes(i64* %64, i64* %65, i32* %66, %struct.TYPE_3__* %67, i32 %73, i64 %74, i32 %75, i32* %76)
  %77 = load i64, i64* %14, align 8
  %78 = or i64 %77, 1
  store i64 %78, i64* %14, align 8
  %79 = load i64*, i64** %9, align 8
  %80 = load i64*, i64** %10, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %14, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load i32*, i32** %16, align 8
  call void @get_tree_codes(i64* %79, i64* %80, i32* %81, %struct.TYPE_3__* %82, i32 %88, i64 %89, i32 %90, i32* %91)
  br label %92

92:                                               ; preds = %59, %26
  ret void
}

declare dso_local i64 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
