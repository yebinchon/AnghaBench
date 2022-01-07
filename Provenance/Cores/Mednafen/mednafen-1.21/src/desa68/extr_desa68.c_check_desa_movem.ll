; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_movem.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_movem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@d = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MODE_pAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_desa_movem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_desa_movem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 4
  %8 = and i32 %7, 2944
  %9 = icmp ne i32 %8, 2176
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %63

11:                                               ; preds = %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 4
  %13 = and i32 %12, 1024
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 500, i32 2028
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %63

24:                                               ; preds = %11
  %25 = call i32 @desa_ascii(i8 signext 69)
  %26 = call i32 @desa_ascii(i8 signext 46)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 4
  %28 = and i32 %27, 64
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 87, i32 76
  %33 = trunc i32 %32 to i8
  %34 = call i32 @desa_char(i8 signext %33)
  %35 = call i32 @desa_char(i8 signext 32)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 4
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 3), align 4
  store i32 %38, i32* %5, align 4
  %39 = call i32 (...) @immW()
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 1024
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %24
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @get_ea_2(i32 %44, i32 %45, i32 0)
  %47 = call i32 @desa_char(i8 signext 44)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @get_movemreg(i32 %48, i32 0)
  br label %62

50:                                               ; preds = %24
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @MODE_pAN, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 15, i32 0
  %57 = call i32 @get_movemreg(i32 %51, i32 %56)
  %58 = call i32 @desa_char(i8 signext 44)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @get_ea_2(i32 %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %50, %43
  store i32 1, i32* %1, align 4
  br label %63

63:                                               ; preds = %62, %23, %10
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @desa_ascii(i8 signext) #1

declare dso_local i32 @desa_char(i8 signext) #1

declare dso_local i32 @immW(...) #1

declare dso_local i32 @get_ea_2(i32, i32, i32) #1

declare dso_local i32 @get_movemreg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
