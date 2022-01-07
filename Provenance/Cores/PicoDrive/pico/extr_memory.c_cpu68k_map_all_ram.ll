; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_cpu68k_map_all_ram.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_cpu68k_map_all_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M68K_MEM_SHIFT = common dso_local global i32 0, align 4
@m68k_read8_map = common dso_local global i32* null, align 8
@m68k_read16_map = common dso_local global i32* null, align 8
@m68k_write8_map = common dso_local global i32* null, align 8
@m68k_write16_map = common dso_local global i32* null, align 8
@s68k_read8_map = common dso_local global i32* null, align 8
@s68k_read16_map = common dso_local global i32* null, align 8
@s68k_write8_map = common dso_local global i32* null, align 8
@s68k_write16_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu68k_map_all_ram(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @M68K_MEM_SHIFT, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** @m68k_read8_map, align 8
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** @m68k_read16_map, align 8
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** @m68k_write8_map, align 8
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** @m68k_write16_map, align 8
  store i32* %25, i32** %12, align 8
  br label %31

26:                                               ; preds = %4
  %27 = load i32*, i32** @s68k_read8_map, align 8
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** @s68k_read16_map, align 8
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** @s68k_write8_map, align 8
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** @s68k_write16_map, align 8
  store i32* %30, i32** %12, align 8
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %13, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %14, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %64, %31
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %14, align 4
  %44 = ashr i32 %42, %43
  %45 = icmp sle i32 %41, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %47, i32* %55, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %47, i32* %59, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %47, i32* %63, align 4
  br label %64

64:                                               ; preds = %46
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %40

67:                                               ; preds = %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
