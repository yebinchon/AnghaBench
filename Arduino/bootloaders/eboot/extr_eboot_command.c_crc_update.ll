; ModuleID = '/home/carl/AnghaBench/Arduino/bootloaders/eboot/extr_eboot_command.c_crc_update.c'
source_filename = "/home/carl/AnghaBench/Arduino/bootloaders/eboot/extr_eboot_command.c_crc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crc_update(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %10

10:                                               ; preds = %45, %3
  %11 = load i64, i64* %6, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %6, align 8
  %13 = icmp ne i64 %11, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %9, align 4
  store i32 128, i32* %7, align 4
  br label %18

18:                                               ; preds = %42, %14
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, -2147483648
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 %34, 1
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = xor i32 %39, 79764919
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %18

45:                                               ; preds = %18
  br label %10

46:                                               ; preds = %10
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
