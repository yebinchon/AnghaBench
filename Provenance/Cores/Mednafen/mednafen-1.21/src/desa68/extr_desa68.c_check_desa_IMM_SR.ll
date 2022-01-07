; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_IMM_SR.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_IMM_SR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@d = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MODE_ABSW = common dso_local global i64 0, align 8
@MODE_IMM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_desa_IMM_SR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_desa_IMM_SR() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 1029, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 4
  %6 = ashr i32 %5, 8
  %7 = and i32 %6, 15
  store i32 %7, i32* %3, align 4
  store i32 5198409, i32* %4, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 4
  %9 = and i32 %8, 447
  %10 = icmp ne i32 %9, 60
  br i1 %10, label %17, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %0
  store i32 0, i32* %1, align 4
  br label %39

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  switch i32 %19, label %22 [
    i32 10, label %20
    i32 2, label %21
  ]

20:                                               ; preds = %18
  store i32 1162826313, i32* %4, align 4
  br label %22

21:                                               ; preds = %18
  store i32 1095648329, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %21, %20
  %23 = load i32, i32* %4, align 4
  %24 = trunc i32 %23 to i8
  %25 = call i32 @desa_ascii(i8 signext %24)
  %26 = call i32 @desa_char(i8 signext 32)
  %27 = load i64, i64* @MODE_ABSW, align 8
  %28 = load i64, i64* @MODE_IMM, align 8
  %29 = load i64, i64* @MODE_ABSW, align 8
  %30 = sub nsw i64 %28, %29
  %31 = call i32 @get_ea_2(i64 %27, i64 %30, i8 signext 87)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 2904914, i32 742605650
  %37 = trunc i32 %36 to i8
  %38 = call i32 @desa_ascii(i8 signext %37)
  store i32 1, i32* %1, align 4
  br label %39

39:                                               ; preds = %22, %17
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @desa_ascii(i8 signext) #1

declare dso_local i32 @desa_char(i8 signext) #1

declare dso_local i32 @get_ea_2(i64, i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
