; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx_vi_encoder.c___sendSlaveAddress.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx_vi_encoder.c___sendSlaveAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2cIdentFlag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__sendSlaveAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sendSlaveAddress(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @i2cIdentFlag, align 4
  %6 = xor i32 %5, 1
  %7 = call i32 @__viSetSDA(i32 %6)
  %8 = call i32 @udelay(i32 2)
  %9 = call i32 @__viSetSCL(i32 0)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 128
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @i2cIdentFlag, align 4
  %19 = call i32 @__viSetSDA(i32 %18)
  br label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @i2cIdentFlag, align 4
  %22 = xor i32 %21, 1
  %23 = call i32 @__viSetSDA(i32 %22)
  br label %24

24:                                               ; preds = %20, %17
  %25 = call i32 @udelay(i32 2)
  %26 = call i32 @__viSetSCL(i32 1)
  %27 = call i32 @udelay(i32 2)
  %28 = call i32 @__viSetSCL(i32 0)
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %10

34:                                               ; preds = %10
  %35 = call i32 @__viOpenI2C(i32 0)
  %36 = call i32 @udelay(i32 2)
  %37 = call i32 @__viSetSCL(i32 1)
  %38 = call i32 @udelay(i32 2)
  %39 = load i32, i32* @i2cIdentFlag, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = call i64 (...) @__viGetSDA()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %51

45:                                               ; preds = %41, %34
  %46 = load i32, i32* @i2cIdentFlag, align 4
  %47 = xor i32 %46, 1
  %48 = call i32 @__viSetSDA(i32 %47)
  %49 = call i32 @__viOpenI2C(i32 1)
  %50 = call i32 @__viSetSCL(i32 0)
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %44
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @__viSetSDA(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__viSetSCL(i32) #1

declare dso_local i32 @__viOpenI2C(i32) #1

declare dso_local i64 @__viGetSDA(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
