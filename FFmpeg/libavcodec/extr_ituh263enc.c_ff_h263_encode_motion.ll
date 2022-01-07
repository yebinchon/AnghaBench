; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263enc.c_ff_h263_encode_motion.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263enc.c_ff_h263_encode_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_mvtab = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h263_encode_motion(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32**, i32*** @ff_mvtab, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32**, i32*** @ff_mvtab, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @put_bits(i32* %15, i32 %22, i32 %29)
  br label %87

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 1, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 6, %37
  %39 = call i32 @sign_extend(i32 %36, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 31
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %9, align 4
  %44 = xor i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %51, %52
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32**, i32*** @ff_mvtab, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32**, i32*** @ff_mvtab, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 1
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @put_bits(i32* %59, i32 %67, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %31
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @put_bits(i32* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %31
  br label %87

87:                                               ; preds = %86, %14
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @sign_extend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
