; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_echo.c_echo_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_echo.c_echo_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echo_data = type { i32, %struct.echo_data*, %struct.echo_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @echo_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @echo_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.echo_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.echo_data*
  store %struct.echo_data* %6, %struct.echo_data** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.echo_data*, %struct.echo_data** %4, align 8
  %10 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = load %struct.echo_data*, %struct.echo_data** %4, align 8
  %15 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %14, i32 0, i32 1
  %16 = load %struct.echo_data*, %struct.echo_data** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %16, i64 %18
  %20 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %19, i32 0, i32 2
  %21 = load %struct.echo_data*, %struct.echo_data** %20, align 8
  %22 = call i32 @free(%struct.echo_data* %21)
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load %struct.echo_data*, %struct.echo_data** %4, align 8
  %28 = getelementptr inbounds %struct.echo_data, %struct.echo_data* %27, i32 0, i32 1
  %29 = load %struct.echo_data*, %struct.echo_data** %28, align 8
  %30 = call i32 @free(%struct.echo_data* %29)
  %31 = load %struct.echo_data*, %struct.echo_data** %4, align 8
  %32 = call i32 @free(%struct.echo_data* %31)
  ret void
}

declare dso_local i32 @free(%struct.echo_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
