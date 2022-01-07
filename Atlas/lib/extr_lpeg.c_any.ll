; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_any.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UCHAR_MAX = common dso_local global i32 0, align 4
@IAny = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32*)* @any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @any(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  br label %18

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i32 [ %16, %14 ], [ 0, %17 ]
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @UCHAR_MAX, align 4
  %24 = sdiv i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  %27 = add nsw i32 %26, 1
  %28 = call i32* @newpatt(i32* %20, i32 %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %11, align 8
  br label %33

33:                                               ; preds = %44, %18
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @UCHAR_MAX, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i32*, i32** %11, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %11, align 8
  %40 = ptrtoint i32* %38 to i32
  %41 = load i32, i32* @IAny, align 4
  %42 = load i32, i32* @UCHAR_MAX, align 4
  %43 = call i32 @setinstaux(i32 %40, i32 %41, i32 0, i32 %42)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @UCHAR_MAX, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %33

48:                                               ; preds = %33
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %11, align 8
  %51 = ptrtoint i32* %49 to i32
  %52 = load i32, i32* @IAny, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @setinstaux(i32 %51, i32 %52, i32 0, i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = ptrtoint i32* %58 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %57, %48
  %67 = load i32*, i32** %10, align 8
  ret i32* %67
}

declare dso_local i32* @newpatt(i32*, i32) #1

declare dso_local i32 @setinstaux(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
