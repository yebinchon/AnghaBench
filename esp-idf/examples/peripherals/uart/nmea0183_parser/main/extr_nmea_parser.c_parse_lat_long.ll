; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/nmea0183_parser/main/extr_nmea_parser.c_parse_lat_long.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/nmea0183_parser/main/extr_nmea_parser.c_parse_lat_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_3__*)* @parse_lat_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @parse_lat_long(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call float @strtof(i32 %8, i32* null)
  store float %9, float* %3, align 4
  %10 = load float, float* %3, align 4
  %11 = fptosi float %10 to i32
  %12 = sdiv i32 %11, 100
  store i32 %12, i32* %4, align 4
  %13 = load float, float* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 100
  %16 = sitofp i32 %15 to float
  %17 = fsub float %13, %16
  store float %17, float* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sitofp i32 %18 to float
  %20 = load float, float* %5, align 4
  %21 = fdiv float %20, 6.000000e+01
  %22 = fadd float %19, %21
  store float %22, float* %3, align 4
  %23 = load float, float* %3, align 4
  ret float %23
}

declare dso_local float @strtof(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
