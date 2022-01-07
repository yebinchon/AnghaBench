; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_dbgwrap.c_ml_dbgwrap_stuff_instr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_dbgwrap.c_ml_dbgwrap_stuff_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@CORESIGHT_ED = common dso_local global i64 0, align 8
@EDITR_REG_OFFSET = common dso_local global i64 0, align 8
@EDSCR_REG_OFFSET = common dso_local global i64 0, align 8
@EDRCR_REG_OFFSET = common dso_local global i64 0, align 8
@EDSCR_ITE = common dso_local global i32 0, align 4
@DBGWRAP_ERR_INSTR_TIMEOUT = common dso_local global i64 0, align 8
@EDSCR_ERR = common dso_local global i32 0, align 4
@EDSCR_MA = common dso_local global i32 0, align 4
@EDRCR_CSE = common dso_local global i32 0, align 4
@MAX_EDITR_RETRIES = common dso_local global i32 0, align 4
@DBGWRAP_ERR_INSTR_ERROR = common dso_local global i64 0, align 8
@MAX_STUFFED_INSTRS = common dso_local global i32 0, align 4
@stuffed_instr_count = common dso_local global i32 0, align 4
@stuffed_instrs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i64, i64*)* @ml_dbgwrap_stuff_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ml_dbgwrap_stuff_instr(%struct.TYPE_3__* %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %111

20:                                               ; preds = %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @CORESIGHT_ED, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EDITR_REG_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %9, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @CORESIGHT_ED, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EDSCR_REG_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %10, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @CORESIGHT_ED, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EDRCR_REG_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @nanoseconds_to_absolutetime(i64 %48, i64* %13)
  %50 = call i64 (...) @mach_absolute_time()
  %51 = load i64, i64* %13, align 8
  %52 = add nsw i64 %50, %51
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %100, %20
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** %9, align 8
  store volatile i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %76, %53
  %57 = load i32*, i32** %10, align 8
  %58 = load volatile i32, i32* %57, align 4
  store volatile i32 %58, i32* %15, align 4
  %59 = load volatile i32, i32* @EDSCR_ITE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = call i64 (...) @mach_absolute_time()
  %65 = load i64, i64* %14, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i64, i64* @DBGWRAP_ERR_INSTR_TIMEOUT, align 8
  %69 = load i64*, i64** %8, align 8
  store i64 %68, i64* %69, align 8
  br label %111

70:                                               ; preds = %63
  %71 = load volatile i32, i32* %15, align 4
  %72 = load volatile i32, i32* @EDSCR_ERR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %77

76:                                               ; preds = %70
  br label %56

77:                                               ; preds = %75, %56
  %78 = load volatile i32, i32* %15, align 4
  %79 = load volatile i32, i32* @EDSCR_ERR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load volatile i32, i32* %15, align 4
  %84 = load volatile i32, i32* @EDSCR_MA, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load volatile i32, i32* %15, align 4
  %89 = load volatile i32, i32* @EDSCR_MA, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = load i32*, i32** %10, align 8
  store volatile i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* @EDRCR_CSE, align 4
  %95 = load i32*, i32** %11, align 8
  store volatile i32 %94, i32* %95, align 4
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %99

98:                                               ; preds = %77
  br label %104

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @MAX_EDITR_RETRIES, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %53, label %104

104:                                              ; preds = %100, %98
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @MAX_EDITR_RETRIES, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i64, i64* @DBGWRAP_ERR_INSTR_ERROR, align 8
  %110 = load i64*, i64** %8, align 8
  store i64 %109, i64* %110, align 8
  br label %111

111:                                              ; preds = %19, %67, %108, %104
  ret void
}

declare dso_local i32 @nanoseconds_to_absolutetime(i64, i64*) #1

declare dso_local i64 @mach_absolute_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
