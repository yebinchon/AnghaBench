; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_makeAdjustTable.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_makeAdjustTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EG_BITS = common dso_local global i32 0, align 4
@AR_ADJUST_TABLE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @makeAdjustTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeAdjustTable() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EG_BITS, align 4
  %3 = shl i32 1, %2
  %4 = load i32*, i32** @AR_ADJUST_TABLE, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 %3, i32* %5, align 4
  store i32 1, i32* %1, align 4
  br label %6

6:                                                ; preds = %28, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 128
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load i32, i32* @EG_BITS, align 4
  %11 = shl i32 1, %10
  %12 = sitofp i32 %11 to double
  %13 = fsub double %12, 1.000000e+00
  %14 = load i32, i32* @EG_BITS, align 4
  %15 = shl i32 1, %14
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @log(i32 %16)
  %18 = mul nsw i32 %15, %17
  %19 = call i32 @log(i32 128)
  %20 = sdiv i32 %18, %19
  %21 = sitofp i32 %20 to double
  %22 = fsub double %13, %21
  %23 = fptosi double %22 to i32
  %24 = load i32*, i32** @AR_ADJUST_TABLE, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %9
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %6

31:                                               ; preds = %6
  ret void
}

declare dso_local i32 @log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
