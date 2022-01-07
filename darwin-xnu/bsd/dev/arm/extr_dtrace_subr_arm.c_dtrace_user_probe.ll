; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_subr_arm.c_dtrace_user_probe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_subr_arm.c_dtrace_user_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i8* }
%struct.proc = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i8* }

@PSR_TF = common dso_local global i32 0, align 4
@FASTTRAP_THUMB_RET_INSTR = common dso_local global i64 0, align 8
@FASTTRAP_ARM_RET_INSTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"dtrace_user_probe() should be calling aston()\0A\00", align 1
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@CPU = common dso_local global %struct.TYPE_12__* null, align 8
@FASTTRAP_THUMB_INSTR = common dso_local global i64 0, align 8
@FASTTRAP_ARM_INSTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_user_probe(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = call %struct.proc* (...) @current_proc()
  store %struct.proc* %14, %struct.proc** %7, align 8
  %15 = call i32 (...) @current_thread()
  %16 = call i32 @get_bsdthread_info(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %8, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = load %struct.proc*, %struct.proc** %7, align 8
  %21 = call i32 @kauth_cred_uthread_update(%struct.TYPE_10__* %19, %struct.proc* %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PSR_TF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* @FASTTRAP_THUMB_RET_INSTR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28, %2
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* @FASTTRAP_ARM_RET_INSTR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %82

38:                                               ; preds = %33, %28
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %11, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %38
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %60, i32* %3, align 4
  br label %132

61:                                               ; preds = %54
  %62 = load i64, i64* %10, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8*, i8** %11, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %68, i32* %3, align 4
  br label %132

69:                                               ; preds = %61
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** @CPU, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32* %71, i32** %6, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @lck_rw_lock_shared(i32* %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = call i32 @dtrace_return_probe_ptr(%struct.TYPE_11__* %74)
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @lck_rw_unlock_shared(i32* %76)
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %81, i32* %3, align 4
  br label %132

82:                                               ; preds = %33
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @CPU, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32* %84, i32** %6, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @lck_rw_lock_shared(i32* %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = call i64 @dtrace_pid_probe_ptr(%struct.TYPE_11__* %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @lck_rw_unlock_shared(i32* %91)
  %93 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %93, i32* %3, align 4
  br label %132

94:                                               ; preds = %82
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @lck_rw_unlock_shared(i32* %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PSR_TF, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %94
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @fuword16(i8* %106, i64* %12)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* @FASTTRAP_THUMB_INSTR, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %114, i32* %3, align 4
  br label %132

115:                                              ; preds = %109, %103
  br label %129

116:                                              ; preds = %94
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @fuword32(i8* %119, i64* %13)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* @FASTTRAP_ARM_INSTR, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %127, i32* %3, align 4
  br label %132

128:                                              ; preds = %122, %116
  br label %129

129:                                              ; preds = %128, %115
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %126, %113, %90, %69, %64, %59
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.proc* @current_proc(...) #1

declare dso_local i32 @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @kauth_cred_uthread_update(%struct.TYPE_10__*, %struct.proc*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i32 @dtrace_return_probe_ptr(%struct.TYPE_11__*) #1

declare dso_local i32 @lck_rw_unlock_shared(i32*) #1

declare dso_local i64 @dtrace_pid_probe_ptr(%struct.TYPE_11__*) #1

declare dso_local i64 @fuword16(i8*, i64*) #1

declare dso_local i64 @fuword32(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
