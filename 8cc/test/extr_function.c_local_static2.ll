; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_function.c_local_static2.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_function.c_local_static2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@local_static2.x = internal global i32 1, align 4
@local_static2.y = internal global [2 x i8] c"2\00", align 1
@local_static2.z = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @local_static2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_static2() #0 {
  store i32 3, i32* @local_static2.z, align 4
  %1 = load i32, i32* @local_static2.x, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @local_static2.x, align 4
  %3 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @local_static2.y, i64 0, i64 0), align 1
  %4 = sext i8 %3 to i32
  %5 = sub nsw i32 %4, 48
  %6 = add nsw i32 %1, %5
  %7 = load i32, i32* @local_static2.z, align 4
  %8 = add nsw i32 %6, %7
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
