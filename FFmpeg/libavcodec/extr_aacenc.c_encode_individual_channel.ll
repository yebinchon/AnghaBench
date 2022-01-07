; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc.c_encode_individual_channel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc.c_encode_individual_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)* }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_24__*, %struct.TYPE_23__*, i32)* @encode_individual_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_individual_channel(i32* %0, %struct.TYPE_24__* %1, %struct.TYPE_23__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @put_bits(i32* %10, i32 8, i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %56, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 3
  %23 = call i32 @put_ics_info(%struct.TYPE_24__* %20, i32* %22)
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 2
  %28 = load i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)** %27, align 8
  %29 = icmp ne i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 2
  %35 = load i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)** %34, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = call i32 %35(%struct.TYPE_24__* %36, %struct.TYPE_23__* %37)
  br label %39

39:                                               ; preds = %30, %19
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = load i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, i32)* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = load i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, i32)** %50, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %54 = call i32 %51(%struct.TYPE_24__* %52, %struct.TYPE_23__* %53, i32 0)
  br label %55

55:                                               ; preds = %46, %39
  br label %56

56:                                               ; preds = %55, %4
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %59 = call i32 @encode_band_info(%struct.TYPE_24__* %57, %struct.TYPE_23__* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %63 = call i32 @encode_scale_factors(i32* %60, %struct.TYPE_24__* %61, %struct.TYPE_23__* %62)
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 2
  %67 = call i32 @encode_pulses(%struct.TYPE_24__* %64, i32* %66)
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @put_bits(i32* %69, i32 1, i32 %77)
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)** %82, align 8
  %84 = icmp ne i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %56
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)** %89, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %93 = call i32 %90(%struct.TYPE_24__* %91, %struct.TYPE_23__* %92)
  br label %94

94:                                               ; preds = %85, %56
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = call i32 @put_bits(i32* %96, i32 1, i32 0)
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %100 = call i32 @encode_spectral_coeffs(%struct.TYPE_24__* %98, %struct.TYPE_23__* %99)
  ret i32 0
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_ics_info(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @encode_band_info(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @encode_scale_factors(i32*, %struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @encode_pulses(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @encode_spectral_coeffs(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
