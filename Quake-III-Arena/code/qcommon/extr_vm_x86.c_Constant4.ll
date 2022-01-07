; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_x86.c_Constant4.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_x86.c_Constant4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@code = common dso_local global i32* null, align 8
@pc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Constant4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Constant4() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @code, align 8
  %3 = load i64, i64* @pc, align 8
  %4 = getelementptr inbounds i32, i32* %2, i64 %3
  %5 = load i32, i32* %4, align 4
  %6 = load i32*, i32** @code, align 8
  %7 = load i64, i64* @pc, align 8
  %8 = add i64 %7, 1
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 8
  %12 = or i32 %5, %11
  %13 = load i32*, i32** @code, align 8
  %14 = load i64, i64* @pc, align 8
  %15 = add i64 %14, 2
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 16
  %19 = or i32 %12, %18
  %20 = load i32*, i32** @code, align 8
  %21 = load i64, i64* @pc, align 8
  %22 = add i64 %21, 3
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 24
  %26 = or i32 %19, %25
  store i32 %26, i32* %1, align 4
  %27 = load i64, i64* @pc, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* @pc, align 8
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
