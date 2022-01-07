; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_vdp_data_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_vdp_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, %struct.PicoVideo }
%struct.PicoVideo = type { i64, i64 }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @vdp_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @vdp_data_read() #0 {
  %1 = alloca %struct.PicoVideo*, align 8
  %2 = alloca i8, align 1
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), %struct.PicoVideo** %1, align 8
  %3 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %4 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %5 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i8, i8* %3, i64 %6
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %2, align 1
  %9 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %10 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %11, 1
  %13 = and i64 %12, 16383
  %14 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %15 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %17 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i8, i8* %2, align 1
  ret i8 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
