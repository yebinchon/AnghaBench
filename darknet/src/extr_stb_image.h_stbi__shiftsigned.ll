; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__shiftsigned.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__shiftsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stbi__shiftsigned.mul_table = internal global [9 x i32] [i32 0, i32 255, i32 85, i32 73, i32 17, i32 33, i32 65, i32 129, i32 1], align 16
@stbi__shiftsigned.shift_table = internal global [9 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 4, i32 6, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @stbi__shiftsigned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__shiftsigned(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 0, %10
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, %11
  store i32 %13, i32* %4, align 4
  br label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %9
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 256
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @STBI_ASSERT(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 8, %28
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = icmp sle i32 %35, 8
  br label %37

37:                                               ; preds = %34, %24
  %38 = phi i1 [ false, %24 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @STBI_ASSERT(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [9 x i32], [9 x i32]* @stbi__shiftsigned.mul_table, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = mul i32 %41, %45
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [9 x i32], [9 x i32]* @stbi__shiftsigned.shift_table, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %46, %50
  ret i32 %51
}

declare dso_local i32 @STBI_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
