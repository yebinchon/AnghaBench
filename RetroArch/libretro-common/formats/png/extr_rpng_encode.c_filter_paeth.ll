; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng_encode.c_filter_paeth.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng_encode.c_filter_paeth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64*, i32, i32)* @filter_paeth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_paeth(i64* %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = mul i32 %13, %12
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %36, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i64*, i64** %7, align 8
  %21 = load i32, i32* %11, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @paeth(i64 0, i64 %29, i64 0)
  %31 = sub nsw i64 %24, %30
  %32 = load i64*, i64** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %31, i64* %35, align 8
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %11, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %15

39:                                               ; preds = %15
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %76, %39
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %41
  %46 = load i64*, i64** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub i32 %52, %53
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %51, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sub i32 %64, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %63, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @paeth(i64 %57, i64 %62, i64 %69)
  %71 = sub nsw i64 %50, %70
  %72 = load i64*, i64** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %71, i64* %75, align 8
  br label %76

76:                                               ; preds = %45
  %77 = load i32, i32* %11, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %41

79:                                               ; preds = %41
  %80 = load i64*, i64** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @count_sad(i64* %80, i32 %81)
  ret i32 %82
}

declare dso_local i64 @paeth(i64, i64, i64) #1

declare dso_local i32 @count_sad(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
