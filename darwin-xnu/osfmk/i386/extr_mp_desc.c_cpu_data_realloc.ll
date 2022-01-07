; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_cpu_data_realloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_cpu_data_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.cpu_desc_table*, %struct.TYPE_8__, i64, %struct.TYPE_10__* }
%struct.cpu_desc_table = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i32* }

@kernel_map = common dso_local global i32 0, align 4
@INTSTACK_SIZE = common dso_local global i64 0, align 8
@VM_KERN_MEMORY_CPU = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cpu_data_realloc() stack alloc, ret=%d\0A\00", align 1
@scdatas = common dso_local global %struct.TYPE_10__* null, align 8
@cpu_data_ptr = common dso_local global %struct.TYPE_10__** null, align 8
@scdtables = common dso_local global i32* null, align 8
@scfstks = common dso_local global %struct.TYPE_11__* null, align 8
@FSTK_SZ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@master_ktss64 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@MSR_IA32_GS_BASE = common dso_local global i32 0, align 4
@MSR_IA32_KERNEL_GS_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"Reallocated master cpu data: %p, interrupt stack: %p, fault stack: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_data_realloc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = load i32, i32* @kernel_map, align 4
  %8 = load i64, i64* @INTSTACK_SIZE, align 8
  %9 = load i32, i32* @VM_KERN_MEMORY_CPU, align 4
  %10 = call i32 @kmem_alloc(i32 %7, i64* %2, i64 %8, i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @KERN_SUCCESS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %0
  %18 = load i64, i64* %2, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load i64, i64* @INTSTACK_SIZE, align 8
  %21 = call i32 @bzero(i8* %19, i64 %20)
  %22 = load i64, i64* @INTSTACK_SIZE, align 8
  %23 = load i64, i64* %2, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %2, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @scdatas, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 0
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %3, align 8
  %27 = call i64 (...) @cpu_number()
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @cpu_data_ptr, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %31, i64 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = bitcast %struct.TYPE_10__* %33 to i8*
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = bitcast %struct.TYPE_10__* %35 to i8*
  %37 = call i32 @bcopy(i8* %34, i8* %36, i32 40)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %40, align 8
  %41 = load i64, i64* %2, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = call i32 @timer_call_queue_init(i32* %46)
  %48 = load i32*, i32** @scdtables, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = bitcast i32* %49 to %struct.cpu_desc_table*
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  store %struct.cpu_desc_table* %50, %struct.cpu_desc_table** %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.cpu_desc_table*, %struct.cpu_desc_table** %54, align 8
  %56 = bitcast %struct.cpu_desc_table* %55 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %5, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scfstks, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  %68 = load i32, i32* @FSTK_SZ, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %6, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i32 @ml_set_interrupts_enabled(i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @cpu_data_ptr, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %75, i64 0
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %76, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = ptrtoint i32* %77 to i64
  %79 = call i8* @DBLMAP(i64 %78)
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @master_ktss64, i32 0, i32 1), align 8
  %80 = load i32*, i32** %6, align 8
  %81 = ptrtoint i32* %80 to i64
  %82 = sub i64 %81, 4
  %83 = call i8* @DBLMAP(i64 %82)
  store i8* %83, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @master_ktss64, i32 0, i32 0), align 8
  %84 = load i32, i32* @MSR_IA32_GS_BASE, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = ptrtoint %struct.TYPE_10__* %85 to i64
  %87 = call i32 @wrmsr64(i32 %84, i64 %86)
  %88 = load i32, i32* @MSR_IA32_KERNEL_GS_BASE, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = ptrtoint %struct.TYPE_10__* %89 to i64
  %91 = call i32 @wrmsr64(i32 %88, i64 %90)
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @ml_set_interrupts_enabled(i32 %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = bitcast %struct.TYPE_10__* %94 to i8*
  %96 = load i64, i64* %2, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load i32*, i32** %6, align 8
  %99 = bitcast i32* %98 to i8*
  %100 = call i32 @kprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %95, i8* %97, i8* %99)
  ret void
}

declare dso_local i32 @kmem_alloc(i32, i64*, i64, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @cpu_number(...) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @timer_call_queue_init(i32*) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i8* @DBLMAP(i64) #1

declare dso_local i32 @wrmsr64(i32, i64) #1

declare dso_local i32 @kprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
