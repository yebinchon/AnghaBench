; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_line4_mode3.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_line4_mode3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@d = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DESA68_INST = common dso_local global i32 0, align 4
@DESA68_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_desa_line4_mode3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_desa_line4_mode3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 4
  %6 = icmp ne i32 %5, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %71

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 4
  switch i32 %9, label %70 [
    i32 0, label %10
    i32 1, label %23
    i32 2, label %24
    i32 3, label %38
    i32 4, label %52
    i32 5, label %53
    i32 6, label %68
    i32 7, label %69
  ]

10:                                               ; preds = %8
  store i32 509, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %70

17:                                               ; preds = %10
  %18 = call i32 @desa_ascii(i8 signext 69)
  %19 = call i32 @desa_ascii(i8 signext 44)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 8), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 7), align 4
  %22 = call i32 @get_ea_2(i32 %20, i32 %21, i8 signext 87)
  store i32 1, i32* %1, align 4
  br label %71

23:                                               ; preds = %8
  br label %70

24:                                               ; preds = %8
  store i32 4093, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %70

31:                                               ; preds = %24
  %32 = call i32 @desa_ascii(i8 signext 69)
  %33 = call i32 @desa_char(i8 signext 32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 8), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 7), align 4
  %36 = call i32 @get_ea_2(i32 %34, i32 %35, i8 signext 66)
  %37 = call i32 @desa_ascii(i8 signext 82)
  store i32 1, i32* %1, align 4
  br label %71

38:                                               ; preds = %8
  store i32 4093, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %70

45:                                               ; preds = %38
  %46 = call i32 @desa_ascii(i8 signext 69)
  %47 = call i32 @desa_char(i8 signext 32)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 8), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 7), align 4
  %50 = call i32 @get_ea_2(i32 %48, i32 %49, i8 signext 87)
  %51 = call i32 @desa_ascii(i8 signext 82)
  store i32 1, i32* %1, align 4
  br label %71

52:                                               ; preds = %8
  br label %70

53:                                               ; preds = %8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 6), align 4
  %54 = call i32 @desa_check_imp(i8 signext 83, i32 509)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %1, align 4
  br label %71

57:                                               ; preds = %53
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 3), align 4
  %59 = icmp eq i32 %58, 19196
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = call i32 @desa_ascii(i8 signext 69)
  %62 = call i32 @desa_ascii(i8 signext 76)
  %63 = load i32, i32* @DESA68_INST, align 4
  %64 = load i32, i32* @DESA68_INT, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 4), align 4
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 5), align 4
  store i32 1, i32* %1, align 4
  br label %71

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  br label %70

68:                                               ; preds = %8
  br label %70

69:                                               ; preds = %8
  br label %70

70:                                               ; preds = %8, %69, %68, %67, %52, %44, %30, %23, %16
  store i32 0, i32* %1, align 4
  br label %71

71:                                               ; preds = %70, %60, %56, %45, %31, %17, %7
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i32 @desa_ascii(i8 signext) #1

declare dso_local i32 @get_ea_2(i32, i32, i8 signext) #1

declare dso_local i32 @desa_char(i8 signext) #1

declare dso_local i32 @desa_check_imp(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
