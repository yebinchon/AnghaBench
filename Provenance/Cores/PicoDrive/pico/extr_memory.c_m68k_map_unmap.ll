; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_m68k_map_unmap.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_m68k_map_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M68K_MEM_SHIFT = common dso_local global i32 0, align 4
@m68k_unmapped_read8 = common dso_local global i64 0, align 8
@MAP_FLAG = common dso_local global i32 0, align 4
@m68k_read8_map = common dso_local global i32* null, align 8
@m68k_unmapped_read16 = common dso_local global i64 0, align 8
@m68k_read16_map = common dso_local global i32* null, align 8
@m68k_unmapped_write8 = common dso_local global i64 0, align 8
@m68k_write8_map = common dso_local global i32* null, align 8
@m68k_unmapped_write16 = common dso_local global i64 0, align 8
@m68k_write16_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_map_unmap(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @M68K_MEM_SHIFT, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i64, i64* @m68k_unmapped_read8, align 8
  %10 = trunc i64 %9 to i32
  store volatile i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %29, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %16, %17
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load volatile i32, i32* %5, align 4
  %22 = ashr i32 %21, 1
  %23 = load volatile i32, i32* @MAP_FLAG, align 4
  %24 = or i32 %22, %23
  %25 = load i32*, i32** @m68k_read8_map, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %14

32:                                               ; preds = %14
  %33 = load i64, i64* @m68k_unmapped_read16, align 8
  %34 = trunc i64 %33 to i32
  store volatile i32 %34, i32* %5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %53, %32
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %40, %41
  %43 = icmp sle i32 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load volatile i32, i32* %5, align 4
  %46 = ashr i32 %45, 1
  %47 = load volatile i32, i32* @MAP_FLAG, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** @m68k_read16_map, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %38

56:                                               ; preds = %38
  %57 = load i64, i64* @m68k_unmapped_write8, align 8
  %58 = trunc i64 %57 to i32
  store volatile i32 %58, i32* %5, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %59, %60
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %77, %56
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %64, %65
  %67 = icmp sle i32 %63, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load volatile i32, i32* %5, align 4
  %70 = ashr i32 %69, 1
  %71 = load volatile i32, i32* @MAP_FLAG, align 4
  %72 = or i32 %70, %71
  %73 = load i32*, i32** @m68k_write8_map, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load i64, i64* @m68k_unmapped_write16, align 8
  %82 = trunc i64 %81 to i32
  store volatile i32 %82, i32* %5, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %6, align 4
  %85 = ashr i32 %83, %84
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %101, %80
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %6, align 4
  %90 = ashr i32 %88, %89
  %91 = icmp sle i32 %87, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load volatile i32, i32* %5, align 4
  %94 = ashr i32 %93, 1
  %95 = load volatile i32, i32* @MAP_FLAG, align 4
  %96 = or i32 %94, %95
  %97 = load i32*, i32** @m68k_write16_map, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %86

104:                                              ; preds = %86
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
