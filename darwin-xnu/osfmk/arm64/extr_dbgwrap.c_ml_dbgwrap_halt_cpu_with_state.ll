; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_dbgwrap.c_ml_dbgwrap_halt_cpu_with_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_dbgwrap.c_ml_dbgwrap_halt_cpu_with_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i8*, i8*, i8*, i8** }
%struct.TYPE_9__ = type { i64* }

@CORESIGHT_ED = common dso_local global i64 0, align 8
@DBGWRAP_ERR_UNSUPPORTED = common dso_local global i32 0, align 4
@ARM_DBG_LOCK_ACCESS_KEY = common dso_local global i32 0, align 4
@ARM_DEBUG_OFFSET_DBGLAR = common dso_local global i64 0, align 8
@EDPRSR_REG_OFFSET = common dso_local global i64 0, align 8
@EDPRSR_OSLK = common dso_local global i32 0, align 4
@DBGWRAP_WARN_CPU_OFFLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ml_dbgwrap_halt_cpu_with_state(i32 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_9__* @cpu_datap(i32 %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %15 = icmp eq %struct.TYPE_9__* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @CORESIGHT_ED, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16, %3
  %25 = load i32, i32* @DBGWRAP_ERR_UNSUPPORTED, align 4
  store i32 %25, i32* %4, align 4
  br label %141

26:                                               ; preds = %16
  %27 = load i32, i32* @ARM_DBG_LOCK_ACCESS_KEY, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @CORESIGHT_ED, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ARM_DEBUG_OFFSET_DBGLAR, align 8
  %35 = add nsw i64 %33, %34
  %36 = inttoptr i64 %35 to i32*
  store volatile i32 %27, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ml_dbgwrap_halt_cpu(i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @CORESIGHT_ED, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EDPRSR_REG_OFFSET, align 8
  %47 = add nsw i64 %45, %46
  %48 = inttoptr i64 %47 to i32*
  %49 = load volatile i32, i32* %48, align 4
  %50 = load volatile i32, i32* @EDPRSR_OSLK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %26
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = call i32 @bzero(%struct.TYPE_8__* %54, i32 48)
  %56 = load i32, i32* @DBGWRAP_WARN_CPU_OFFLINE, align 4
  store i32 %56, i32* %4, align 4
  br label %141

57:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = icmp ult i64 %60, 1
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  %64 = or i32 -720174080, %63
  store i32 %64, i32* %10, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ml_dbgwrap_stuff_instr(%struct.TYPE_9__* %65, i32 %66, i32 %67, i32* %9)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i8* @ml_dbgwrap_read_dtr(%struct.TYPE_9__* %69, i32 %70, i32* %9)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 5
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  store i8* %71, i8** %77, align 8
  br label %78

78:                                               ; preds = %62
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %58

81:                                               ; preds = %58
  store i32 -720174051, i32* %10, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @ml_dbgwrap_stuff_instr(%struct.TYPE_9__* %82, i32 %83, i32 %84, i32* %9)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i8* @ml_dbgwrap_read_dtr(%struct.TYPE_9__* %86, i32 %87, i32* %9)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  store i32 -720174050, i32* %10, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @ml_dbgwrap_stuff_instr(%struct.TYPE_9__* %91, i32 %92, i32 %93, i32* %9)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i8* @ml_dbgwrap_read_dtr(%struct.TYPE_9__* %95, i32 %96, i32* %9)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  store i32 -1862269966, i32* %10, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @ml_dbgwrap_stuff_instr(%struct.TYPE_9__* %100, i32 %101, i32 %102, i32* %9)
  store i32 -720174062, i32* %10, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @ml_dbgwrap_stuff_instr(%struct.TYPE_9__* %104, i32 %105, i32 %106, i32* %9)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i8* @ml_dbgwrap_read_dtr(%struct.TYPE_9__* %108, i32 %109, i32* %9)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  store i32 -717535950, i32* %10, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @ml_dbgwrap_stuff_instr(%struct.TYPE_9__* %113, i32 %114, i32 %115, i32* %9)
  store i32 -720174062, i32* %10, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @ml_dbgwrap_stuff_instr(%struct.TYPE_9__* %117, i32 %118, i32 %119, i32* %9)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i8* @ml_dbgwrap_read_dtr(%struct.TYPE_9__* %121, i32 %122, i32* %9)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  store i32 -717535982, i32* %10, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @ml_dbgwrap_stuff_instr(%struct.TYPE_9__* %126, i32 %127, i32 %128, i32* %9)
  store i32 -720174062, i32* %10, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @ml_dbgwrap_stuff_instr(%struct.TYPE_9__* %130, i32 %131, i32 %132, i32* %9)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i8* @ml_dbgwrap_read_dtr(%struct.TYPE_9__* %134, i32 %135, i32* %9)
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %81, %53, %24
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.TYPE_9__* @cpu_datap(i32) #1

declare dso_local i32 @ml_dbgwrap_halt_cpu(i32, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ml_dbgwrap_stuff_instr(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i8* @ml_dbgwrap_read_dtr(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
