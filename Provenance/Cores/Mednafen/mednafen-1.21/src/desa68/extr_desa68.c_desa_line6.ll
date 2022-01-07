; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_desa_line6.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_desa_line6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }

@d = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@bcc_ascii = common dso_local global double* null, align 8
@DESA68_INST = common dso_local global i32 0, align 4
@DESA68_BRA = common dso_local global i32 0, align 4
@DESA68_BSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @desa_line6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desa_line6() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 8
  %4 = ashr i32 %3, 8
  %5 = and i32 %4, 15
  store i32 %5, i32* %2, align 4
  %6 = load double*, double** @bcc_ascii, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds double, double* %6, i64 %8
  %10 = load double, double* %9, align 8
  %11 = fadd double 0x4150800000000000, %10
  %12 = call i32 @desa_ascii(double %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 8
  %14 = and i32 %13, 255
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %0
  %17 = call i32 @desa_ascii(double 1.185900e+04)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 8
  %19 = sext i32 %18 to i64
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %1, align 4
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 4), align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %1, align 4
  br label %27

25:                                               ; preds = %0
  %26 = call i32 (...) @relPC()
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %16
  %28 = call i32 @desa_char(i8 signext 32)
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 4
  %31 = and i32 %29, %30
  %32 = call i32 @desa_absL(i32 %31)
  %33 = load i32, i32* @DESA68_INST, align 4
  %34 = load i32, i32* @DESA68_BRA, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = sub nsw i32 0, %38
  %40 = load i32, i32* @DESA68_BSR, align 4
  %41 = and i32 %39, %40
  %42 = or i32 %35, %41
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 8
  %43 = load i32, i32* %1, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 3), align 4
  ret void
}

declare dso_local i32 @desa_ascii(double) #1

declare dso_local i32 @relPC(...) #1

declare dso_local i32 @desa_char(i8 signext) #1

declare dso_local i32 @desa_absL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
