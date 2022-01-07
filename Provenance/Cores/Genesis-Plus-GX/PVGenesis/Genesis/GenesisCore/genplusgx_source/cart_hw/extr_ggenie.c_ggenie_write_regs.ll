; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_ggenie.c_ggenie_write_regs.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_ggenie.c_ggenie_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32*, i32*, i32 }

@ggenie = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@cart = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@m68k = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ggenie_read_byte = common dso_local global i32* null, align 8
@ggenie_read_word = common dso_local global i32* null, align 8
@m68k_unused_8_w = common dso_local global i32 0, align 4
@m68k_unused_16_w = common dso_local global i32 0, align 4
@ggenie_write_byte = common dso_local global i32 0, align 4
@ggenie_write_word = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ggenie_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ggenie_write_regs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  store i32 %5, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %171

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 1024
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cart, i32 0, i32 0), align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i32 %17, i32* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  br label %51

27:                                               ; preds = %12
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 3), align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 512
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %27
  %42 = load i32*, i32** @ggenie_read_byte, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i32* %42, i32** %45, align 8
  %46 = load i32*, i32** @ggenie_read_word, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32* %46, i32** %49, align 8
  br label %50

50:                                               ; preds = %41, %27
  br label %51

51:                                               ; preds = %50, %16
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 256
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %161

55:                                               ; preds = %51
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 63
  %60 = shl i32 %59, 16
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %60, %63
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 1), align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 63
  %71 = shl i32 %70, 16
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 6
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %71, %74
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 1), align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 8
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 63
  %82 = shl i32 %81, 16
  %83 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 9
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %82, %85
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 1), align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 11
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 63
  %93 = shl i32 %92, 16
  %94 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 12
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %93, %96
  %98 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 1), align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 14
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 63
  %104 = shl i32 %103, 16
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 15
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %104, %107
  %109 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 1), align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 17
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 63
  %115 = shl i32 %114, 16
  %116 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 18
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %115, %118
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 1), align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 5
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 2), align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 7
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 2), align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %129, i32* %131, align 4
  %132 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 10
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 2), align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  store i32 %134, i32* %136, align 4
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 13
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 2), align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 3
  store i32 %139, i32* %141, align 4
  %142 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 16
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 2), align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 4
  store i32 %144, i32* %146, align 4
  %147 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 19
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 2), align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 5
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @m68k_unused_8_w, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* @m68k_unused_16_w, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  %160 = call i32 @ggenie_switch(i32 1)
  br label %170

161:                                              ; preds = %51
  %162 = load i32, i32* @ggenie_write_byte, align 4
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* @ggenie_write_word, align 4
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m68k, i32 0, i32 0), align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  br label %170

170:                                              ; preds = %161, %55
  br label %180

171:                                              ; preds = %2
  %172 = load i32, i32* %3, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ggenie, i32 0, i32 0), align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, 1
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %174, %171
  br label %180

180:                                              ; preds = %179, %170
  ret void
}

declare dso_local i32 @ggenie_switch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
