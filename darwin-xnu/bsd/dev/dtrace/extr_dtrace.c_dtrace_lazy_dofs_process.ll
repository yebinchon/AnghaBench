; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_lazy_dofs_process.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_lazy_dofs_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32 }

@dtrace_dof_mode = common dso_local global i64 0, align 8
@DTRACE_DOF_MODE_LAZY_OFF = common dso_local global i64 0, align 8
@dtrace_meta_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"returned value did not match expected generation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @dtrace_lazy_dofs_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_lazy_dofs_process(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = call i32 @dtrace_sprlock(%struct.TYPE_14__* %10)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = icmp eq %struct.TYPE_15__* %19, null
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i1 [ true, %1 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i64, i64* @dtrace_dof_mode, align 8
  %26 = load i64, i64* @DTRACE_DOF_MODE_LAZY_OFF, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %3, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = call i32 @dtrace_sprunlock(%struct.TYPE_14__* %35)
  %37 = call i32 @lck_mtx_lock(i32* @dtrace_meta_lock)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %40, label %143

40:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %132, %40
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %135

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub i32 %51, 1
  %53 = icmp uge i32 %48, %52
  br i1 %53, label %73, label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %62, %71
  br label %73

73:                                               ; preds = %54, %47
  %74 = phi i1 [ true, %47 ], [ %72, %54 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i64 %81
  store %struct.TYPE_17__* %82, %struct.TYPE_17__** %6, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %7, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32* @dtrace_dof_copyin_from_proc(%struct.TYPE_14__* %93, i32 %97, i32* %5)
  store i32* %98, i32** %8, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %131

101:                                              ; preds = %73
  %102 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  store %struct.TYPE_15__* %105, %struct.TYPE_15__** %9, align 8
  %106 = icmp eq %struct.TYPE_15__* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %109 = call %struct.TYPE_15__* @dtrace_helpers_create(%struct.TYPE_14__* %108)
  store %struct.TYPE_15__* %109, %struct.TYPE_15__** %9, align 8
  br label %110

110:                                              ; preds = %107, %101
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %110
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %123 = call i32 @dtrace_helper_slurp(%struct.TYPE_14__* %120, i32* %121, %struct.TYPE_17__* %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = call i32 @dtrace_dof_error(i32* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %116
  br label %129

129:                                              ; preds = %128, %110
  %130 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  br label %131

131:                                              ; preds = %129, %73
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %4, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %41

135:                                              ; preds = %41
  %136 = call i32 @lck_mtx_unlock(i32* @dtrace_meta_lock)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @DOF_IOCTL_DATA_T_SIZE(i32 %140)
  %142 = call i32 @kmem_free(%struct.TYPE_16__* %137, i32 %141)
  br label %145

143:                                              ; preds = %21
  %144 = call i32 @lck_mtx_unlock(i32* @dtrace_meta_lock)
  br label %145

145:                                              ; preds = %143, %135
  ret void
}

declare dso_local i32 @dtrace_sprlock(%struct.TYPE_14__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_sprunlock(%struct.TYPE_14__*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32* @dtrace_dof_copyin_from_proc(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @dtrace_helpers_create(%struct.TYPE_14__*) #1

declare dso_local i32 @dtrace_helper_slurp(%struct.TYPE_14__*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @dtrace_dof_error(i32*, i8*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @DOF_IOCTL_DATA_T_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
