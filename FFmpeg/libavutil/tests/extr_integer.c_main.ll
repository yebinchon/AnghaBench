; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_integer.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_integer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 7, i32* %2, align 4
  br label %6

6:                                                ; preds = %113, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 16777216
  br i1 %8, label %9, label %116

9:                                                ; preds = %6
  store i32 3, i32* %3, align 4
  br label %10

10:                                               ; preds = %109, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 16777216
  br i1 %12, label %13, label %112

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @av_int2i(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @av_int2i(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @av_i2int(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @av_assert0(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @av_i2int(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @av_assert0(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @av_add_i(i32 %30, i32 %31)
  %33 = call i32 @av_i2int(i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp eq i32 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @av_assert0(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @av_sub_i(i32 %40, i32 %41)
  %43 = call i32 @av_i2int(i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp eq i32 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @av_assert0(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @av_mul_i(i32 %50, i32 %51)
  %53 = call i32 @av_i2int(i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %3, align 4
  %56 = mul nsw i32 %54, %55
  %57 = icmp eq i32 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @av_assert0(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @av_shr_i(i32 %60, i32 9)
  %62 = call i32 @av_i2int(i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = ashr i32 %63, 9
  %65 = icmp eq i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @av_assert0(i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @av_shr_i(i32 %68, i32 -9)
  %70 = call i32 @av_i2int(i32 %69)
  %71 = load i32, i32* %2, align 4
  %72 = shl i32 %71, 9
  %73 = icmp eq i32 %70, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @av_assert0(i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @av_shr_i(i32 %76, i32 17)
  %78 = call i32 @av_i2int(i32 %77)
  %79 = load i32, i32* %2, align 4
  %80 = ashr i32 %79, 17
  %81 = icmp eq i32 %78, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @av_assert0(i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @av_shr_i(i32 %84, i32 -17)
  %86 = call i32 @av_i2int(i32 %85)
  %87 = load i32, i32* %2, align 4
  %88 = shl i32 %87, 17
  %89 = icmp eq i32 %86, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @av_assert0(i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @av_log2_i(i32 %92)
  %94 = load i32, i32* %2, align 4
  %95 = call i64 @av_log2(i32 %94)
  %96 = icmp eq i64 %93, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @av_assert0(i32 %97)
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @av_div_i(i32 %99, i32 %100)
  %102 = call i32 @av_i2int(i32 %101)
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* %3, align 4
  %105 = sdiv i32 %103, %104
  %106 = icmp eq i32 %102, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @av_assert0(i32 %107)
  br label %109

109:                                              ; preds = %13
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 27118
  store i32 %111, i32* %3, align 4
  br label %10

112:                                              ; preds = %10
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %2, align 4
  %115 = add nsw i32 %114, 13215
  store i32 %115, i32* %2, align 4
  br label %6

116:                                              ; preds = %6
  ret i32 0
}

declare dso_local i32 @av_int2i(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_i2int(i32) #1

declare dso_local i32 @av_add_i(i32, i32) #1

declare dso_local i32 @av_sub_i(i32, i32) #1

declare dso_local i32 @av_mul_i(i32, i32) #1

declare dso_local i32 @av_shr_i(i32, i32) #1

declare dso_local i64 @av_log2_i(i32) #1

declare dso_local i64 @av_log2(i32) #1

declare dso_local i32 @av_div_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
