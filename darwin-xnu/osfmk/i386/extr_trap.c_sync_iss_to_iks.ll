; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_sync_iss_to_iks.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_sync_iss_to_iks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.x86_kernel_state = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@THREAD_STATE_NONE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sync_iss_to_iks(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.x86_kernel_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store %struct.x86_kernel_state* null, %struct.x86_kernel_state** %3, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = icmp ne %struct.TYPE_12__* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @THREAD_STATE_NONE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = call i32 @pal_get_kern_regs(%struct.TYPE_12__* %17)
  br label %19

19:                                               ; preds = %16, %10, %1
  %20 = call %struct.TYPE_14__* (...) @current_thread()
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %85

22:                                               ; preds = %19
  %23 = call %struct.TYPE_14__* (...) @current_thread()
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %85

27:                                               ; preds = %22
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = call %struct.TYPE_13__* @saved_state64(%struct.TYPE_12__* %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call %struct.x86_kernel_state* @STACK_IKS(i32 %30)
  store %struct.x86_kernel_state* %31, %struct.x86_kernel_state** %3, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = icmp eq %struct.TYPE_12__* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = call %struct.TYPE_14__* (...) @current_thread()
  %37 = call %struct.TYPE_13__* @USER_REGS64(%struct.TYPE_14__* %36)
  %38 = icmp eq %struct.TYPE_13__* %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %27
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %5, align 8
  br label %84

41:                                               ; preds = %34
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %46 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %52 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %57 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %62 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %67 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %72 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %77 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %83 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %41, %39
  br label %85

85:                                               ; preds = %84, %22, %19
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @TRUE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %91 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %90, i32 0, i32 7
  call void asm sideeffect "movq %rbx, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %91) #2, !srcloc !2
  %92 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %93 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %92, i32 0, i32 6
  call void asm sideeffect "movq %rsp, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %93) #2, !srcloc !3
  %94 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %95 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %94, i32 0, i32 5
  call void asm sideeffect "movq %rbp, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %95) #2, !srcloc !4
  %96 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %97 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %96, i32 0, i32 4
  call void asm sideeffect "movq %r12, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %97) #2, !srcloc !5
  %98 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %99 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %98, i32 0, i32 3
  call void asm sideeffect "movq %r13, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %99) #2, !srcloc !6
  %100 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %101 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %100, i32 0, i32 2
  call void asm sideeffect "movq %r14, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %101) #2, !srcloc !7
  %102 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %103 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %102, i32 0, i32 1
  call void asm sideeffect "movq %r15, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %103) #2, !srcloc !8
  %104 = load %struct.x86_kernel_state*, %struct.x86_kernel_state** %3, align 8
  %105 = getelementptr inbounds %struct.x86_kernel_state, %struct.x86_kernel_state* %104, i32 0, i32 0
  call void asm sideeffect "leaq 1f(%rip), %rax; mov %rax, $0\0A1:", "=*m,~{rax},~{dirflag},~{fpsr},~{flags}"(i32* %105) #2, !srcloc !9
  br label %106

106:                                              ; preds = %89, %85
  ret void
}

declare dso_local i32 @pal_get_kern_regs(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_14__* @current_thread(...) #1

declare dso_local %struct.TYPE_13__* @saved_state64(%struct.TYPE_12__*) #1

declare dso_local %struct.x86_kernel_state* @STACK_IKS(i32) #1

declare dso_local %struct.TYPE_13__* @USER_REGS64(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1862}
!3 = !{i32 1920}
!4 = !{i32 1978}
!5 = !{i32 2036}
!6 = !{i32 2094}
!7 = !{i32 2152}
!8 = !{i32 2210}
!9 = !{i32 2269, i32 2308}
