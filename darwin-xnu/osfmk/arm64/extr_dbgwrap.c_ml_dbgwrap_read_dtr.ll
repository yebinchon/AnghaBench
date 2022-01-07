; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_dbgwrap.c_ml_dbgwrap_read_dtr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_dbgwrap.c_ml_dbgwrap_read_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@CORESIGHT_ED = common dso_local global i64 0, align 8
@EDSCR_REG_OFFSET = common dso_local global i64 0, align 8
@EDSCR_TXFULL = common dso_local global i32 0, align 4
@EDSCR_ERR = common dso_local global i32 0, align 4
@DBGWRAP_ERR_INSTR_ERROR = common dso_local global i64 0, align 8
@DBGWRAP_ERR_INSTR_TIMEOUT = common dso_local global i64 0, align 8
@EDDTRRX_REG_OFFSET = common dso_local global i64 0, align 8
@EDDTRTX_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64*)* @ml_dbgwrap_read_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ml_dbgwrap_read_dtr(%struct.TYPE_3__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %83

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @nanoseconds_to_absolutetime(i64 %18, i64* %8)
  %20 = call i64 (...) @mach_absolute_time()
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %9, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @CORESIGHT_ED, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EDSCR_REG_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %10, align 8
  br label %32

32:                                               ; preds = %55, %17
  %33 = load i32*, i32** %10, align 8
  %34 = load volatile i32, i32* %33, align 4
  %35 = load volatile i32, i32* @EDSCR_TXFULL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load i32*, i32** %10, align 8
  %41 = load volatile i32, i32* %40, align 4
  %42 = load volatile i32, i32* @EDSCR_ERR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i64, i64* @DBGWRAP_ERR_INSTR_ERROR, align 8
  %47 = load i64*, i64** %7, align 8
  store i64 %46, i64* %47, align 8
  store i64 0, i64* %4, align 8
  br label %83

48:                                               ; preds = %39
  %49 = call i64 (...) @mach_absolute_time()
  %50 = load i64, i64* %9, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* @DBGWRAP_ERR_INSTR_TIMEOUT, align 8
  %54 = load i64*, i64** %7, align 8
  store i64 %53, i64* %54, align 8
  store i64 0, i64* %4, align 8
  br label %83

55:                                               ; preds = %48
  br label %32

56:                                               ; preds = %32
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @CORESIGHT_ED, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EDDTRRX_REG_OFFSET, align 8
  %64 = add nsw i64 %62, %63
  %65 = inttoptr i64 %64 to i32*
  %66 = load volatile i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @CORESIGHT_ED, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EDDTRTX_REG_OFFSET, align 8
  %74 = add nsw i64 %72, %73
  %75 = inttoptr i64 %74 to i32*
  %76 = load volatile i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = shl i64 %78, 32
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = or i64 %79, %81
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %56, %52, %45, %16
  %84 = load i64, i64* %4, align 8
  ret i64 %84
}

declare dso_local i32 @nanoseconds_to_absolutetime(i64, i64*) #1

declare dso_local i64 @mach_absolute_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
