; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra144.c_ff_rms.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra144.c_ff_rms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPC_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rms(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 65536, i32* %5, align 4
  %7 = load i32, i32* @LPC_ORDER, align 4
  store i32 %7, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %42, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LPC_ORDER, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %17, %22
  %24 = sub nsw i32 16777216, %23
  %25 = ashr i32 %24, 12
  %26 = load i32, i32* %5, align 4
  %27 = mul i32 %25, %26
  %28 = lshr i32 %27, 12
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %50

32:                                               ; preds = %12
  br label %33

33:                                               ; preds = %36, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp ule i32 %34, 16383
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 %39, 2
  store i32 %40, i32* %5, align 4
  br label %33

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %8

45:                                               ; preds = %8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ff_t_sqrt(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %47, %48
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %31
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @ff_t_sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
