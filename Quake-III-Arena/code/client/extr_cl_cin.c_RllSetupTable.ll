; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RllSetupTable.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RllSetupTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16* }

@cin = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RllSetupTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RllSetupTable() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %27, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 128
  br i1 %4, label %5, label %30

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = mul nsw i32 %6, %7
  %9 = trunc i32 %8 to i16
  %10 = load i16*, i16** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cin, i32 0, i32 0), align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i16, i16* %10, i64 %12
  store i16 %9, i16* %13, align 2
  %14 = load i16*, i16** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cin, i32 0, i32 0), align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %14, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = sext i16 %18 to i32
  %20 = sub nsw i32 0, %19
  %21 = trunc i32 %20 to i16
  %22 = load i16*, i16** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cin, i32 0, i32 0), align 8
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 128
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %22, i64 %25
  store i16 %21, i16* %26, align 2
  br label %27

27:                                               ; preds = %5
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %2

30:                                               ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
