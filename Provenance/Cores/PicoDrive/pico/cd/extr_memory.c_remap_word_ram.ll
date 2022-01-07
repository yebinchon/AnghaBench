; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_remap_word_ram.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_remap_word_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i8* }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i64* }

@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@m68k_read8_map = common dso_local global i32 0, align 4
@m68k_cell_read8 = common dso_local global i32* null, align 8
@m68k_read16_map = common dso_local global i32 0, align 4
@m68k_cell_read16 = common dso_local global i32* null, align 8
@m68k_write8_map = common dso_local global i32 0, align 4
@m68k_cell_write8 = common dso_local global i32* null, align 8
@m68k_write16_map = common dso_local global i32 0, align 4
@m68k_cell_write16 = common dso_local global i32* null, align 8
@s68k_read8_map = common dso_local global i32 0, align 4
@s68k_dec_read8 = common dso_local global i32* null, align 8
@s68k_read16_map = common dso_local global i32 0, align 4
@s68k_dec_read16 = common dso_local global i32* null, align 8
@s68k_write8_map = common dso_local global i32 0, align 4
@s68k_dec_write8 = common dso_local global i32** null, align 8
@s68k_write16_map = common dso_local global i32 0, align 4
@s68k_dec_write16 = common dso_local global i32** null, align 8
@FAMEC_FETCHBITS = common dso_local global i32 0, align 4
@M68K_FETCHBANK1 = common dso_local global i32 0, align 4
@PicoCpuFM68k = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PicoCpuFS68k = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @remap_word_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remap_word_ram(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @cpu68k_map_all_ram(i32 2097152, i32 2359295, i8* %13, i32 0)
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @cpu68k_map_all_ram(i32 524288, i32 786431, i8* %15, i32 1)
  br label %110

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 1
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %20, 24
  %22 = ashr i32 %21, 3
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %3, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @cpu68k_map_all_ram(i32 2097152, i32 2228223, i8* %30, i32 0)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = xor i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %3, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @cpu68k_map_all_ram(i32 786432, i32 983039, i8* %40, i32 1)
  %42 = load i32, i32* @m68k_read8_map, align 4
  %43 = load i32*, i32** @m68k_cell_read8, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpu68k_map_set(i32 %42, i32 2228224, i32 2359295, i32 %47, i32 1)
  %49 = load i32, i32* @m68k_read16_map, align 4
  %50 = load i32*, i32** @m68k_cell_read16, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cpu68k_map_set(i32 %49, i32 2228224, i32 2359295, i32 %54, i32 1)
  %56 = load i32, i32* @m68k_write8_map, align 4
  %57 = load i32*, i32** @m68k_cell_write8, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cpu68k_map_set(i32 %56, i32 2228224, i32 2359295, i32 %61, i32 1)
  %63 = load i32, i32* @m68k_write16_map, align 4
  %64 = load i32*, i32** @m68k_cell_write16, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cpu68k_map_set(i32 %63, i32 2228224, i32 2359295, i32 %68, i32 1)
  %70 = load i32, i32* @s68k_read8_map, align 4
  %71 = load i32*, i32** @s68k_dec_read8, align 8
  %72 = load i32, i32* %4, align 4
  %73 = xor i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cpu68k_map_set(i32 %70, i32 524288, i32 786431, i32 %76, i32 1)
  %78 = load i32, i32* @s68k_read16_map, align 4
  %79 = load i32*, i32** @s68k_dec_read16, align 8
  %80 = load i32, i32* %4, align 4
  %81 = xor i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @cpu68k_map_set(i32 %78, i32 524288, i32 786431, i32 %84, i32 1)
  %86 = load i32, i32* @s68k_write8_map, align 4
  %87 = load i32**, i32*** @s68k_dec_write8, align 8
  %88 = load i32, i32* %4, align 4
  %89 = xor i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %87, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @cpu68k_map_set(i32 %86, i32 524288, i32 786431, i32 %96, i32 1)
  %98 = load i32, i32* @s68k_write16_map, align 4
  %99 = load i32**, i32*** @s68k_dec_write16, align 8
  %100 = load i32, i32* %4, align 4
  %101 = xor i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %99, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @cpu68k_map_set(i32 %98, i32 524288, i32 786431, i32 %108, i32 1)
  br label %110

110:                                              ; preds = %17, %9
  ret void
}

declare dso_local i32 @cpu68k_map_all_ram(i32, i32, i8*, i32) #1

declare dso_local i32 @cpu68k_map_set(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
