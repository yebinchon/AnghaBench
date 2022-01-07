; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetZTexture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetZTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GX_TF_Z8 = common dso_local global i32 0, align 4
@GX_TF_Z16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetZTexture(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GX_TF_Z8, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %5, align 4
  br label %19

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GX_TF_Z16, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %18

17:                                               ; preds = %12
  store i32 2, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %16
  br label %19

19:                                               ; preds = %18, %11
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @_SHIFTL(i32 %20, i32 2, i32 2)
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 3
  %25 = or i32 %22, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 16777215
  %28 = or i32 -201326592, %27
  %29 = call i32 @GX_LOAD_BP_REG(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 16777215
  %32 = or i32 -184549376, %31
  %33 = call i32 @GX_LOAD_BP_REG(i32 %32)
  ret void
}

declare dso_local i64 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
