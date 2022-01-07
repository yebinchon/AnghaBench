; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_dmac_transfer_one.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_dmac_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.dma_chan*)* @dmac_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmac_transfer_one(i32* %0, %struct.dma_chan* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.dma_chan* %1, %struct.dma_chan** %4, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %8 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = ashr i32 %9, 10
  %11 = and i32 %10, 3
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %132 [
    i32 0, label %13
    i32 1, label %25
    i32 2, label %37
    i32 3, label %49
  ]

13:                                               ; preds = %2
  %14 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %15 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @p32x_sh2_read8(i32 %16, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %20 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @p32x_sh2_write8(i32 %21, i32 %22, i32* %23)
  br label %25

25:                                               ; preds = %2, %13
  %26 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %27 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @p32x_sh2_read16(i32 %28, i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %32 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @p32x_sh2_write16(i32 %33, i32 %34, i32* %35)
  br label %132

37:                                               ; preds = %2
  %38 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %39 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @p32x_sh2_read32(i32 %40, i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %44 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @p32x_sh2_write32(i32 %45, i32 %46, i32* %47)
  br label %132

49:                                               ; preds = %2
  %50 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %51 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 0
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @p32x_sh2_read32(i32 %53, i32* %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %57 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 0
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @p32x_sh2_write32(i32 %59, i32 %60, i32* %61)
  %63 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %64 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 4
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @p32x_sh2_read32(i32 %66, i32* %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %70 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @p32x_sh2_write32(i32 %72, i32 %73, i32* %74)
  %76 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %77 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 8
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @p32x_sh2_read32(i32 %79, i32* %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %83 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @p32x_sh2_write32(i32 %85, i32 %86, i32* %87)
  %89 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %90 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 12
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @p32x_sh2_read32(i32 %92, i32* %93)
  store i32 %94, i32* %6, align 4
  %95 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %96 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 12
  %99 = load i32, i32* %6, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @p32x_sh2_write32(i32 %98, i32 %99, i32* %100)
  %102 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %103 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 16
  store i32 %105, i32* %103, align 4
  %106 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %107 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, 32768
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %49
  %112 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %113 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 16
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %111, %49
  %117 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %118 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, 16384
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %124 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 16
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %122, %116
  %128 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %129 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %130, 4
  store i64 %131, i64* %129, align 8
  br label %186

132:                                              ; preds = %2, %37, %25
  %133 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %134 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, -1
  store i64 %136, i64* %134, align 8
  %137 = load i32, i32* %5, align 4
  %138 = shl i32 1, %137
  store i32 %138, i32* %5, align 4
  %139 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %140 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, 32768
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %132
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %147 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %132
  %151 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %152 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, 16384
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %159 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %156, %150
  %163 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %164 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, 8192
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load i32, i32* %5, align 4
  %170 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %171 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %168, %162
  %175 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %176 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, 4096
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = load i32, i32* %5, align 4
  %182 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %183 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %127, %180, %174
  ret void
}

declare dso_local i32 @p32x_sh2_read8(i32, i32*) #1

declare dso_local i32 @p32x_sh2_write8(i32, i32, i32*) #1

declare dso_local i32 @p32x_sh2_read16(i32, i32*) #1

declare dso_local i32 @p32x_sh2_write16(i32, i32, i32*) #1

declare dso_local i32 @p32x_sh2_read32(i32, i32*) #1

declare dso_local i32 @p32x_sh2_write32(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
