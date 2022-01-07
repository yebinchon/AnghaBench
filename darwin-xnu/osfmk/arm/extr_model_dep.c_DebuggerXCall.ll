; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_model_dep.c_DebuggerXCall.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_model_dep.c_DebuggerXCall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@debugger_sync = common dso_local global i32 0, align 4
@DMB_ISH = common dso_local global i32 0, align 4
@mp_kdp_trap = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DebuggerXCall(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @PSR_IS_KERNEL(i32 %15)
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %12, %1
  %18 = call %struct.TYPE_11__* (...) @current_thread()
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %6, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = bitcast %struct.TYPE_10__* %27 to i8*
  %30 = bitcast %struct.TYPE_10__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  br label %44

31:                                               ; preds = %17
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = call i32 @set_saved_state_fp(%struct.TYPE_10__* %35, i32 0)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = call i32 @set_saved_state_pc(%struct.TYPE_10__* %37, i32 0)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = call i32 @set_saved_state_lr(%struct.TYPE_10__* %39, i32 0)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = call i32 @set_saved_state_sp(%struct.TYPE_10__* %41, i32 0)
  br label %43

43:                                               ; preds = %34, %31
  br label %44

44:                                               ; preds = %43, %26
  %45 = call i32 @hw_atomic_sub(i32* @debugger_sync, i32 1)
  %46 = load i32, i32* @DMB_ISH, align 4
  %47 = call i32 @__builtin_arm_dmb(i32 %46)
  br label %48

48:                                               ; preds = %51, %44
  %49 = load i64, i64* @mp_kdp_trap, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %48

52:                                               ; preds = %48
  ret void
}

declare dso_local i64 @PSR_IS_KERNEL(i32) #1

declare dso_local %struct.TYPE_11__* @current_thread(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_saved_state_fp(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @set_saved_state_pc(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @set_saved_state_lr(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @set_saved_state_sp(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @hw_atomic_sub(i32*, i32) #1

declare dso_local i32 @__builtin_arm_dmb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
