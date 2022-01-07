; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__jpg_calcBits.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__jpg_calcBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16*)* @stbiw__jpg_calcBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbiw__jpg_calcBits(i32 %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i16* %1, i16** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 0, %9
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %10, %8 ], [ %12, %11 ]
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, 1
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %21, %20 ]
  store i32 %23, i32* %3, align 4
  %24 = load i16*, i16** %4, align 8
  %25 = getelementptr inbounds i16, i16* %24, i64 1
  store i16 1, i16* %25, align 2
  br label %26

26:                                               ; preds = %30, %22
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i16*, i16** %4, align 8
  %32 = getelementptr inbounds i16, i16* %31, i64 1
  %33 = load i16, i16* %32, align 2
  %34 = add i16 %33, 1
  store i16 %34, i16* %32, align 2
  br label %26

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = load i16*, i16** %4, align 8
  %38 = getelementptr inbounds i16, i16* %37, i64 1
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %36, %42
  %44 = trunc i32 %43 to i16
  %45 = load i16*, i16** %4, align 8
  %46 = getelementptr inbounds i16, i16* %45, i64 0
  store i16 %44, i16* %46, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
