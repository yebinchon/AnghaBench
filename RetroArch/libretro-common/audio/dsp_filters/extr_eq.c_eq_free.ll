; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_eq.c_eq_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_eq.c_eq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eq_data = type { %struct.eq_data*, %struct.eq_data*, %struct.eq_data*, %struct.eq_data*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @eq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eq_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.eq_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.eq_data*
  store %struct.eq_data* %5, %struct.eq_data** %3, align 8
  %6 = load %struct.eq_data*, %struct.eq_data** %3, align 8
  %7 = icmp ne %struct.eq_data* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %32

9:                                                ; preds = %1
  %10 = load %struct.eq_data*, %struct.eq_data** %3, align 8
  %11 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @fft_free(i32 %12)
  %14 = load %struct.eq_data*, %struct.eq_data** %3, align 8
  %15 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %14, i32 0, i32 3
  %16 = load %struct.eq_data*, %struct.eq_data** %15, align 8
  %17 = call i32 @free(%struct.eq_data* %16)
  %18 = load %struct.eq_data*, %struct.eq_data** %3, align 8
  %19 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %18, i32 0, i32 2
  %20 = load %struct.eq_data*, %struct.eq_data** %19, align 8
  %21 = call i32 @free(%struct.eq_data* %20)
  %22 = load %struct.eq_data*, %struct.eq_data** %3, align 8
  %23 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %22, i32 0, i32 1
  %24 = load %struct.eq_data*, %struct.eq_data** %23, align 8
  %25 = call i32 @free(%struct.eq_data* %24)
  %26 = load %struct.eq_data*, %struct.eq_data** %3, align 8
  %27 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %26, i32 0, i32 0
  %28 = load %struct.eq_data*, %struct.eq_data** %27, align 8
  %29 = call i32 @free(%struct.eq_data* %28)
  %30 = load %struct.eq_data*, %struct.eq_data** %3, align 8
  %31 = call i32 @free(%struct.eq_data* %30)
  br label %32

32:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @fft_free(i32) #1

declare dso_local i32 @free(%struct.eq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
