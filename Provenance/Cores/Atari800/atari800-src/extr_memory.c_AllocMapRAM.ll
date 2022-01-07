; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_AllocMapRAM.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_AllocMapRAM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMORY_enable_mapram = common dso_local global i64 0, align 8
@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_XLXE = common dso_local global i64 0, align 8
@MEMORY_ram_size = common dso_local global i32 0, align 4
@mapram_memory = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @AllocMapRAM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AllocMapRAM() #0 {
  %1 = load i64, i64* @MEMORY_enable_mapram, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = load i64, i64* @Atari800_machine_type, align 8
  %5 = load i64, i64* @Atari800_MACHINE_XLXE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load i32, i32* @MEMORY_ram_size, align 4
  %9 = icmp sgt i32 %8, 20
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i32*, i32** @mapram_memory, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call i64 @Util_malloc(i32 2048)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** @mapram_memory, align 8
  br label %16

16:                                               ; preds = %13, %10
  br label %24

17:                                               ; preds = %7, %3, %0
  %18 = load i32*, i32** @mapram_memory, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** @mapram_memory, align 8
  %22 = call i32 @free(i32* %21)
  store i32* null, i32** @mapram_memory, align 8
  br label %23

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %16
  ret void
}

declare dso_local i64 @Util_malloc(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
