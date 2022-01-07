; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTevKColorS10.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTevKColorS10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetTevKColorS10(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_3__* %4 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %1, i64* %8, align 4
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %2, i64* %9, align 4
  store i32 %0, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 1
  %12 = add nsw i32 224, %11
  %13 = call i32 @_SHIFTL(i32 %12, i32 24, i32 8)
  %14 = call i32 @_SHIFTL(i32 1, i32 23, i32 1)
  %15 = or i32 %13, %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @_SHIFTL(i32 %17, i32 12, i32 11)
  %19 = or i32 %15, %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 2047
  %23 = or i32 %19, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @GX_LOAD_BP_REG(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 1
  %28 = add nsw i32 225, %27
  %29 = call i32 @_SHIFTL(i32 %28, i32 24, i32 8)
  %30 = call i32 @_SHIFTL(i32 1, i32 23, i32 1)
  %31 = or i32 %29, %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @_SHIFTL(i32 %33, i32 12, i32 11)
  %35 = or i32 %31, %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 2047
  %39 = or i32 %35, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @GX_LOAD_BP_REG(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @GX_LOAD_BP_REG(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @GX_LOAD_BP_REG(i32 %44)
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
