; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_movep.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_check_desa_movep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8, i32 }

@d = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"MOVEP.\00", align 1
@MODE_dAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_desa_movep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_desa_movep() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 4
  %3 = and i32 %2, 312
  %4 = icmp ne i32 %3, 264
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %38

6:                                                ; preds = %0
  %7 = call i32 @desa_str(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 4
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 19488, i32 22304
  %13 = trunc i32 %12 to i8
  %14 = call i32 @desa_ascii(i8 signext %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 4
  %16 = and i32 %15, 128
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @MODE_dAN, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 3), align 4
  %21 = call i32 @get_ea_2(i32 %19, i32 %20, i32 0)
  %22 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 4
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 2901040, %23
  %25 = trunc i32 %24 to i8
  %26 = call i32 @desa_ascii(i8 signext %25)
  br label %37

27:                                               ; preds = %6
  %28 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 4
  %29 = sext i8 %28 to i32
  %30 = shl i32 %29, 8
  %31 = add nsw i32 4468780, %30
  %32 = trunc i32 %31 to i8
  %33 = call i32 @desa_ascii(i8 signext %32)
  %34 = load i32, i32* @MODE_dAN, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 3), align 4
  %36 = call i32 @get_ea_2(i32 %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %27, %18
  store i32 1, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %5
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @desa_str(i8*) #1

declare dso_local i32 @desa_ascii(i8 signext) #1

declare dso_local i32 @get_ea_2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
