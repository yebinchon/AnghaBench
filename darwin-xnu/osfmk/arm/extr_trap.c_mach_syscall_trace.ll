; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_trap.c_mach_syscall_trace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_trap.c_mach_syscall_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.arm_saved_state = type { i64* }

@mach_trap_table = common dso_local global %struct.TYPE_2__* null, align 8
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DBG_MACH_EXCP_SC = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mach_syscall_trace(%struct.arm_saved_state* %0, i32 %1) #0 {
  %3 = alloca %struct.arm_saved_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  store %struct.arm_saved_state* %0, %struct.arm_saved_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mach_trap_table, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 3, i32* %6, align 4
  br label %18

18:                                               ; preds = %17, %2
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %35, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.arm_saved_state*, %struct.arm_saved_state** %3, align 8
  %25 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load i32, i32* @KDEBUG_TRACE, align 4
  %40 = load i32, i32* @DBG_MACH_EXCP_SC, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @MACHDBG_CODE(i32 %40, i32 %41)
  %43 = load i32, i32* @DBG_FUNC_START, align 4
  %44 = or i32 %42, %43
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %39, i32 %44, i32 %46, i32 %48, i32 %50, i32 0, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @MACHDBG_CODE(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
