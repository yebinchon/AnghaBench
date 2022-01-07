; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffman.c_get_tree_codes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffman.c_get_tree_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@HNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_3__*, i32, i32, i32, i32*, i32)* @get_tree_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_tree_codes(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %21 = load i32, i32* %14, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %19, align 4
  %27 = load i32, i32* @HNODE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %9
  %30 = load i32, i32* %18, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %32, %9
  %41 = load i32, i32* %15, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 %47, i32* %52, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %53, i32* %58, align 4
  %59 = load i32*, i32** %17, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %98

62:                                               ; preds = %32, %29
  %63 = load i32, i32* %15, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %16, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32*, i32** %17, align 8
  %80 = load i32, i32* %18, align 4
  call void @get_tree_codes(i32* %67, i32* %68, i32* %69, %struct.TYPE_3__* %70, i32 %76, i32 %77, i32 %78, i32* %79, i32 %80)
  %81 = load i32, i32* %15, align 4
  %82 = or i32 %81, 1
  store i32 %82, i32* %15, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32*, i32** %17, align 8
  %97 = load i32, i32* %18, align 4
  call void @get_tree_codes(i32* %83, i32* %84, i32* %85, %struct.TYPE_3__* %86, i32 %93, i32 %94, i32 %95, i32* %96, i32 %97)
  br label %98

98:                                               ; preds = %62, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
