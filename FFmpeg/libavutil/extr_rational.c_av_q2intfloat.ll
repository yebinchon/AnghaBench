; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_rational.c_av_q2intfloat.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_rational.c_av_q2intfloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_q2intfloat(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_3__* %3 to i64*
  store i64 %0, i64* %7, align 4
  store i32 0, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %11, %1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  store i32 1, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 -4194304, i32* %2, align 4
  br label %129

35:                                               ; preds = %30, %26
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %129

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, -2147483648
  %48 = or i32 2139095040, %47
  store i32 %48, i32* %2, align 4
  br label %129

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @av_log2(i32 %51)
  %53 = add nsw i32 23, %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @av_log2(i32 %55)
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 1, %64
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @av_rescale(i32 %62, i32 %66, i32 %68)
  store i32 %69, i32* %4, align 4
  br label %79

70:                                               ; preds = %49
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 0, %75
  %77 = shl i32 %74, %76
  %78 = call i32 @av_rescale(i32 %72, i32 1, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %70, %60
  %80 = load i32, i32* %4, align 4
  %81 = icmp sge i32 %80, 16777216
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 8388608
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %79
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = zext i32 %95 to i64
  %97 = shl i64 1, %96
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @av_rescale(i32 %94, i32 %98, i32 %100)
  store i32 %101, i32* %4, align 4
  br label %111

102:                                              ; preds = %79
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %5, align 4
  %108 = sub nsw i32 0, %107
  %109 = shl i32 %106, %108
  %110 = call i32 @av_rescale(i32 %104, i32 1, i32 %109)
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %102, %92
  %112 = load i32, i32* %4, align 4
  %113 = icmp slt i32 %112, 16777216
  %114 = zext i1 %113 to i32
  %115 = call i32 @av_assert1(i32 %114)
  %116 = load i32, i32* %4, align 4
  %117 = icmp sge i32 %116, 8388608
  %118 = zext i1 %117 to i32
  %119 = call i32 @av_assert1(i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = shl i32 %120, 31
  %122 = load i32, i32* %5, align 4
  %123 = sub nsw i32 150, %122
  %124 = shl i32 %123, 23
  %125 = or i32 %121, %124
  %126 = load i32, i32* %4, align 4
  %127 = sub nsw i32 %126, 8388608
  %128 = or i32 %125, %127
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %111, %44, %39, %34
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @av_assert1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
