; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebugDumpMem.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebugDumpMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@Pico = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"dumps/zram.bin\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"dumps/cram.bin\00", align 1
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_SMS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"dumps/vram.bin\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"dumps/ram.bin\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"dumps/vsram.bin\00", align 1
@PAHW_MCD = common dso_local global i32 0, align 4
@Pico_mcd = common dso_local global %struct.TYPE_8__* null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"dumps/prg_ram.bin\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"dumps/word_ram_2M.bin\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"dumps/word_ram_1M_0.bin\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"dumps/word_ram_1M_1.bin\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"dumps/pcm_ram.bin\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"dumps/bram.bin\00", align 1
@PAHW_32X = common dso_local global i32 0, align 4
@Pico32xMem = common dso_local global %struct.TYPE_9__* null, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"dumps/sdram.bin\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"dumps/dram0.bin\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"dumps/dram1.bin\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"dumps/pal32x.bin\00", align 1
@msh2 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"dumps/data_array0.bin\00", align 1
@ssh2 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"dumps/data_array1.bin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PDebugDumpMem() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 5), align 4
  %2 = call i32 @dump_ram_noswab(i32 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 4), align 4
  %4 = call i32 @dump_ram(i32 %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @PicoAHW, align 4
  %6 = load i32, i32* @PAHW_SMS, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 3), align 4
  %11 = call i32 @dump_ram_noswab(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %19

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 2), align 4
  %14 = call i32 @dump_ram(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 1), align 4
  %16 = call i32 @dump_ram(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 0), align 4
  %18 = call i32 @dump_ram(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %19

19:                                               ; preds = %12, %9
  %20 = load i32, i32* @PicoAHW, align 4
  %21 = load i32, i32* @PAHW_MCD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %83

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Pico_mcd, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dump_ram(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Pico_mcd, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Pico_mcd, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @wram_1M_to_2M(i32 %39)
  br label %41

41:                                               ; preds = %36, %24
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Pico_mcd, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dump_ram(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Pico_mcd, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @wram_2M_to_1M(i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Pico_mcd, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dump_ram(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Pico_mcd, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dump_ram(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Pico_mcd, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %41
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Pico_mcd, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @wram_2M_to_1M(i32 %72)
  br label %74

74:                                               ; preds = %69, %41
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Pico_mcd, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dump_ram_noswab(i32 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Pico_mcd, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dump_ram_noswab(i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %83

83:                                               ; preds = %74, %19
  %84 = load i32, i32* @PicoAHW, align 4
  %85 = load i32, i32* @PAHW_32X, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %83
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Pico32xMem, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dump_ram(i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Pico32xMem, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dump_ram(i32 %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Pico32xMem, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dump_ram(i32 %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Pico32xMem, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dump_ram(i32 %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @msh2, i32 0, i32 0), align 4
  %110 = call i32 @dump_ram(i32 %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ssh2, i32 0, i32 0), align 4
  %112 = call i32 @dump_ram(i32 %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  br label %113

113:                                              ; preds = %88, %83
  ret void
}

declare dso_local i32 @dump_ram_noswab(i32, i8*) #1

declare dso_local i32 @dump_ram(i32, i8*) #1

declare dso_local i32 @wram_1M_to_2M(i32) #1

declare dso_local i32 @wram_2M_to_1M(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
