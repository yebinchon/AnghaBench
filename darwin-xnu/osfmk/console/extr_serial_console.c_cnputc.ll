; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_serial_console.c_cnputc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_serial_console.c_cnputc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i64, i64 }

@TRUE = common dso_local global i64 0, align 8
@console_suspended = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@console_ring = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cnputc(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8 %0, i8* %2, align 1
  %8 = load i64, i64* @TRUE, align 8
  store i64 %8, i64* %6, align 8
  br label %9

9:                                                ; preds = %88, %40, %1
  %10 = call i32 (...) @mp_disable_preemption()
  %11 = call %struct.TYPE_7__* (...) @current_cpu_datap()
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %3, align 8
  %16 = load i64, i64* @console_suspended, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %9
  %22 = call i32 (...) @mp_enable_preemption()
  %23 = call i32 @_cnputs(i8* %2, i32 1)
  br label %122

24:                                               ; preds = %18
  %25 = load i64, i64* @FALSE, align 8
  %26 = call i64 @ml_set_interrupts_enabled(i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = load i8, i8* %2, align 1
  %32 = call i32 @cpu_buffer_put(%struct.TYPE_8__* %30, i8 signext %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %73, label %34

34:                                               ; preds = %29
  %35 = call i32 @simple_lock_try_lock_loop(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @console_ring, i32 0, i32 0))
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = call i64 @cpu_buffer_size(%struct.TYPE_8__* %36)
  %38 = call i64 (...) @console_ring_space()
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = call i32 @simple_unlock(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @console_ring, i32 0, i32 0))
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @console_restore_interrupts_state(i64 %42)
  %44 = call i32 (...) @mp_enable_preemption()
  %45 = call i32 (...) @console_ring_try_empty()
  br label %9

46:                                               ; preds = %34
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %7, align 8
  br label %50

50:                                               ; preds = %60, %46
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ult i8* %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @console_ring_put(i8 signext %58)
  br label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  br label %50

63:                                               ; preds = %50
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = call i32 @simple_unlock(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @console_ring, i32 0, i32 0))
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = load i8, i8* %2, align 1
  %72 = call i32 @cpu_buffer_put(%struct.TYPE_8__* %70, i8 signext %71)
  br label %73

73:                                               ; preds = %63, %29, %24
  %74 = load i64, i64* @FALSE, align 8
  store i64 %74, i64* %6, align 8
  %75 = load i8, i8* %2, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 10
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @console_restore_interrupts_state(i64 %79)
  %81 = call i32 (...) @mp_enable_preemption()
  br label %122

82:                                               ; preds = %73
  %83 = call i32 @simple_lock_try_lock_loop(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @console_ring, i32 0, i32 0))
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = call i64 @cpu_buffer_size(%struct.TYPE_8__* %84)
  %86 = call i64 (...) @console_ring_space()
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = call i32 @simple_unlock(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @console_ring, i32 0, i32 0))
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @console_restore_interrupts_state(i64 %90)
  %92 = call i32 (...) @mp_enable_preemption()
  %93 = call i32 (...) @console_ring_try_empty()
  br label %9

94:                                               ; preds = %82
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %7, align 8
  br label %98

98:                                               ; preds = %108, %94
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ult i8* %99, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load i8*, i8** %7, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @console_ring_put(i8 signext %106)
  br label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %7, align 8
  br label %98

111:                                              ; preds = %98
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = call i32 @simple_unlock(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @console_ring, i32 0, i32 0))
  %118 = load i64, i64* %5, align 8
  %119 = call i32 @console_restore_interrupts_state(i64 %118)
  %120 = call i32 (...) @mp_enable_preemption()
  %121 = call i32 (...) @console_ring_try_empty()
  br label %122

122:                                              ; preds = %111, %78, %21
  ret void
}

declare dso_local i32 @mp_disable_preemption(...) #1

declare dso_local %struct.TYPE_7__* @current_cpu_datap(...) #1

declare dso_local i32 @mp_enable_preemption(...) #1

declare dso_local i32 @_cnputs(i8*, i32) #1

declare dso_local i64 @ml_set_interrupts_enabled(i64) #1

declare dso_local i32 @cpu_buffer_put(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i32 @simple_lock_try_lock_loop(i32*) #1

declare dso_local i64 @cpu_buffer_size(%struct.TYPE_8__*) #1

declare dso_local i64 @console_ring_space(...) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @console_restore_interrupts_state(i64) #1

declare dso_local i32 @console_ring_try_empty(...) #1

declare dso_local i32 @console_ring_put(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
