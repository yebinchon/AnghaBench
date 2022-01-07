; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_mailbox.c_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_mailbox.c_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_alloc(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i32], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %9, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %13
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %17
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %21
  store i32 196620, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %25
  store i32 12, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %29
  store i32 12, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %34
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %48
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  store i32 %53, i32* %54, align 16
  %55 = load i32, i32* %5, align 4
  %56 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %57 = call i32 @mbox_property(i32 %55, i32* %56)
  %58 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 5
  %59 = load i32, i32* %58, align 4
  ret i32 %59
}

declare dso_local i32 @mbox_property(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
