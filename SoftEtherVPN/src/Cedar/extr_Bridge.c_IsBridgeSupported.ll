; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Bridge.c_IsBridgeSupported.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Bridge.c_IsBridgeSupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsBridgeSupported() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call %struct.TYPE_2__* (...) @GetOsInfo()
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @OS_IS_WINDOWS(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = call i32 (...) @IsEthSupported()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* %1, align 4
  br label %18

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* %1, align 4
  br label %18

16:                                               ; preds = %0
  %17 = call i32 (...) @IsEthSupported()
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %16, %14, %13
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local %struct.TYPE_2__* @GetOsInfo(...) #1

declare dso_local i64 @OS_IS_WINDOWS(i32) #1

declare dso_local i32 @IsEthSupported(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
