; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_mailbox.c_execute_code.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_mailbox.c_execute_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execute_code(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [32 x i32], align 16
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* %17, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %17, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %21
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %17, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %17, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %25
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %17, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %17, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %29
  store i32 196624, i32* %30, align 4
  %31 = load i32, i32* %17, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %17, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %33
  store i32 28, i32* %34, align 4
  %35 = load i32, i32* %17, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %17, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %37
  store i32 28, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %17, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %17, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %42
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %17, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %47
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %17, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %17, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %52
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %17, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %17, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %57
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %17, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %17, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %67
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %17, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %17, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 %76
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  store i32 %81, i32* %82, align 16
  %83 = load i32, i32* %9, align 4
  %84 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  %85 = call i32 @mbox_property(i32 %83, i32* %84)
  %86 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 5
  %87 = load i32, i32* %86, align 4
  ret i32 %87
}

declare dso_local i32 @mbox_property(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
