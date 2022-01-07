; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_acpi.c_ml_recent_wake.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_acpi.c_ml_recent_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_wake_postrebase_abstime = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ml_recent_wake() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @mach_absolute_time()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @acpi_wake_postrebase_abstime, align 8
  %5 = icmp sgt i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @acpi_wake_postrebase_abstime, align 8
  %10 = sub nsw i64 %8, %9
  %11 = load i32, i32* @NSEC_PER_SEC, align 4
  %12 = mul nsw i32 5, %11
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %10, %13
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
