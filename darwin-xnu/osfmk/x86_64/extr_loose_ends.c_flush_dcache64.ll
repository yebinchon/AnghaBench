; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_loose_ends.c_flush_dcache64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_loose_ends.c_flush_dcache64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_dcache64(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @dcache_incoherent_io_flush64(i32 %12, i32 %13)
  br label %44

15:                                               ; preds = %3
  %16 = call %struct.TYPE_2__* (...) @cpuid_info()
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %21, %22
  %24 = sub i32 %23, 1
  %25 = load i32, i32* %7, align 4
  %26 = sub i32 %25, 1
  %27 = xor i32 %26, -1
  %28 = and i32 %24, %27
  store i32 %28, i32* %8, align 4
  %29 = call i32 (...) @mfence()
  br label %30

30:                                               ; preds = %34, %15
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @__clflush(i8* %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %30

42:                                               ; preds = %30
  %43 = call i32 (...) @mfence()
  br label %44

44:                                               ; preds = %42, %11
  ret void
}

declare dso_local i32 @dcache_incoherent_io_flush64(i32, i32) #1

declare dso_local %struct.TYPE_2__* @cpuid_info(...) #1

declare dso_local i32 @mfence(...) #1

declare dso_local i32 @__clflush(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
