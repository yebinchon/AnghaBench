; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_jmp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_jmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@d = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DESA68_INST = common dso_local global i32 0, align 4
@DESA68_BRA = common dso_local global i32 0, align 4
@DESA68_BSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_desa_jmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_desa_jmp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 2020, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 4
  %6 = and i32 %5, 3968
  %7 = icmp ne i32 %6, 3712
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %39

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  store i32 5066784, i32* %3, align 4
  %16 = load i32, i32* @DESA68_INST, align 4
  %17 = load i32, i32* @DESA68_BRA, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = call i32 @desa_char(i8 signext 74)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i32, i32* @DESA68_INST, align 4
  %24 = load i32, i32* @DESA68_BRA, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @DESA68_BSR, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %4, align 4
  store i32 5460512, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %15
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 3), align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @desa_ascii(i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 8), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 7), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 6), align 4
  %35 = call i32 @get_ea_2(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 4), align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 5), align 4
  store i32 1, i32* %1, align 4
  br label %39

37:                                               ; preds = %9
  %38 = call i32 (...) @desa_dcw()
  store i32 1, i32* %1, align 4
  br label %39

39:                                               ; preds = %37, %28, %8
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @desa_char(i8 signext) #1

declare dso_local i32 @desa_ascii(i32) #1

declare dso_local i32 @get_ea_2(i32, i32, i32) #1

declare dso_local i32 @desa_dcw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
