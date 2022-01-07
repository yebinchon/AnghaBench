; ModuleID = '/home/carl/AnghaBench/disque/src/extr_memtest.c_memtest_fill_random.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_memtest.c_memtest_fill_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memtest_fill_random(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 512, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = udiv i64 %12, 8
  %14 = udiv i64 %13, 2
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = udiv i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %4, align 8
  %19 = and i64 %18, 4095
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %81, %2
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %84

27:                                               ; preds = %23
  %28 = load i64*, i64** %3, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64* %30, i64** %10, align 8
  %31 = load i64*, i64** %10, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64* %33, i64** %11, align 8
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %77, %27
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  %39 = call i32 (...) @rand()
  %40 = and i32 %39, 65535
  %41 = sext i32 %40 to i64
  %42 = call i32 (...) @rand()
  %43 = and i32 %42, 65535
  %44 = sext i32 %43 to i64
  %45 = shl i64 %44, 16
  %46 = or i64 %41, %45
  %47 = call i32 (...) @rand()
  %48 = and i32 %47, 65535
  %49 = sext i32 %48 to i64
  %50 = shl i64 %49, 32
  %51 = or i64 %46, %50
  %52 = call i32 (...) @rand()
  %53 = and i32 %52, 65535
  %54 = sext i32 %53 to i64
  %55 = shl i64 %54, 48
  %56 = or i64 %51, %55
  %57 = load i64*, i64** %11, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64*, i64** %10, align 8
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64*, i64** %10, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 %59
  store i64* %61, i64** %10, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64*, i64** %11, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 %62
  store i64* %64, i64** %11, align 8
  %65 = load i64, i64* %9, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %38
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = mul i64 %70, %71
  %73 = add i64 %69, %72
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @memtest_progress_step(i64 %73, i64 %74, i8 signext 82)
  br label %76

76:                                               ; preds = %68, %38
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %34

80:                                               ; preds = %34
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %8, align 8
  br label %23

84:                                               ; preds = %23
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @memtest_progress_step(i64, i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
