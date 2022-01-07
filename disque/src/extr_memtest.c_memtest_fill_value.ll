; ModuleID = '/home/carl/AnghaBench/disque/src/extr_memtest.c_memtest_fill_value.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_memtest.c_memtest_fill_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memtest_fill_value(i64* %0, i64 %1, i64 %2, i64 %3, i8 signext %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8 %4, i8* %10, align 1
  store i64 512, i64* %11, align 8
  %19 = load i64, i64* %7, align 8
  %20 = udiv i64 %19, 8
  %21 = udiv i64 %20, 2
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %11, align 8
  %24 = udiv i64 %22, %23
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %25, 4095
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  store i64 0, i64* %14, align 8
  br label %30

30:                                               ; preds = %90, %5
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %93

34:                                               ; preds = %30
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64* %37, i64** %16, align 8
  %38 = load i64*, i64** %16, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64* %40, i64** %17, align 8
  %41 = load i64, i64* %14, align 8
  %42 = and i64 %41, 1
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i64, i64* %9, align 8
  br label %48

46:                                               ; preds = %34
  %47 = load i64, i64* %8, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i64 [ %45, %44 ], [ %47, %46 ]
  store i64 %49, i64* %18, align 8
  store i64 0, i64* %15, align 8
  br label %50

50:                                               ; preds = %86, %48
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %50
  %55 = load i64, i64* %18, align 8
  %56 = load i64, i64* %18, align 8
  %57 = shl i64 %56, 16
  %58 = or i64 %55, %57
  %59 = load i64, i64* %18, align 8
  %60 = shl i64 %59, 32
  %61 = or i64 %58, %60
  %62 = load i64, i64* %18, align 8
  %63 = shl i64 %62, 48
  %64 = or i64 %61, %63
  %65 = load i64*, i64** %17, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i64*, i64** %16, align 8
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64*, i64** %16, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 %67
  store i64* %69, i64** %16, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64*, i64** %17, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 %70
  store i64* %72, i64** %17, align 8
  %73 = load i64, i64* %15, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %54
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* %14, align 8
  %80 = mul i64 %78, %79
  %81 = add i64 %77, %80
  %82 = load i64, i64* %12, align 8
  %83 = load i8, i8* %10, align 1
  %84 = call i32 @memtest_progress_step(i64 %81, i64 %82, i8 signext %83)
  br label %85

85:                                               ; preds = %76, %54
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %15, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %15, align 8
  br label %50

89:                                               ; preds = %50
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %14, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %14, align 8
  br label %30

93:                                               ; preds = %30
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memtest_progress_step(i64, i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
