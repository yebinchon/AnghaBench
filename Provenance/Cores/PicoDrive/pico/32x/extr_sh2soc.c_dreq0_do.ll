; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_dreq0_do.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_dreq0_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i16*, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.dma_chan = type { i16, i32, i32, i32 }

@Pico32x = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@EL_32XP = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"dreq0: tcr0/len inconsistent: %d/%d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"dreq0: bad control: %04x\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dreq0: bad sar?: %08x\00", align 1
@SH2_STATE_SLEEP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"dreq0 [%08x] %04x, dreq_len %d\00", align 1
@P32XS_FULL = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.dma_chan*)* @dreq0_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dreq0_do(%struct.TYPE_8__* %0, %struct.dma_chan* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.dma_chan* %1, %struct.dma_chan** %4, align 8
  %7 = load i16*, i16** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 0), align 8
  %8 = getelementptr inbounds i16, i16* %7, i64 8
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %5, align 2
  %10 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %11 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %10, i32 0, i32 0
  %12 = load i16, i16* %11, align 4
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %19 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 4
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* %5, align 2
  %23 = zext i16 %22 to i32
  %24 = add nsw i32 %23, 4
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %17, %2
  %27 = load i32, i32* @EL_32XP, align 4
  %28 = load i32, i32* @EL_ANOMALY, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %31 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 4
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* %5, align 2
  %35 = zext i16 %34 to i32
  %36 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %26, %17
  %38 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %39 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 16136
  %42 = icmp ne i32 %41, 1024
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load i32, i32* @EL_32XP, align 4
  %45 = load i32, i32* @EL_ANOMALY, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %48 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %43, %37
  %52 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %53 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, -536870913
  %56 = icmp ne i32 %55, 16402
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i32, i32* @EL_32XP, align 4
  %59 = load i32, i32* @EL_ANOMALY, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %62 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %57, %51
  %66 = load i32, i32* @SH2_STATE_SLEEP, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %114, %65
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 1), align 8
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %77 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %76, i32 0, i32 0
  %78 = load i16, i16* %77, align 4
  %79 = zext i16 %78 to i32
  %80 = icmp sgt i32 %79, 0
  br label %81

81:                                               ; preds = %75, %71
  %82 = phi i1 [ false, %71 ], [ %80, %75 ]
  br i1 %82, label %83, label %117

83:                                               ; preds = %81
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = load i32, i32* @EL_32XP, align 4
  %86 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %87 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 2), align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i16, i16* %5, align 2
  %95 = call i32 @elprintf_sh2(%struct.TYPE_8__* %84, i32 %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %93, i16 zeroext %94)
  %96 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %97 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 2), align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = call i32 @p32x_sh2_write16(i32 %98, i32 %103, %struct.TYPE_8__* %104)
  %106 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %107 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 2
  store i32 %109, i32* %107, align 4
  %110 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %111 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %110, i32 0, i32 0
  %112 = load i16, i16* %111, align 4
  %113 = add i16 %112, -1
  store i16 %113, i16* %111, align 4
  br label %114

114:                                              ; preds = %83
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %71

117:                                              ; preds = %81
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 1), align 8
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 2), align 8
  %123 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 2), align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 1), align 8
  %128 = load i32, i32* %6, align 4
  %129 = sub nsw i32 %127, %128
  %130 = mul nsw i32 %129, 2
  %131 = call i32 @memmove(i32* %122, i32* %126, i32 %130)
  br label %132

132:                                              ; preds = %121, %117
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 1), align 8
  %135 = sub nsw i32 %134, %133
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 1), align 8
  %136 = load i16, i16* @P32XS_FULL, align 2
  %137 = zext i16 %136 to i32
  %138 = xor i32 %137, -1
  %139 = load i16*, i16** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 0), align 8
  %140 = getelementptr inbounds i16, i16* %139, i64 3
  %141 = load i16, i16* %140, align 2
  %142 = zext i16 %141 to i32
  %143 = and i32 %142, %138
  %144 = trunc i32 %143 to i16
  store i16 %144, i16* %140, align 2
  %145 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %146 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %145, i32 0, i32 0
  %147 = load i16, i16* %146, align 4
  %148 = zext i16 %147 to i32
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %132
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %152 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %153 = call i32 @dmac_transfer_complete(%struct.TYPE_8__* %151, %struct.dma_chan* %152)
  br label %157

154:                                              ; preds = %132
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %156 = call i32 @sh2_end_run(%struct.TYPE_8__* %155, i32 16)
  br label %157

157:                                              ; preds = %154, %150
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @elprintf_sh2(%struct.TYPE_8__*, i32, i8*, i32, i32, i16 zeroext) #1

declare dso_local i32 @p32x_sh2_write16(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @dmac_transfer_complete(%struct.TYPE_8__*, %struct.dma_chan*) #1

declare dso_local i32 @sh2_end_run(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
