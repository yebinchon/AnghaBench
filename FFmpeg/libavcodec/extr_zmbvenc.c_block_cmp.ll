; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_zmbvenc.c_block_cmp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_zmbvenc.c_block_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32*, i32, i32, i32, i32*)* @block_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_cmp(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [256 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %18, align 4
  %24 = bitcast [256 x i32]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 1024, i1 false)
  %25 = load i32, i32* %15, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  store i32 %29, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %30

30:                                               ; preds = %68, %8
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  store i32 0, i32* %19, align 4
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* %22, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %19, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %19, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %44, %49
  store i32 %50, i32* %23, align 4
  %51 = load i32, i32* %23, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %39
  %57 = load i32, i32* %19, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %19, align 4
  br label %35

59:                                               ; preds = %35
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %11, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %13, align 8
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %20, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %20, align 4
  br label %30

71:                                               ; preds = %30
  %72 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 0
  %73 = load i32, i32* %72, align 16
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %16, align 4
  %76 = mul nsw i32 %74, %75
  %77 = icmp slt i32 %73, %76
  %78 = zext i1 %77 to i32
  %79 = load i32*, i32** %17, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %17, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %71
  store i32 0, i32* %9, align 4
  br label %108

84:                                               ; preds = %71
  store i32 0, i32* %19, align 4
  br label %85

85:                                               ; preds = %103, %84
  %86 = load i32, i32* %19, align 4
  %87 = icmp slt i32 %86, 256
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %91, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %18, align 4
  br label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %19, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %19, align 4
  br label %85

106:                                              ; preds = %85
  %107 = load i32, i32* %18, align 4
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %106, %83
  %109 = load i32, i32* %9, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
