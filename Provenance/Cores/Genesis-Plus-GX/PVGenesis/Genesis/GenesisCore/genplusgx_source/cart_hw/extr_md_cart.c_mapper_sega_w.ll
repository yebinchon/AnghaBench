; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_mapper_sega_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_mapper_sega_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8*, i32*, i32*, i64 }
%struct.TYPE_8__ = type { i8*, i32* }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i64 }

@sram = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@m68k = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@sram_read_byte = common dso_local global i8* null, align 8
@sram_read_word = common dso_local global i32* null, align 8
@zbank_memory_map = common dso_local global %struct.TYPE_8__* null, align 8
@m68k_unused_8_w = common dso_local global i8* null, align 8
@m68k_unused_16_w = common dso_local global i8* null, align 8
@zbank_unused_w = common dso_local global i8* null, align 8
@sram_write_byte = common dso_local global i8* null, align 8
@sram_write_word = common dso_local global i8* null, align 8
@cart = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@HW_LOCK_ON = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@TYPE_SK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mapper_sega_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapper_sega_w(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %90

7:                                                ; preds = %1
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sram, i32 0, i32 1), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %59

10:                                               ; preds = %7
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sram, i32 0, i32 0), align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 32
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  store i64 %11, i64* %14, align 8
  %15 = load i8*, i8** @sram_read_byte, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 32
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  store i32* %16, i32** %19, align 8
  %20 = load i32*, i32** @sram_read_word, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 32
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i32* %20, i32** %23, align 8
  %24 = load i8*, i8** @sram_read_byte, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 32
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32* %25, i32** %28, align 8
  %29 = load i32, i32* %2, align 4
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %10
  %33 = load i8*, i8** @m68k_unused_8_w, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 32
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load i8*, i8** @m68k_unused_16_w, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 32
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** @zbank_unused_w, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 32
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  br label %58

45:                                               ; preds = %10
  %46 = load i8*, i8** @sram_write_byte, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 32
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = load i8*, i8** @sram_write_word, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 32
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** @sram_write_byte, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 32
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  br label %58

58:                                               ; preds = %45, %32
  br label %59

59:                                               ; preds = %58, %7
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cart, i32 0, i32 0), align 8
  %61 = load i32, i32* @HW_LOCK_ON, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %59
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 8
  %66 = load i64, i64* @TYPE_SK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %64
  store i32 48, i32* %3, align 4
  br label %69

69:                                               ; preds = %85, %68
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 64
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cart, i32 0, i32 2), align 8
  %74 = add nsw i64 %73, 9437184
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 3
  %77 = shl i32 %76, 16
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %74, %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  store i64 %79, i64* %84, align 8
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %69

88:                                               ; preds = %69
  br label %89

89:                                               ; preds = %88, %64, %59
  br label %144

90:                                               ; preds = %1
  store i32 32, i32* %3, align 4
  br label %91

91:                                               ; preds = %140, %90
  %92 = load i32, i32* %3, align 4
  %93 = icmp slt i32 %92, 64
  br i1 %93, label %94, label %143

94:                                               ; preds = %91
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cart, i32 0, i32 2), align 8
  %96 = load i32, i32* %3, align 4
  %97 = shl i32 %96, 16
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cart, i32 0, i32 1), align 4
  %99 = and i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %95, %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  store i64 %101, i64* %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  store i32* null, i32** %111, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  store i32* null, i32** %116, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i32* null, i32** %121, align 8
  %122 = load i8*, i8** @m68k_unused_8_w, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i8* %122, i8** %127, align 8
  %128 = load i8*, i8** @m68k_unused_16_w, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i8* %128, i8** %133, align 8
  %134 = load i8*, i8** @zbank_unused_w, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i8* %134, i8** %139, align 8
  br label %140

140:                                              ; preds = %94
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %91

143:                                              ; preds = %91
  br label %144

144:                                              ; preds = %143, %89
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
