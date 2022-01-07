; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_setreg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_setreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@kdlog_beg = common dso_local global i32 0, align 4
@kdlog_end = common dso_local global i32 0, align 4
@KDBG_CKTYPES = common dso_local global i64 0, align 8
@kd_ctrl_page = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@KDBG_RANGECHECK = common dso_local global i32 0, align 4
@SLOW_CHECKS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@kdlog_value1 = common dso_local global i32 0, align 4
@kdlog_value2 = common dso_local global i32 0, align 4
@kdlog_value3 = common dso_local global i32 0, align 4
@kdlog_value4 = common dso_local global i32 0, align 4
@KDBG_PIDCHECK = common dso_local global i32 0, align 4
@KDBG_PIDEXCLUDE = common dso_local global i32 0, align 4
@KDBG_TYPEFILTER_CHECK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdbg_setreg(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %146 [
    i32 132, label %10
    i32 130, label %37
    i32 131, label %72
    i32 128, label %93
    i32 129, label %120
  ]

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %19, 24
  store i32 %20, i32* @kdlog_beg, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 24
  store i32 %22, i32* @kdlog_end, align 4
  %23 = load i64, i64* @KDBG_CKTYPES, align 8
  %24 = xor i64 %23, -1
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %29 = and i32 %28, -129
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %30 = load i32, i32* @KDBG_RANGECHECK, align 4
  %31 = or i32 %30, 132
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %34 = load i32, i32* @SLOW_CHECKS, align 4
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @kdbg_set_flags(i32 %34, i32 0, i32 %35)
  br label %148

37:                                               ; preds = %1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 255
  store i32 %41, i32* %4, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 %48, 24
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 %50, 16
  %52 = or i32 %49, %51
  store i32 %52, i32* @kdlog_beg, align 4
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %53, 24
  %55 = load i32, i32* %6, align 4
  %56 = shl i32 %55, 16
  %57 = or i32 %54, %56
  store i32 %57, i32* @kdlog_end, align 4
  %58 = load i64, i64* @KDBG_CKTYPES, align 8
  %59 = xor i64 %58, -1
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %64 = and i32 %63, -129
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %65 = load i32, i32* @KDBG_RANGECHECK, align 4
  %66 = or i32 %65, 130
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %69 = load i32, i32* @SLOW_CHECKS, align 4
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32 @kdbg_set_flags(i32 %69, i32 0, i32 %70)
  br label %148

72:                                               ; preds = %1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* @kdlog_beg, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* @kdlog_end, align 4
  %79 = load i64, i64* @KDBG_CKTYPES, align 8
  %80 = xor i64 %79, -1
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %85 = and i32 %84, -129
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %86 = load i32, i32* @KDBG_RANGECHECK, align 4
  %87 = or i32 %86, 131
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %90 = load i32, i32* @SLOW_CHECKS, align 4
  %91 = load i32, i32* @TRUE, align 4
  %92 = call i32 @kdbg_set_flags(i32 %90, i32 0, i32 %91)
  br label %148

93:                                               ; preds = %1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* @kdlog_value1, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* @kdlog_value2, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* @kdlog_value3, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* @kdlog_value4, align 4
  %106 = load i64, i64* @KDBG_CKTYPES, align 8
  %107 = xor i64 %106, -1
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %111 = load i32, i32* @KDBG_RANGECHECK, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %116 = or i32 %115, 128
  store i32 %116, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %117 = load i32, i32* @SLOW_CHECKS, align 4
  %118 = load i32, i32* @TRUE, align 4
  %119 = call i32 @kdbg_set_flags(i32 %117, i32 0, i32 %118)
  br label %148

120:                                              ; preds = %1
  %121 = load i64, i64* @KDBG_CKTYPES, align 8
  %122 = xor i64 %121, -1
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %127 = load i32, i32* @KDBG_RANGECHECK, align 4
  %128 = or i32 %127, 128
  %129 = load i32, i32* @KDBG_PIDCHECK, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @KDBG_PIDEXCLUDE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @KDBG_TYPEFILTER_CHECK, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %126, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %120
  %138 = load i32, i32* @SLOW_CHECKS, align 4
  %139 = load i32, i32* @TRUE, align 4
  %140 = call i32 @kdbg_set_flags(i32 %138, i32 0, i32 %139)
  br label %145

141:                                              ; preds = %120
  %142 = load i32, i32* @SLOW_CHECKS, align 4
  %143 = load i32, i32* @FALSE, align 4
  %144 = call i32 @kdbg_set_flags(i32 %142, i32 0, i32 %143)
  br label %145

145:                                              ; preds = %141, %137
  store i32 0, i32* @kdlog_beg, align 4
  store i32 0, i32* @kdlog_end, align 4
  br label %148

146:                                              ; preds = %1
  %147 = load i32, i32* @EINVAL, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %145, %93, %72, %37, %10
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @kdbg_set_flags(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
