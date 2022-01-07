; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_build_poly5.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_build_poly5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@poly5tbl = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @build_poly5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_poly5() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 1, i8* %3, align 1
  store i8 0, i8* %2, align 1
  br label %4

4:                                                ; preds = %34, %0
  %5 = load i8, i8* %2, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp slt i32 %6, 31
  br i1 %7, label %8, label %37

8:                                                ; preds = %4
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = xor i32 %10, -1
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** @poly5tbl, align 8
  %14 = load i8, i8* %2, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8 %12, i8* %16, align 1
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = ashr i32 %18, 2
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = ashr i32 %21, 4
  %23 = xor i32 %19, %22
  %24 = and i32 %23, 1
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %1, align 1
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 1
  %29 = and i32 %28, 31
  %30 = load i8, i8* %1, align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %3, align 1
  br label %34

34:                                               ; preds = %8
  %35 = load i8, i8* %2, align 1
  %36 = add i8 %35, 1
  store i8 %36, i8* %2, align 1
  br label %4

37:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
