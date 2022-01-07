; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_mp_cpus_call_action.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_mp_cpus_call_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i32 (i32, i32)* }

@mp_cpus_call_head = common dso_local global i32* null, align 8
@TRACE_MP_CPUS_CALL_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mp_cpus_call_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_cpus_call_action() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = call i32 (...) @ml_get_interrupts_enabled()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32*, i32** @mp_cpus_call_head, align 8
  %11 = call i64 (...) @cpu_number()
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @mp_call_head_lock(i32* %13)
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %64, %0
  %16 = load i32*, i32** %1, align 8
  %17 = call %struct.TYPE_4__* @mp_call_dequeue_locked(i32* %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %3, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %65

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = bitcast %struct.TYPE_4__* %4 to i8*
  %22 = bitcast %struct.TYPE_4__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 24, i1 false)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = call i32 @mp_call_free(%struct.TYPE_4__* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %26 = load i32 (i32, i32)*, i32 (i32, i32)** %25, align 8
  %27 = icmp ne i32 (i32, i32)* %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %19
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @mp_call_head_unlock(i32* %29, i32 %30)
  %32 = load i32, i32* @TRACE_MP_CPUS_CALL_ACTION, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 8
  %35 = call i32 @VM_KERNEL_UNSLIDE(i32 (i32, i32)* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @VM_KERNEL_ADDRPERM(i32* %43)
  %45 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 0)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %47(i32 %49, i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @mp_call_head_lock(i32* %53)
  br label %55

55:                                               ; preds = %28, %19
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = call i64 (...) @cpu_number()
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @i_bit_set(i64 %60, i32* %62)
  br label %64

64:                                               ; preds = %59, %55
  br label %15

65:                                               ; preds = %15
  %66 = load i32*, i32** %1, align 8
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @mp_call_head_unlock(i32* %66, i32 %67)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local i64 @cpu_number(...) #1

declare dso_local i32 @mp_call_head_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @mp_call_dequeue_locked(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_call_free(%struct.TYPE_4__*) #1

declare dso_local i32 @mp_call_head_unlock(i32*, i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE(i32 (i32, i32)*) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(i32) #1

declare dso_local i32 @VM_KERNEL_ADDRPERM(i32*) #1

declare dso_local i32 @i_bit_set(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
