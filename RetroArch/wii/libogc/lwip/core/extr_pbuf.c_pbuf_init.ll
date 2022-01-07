; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_pbuf.c_pbuf_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_pbuf.c_pbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32, i32, %struct.pbuf*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@pbuf_pool_memory = common dso_local global i8* null, align 8
@pbuf_pool = common dso_local global %struct.pbuf* null, align 8
@PBUF_POOL_SIZE = common dso_local global i64 0, align 8
@PBUF_POOL_BUFSIZE = common dso_local global i32 0, align 4
@PBUF_FLAG_POOL = common dso_local global i32 0, align 4
@pbuf_pool_alloc_lock = common dso_local global i64 0, align 8
@pbuf_pool_free_lock = common dso_local global i64 0, align 8
@pbuf_pool_free_sem = common dso_local global i32 0, align 4
@lwip_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pbuf_init() #0 {
  %1 = alloca %struct.pbuf*, align 8
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca i64, align 8
  store %struct.pbuf* null, %struct.pbuf** %2, align 8
  %4 = load i8*, i8** @pbuf_pool_memory, align 8
  %5 = call i64 @MEM_ALIGN(i8* %4)
  %6 = inttoptr i64 %5 to %struct.pbuf*
  store %struct.pbuf* %6, %struct.pbuf** @pbuf_pool, align 8
  %7 = load %struct.pbuf*, %struct.pbuf** @pbuf_pool, align 8
  store %struct.pbuf* %7, %struct.pbuf** %1, align 8
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %41, %0
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @PBUF_POOL_SIZE, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  %14 = bitcast %struct.pbuf* %13 to i32*
  %15 = load i32, i32* @PBUF_POOL_BUFSIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = getelementptr inbounds i32, i32* %17, i64 32
  %19 = bitcast i32* %18 to %struct.pbuf*
  %20 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i32 0, i32 2
  store %struct.pbuf* %19, %struct.pbuf** %21, align 8
  %22 = load i32, i32* @PBUF_POOL_BUFSIZE, align 4
  %23 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  %26 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  %28 = bitcast %struct.pbuf* %27 to i32*
  %29 = getelementptr inbounds i32, i32* %28, i64 32
  %30 = bitcast i32* %29 to i8*
  %31 = call i64 @MEM_ALIGN(i8* %30)
  %32 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @PBUF_FLAG_POOL, align 4
  %35 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  %36 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  store %struct.pbuf* %37, %struct.pbuf** %2, align 8
  %38 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %38, i32 0, i32 2
  %40 = load %struct.pbuf*, %struct.pbuf** %39, align 8
  store %struct.pbuf* %40, %struct.pbuf** %1, align 8
  br label %41

41:                                               ; preds = %12
  %42 = load i64, i64* %3, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %8

44:                                               ; preds = %8
  %45 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %46 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %45, i32 0, i32 2
  store %struct.pbuf* null, %struct.pbuf** %46, align 8
  store i64 0, i64* @pbuf_pool_alloc_lock, align 8
  store i64 0, i64* @pbuf_pool_free_lock, align 8
  %47 = call i32 @LWP_SemInit(i32* @pbuf_pool_free_sem, i32 1, i32 1)
  ret void
}

declare dso_local i64 @MEM_ALIGN(i8*) #1

declare dso_local i32 @LWP_SemInit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
