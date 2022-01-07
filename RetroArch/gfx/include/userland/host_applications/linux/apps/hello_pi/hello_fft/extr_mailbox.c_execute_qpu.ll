; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_mailbox.c_execute_qpu.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_mailbox.c_execute_qpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execute_qpu(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i32], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %11, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %15
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %11, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %11, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %19
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %11, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %23
  store i32 196625, i32* %24, align 4
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %27
  store i32 16, i32* %28, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %31
  store i32 16, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %36
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %51
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %55
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  store i32 %60, i32* %61, align 16
  %62 = load i32, i32* %6, align 4
  %63 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %64 = call i32 @mbox_property(i32 %62, i32* %63)
  %65 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 5
  %66 = load i32, i32* %65, align 4
  ret i32 %66
}

declare dso_local i32 @mbox_property(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
