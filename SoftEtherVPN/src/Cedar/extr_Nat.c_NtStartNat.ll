; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NtStartNat.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NtStartNat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nat_lock = common dso_local global i32 0, align 4
@nat = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NtStartNat() #0 {
  %1 = load i32, i32* @nat_lock, align 4
  %2 = call i32 @Lock(i32 %1)
  %3 = load i32*, i32** @nat, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32* (...) @NiNewNat()
  store i32* %6, i32** @nat, align 8
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* @nat_lock, align 4
  %9 = call i32 @Unlock(i32 %8)
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32* @NiNewNat(...) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
