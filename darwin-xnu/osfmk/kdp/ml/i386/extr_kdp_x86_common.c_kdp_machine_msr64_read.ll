; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/i386/extr_kdp_x86_common.c_kdp_machine_msr64_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/i386/extr_kdp_x86_common.c_kdp_machine_msr64_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@KDP_CURRENT_LCPU = common dso_local global i64 0, align 8
@KDPERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdp_machine_msr64_read(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @KDP_CURRENT_LCPU, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = call i64 (...) @cpu_number()
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @kdp_x86_xcpu_invoke(i64 %23, i32 ptrtoint (i32 (%struct.TYPE_4__*, i64, i64)* @kdp_machine_msr64_read to i32), %struct.TYPE_4__* %24, i64 %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %33

28:                                               ; preds = %18, %3
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @rdmsr64(i32 %29)
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @KDPERR_NO_ERROR, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %22
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @cpu_number(...) #1

declare dso_local i64 @kdp_x86_xcpu_invoke(i64, i32, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @rdmsr64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
