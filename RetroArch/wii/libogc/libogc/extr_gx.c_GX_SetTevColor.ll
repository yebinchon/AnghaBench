; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTevColor.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTevColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetTevColor(i32 %0, i64 %1, i64 %2) #0 {
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
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @_SHIFTL(i32 %15, i32 12, i32 8)
  %17 = or i32 %13, %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 255
  %21 = or i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @GX_LOAD_BP_REG(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 1
  %26 = add nsw i32 225, %25
  %27 = call i32 @_SHIFTL(i32 %26, i32 24, i32 8)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @_SHIFTL(i32 %29, i32 12, i32 8)
  %31 = or i32 %27, %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 255
  %35 = or i32 %31, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @GX_LOAD_BP_REG(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @GX_LOAD_BP_REG(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @GX_LOAD_BP_REG(i32 %40)
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
