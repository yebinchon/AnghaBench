; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_md_cart_context_load.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_md_cart_context_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i8*, i32*, i32* }
%struct.TYPE_10__ = type { i8*, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32*, i32* }

@sram = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@m68k = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@sram_read_byte = common dso_local global i8* null, align 8
@sram_read_word = common dso_local global i32* null, align 8
@sram_write_byte = common dso_local global i8* null, align 8
@sram_write_word = common dso_local global i32 0, align 4
@zbank_memory_map = common dso_local global %struct.TYPE_10__* null, align 8
@m68k_unused_8_w = common dso_local global i8* null, align 8
@m68k_unused_16_w = common dso_local global i32 0, align 4
@zbank_unused_w = common dso_local global i8* null, align 8
@cart = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@svp = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_cart_context_load(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %118, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 64
  br i1 %8, label %9, label %121

9:                                                ; preds = %6
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 255
  br i1 %17, label %18, label %63

18:                                               ; preds = %9
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sram, i32 0, i32 0), align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @m68k, i32 0, i32 0), align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i64 %19, i64* %24, align 8
  %25 = load i8*, i8** @sram_read_byte, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @m68k, i32 0, i32 0), align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  store i32* %26, i32** %31, align 8
  %32 = load i32*, i32** @sram_read_word, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @m68k, i32 0, i32 0), align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  store i32* %32, i32** %37, align 8
  %38 = load i8*, i8** @sram_write_byte, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @m68k, i32 0, i32 0), align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  store i8* %38, i8** %43, align 8
  %44 = load i32, i32* @sram_write_word, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @m68k, i32 0, i32 0), align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %44, i32* %49, align 8
  %50 = load i8*, i8** @sram_read_byte, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @zbank_memory_map, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  store i32* %51, i32** %56, align 8
  %57 = load i8*, i8** @sram_write_byte, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @zbank_memory_map, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i8* %57, i8** %62, align 8
  br label %117

63:                                               ; preds = %9
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @m68k, i32 0, i32 0), align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sram, i32 0, i32 0), align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %106

72:                                               ; preds = %63
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @m68k, i32 0, i32 0), align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  store i32* null, i32** %77, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @m68k, i32 0, i32 0), align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  store i32* null, i32** %82, align 8
  %83 = load i8*, i8** @m68k_unused_8_w, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @m68k, i32 0, i32 0), align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  store i8* %83, i8** %88, align 8
  %89 = load i32, i32* @m68k_unused_16_w, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @m68k, i32 0, i32 0), align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store i32 %89, i32* %94, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** @zbank_memory_map, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  %100 = load i8*, i8** @zbank_unused_w, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** @zbank_memory_map, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i8* %100, i8** %105, align 8
  br label %106

106:                                              ; preds = %72, %63
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cart, i32 0, i32 0), align 8
  %108 = load i32, i32* %5, align 4
  %109 = shl i32 %108, 16
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %107, %110
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @m68k, i32 0, i32 0), align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store i64 %111, i64* %116, align 8
  br label %117

117:                                              ; preds = %106, %18
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %6

121:                                              ; preds = %6
  %122 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cart, i32 0, i32 1, i32 0), align 8
  %123 = call i32 @load_param(i32* %122, i32 8)
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** @svp, align 8
  %125 = icmp ne %struct.TYPE_11__* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %121
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** @svp, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @load_param(i32* %129, i32 2048)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** @svp, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @load_param(i32* %133, i32 8)
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** @svp, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = call i32 @load_param(i32* %136, i32 4)
  br label %138

138:                                              ; preds = %126, %121
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @load_param(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
