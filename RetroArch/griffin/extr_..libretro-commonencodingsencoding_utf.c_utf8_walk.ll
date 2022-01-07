; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonencodingsencoding_utf.c_utf8_walk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonencodingsencoding_utf.c_utf8_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_walk(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = call i32 @utf8_walkbyte(i8** %6)
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 128
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 6
  %15 = load i8**, i8*** %3, align 8
  %16 = call i32 @utf8_walkbyte(i8** %15)
  %17 = and i32 %16, 63
  %18 = or i32 %14, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 224
  br i1 %20, label %21, label %48

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 6
  %24 = load i8**, i8*** %3, align 8
  %25 = call i32 @utf8_walkbyte(i8** %24)
  %26 = and i32 %25, 63
  %27 = or i32 %23, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 240
  br i1 %29, label %30, label %42

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 %31, 6
  %33 = load i8**, i8*** %3, align 8
  %34 = call i32 @utf8_walkbyte(i8** %33)
  %35 = and i32 %34, 63
  %36 = or i32 %32, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 7
  %40 = shl i32 %39, 18
  %41 = or i32 %37, %40
  store i32 %41, i32* %2, align 4
  br label %54

42:                                               ; preds = %21
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 15
  %46 = shl i32 %45, 12
  %47 = or i32 %43, %46
  store i32 %47, i32* %2, align 4
  br label %54

48:                                               ; preds = %12
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 31
  %52 = shl i32 %51, 6
  %53 = or i32 %49, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %42, %30, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @utf8_walkbyte(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
