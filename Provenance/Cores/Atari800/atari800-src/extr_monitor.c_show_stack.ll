; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_regS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%04X: %02X %02X  %04X: JSR %04X\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%04X: %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_stack() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CPU_regS, align 4
  %4 = add nsw i32 257, %3
  store i32 %4, i32* %1, align 4
  br label %5

5:                                                ; preds = %33, %18, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 512
  br i1 %7, label %8, label %40

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 511
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @MEMORY_dGetWord(i32 %12)
  %14 = sub nsw i32 %13, 2
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @MEMORY_dGetByte(i32 %15)
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @MEMORY_dGetByte(i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @MEMORY_dGetByte(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @MEMORY_dGetWord(i32 %27)
  %29 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21, i32 %24, i32 %25, i32 %28)
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %1, align 4
  br label %5

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %32, %8
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @MEMORY_dGetByte(i32 %35)
  %37 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %5

40:                                               ; preds = %5
  ret void
}

declare dso_local i32 @MEMORY_dGetWord(i32) #1

declare dso_local i32 @MEMORY_dGetByte(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
