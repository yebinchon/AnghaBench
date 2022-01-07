; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp6.c_vp6_build_huff_tree.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp6.c_vp6_build_huff_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@VP6_MAX_HUFF_SIZE = common dso_local global i32 0, align 4
@FF_HUFFMAN_BITS = common dso_local global i32 0, align 4
@vp6_huff_cmp = common dso_local global i32 0, align 4
@FF_HUFFMAN_FLAG_HNODE_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32, i32*)* @vp6_build_huff_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp6_build_huff_tree(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* @VP6_MAX_HUFF_SIZE, align 4
  %18 = mul nsw i32 2, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca %struct.TYPE_6__, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %23
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %13, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 256, i32* %27, align 4
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %92, %5
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sub i32 %30, 1
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %95

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %39, %44
  %46 = ashr i32 %45, 8
  store i32 %46, i32* %14, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 255, %57
  %59 = mul nsw i32 %52, %58
  %60 = ashr i32 %59, 8
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = add nsw i32 %61, %65
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %16, align 4
  %69 = mul nsw i32 2, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %66, i32* %75, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = add nsw i32 %76, %80
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %16, align 4
  %84 = mul nsw i32 2, %83
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %81, i32* %91, align 4
  br label %92

92:                                               ; preds = %33
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %28

95:                                               ; preds = %28
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @ff_free_vlc(i32* %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @FF_HUFFMAN_BITS, align 4
  %104 = load i32, i32* @vp6_huff_cmp, align 4
  %105 = load i32, i32* @FF_HUFFMAN_FLAG_HNODE_FIRST, align 4
  %106 = call i32 @ff_huff_build_tree(i32 %100, i32* %101, i32 %102, i32 %103, %struct.TYPE_6__* %21, i32 %104, i32 %105)
  %107 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %107)
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ff_free_vlc(i32*) #2

declare dso_local i32 @ff_huff_build_tree(i32, i32*, i32, i32, %struct.TYPE_6__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
