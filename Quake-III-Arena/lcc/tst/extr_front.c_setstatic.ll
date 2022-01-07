; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_front.c_setstatic.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_front.c_setstatic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ss2 = external dso_local global i32, align 4
@ss1 = external dso_local global i32, align 4
@ss4 = external dso_local global i32, align 4
@ss3 = external dso_local global i32, align 4
@ss5 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setstatic() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ss2, align 4
  store i32 %2, i32* @ss1, align 4
  %3 = load i32, i32* @ss4, align 4
  store i32 %3, i32* @ss3, align 4
  store i64 0, i64* @ss5, align 8
  %4 = load i32, i32* %1, align 4
  ret i32 %4
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
