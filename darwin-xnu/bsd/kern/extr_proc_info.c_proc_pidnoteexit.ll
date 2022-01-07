; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidnoteexit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidnoteexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i32, i32 }

@P_LTRACED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@NOTE_EXITSTATUS = common dso_local global i32 0, align 4
@NOTE_PDATAMASK = common dso_local global i32 0, align 4
@NOTE_EXIT_DETAIL = common dso_local global i32 0, align 4
@P_LTERM_DECRYPTFAIL = common dso_local global i32 0, align 4
@NOTE_EXIT_DECRYPTFAIL = common dso_local global i32 0, align 4
@P_LTERM_JETSAM = common dso_local global i32 0, align 4
@NOTE_EXIT_MEMORY = common dso_local global i32 0, align 4
@P_JETSAM_MASK = common dso_local global i32 0, align 4
@NOTE_EXIT_MEMORY_VMPAGESHORTAGE = common dso_local global i32 0, align 4
@NOTE_EXIT_MEMORY_VMTHRASHING = common dso_local global i32 0, align 4
@NOTE_EXIT_MEMORY_FCTHRASHING = common dso_local global i32 0, align 4
@NOTE_EXIT_MEMORY_VNODE = common dso_local global i32 0, align 4
@NOTE_EXIT_MEMORY_HIWAT = common dso_local global i32 0, align 4
@NOTE_EXIT_MEMORY_PID = common dso_local global i32 0, align 4
@NOTE_EXIT_MEMORY_IDLE = common dso_local global i32 0, align 4
@CS_KILLED = common dso_local global i32 0, align 4
@NOTE_EXIT_CSERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pidnoteexit(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = call i32 @proc_lock(%struct.TYPE_5__* %12)
  br label %14

14:                                               ; preds = %3
  %15 = call i64 (...) @proc_selfpid()
  store i64 %15, i64* %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %40

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @P_LTRACED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %40

36:                                               ; preds = %29, %22
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = call i32 @proc_unlock(%struct.TYPE_5__* %37)
  %39 = load i32, i32* @EACCES, align 4
  store i32 %39, i32* %4, align 4
  br label %131

40:                                               ; preds = %35, %21
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @NOTE_EXITSTATUS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NOTE_PDATAMASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %45, %40
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @NOTE_EXIT_DETAIL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %126

58:                                               ; preds = %53
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @P_LTERM_DECRYPTFAIL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @NOTE_EXIT_DECRYPTFAIL, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @P_LTERM_JETSAM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %114

76:                                               ; preds = %69
  %77 = load i32, i32* @NOTE_EXIT_MEMORY, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @P_JETSAM_MASK, align 4
  %84 = and i32 %82, %83
  switch i32 %84, label %113 [
    i32 130, label %85
    i32 129, label %89
    i32 134, label %93
    i32 128, label %97
    i32 133, label %101
    i32 131, label %105
    i32 132, label %109
  ]

85:                                               ; preds = %76
  %86 = load i32, i32* @NOTE_EXIT_MEMORY_VMPAGESHORTAGE, align 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %113

89:                                               ; preds = %76
  %90 = load i32, i32* @NOTE_EXIT_MEMORY_VMTHRASHING, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %113

93:                                               ; preds = %76
  %94 = load i32, i32* @NOTE_EXIT_MEMORY_FCTHRASHING, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %113

97:                                               ; preds = %76
  %98 = load i32, i32* @NOTE_EXIT_MEMORY_VNODE, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %113

101:                                              ; preds = %76
  %102 = load i32, i32* @NOTE_EXIT_MEMORY_HIWAT, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  br label %113

105:                                              ; preds = %76
  %106 = load i32, i32* @NOTE_EXIT_MEMORY_PID, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %113

109:                                              ; preds = %76
  %110 = load i32, i32* @NOTE_EXIT_MEMORY_IDLE, align 4
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %76, %109, %105, %101, %97, %93, %89, %85
  br label %114

114:                                              ; preds = %113, %69
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CS_KILLED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i32, i32* @NOTE_EXIT_CSERROR, align 4
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %121, %114
  br label %126

126:                                              ; preds = %125, %53
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = call i32 @proc_unlock(%struct.TYPE_5__* %127)
  %129 = load i32, i32* %8, align 4
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %126, %36
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @proc_lock(%struct.TYPE_5__*) #1

declare dso_local i64 @proc_selfpid(...) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
