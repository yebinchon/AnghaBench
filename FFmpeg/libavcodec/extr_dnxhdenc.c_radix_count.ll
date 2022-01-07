; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dnxhdenc.c_radix_count.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dnxhdenc.c_radix_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RADIX_PASSES = common dso_local global i32 0, align 4
@NBUCKETS = common dso_local global i32 0, align 4
@BUCKET_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32*)* @radix_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radix_count(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @RADIX_PASSES, align 4
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* @NBUCKETS, align 4
  %14 = zext i32 %13 to i64
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to i32**
  %17 = load i32, i32* @RADIX_PASSES, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = load i32, i32* @NBUCKETS, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %19, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i32** %16, i32 0, i32 %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %63, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %54, %29
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @RADIX_PASSES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, %14
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @get_bucket(i32 %46, i32 0)
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @BUCKET_BITS, align 4
  %52 = load i32, i32* %9, align 4
  %53 = ashr i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %36

57:                                               ; preds = %36
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @av_assert1(i32 %61)
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %25

66:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %113, %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @RADIX_PASSES, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %116

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @NBUCKETS, align 4
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %98, %71
  %76 = load i32, i32* %7, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = mul nsw i64 %81, %14
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = mul nsw i64 %92, %14
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %89, i32* %97, align 4
  br label %98

98:                                               ; preds = %78
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %7, align 4
  br label %75

101:                                              ; preds = %75
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %104, %14
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @av_assert1(i32 %111)
  br label %113

113:                                              ; preds = %101
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %67

116:                                              ; preds = %67
  ret void
}

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i64 @get_bucket(i32, i32) #1

declare dso_local i32 @av_assert1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
