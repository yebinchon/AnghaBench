; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_deallocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_deallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }

@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turnstile_deallocate(%struct.turnstile* %0) #0 {
  %2 = alloca %struct.turnstile*, align 8
  store %struct.turnstile* %0, %struct.turnstile** %2, align 8
  %3 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %4 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %5 = icmp eq %struct.turnstile* %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  %8 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %9 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %8, i32 0, i32 0
  %10 = call i64 @os_ref_release(i32* %9)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @__improbable(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %17 = call i32 @turnstile_destroy(%struct.turnstile* %16)
  br label %18

18:                                               ; preds = %6, %15, %7
  ret void
}

declare dso_local i64 @__improbable(i32) #1

declare dso_local i64 @os_ref_release(i32*) #1

declare dso_local i32 @turnstile_destroy(%struct.turnstile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
