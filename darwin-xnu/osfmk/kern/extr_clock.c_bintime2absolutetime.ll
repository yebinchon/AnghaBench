; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_bintime2absolutetime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_bintime2absolutetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bintime = type { i32, i64 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bintime*, i32*)* @bintime2absolutetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bintime2absolutetime(%struct.bintime* %0, i32* %1) #0 {
  %3 = alloca %struct.bintime*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.bintime* %0, %struct.bintime** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.bintime*, %struct.bintime** %3, align 8
  %7 = getelementptr inbounds %struct.bintime, %struct.bintime* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i64, i64* @NSEC_PER_SEC, align 8
  %11 = trunc i64 %10 to i32
  %12 = mul nsw i32 %9, %11
  %13 = load i64, i64* @NSEC_PER_SEC, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.bintime*, %struct.bintime** %3, align 8
  %16 = getelementptr inbounds %struct.bintime, %struct.bintime* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %17, 32
  %19 = mul nsw i32 %14, %18
  %20 = ashr i32 %19, 32
  %21 = add nsw i32 %12, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @nanoseconds_to_absolutetime(i32 %22, i32* %23)
  ret void
}

declare dso_local i32 @nanoseconds_to_absolutetime(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
