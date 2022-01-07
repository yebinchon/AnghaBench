; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_p32x_reg_read16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_p32x_reg_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32* }

@msh2 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@Pico32x = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@P32XF_68KCPOLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @p32x_reg_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p32x_reg_read16(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 62
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 48
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  %13 = call i32 (...) @SekCyclesDone()
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 15
  %16 = sdiv i32 %15, 2
  %17 = shl i32 1, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @msh2, i32 0, i32 0), align 4
  %20 = sub i32 %18, %19
  %21 = icmp ugt i32 %20, 244
  br i1 %21, label %27, label %22

22:                                               ; preds = %12
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %12
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @p32x_sync_sh2s(i32 %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 1), align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 1), align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 1), align 4
  br label %50

40:                                               ; preds = %30
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @P32XF_68KCPOLL, align 4
  %44 = call i64 @m68k_poll_detect(i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = call i32 @SekSetStop(i32 1)
  %48 = call i32 @SekEndRun(i32 16)
  br label %49

49:                                               ; preds = %46, %40
  br label %50

50:                                               ; preds = %49, %35
  br label %73

51:                                               ; preds = %1
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = call i32 (...) @SekCyclesDone()
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @msh2, i32 0, i32 0), align 4
  %58 = sub i32 %56, %57
  %59 = icmp ugt i32 %58, 64
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @p32x_sync_sh2s(i32 %61)
  br label %63

63:                                               ; preds = %60, %54
  br label %73

64:                                               ; preds = %51
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 48
  %67 = icmp eq i32 %66, 48
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  %70 = call i32 (...) @SekCyclesDone()
  %71 = call i32 @p32x_pwm_read16(i32 %69, i32* null, i32 %70)
  store i32 %71, i32* %2, align 4
  br label %80

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %63, %50
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 2), align 8
  %75 = load i32, i32* %3, align 4
  %76 = sdiv i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %73, %68
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @p32x_sync_sh2s(i32) #1

declare dso_local i64 @m68k_poll_detect(i32, i32, i32) #1

declare dso_local i32 @SekSetStop(i32) #1

declare dso_local i32 @SekEndRun(i32) #1

declare dso_local i32 @p32x_pwm_read16(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
