; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_cpu_signal_handler.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_cpu_signal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@cpu_data_ptr = common dso_local global %struct.TYPE_4__** null, align 8
@MP_TLB_FLUSH = common dso_local global i32 0, align 4
@cpu_handle = common dso_local global i32 0, align 4
@MP_CALL = common dso_local global i32 0, align 4
@MP_CALL_PM = common dso_local global i32 0, align 4
@MP_AST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MP_KDP = common dso_local global i32 0, align 4
@PM_SAFE_FL_NORMAL = common dso_local global i32 0, align 4
@PM_SAFE_FL_SAFE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@kdp_snapshot = common dso_local global i32 0, align 4
@pmsafe_debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_signal_handler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i32 (...) @current_processor()
  %6 = call i32 @SCHED_STATS_IPI(i32 %5)
  %7 = call i32 (...) @cpu_number()
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @cpu_data_ptr, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %8, i64 %10
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load volatile i32, i32* %14, align 4
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @cpu_data_ptr, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %15, i32* %21, align 4
  br label %22

22:                                               ; preds = %88, %1
  %23 = load i32, i32* @MP_TLB_FLUSH, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @i_bit(i32 %23, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* @cpu_handle, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @MP_TLB_FLUSH, align 4
  %31 = call i32 @DBGLOG(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @MP_TLB_FLUSH, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @i_bit_clear(i32 %32, i32* %33)
  %35 = call i32 (...) @pmap_update_interrupt()
  br label %66

36:                                               ; preds = %22
  %37 = load i32, i32* @MP_CALL, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @i_bit(i32 %37, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, i32* @cpu_handle, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @MP_CALL, align 4
  %45 = call i32 @DBGLOG(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @MP_CALL, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @i_bit_clear(i32 %46, i32* %47)
  %49 = call i32 (...) @mp_cpus_call_action()
  br label %65

50:                                               ; preds = %36
  %51 = load i32, i32* @MP_CALL_PM, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @i_bit(i32 %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32, i32* @cpu_handle, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @MP_CALL_PM, align 4
  %59 = call i32 @DBGLOG(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @MP_CALL_PM, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @i_bit_clear(i32 %60, i32* %61)
  %63 = call i32 (...) @mp_call_PM()
  br label %64

64:                                               ; preds = %55, %50
  br label %65

65:                                               ; preds = %64, %41
  br label %66

66:                                               ; preds = %65, %27
  %67 = load i32*, i32** %2, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %92

70:                                               ; preds = %66
  %71 = load i32, i32* @MP_AST, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = call i64 @i_bit(i32 %71, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load i32, i32* @cpu_handle, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @MP_AST, align 4
  %79 = call i32 @DBGLOG(i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* @MP_AST, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @i_bit_clear(i32 %80, i32* %81)
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @cpu_to_processor(i32 %83)
  %85 = call i32 @ast_check(i32 %84)
  br label %86

86:                                               ; preds = %75, %70
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87
  %89 = load i32*, i32** %4, align 8
  %90 = load volatile i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %22, label %92

92:                                               ; preds = %88, %69
  ret i32 0
}

declare dso_local i32 @SCHED_STATS_IPI(i32) #1

declare dso_local i32 @current_processor(...) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i64 @i_bit(i32, i32*) #1

declare dso_local i32 @DBGLOG(i32, i32, i32) #1

declare dso_local i32 @i_bit_clear(i32, i32*) #1

declare dso_local i32 @pmap_update_interrupt(...) #1

declare dso_local i32 @mp_cpus_call_action(...) #1

declare dso_local i32 @mp_call_PM(...) #1

declare dso_local i32 @ast_check(i32) #1

declare dso_local i32 @cpu_to_processor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
