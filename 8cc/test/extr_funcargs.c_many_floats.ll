; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_funcargs.c_many_floats.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_funcargs.c_many_floats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float)* @many_floats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @many_floats(float %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8, float %9, float %10, float %11, float %12, float %13, float %14, float %15, float %16) #0 {
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  store float %0, float* %18, align 4
  store float %1, float* %19, align 4
  store float %2, float* %20, align 4
  store float %3, float* %21, align 4
  store float %4, float* %22, align 4
  store float %5, float* %23, align 4
  store float %6, float* %24, align 4
  store float %7, float* %25, align 4
  store float %8, float* %26, align 4
  store float %9, float* %27, align 4
  store float %10, float* %28, align 4
  store float %11, float* %29, align 4
  store float %12, float* %30, align 4
  store float %13, float* %31, align 4
  store float %14, float* %32, align 4
  store float %15, float* %33, align 4
  store float %16, float* %34, align 4
  %35 = load float, float* %18, align 4
  %36 = call i32 @expectf(i32 1, float %35)
  %37 = load float, float* %19, align 4
  %38 = call i32 @expectf(i32 2, float %37)
  %39 = load float, float* %20, align 4
  %40 = call i32 @expectf(i32 3, float %39)
  %41 = load float, float* %21, align 4
  %42 = call i32 @expectf(i32 4, float %41)
  %43 = load float, float* %22, align 4
  %44 = call i32 @expectf(i32 5, float %43)
  %45 = load float, float* %23, align 4
  %46 = call i32 @expectf(i32 6, float %45)
  %47 = load float, float* %24, align 4
  %48 = call i32 @expectf(i32 7, float %47)
  %49 = load float, float* %25, align 4
  %50 = call i32 @expectf(i32 8, float %49)
  %51 = load float, float* %26, align 4
  %52 = call i32 @expectf(i32 9, float %51)
  %53 = load float, float* %27, align 4
  %54 = call i32 @expectf(i32 10, float %53)
  %55 = load float, float* %28, align 4
  %56 = call i32 @expectf(i32 11, float %55)
  %57 = load float, float* %29, align 4
  %58 = call i32 @expectf(i32 12, float %57)
  %59 = load float, float* %30, align 4
  %60 = call i32 @expectf(i32 13, float %59)
  %61 = load float, float* %31, align 4
  %62 = call i32 @expectf(i32 14, float %61)
  %63 = load float, float* %32, align 4
  %64 = call i32 @expectf(i32 15, float %63)
  %65 = load float, float* %33, align 4
  %66 = call i32 @expectf(i32 16, float %65)
  %67 = load float, float* %34, align 4
  %68 = call i32 @expectf(i32 17, float %67)
  ret void
}

declare dso_local i32 @expectf(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
