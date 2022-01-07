; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_Diagnostics.c_cpu_pmc_control.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_Diagnostics.c_cpu_pmc_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@CR4_PCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_pmc_control(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = call %struct.TYPE_3__* (...) @current_cpu_datap()
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = call i32 @wrmsr64(i32 911, i32 15)
  %13 = call i32 @wrmsr64(i32 909, i32 819)
  %14 = call i32 (...) @get_cr4()
  %15 = load i32, i32* @CR4_PCE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @set_cr4(i32 %16)
  br label %26

18:                                               ; preds = %1
  %19 = call i32 @wrmsr64(i32 911, i32 0)
  %20 = call i32 @wrmsr64(i32 909, i32 0)
  %21 = call i32 (...) @get_cr4()
  %22 = load i32, i32* @CR4_PCE, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = call i32 @set_cr4(i32 %24)
  br label %26

26:                                               ; preds = %18, %11
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  ret void
}

declare dso_local %struct.TYPE_3__* @current_cpu_datap(...) #1

declare dso_local i32 @wrmsr64(i32, i32) #1

declare dso_local i32 @set_cr4(i32) #1

declare dso_local i32 @get_cr4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
