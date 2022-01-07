; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/libco/extr_aarch64.c_co_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/libco/extr_aarch64.c_co_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @co_create(i32 %0, void ()* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca void ()*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store void ()* %1, void ()** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = add i32 %8, 1023
  %10 = and i32 %9, -1024
  store i32 %10, i32* %4, align 4
  store i64 0, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = add i32 %11, 512
  %13 = call i64 @memalign(i32 1024, i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %3, align 8
  br label %78

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = inttoptr i64 %19 to i64*
  store i64* %20, i64** %7, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 0, i64* %22, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  store i64 0, i64* %24, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 2
  store i64 0, i64* %26, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 3
  store i64 0, i64* %28, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 4
  store i64 0, i64* %30, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 5
  store i64 0, i64* %32, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 6
  store i64 0, i64* %34, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 7
  store i64 0, i64* %36, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 8
  store i64 0, i64* %38, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 9
  store i64 0, i64* %40, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 10
  store i64 0, i64* %42, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 11
  store i64 0, i64* %44, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 12
  store i64 0, i64* %46, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 13
  store i64 0, i64* %48, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 14
  store i64 0, i64* %50, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 15
  store i64 0, i64* %52, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 16
  store i64 0, i64* %54, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 17
  store i64 0, i64* %56, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 18
  store i64 0, i64* %58, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = ptrtoint i64* %59 to i64
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = add i64 %60, %62
  %64 = add i64 %63, 512
  %65 = sub i64 %64, 16
  %66 = load i64*, i64** %7, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 20
  store i64 %65, i64* %67, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 20
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %7, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 19
  store i64 %70, i64* %72, align 8
  %73 = load void ()*, void ()** %5, align 8
  %74 = ptrtoint void ()* %73 to i64
  %75 = load i64*, i64** %7, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 21
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %6, align 8
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %18, %16
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i64 @memalign(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
