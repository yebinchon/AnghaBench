; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/i386/extr_kdp_x86_common.c_kdp_machine_ioport_write.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/i386/extr_kdp_x86_common.c_kdp_machine_ioport_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@KDP_CURRENT_LCPU = common dso_local global i64 0, align 8
@KDPERR_BADFLAVOR = common dso_local global i32 0, align 4
@KDPERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdp_machine_ioport_write(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @KDP_CURRENT_LCPU, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = call i64 (...) @cpu_number()
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @kdp_x86_xcpu_invoke(i64 %24, i32 ptrtoint (i32 (%struct.TYPE_4__*, i64, i64)* @kdp_machine_ioport_write to i32), %struct.TYPE_4__* %25, i64 %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %53

29:                                               ; preds = %19, %3
  %30 = load i64, i64* %9, align 8
  switch i64 %30, label %49 [
    i64 1, label %31
    i64 2, label %37
    i64 4, label %43
  ]

31:                                               ; preds = %29
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @outb(i64 %32, i32 %35)
  br label %51

37:                                               ; preds = %29
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = inttoptr i64 %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @outw(i64 %38, i64 %41)
  br label %51

43:                                               ; preds = %29
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %6, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @outl(i64 %44, i32 %47)
  br label %51

49:                                               ; preds = %29
  %50 = load i32, i32* @KDPERR_BADFLAVOR, align 4
  store i32 %50, i32* %4, align 4
  br label %53

51:                                               ; preds = %43, %37, %31
  %52 = load i32, i32* @KDPERR_NO_ERROR, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %49, %23
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @cpu_number(...) #1

declare dso_local i64 @kdp_x86_xcpu_invoke(i64, i32, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @outw(i64, i64) #1

declare dso_local i32 @outl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
