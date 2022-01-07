; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_i386_signal_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_i386_signal_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MP_TLB_FLUSH = common dso_local global i32 0, align 4
@TRACE_MP_TLB_FLUSH = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@cpu_signal = common dso_local global i32 0, align 4
@SYNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"i386_signal_cpu(%d, 0x%x, SYNC) timed out\0A\00", align 1
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i386_signal_cpu(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_2__* @cpu_datap(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_2__* @cpu_datap(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %86

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MP_TLB_FLUSH, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* @TRACE_MP_TLB_FLUSH, align 4
  %24 = load i32, i32* @DBG_FUNC_START, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @KERNEL_DEBUG(i32 %25, i32 %26, i32 0, i32 0, i32 0, i32 0)
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i32, i32* @cpu_signal, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @DBGLOG(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @i_bit_set(i32 %33, i32* %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @i386_cpu_IPI(i32 %36)
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @SYNC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %71, %41
  %43 = call i32 (...) @machine_timeout_suspended()
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = call i32 (...) @rdtsc64()
  %47 = add nsw i32 %46, 1000000000
  %48 = sext i32 %47 to i64
  br label %50

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i64 [ %48, %45 ], [ -1, %49 ]
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %64, %50
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @i_bit(i32 %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = call i32 (...) @rdtsc64()
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi i1 [ false, %53 ], [ %61, %58 ]
  br i1 %63, label %64, label %66

64:                                               ; preds = %62
  %65 = call i32 (...) @cpu_pause()
  br label %53

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @i_bit(i32 %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  br label %42

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %28
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @MP_TLB_FLUSH, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* @TRACE_MP_TLB_FLUSH, align 4
  %82 = load i32, i32* @DBG_FUNC_END, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @KERNEL_DEBUG(i32 %83, i32 %84, i32 0, i32 0, i32 0, i32 0)
  br label %86

86:                                               ; preds = %17, %80, %76
  ret void
}

declare dso_local %struct.TYPE_2__* @cpu_datap(i32) #1

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DBGLOG(i32, i32, i32) #1

declare dso_local i32 @i_bit_set(i32, i32*) #1

declare dso_local i32 @i386_cpu_IPI(i32) #1

declare dso_local i32 @machine_timeout_suspended(...) #1

declare dso_local i32 @rdtsc64(...) #1

declare dso_local i64 @i_bit(i32, i32*) #1

declare dso_local i32 @cpu_pause(...) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
