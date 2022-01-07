; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_bitop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_bitop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i8, i32, i32 }

@check_desa_bitop.fn = internal global [4 x i8] c"TGRT", align 1
@d = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_desa_bitop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_desa_bitop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 509, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 8
  %6 = shl i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %45

10:                                               ; preds = %0
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 8
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* @check_desa_bitop.fn, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 8
  %16 = and i32 %15, 256
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %10
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 8
  %20 = and i32 %19, 3840
  %21 = icmp ne i32 %20, 2048
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %45

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = trunc i32 %24 to i8
  %26 = call i32 @desa_ascii(i8 signext %25)
  %27 = call i32 @desa_ascii(i8 signext 35)
  %28 = call i32 (...) @read_pc()
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 8
  %30 = call i32 @desa_usignifiant(i32 %29)
  br label %40

31:                                               ; preds = %10
  %32 = load i32, i32* %3, align 4
  %33 = trunc i32 %32 to i8
  %34 = call i32 @desa_ascii(i8 signext %33)
  %35 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 3), align 4
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 2114608, %36
  %38 = trunc i32 %37 to i8
  %39 = call i32 @desa_ascii(i8 signext %38)
  br label %40

40:                                               ; preds = %31, %23
  %41 = call i32 @desa_char(i8 signext 44)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 5), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 4), align 8
  %44 = call i32 @get_ea_2(i32 %42, i32 %43, i8 signext 66)
  store i32 1, i32* %1, align 4
  br label %45

45:                                               ; preds = %40, %22, %9
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @desa_ascii(i8 signext) #1

declare dso_local i32 @read_pc(...) #1

declare dso_local i32 @desa_usignifiant(i32) #1

declare dso_local i32 @desa_char(i8 signext) #1

declare dso_local i32 @get_ea_2(i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
