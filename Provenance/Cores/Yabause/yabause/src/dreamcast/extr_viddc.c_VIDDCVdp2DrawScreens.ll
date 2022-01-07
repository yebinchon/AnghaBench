; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp2DrawScreens.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp2DrawScreens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@Vdp2Regs = common dso_local global %struct.TYPE_2__* null, align 8
@vdp2_fbs = common dso_local global i64* null, align 8
@vdp2_fb = common dso_local global i64 0, align 8
@vdp2_fbnum = common dso_local global i32 0, align 4
@nbg3priority = common dso_local global i32 0, align 4
@dmadone = common dso_local global i32 0, align 4
@cur_vdp2 = common dso_local global i64 0, align 8
@dma_callback = common dso_local global i32 0, align 4
@nbg2priority = common dso_local global i32 0, align 4
@nbg1priority = common dso_local global i32 0, align 4
@nbg0priority = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @VIDDCVdp2DrawScreens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VIDDCVdp2DrawScreens() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 3
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @VIDDCVdp2SetResolution(i32 %4)
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 7
  %10 = call i32 @VIDDCVdp2SetPriorityNBG0(i32 %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 7
  %16 = call i32 @VIDDCVdp2SetPriorityNBG1(i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 7
  %21 = call i32 @VIDDCVdp2SetPriorityNBG2(i32 %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 7
  %27 = call i32 @VIDDCVdp2SetPriorityNBG3(i32 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 7
  %32 = call i32 @VIDDCVdp2SetPriorityRBG0(i32 %31)
  %33 = load i64*, i64** @vdp2_fbs, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* @vdp2_fb, align 8
  store i32 0, i32* @vdp2_fbnum, align 4
  store i32 1, i32* %1, align 4
  br label %36

36:                                               ; preds = %156, %0
  %37 = load i32, i32* %1, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %159

39:                                               ; preds = %36
  %40 = load i32, i32* @nbg3priority, align 4
  %41 = load i32, i32* %1, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %39
  %44 = call i64 (...) @Vdp2DrawNBG3()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = load i64, i64* @vdp2_fb, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @dcache_flush_range(i32 %48, i32 262144)
  %50 = call i32 @sem_wait(i32* @dmadone)
  %51 = load i64, i64* @vdp2_fb, align 8
  %52 = load i64, i64* @cur_vdp2, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @dma_callback, align 4
  %55 = call i32 @pvr_txr_load_dma(i64 %51, i32 %53, i32 262144, i32 0, i32 %54, i32 0)
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @Vdp2Draw(i32 %56)
  %58 = load i64, i64* @cur_vdp2, align 8
  %59 = add nsw i64 %58, 262144
  store i64 %59, i64* @cur_vdp2, align 8
  %60 = load i32, i32* @vdp2_fbnum, align 4
  %61 = xor i32 %60, 1
  store i32 %61, i32* @vdp2_fbnum, align 4
  %62 = load i64*, i64** @vdp2_fbs, align 8
  %63 = load i32, i32* @vdp2_fbnum, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* @vdp2_fb, align 8
  br label %67

67:                                               ; preds = %46, %43
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32, i32* @nbg2priority, align 4
  %70 = load i32, i32* %1, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %68
  %73 = call i64 (...) @Vdp2DrawNBG2()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = load i64, i64* @vdp2_fb, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @dcache_flush_range(i32 %77, i32 262144)
  %79 = call i32 @sem_wait(i32* @dmadone)
  %80 = load i64, i64* @vdp2_fb, align 8
  %81 = load i64, i64* @cur_vdp2, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @dma_callback, align 4
  %84 = call i32 @pvr_txr_load_dma(i64 %80, i32 %82, i32 262144, i32 0, i32 %83, i32 0)
  %85 = load i32, i32* %1, align 4
  %86 = call i32 @Vdp2Draw(i32 %85)
  %87 = load i64, i64* @cur_vdp2, align 8
  %88 = add nsw i64 %87, 262144
  store i64 %88, i64* @cur_vdp2, align 8
  %89 = load i32, i32* @vdp2_fbnum, align 4
  %90 = xor i32 %89, 1
  store i32 %90, i32* @vdp2_fbnum, align 4
  %91 = load i64*, i64** @vdp2_fbs, align 8
  %92 = load i32, i32* @vdp2_fbnum, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* @vdp2_fb, align 8
  br label %96

96:                                               ; preds = %75, %72
  br label %97

97:                                               ; preds = %96, %68
  %98 = load i32, i32* @nbg1priority, align 4
  %99 = load i32, i32* %1, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %97
  %102 = call i64 (...) @Vdp2DrawNBG1()
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load i64, i64* @vdp2_fb, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @dcache_flush_range(i32 %106, i32 262144)
  %108 = call i32 @sem_wait(i32* @dmadone)
  %109 = load i64, i64* @vdp2_fb, align 8
  %110 = load i64, i64* @cur_vdp2, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* @dma_callback, align 4
  %113 = call i32 @pvr_txr_load_dma(i64 %109, i32 %111, i32 262144, i32 0, i32 %112, i32 0)
  %114 = load i32, i32* %1, align 4
  %115 = call i32 @Vdp2Draw(i32 %114)
  %116 = load i64, i64* @cur_vdp2, align 8
  %117 = add nsw i64 %116, 262144
  store i64 %117, i64* @cur_vdp2, align 8
  %118 = load i32, i32* @vdp2_fbnum, align 4
  %119 = xor i32 %118, 1
  store i32 %119, i32* @vdp2_fbnum, align 4
  %120 = load i64*, i64** @vdp2_fbs, align 8
  %121 = load i32, i32* @vdp2_fbnum, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* @vdp2_fb, align 8
  br label %125

125:                                              ; preds = %104, %101
  br label %126

126:                                              ; preds = %125, %97
  %127 = load i32, i32* @nbg0priority, align 4
  %128 = load i32, i32* %1, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %126
  %131 = call i64 (...) @Vdp2DrawNBG0()
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %130
  %134 = load i64, i64* @vdp2_fb, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @dcache_flush_range(i32 %135, i32 262144)
  %137 = call i32 @sem_wait(i32* @dmadone)
  %138 = load i64, i64* @vdp2_fb, align 8
  %139 = load i64, i64* @cur_vdp2, align 8
  %140 = trunc i64 %139 to i32
  %141 = load i32, i32* @dma_callback, align 4
  %142 = call i32 @pvr_txr_load_dma(i64 %138, i32 %140, i32 262144, i32 0, i32 %141, i32 0)
  %143 = load i32, i32* %1, align 4
  %144 = call i32 @Vdp2Draw(i32 %143)
  %145 = load i64, i64* @cur_vdp2, align 8
  %146 = add nsw i64 %145, 262144
  store i64 %146, i64* @cur_vdp2, align 8
  %147 = load i32, i32* @vdp2_fbnum, align 4
  %148 = xor i32 %147, 1
  store i32 %148, i32* @vdp2_fbnum, align 4
  %149 = load i64*, i64** @vdp2_fbs, align 8
  %150 = load i32, i32* @vdp2_fbnum, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* @vdp2_fb, align 8
  br label %154

154:                                              ; preds = %133, %130
  br label %155

155:                                              ; preds = %154, %126
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %1, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %1, align 4
  br label %36

159:                                              ; preds = %36
  ret void
}

declare dso_local i32 @VIDDCVdp2SetResolution(i32) #1

declare dso_local i32 @VIDDCVdp2SetPriorityNBG0(i32) #1

declare dso_local i32 @VIDDCVdp2SetPriorityNBG1(i32) #1

declare dso_local i32 @VIDDCVdp2SetPriorityNBG2(i32) #1

declare dso_local i32 @VIDDCVdp2SetPriorityNBG3(i32) #1

declare dso_local i32 @VIDDCVdp2SetPriorityRBG0(i32) #1

declare dso_local i64 @Vdp2DrawNBG3(...) #1

declare dso_local i32 @dcache_flush_range(i32, i32) #1

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @pvr_txr_load_dma(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Vdp2Draw(i32) #1

declare dso_local i64 @Vdp2DrawNBG2(...) #1

declare dso_local i64 @Vdp2DrawNBG1(...) #1

declare dso_local i64 @Vdp2DrawNBG0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
