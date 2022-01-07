; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_sound.c_sound_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_sound.c_sound_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32** }

@config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@fm_cycles_start = common dso_local global i32 0, align 4
@fm_last = common dso_local global i32* null, align 8
@fm_buffer = common dso_local global i8* null, align 8
@snd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@fm_cycles_ratio = common dso_local global i64 0, align 8
@fm_ptr = common dso_local global i8* null, align 8
@fm_cycles_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sound_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @SN76489_Update(i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @fm_update(i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 8
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @fm_cycles_start, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** @fm_last, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** @fm_last, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i8*, i8** @fm_buffer, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %8, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 1), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %75

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %70, %25
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %8, align 8
  %29 = load i32, i32* %27, align 4
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sdiv i32 %31, 100
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @blip_add_delta(i32 %42, i32 %43, i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %8, align 8
  %48 = load i32, i32* %46, align 4
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sdiv i32 %50, 100
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @blip_add_delta(i32 %61, i32 %62, i32 %63)
  %65 = load i64, i64* @fm_cycles_ratio, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %26
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %2, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %26, label %74

74:                                               ; preds = %70
  br label %125

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %120, %75
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %8, align 8
  %79 = load i32, i32* %77, align 4
  %80 = load i32, i32* %4, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sdiv i32 %81, 100
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @blip_add_delta_fast(i32 %92, i32 %93, i32 %94)
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %8, align 8
  %98 = load i32, i32* %96, align 4
  %99 = load i32, i32* %4, align 4
  %100 = mul nsw i32 %98, %99
  %101 = sdiv i32 %100, 100
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %101, %102
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %7, align 4
  %107 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @blip_add_delta_fast(i32 %111, i32 %112, i32 %113)
  %115 = load i64, i64* @fm_cycles_ratio, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %76
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %2, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %76, label %124

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %124, %74
  %126 = load i8*, i8** @fm_buffer, align 8
  store i8* %126, i8** @fm_ptr, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32*, i32** @fm_last, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32*, i32** @fm_last, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %2, align 4
  %135 = sub i32 %133, %134
  store i32 %135, i32* @fm_cycles_start, align 4
  store i32 %135, i32* @fm_cycles_count, align 4
  %136 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %137 = getelementptr inbounds i32*, i32** %136, i64 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %2, align 4
  %142 = call i32 @blip_end_frame(i32 %140, i32 %141)
  %143 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %2, align 4
  %149 = call i32 @blip_end_frame(i32 %147, i32 %148)
  %150 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @blip_samples_avail(i32 %154)
  ret i32 %155
}

declare dso_local i32 @SN76489_Update(i32) #1

declare dso_local i32 @fm_update(i32) #1

declare dso_local i32 @blip_add_delta(i32, i32, i32) #1

declare dso_local i32 @blip_add_delta_fast(i32, i32, i32) #1

declare dso_local i32 @blip_end_frame(i32, i32) #1

declare dso_local i32 @blip_samples_avail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
