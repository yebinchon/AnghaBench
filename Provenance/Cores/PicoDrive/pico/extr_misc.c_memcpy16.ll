; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_misc.c_memcpy16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_misc.c_memcpy16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memcpy16(i16* %0, i16* %1, i32 %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i16*, i16** %4, align 8
  %8 = ptrtoint i16* %7 to i64
  %9 = load i16*, i16** %5, align 8
  %10 = ptrtoint i16* %9 to i64
  %11 = or i64 %8, %10
  %12 = and i64 %11, 3
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 32
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i16*, i16** %4, align 8
  %19 = bitcast i16* %18 to i32*
  %20 = load i16*, i16** %5, align 8
  %21 = bitcast i16* %20 to i32*
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %22, 2
  %24 = call i32 @memcpy32(i32* %19, i32* %21, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %45

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %37, %27
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i16*, i16** %5, align 8
  %33 = bitcast i16* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = load i16*, i16** %4, align 8
  %36 = bitcast i16* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, 2
  store i32 %39, i32* %6, align 4
  %40 = load i16*, i16** %4, align 8
  %41 = getelementptr inbounds i16, i16* %40, i64 2
  store i16* %41, i16** %4, align 8
  %42 = load i16*, i16** %5, align 8
  %43 = getelementptr inbounds i16, i16* %42, i64 2
  store i16* %43, i16** %5, align 8
  br label %28

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %17
  br label %46

46:                                               ; preds = %45, %3
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %6, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i16*, i16** %5, align 8
  %53 = getelementptr inbounds i16, i16* %52, i32 1
  store i16* %53, i16** %5, align 8
  %54 = load i16, i16* %52, align 2
  %55 = load i16*, i16** %4, align 8
  %56 = getelementptr inbounds i16, i16* %55, i32 1
  store i16* %56, i16** %4, align 8
  store i16 %54, i16* %55, align 2
  br label %47

57:                                               ; preds = %47
  ret void
}

declare dso_local i32 @memcpy32(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
