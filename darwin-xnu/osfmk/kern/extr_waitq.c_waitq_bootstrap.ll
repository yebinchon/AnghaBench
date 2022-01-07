; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_bootstrap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_MIN_FREE_TABLE_ELEM = common dso_local global i32 0, align 4
@g_min_free_table_elem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"wqt_min_free\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Minimum free table elements: %d\00", align 1
@g_num_waitqs = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"allocating %d global queues  (%d bytes)\00", align 1
@kernel_map = common dso_local global i32 0, align 4
@global_waitqs = common dso_local global i32* null, align 8
@KMA_KOBJECT = common dso_local global i32 0, align 4
@KMA_NOPAGEWAIT = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_WAITQ = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [80 x i8] c"kernel_memory_allocate() failed to alloc global_waitqs, error: %d, whsize: 0x%x\00", align 1
@SYNC_POLICY_FIFO = common dso_local global i32 0, align 4
@SYNC_POLICY_DISABLE_IRQ = common dso_local global i32 0, align 4
@WAITQ_SET_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"waitq sets\00", align 1
@waitq_set_zone = common dso_local global i32 0, align 4
@Z_NOENCRYPT = common dso_local global i32 0, align 4
@g_waitq_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waitq_bootstrap() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @DEFAULT_MIN_FREE_TABLE_ELEM, align 4
  store i32 %8, i32* @g_min_free_table_elem, align 4
  %9 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %4, i32 4)
  %10 = load i64, i64* @TRUE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* @g_min_free_table_elem, align 4
  br label %14

14:                                               ; preds = %12, %0
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, i32, ...) @wqdbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = call i32 (...) @waitq_hash_size()
  store i32 %17, i32* %2, align 4
  store i32 4, i32* %3, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ROUNDDOWN(i32 %18, i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* @g_num_waitqs, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %41, %14
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 31
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @g_num_waitqs, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @g_num_waitqs, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %44

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* @g_num_waitqs, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* @g_num_waitqs, align 4
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %24

44:                                               ; preds = %35, %24
  %45 = load i32, i32* @g_num_waitqs, align 4
  %46 = icmp sgt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* @g_num_waitqs, align 4
  %50 = load i32, i32* %3, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = call i32 @P2ROUNDUP(i32 %51, i32 %52)
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* @g_num_waitqs, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 (i8*, i32, ...) @wqdbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* @kernel_map, align 4
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @KMA_KOBJECT, align 4
  %60 = load i32, i32* @KMA_NOPAGEWAIT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @VM_KERN_MEMORY_WAITQ, align 4
  %63 = call i64 @kernel_memory_allocate(i32 %57, i32* bitcast (i32** @global_waitqs to i32*), i32 %58, i32 0, i32 %61, i32 %62)
  store i64 %63, i64* %1, align 8
  %64 = load i64, i64* %1, align 8
  %65 = load i64, i64* @KERN_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %44
  %68 = load i32*, i32** @global_waitqs, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67, %44
  %71 = load i64, i64* %1, align 8
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @panic(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %67
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %88, %74
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @g_num_waitqs, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i32*, i32** @global_waitqs, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* @SYNC_POLICY_FIFO, align 4
  %85 = load i32, i32* @SYNC_POLICY_DISABLE_IRQ, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @waitq_init(i32* %83, i32 %86)
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %75

91:                                               ; preds = %75
  %92 = load i32, i32* @WAITQ_SET_MAX, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = call i32 @zinit(i32 4, i32 %95, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %96, i32* @waitq_set_zone, align 4
  %97 = load i32, i32* @waitq_set_zone, align 4
  %98 = load i32, i32* @Z_NOENCRYPT, align 4
  %99 = load i64, i64* @TRUE, align 8
  %100 = call i32 @zone_change(i32 %97, i32 %98, i64 %99)
  %101 = call i32 (...) @wql_init()
  %102 = call i32 (...) @wqp_init()
  ret void
}

declare dso_local i64 @PE_parse_boot_argn(i8*, i32*, i32) #1

declare dso_local i32 @wqdbg(i8*, i32, ...) #1

declare dso_local i32 @waitq_hash_size(...) #1

declare dso_local i32 @ROUNDDOWN(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local i64 @kernel_memory_allocate(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @panic(i8*, i64, i32) #1

declare dso_local i32 @waitq_init(i32*, i32) #1

declare dso_local i32 @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @zone_change(i32, i32, i64) #1

declare dso_local i32 @wql_init(...) #1

declare dso_local i32 @wqp_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
