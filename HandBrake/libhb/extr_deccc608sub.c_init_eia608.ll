; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_init_eia608.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_init_eia608.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eia608 = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i64, i64 }

@MODE_POPUP = common dso_local global i32 0, align 4
@default_color = common dso_local global i32 0, align 4
@FONT_REGULAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eia608*)* @init_eia608 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_eia608(%struct.eia608* %0) #0 {
  %2 = alloca %struct.eia608*, align 8
  store %struct.eia608* %0, %struct.eia608** %2, align 8
  %3 = load %struct.eia608*, %struct.eia608** %2, align 8
  %4 = getelementptr inbounds %struct.eia608, %struct.eia608* %3, i32 0, i32 14
  store i64 0, i64* %4, align 8
  %5 = load %struct.eia608*, %struct.eia608** %2, align 8
  %6 = getelementptr inbounds %struct.eia608, %struct.eia608* %5, i32 0, i32 13
  store i64 0, i64* %6, align 8
  %7 = load %struct.eia608*, %struct.eia608** %2, align 8
  %8 = getelementptr inbounds %struct.eia608, %struct.eia608* %7, i32 0, i32 12
  %9 = call i32 @clear_eia608_cc_buffer(i32* %8)
  %10 = load %struct.eia608*, %struct.eia608** %2, align 8
  %11 = getelementptr inbounds %struct.eia608, %struct.eia608* %10, i32 0, i32 11
  %12 = call i32 @clear_eia608_cc_buffer(i32* %11)
  %13 = load %struct.eia608*, %struct.eia608** %2, align 8
  %14 = getelementptr inbounds %struct.eia608, %struct.eia608* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.eia608*, %struct.eia608** %2, align 8
  %16 = getelementptr inbounds %struct.eia608, %struct.eia608* %15, i32 0, i32 10
  store i64 0, i64* %16, align 8
  %17 = load %struct.eia608*, %struct.eia608** %2, align 8
  %18 = getelementptr inbounds %struct.eia608, %struct.eia608* %17, i32 0, i32 9
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @MODE_POPUP, align 4
  %20 = load %struct.eia608*, %struct.eia608** %2, align 8
  %21 = getelementptr inbounds %struct.eia608, %struct.eia608* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load %struct.eia608*, %struct.eia608** %2, align 8
  %23 = getelementptr inbounds %struct.eia608, %struct.eia608* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.eia608*, %struct.eia608** %2, align 8
  %25 = getelementptr inbounds %struct.eia608, %struct.eia608* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load %struct.eia608*, %struct.eia608** %2, align 8
  %27 = getelementptr inbounds %struct.eia608, %struct.eia608* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.eia608*, %struct.eia608** %2, align 8
  %29 = getelementptr inbounds %struct.eia608, %struct.eia608* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* @default_color, align 4
  %31 = load %struct.eia608*, %struct.eia608** %2, align 8
  %32 = getelementptr inbounds %struct.eia608, %struct.eia608* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @FONT_REGULAR, align 4
  %34 = load %struct.eia608*, %struct.eia608** %2, align 8
  %35 = getelementptr inbounds %struct.eia608, %struct.eia608* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.eia608*, %struct.eia608** %2, align 8
  %37 = getelementptr inbounds %struct.eia608, %struct.eia608* %36, i32 0, i32 2
  store i32 14, i32* %37, align 8
  ret void
}

declare dso_local i32 @clear_eia608_cc_buffer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
