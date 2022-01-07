; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_PokeARGB.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_PokeARGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_PokeARGB(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_3__* %5 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %2, i64* %10, align 4
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %3, i64* %11, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @_SHIFTL(i32 %12, i32 2, i32 10)
  %14 = or i32 -939524096, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, -4190209
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @_SHIFTL(i32 %17, i32 12, i32 10)
  %19 = or i32 %16, %18
  store i32 %19, i32* %8, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @_SHIFTL(i32 %21, i32 24, i32 8)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @_SHIFTL(i32 %24, i32 16, i32 8)
  %26 = or i32 %22, %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @_SHIFTL(i32 %28, i32 8, i32 8)
  %30 = or i32 %26, %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  %34 = or i32 %30, %33
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  store i32 %34, i32* %37, align 4
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
