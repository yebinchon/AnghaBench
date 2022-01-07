; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_dbgwrap.c_ml_dbgwrap_cpu_is_halted.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_dbgwrap.c_ml_dbgwrap_cpu_is_halted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@CORESIGHT_UTT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@DBGWRAP_REG_OFFSET = common dso_local global i64 0, align 8
@DBGWRAP_DBGACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ml_dbgwrap_cpu_is_halted(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.TYPE_3__* @cpu_datap(i32 %5)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @CORESIGHT_UTT, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9, %1
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %9
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @CORESIGHT_UTT, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DBGWRAP_REG_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = inttoptr i64 %27 to i32*
  %29 = load volatile i32, i32* %28, align 4
  %30 = load volatile i32, i32* @DBGWRAP_DBGACK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %19, %17
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.TYPE_3__* @cpu_datap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
