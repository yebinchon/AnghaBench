; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_cmdlib.c_BigFloat.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_cmdlib.c_BigFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i32] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @BigFloat(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %union.anon, align 4
  %4 = alloca %union.anon, align 4
  store float %0, float* %2, align 4
  %5 = load float, float* %2, align 4
  %6 = bitcast %union.anon* %3 to float*
  store float %5, float* %6, align 4
  %7 = bitcast %union.anon* %3 to [4 x i32]*
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.anon* %4 to [4 x i32]*
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %9, i32* %11, align 4
  %12 = bitcast %union.anon* %3 to [4 x i32]*
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = bitcast %union.anon* %4 to [4 x i32]*
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %14, i32* %16, align 4
  %17 = bitcast %union.anon* %3 to [4 x i32]*
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.anon* %4 to [4 x i32]*
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  store i32 %19, i32* %21, align 4
  %22 = bitcast %union.anon* %3 to [4 x i32]*
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = bitcast %union.anon* %4 to [4 x i32]*
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 3
  store i32 %24, i32* %26, align 4
  %27 = bitcast %union.anon* %4 to float*
  %28 = load float, float* %27, align 4
  ret float %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
