; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_exg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_exg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@d = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_desa_exg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_desa_exg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 8
  %4 = and i32 %3, 504
  switch i32 %4, label %8 [
    i32 320, label %5
    i32 328, label %6
    i32 392, label %7
  ]

5:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %9

6:                                                ; preds = %0
  store i32 2056, i32* %2, align 4
  br label %9

7:                                                ; preds = %0
  store i32 8, i32* %2, align 4
  br label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %24

9:                                                ; preds = %7, %6, %5
  %10 = call i32 @desa_ascii(i8 signext 32)
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 8
  %12 = load i32, i32* %2, align 4
  %13 = lshr i32 %12, 8
  %14 = zext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = call i32 @desa_reg(i64 %15)
  %17 = call i32 @desa_char(i8 signext 44)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 8
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 8
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i32 @desa_reg(i64 %22)
  store i32 1, i32* %1, align 4
  br label %24

24:                                               ; preds = %9, %8
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @desa_ascii(i8 signext) #1

declare dso_local i32 @desa_reg(i64) #1

declare dso_local i32 @desa_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
