; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_AllocXEMemory.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_AllocXEMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMORY_ram_size = common dso_local global i32 0, align 4
@atarixe_memory_size = common dso_local global i64 0, align 8
@atarixe_memory = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @AllocXEMemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AllocXEMemory() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @MEMORY_ram_size, align 4
  %3 = icmp sgt i32 %2, 64
  br i1 %3, label %4, label %29

4:                                                ; preds = %0
  %5 = load i32, i32* @MEMORY_ram_size, align 4
  %6 = sub nsw i32 %5, 64
  %7 = sdiv i32 %6, 16
  %8 = add nsw i32 1, %7
  %9 = mul nsw i32 %8, 16384
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @atarixe_memory_size, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %4
  %15 = load i32*, i32** @atarixe_memory, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** @atarixe_memory, align 8
  %19 = call i32 @free(i32* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i64, i64* %1, align 8
  %22 = call i64 @Util_malloc(i64 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** @atarixe_memory, align 8
  %24 = load i64, i64* %1, align 8
  store i64 %24, i64* @atarixe_memory_size, align 8
  %25 = load i32*, i32** @atarixe_memory, align 8
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @memset(i32* %25, i32 0, i64 %26)
  br label %28

28:                                               ; preds = %20, %4
  br label %36

29:                                               ; preds = %0
  %30 = load i32*, i32** @atarixe_memory, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** @atarixe_memory, align 8
  %34 = call i32 @free(i32* %33)
  store i32* null, i32** @atarixe_memory, align 8
  store i64 0, i64* @atarixe_memory_size, align 8
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %28
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @Util_malloc(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
