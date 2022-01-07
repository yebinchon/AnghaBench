; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodec.c_build_huff10.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodec.c_build_huff10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ff_ut10_huff_cmp_len = common dso_local global i32 0, align 4
@VLC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @build_huff10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_huff10(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1024 x %struct.TYPE_3__], align 16
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i32], align 16
  %12 = alloca [1024 x i32], align 16
  %13 = alloca [1024 x i32], align 16
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %32, %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 1024
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1024 x %struct.TYPE_3__], [1024 x %struct.TYPE_3__]* %9, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %5, align 8
  %27 = load i32, i32* %25, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1024 x %struct.TYPE_3__], [1024 x %struct.TYPE_3__]* %9, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %16

35:                                               ; preds = %16
  %36 = getelementptr inbounds [1024 x %struct.TYPE_3__], [1024 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %37 = load i32, i32* @ff_ut10_huff_cmp_len, align 4
  %38 = call i32 @qsort(%struct.TYPE_3__* %36, i32 1024, i32 8, i32 %37)
  %39 = getelementptr inbounds [1024 x %struct.TYPE_3__], [1024 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds [1024 x %struct.TYPE_3__], [1024 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 16
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %125

48:                                               ; preds = %35
  store i32 1023, i32* %10, align 4
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [1024 x %struct.TYPE_3__], [1024 x %struct.TYPE_3__]* %9, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 255
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %56, %49
  %60 = phi i1 [ false, %49 ], [ %58, %56 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %10, align 4
  br label %49

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [1024 x %struct.TYPE_3__], [1024 x %struct.TYPE_3__]* %9, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 32
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 -1, i32* %4, align 4
  br label %125

72:                                               ; preds = %64
  store i32 1, i32* %14, align 4
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %114, %72
  %75 = load i32, i32* %8, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %117

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [1024 x %struct.TYPE_3__], [1024 x %struct.TYPE_3__]* %9, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 32, %83
  %85 = ashr i32 %78, %84
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 %87
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [1024 x %struct.TYPE_3__], [1024 x %struct.TYPE_3__]* %9, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i64 0, i64 %95
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [1024 x %struct.TYPE_3__], [1024 x %struct.TYPE_3__]* %9, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [1024 x i32], [1024 x i32]* %13, i64 0, i64 %103
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [1024 x %struct.TYPE_3__], [1024 x %struct.TYPE_3__]* %9, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 1
  %111 = lshr i32 -2147483648, %110
  %112 = load i32, i32* %14, align 4
  %113 = add i32 %112, %111
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %77
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %8, align 4
  br label %74

117:                                              ; preds = %74
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  %121 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i64 0, i64 0
  %122 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 0
  %123 = getelementptr inbounds [1024 x i32], [1024 x i32]* %13, i64 0, i64 0
  %124 = call i32 @ff_init_vlc_sparse(i32* %118, i32 11, i32 %120, i32* %121, i32 4, i32 4, i32* %122, i32 4, i32 4, i32* %123, i32 4, i32 4, i32 0)
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %117, %71, %43
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @qsort(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @ff_init_vlc_sparse(i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
