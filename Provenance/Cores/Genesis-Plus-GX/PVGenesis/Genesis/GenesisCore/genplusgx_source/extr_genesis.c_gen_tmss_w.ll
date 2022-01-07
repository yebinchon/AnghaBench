; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_genesis.c_gen_tmss_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_genesis.c_gen_tmss_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@tmss = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"SEGA\00", align 1
@vdp_read_byte = common dso_local global i32 0, align 4
@m68k = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@vdp_read_word = common dso_local global i32 0, align 4
@vdp_write_byte = common dso_local global i32 0, align 4
@vdp_write_word = common dso_local global i32 0, align 4
@zbank_read_vdp = common dso_local global i32 0, align 4
@zbank_memory_map = common dso_local global %struct.TYPE_5__* null, align 8
@zbank_write_vdp = common dso_local global i32 0, align 4
@m68k_lockup_r_8 = common dso_local global i32 0, align 4
@m68k_lockup_r_16 = common dso_local global i32 0, align 4
@m68k_lockup_w_8 = common dso_local global i32 0, align 4
@m68k_lockup_w_16 = common dso_local global i32 0, align 4
@zbank_lockup_r = common dso_local global i32 0, align 4
@zbank_lockup_w = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_tmss_w(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @tmss, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @WRITE_WORD(i64 %6, i32 %7, i32 %8)
  %10 = load i64, i64* @tmss, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i64 @memcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %2
  store i32 192, i32* %5, align 4
  br label %15

15:                                               ; preds = %55, %14
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 224
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  %19 = load i32, i32* @vdp_read_byte, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store i32 %19, i32* %24, align 4
  %25 = load i32, i32* @vdp_read_word, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* @vdp_write_byte, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %31, i32* %36, align 4
  %37 = load i32, i32* @vdp_write_word, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  %43 = load i32, i32* @zbank_read_vdp, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zbank_memory_map, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* @zbank_write_vdp, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zbank_memory_map, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 4
  br label %55

55:                                               ; preds = %18
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 8
  store i32 %57, i32* %5, align 4
  br label %15

58:                                               ; preds = %15
  br label %104

59:                                               ; preds = %2
  store i32 192, i32* %5, align 4
  br label %60

60:                                               ; preds = %100, %59
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 224
  br i1 %62, label %63, label %103

63:                                               ; preds = %60
  %64 = load i32, i32* @m68k_lockup_r_8, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* @m68k_lockup_r_16, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i32 %70, i32* %75, align 4
  %76 = load i32, i32* @m68k_lockup_w_8, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* @m68k_lockup_w_16, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %82, i32* %87, align 4
  %88 = load i32, i32* @zbank_lockup_r, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zbank_memory_map, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32 %88, i32* %93, align 4
  %94 = load i32, i32* @zbank_lockup_w, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zbank_memory_map, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 %94, i32* %99, align 4
  br label %100

100:                                              ; preds = %63
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 8
  store i32 %102, i32* %5, align 4
  br label %60

103:                                              ; preds = %60
  br label %104

104:                                              ; preds = %103, %58
  ret void
}

declare dso_local i32 @WRITE_WORD(i64, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
