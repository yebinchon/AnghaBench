; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_alsa_qsa.c_alsa_qsa_write_avail.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_alsa_qsa.c_alsa_qsa_write_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @alsa_qsa_write_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alsa_qsa_write_avail(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = sub nsw i32 %9, %13
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = sub nsw i32 %22, %26
  %28 = add nsw i32 %19, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
