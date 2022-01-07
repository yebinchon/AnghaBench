; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/extr_mem.c_mem_init.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/extr_mem.c_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i64, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Sanity check alignment\00", align 1
@SIZEOF_STRUCT_MEM = common dso_local global i32 0, align 4
@MEM_ALIGNMENT = common dso_local global i32 0, align 4
@LWIP_RAM_HEAP_POINTER = common dso_local global i32 0, align 4
@ram = common dso_local global i32* null, align 8
@MEM_SIZE_ALIGNED = common dso_local global i64 0, align 8
@ram_end = common dso_local global %struct.mem* null, align 8
@lfree = common dso_local global %struct.mem* null, align 8
@avail = common dso_local global i32 0, align 4
@mem_mutex = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to create mem_mutex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_init() #0 {
  %1 = alloca %struct.mem*, align 8
  %2 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %3 = load i32, i32* @MEM_ALIGNMENT, align 4
  %4 = sub nsw i32 %3, 1
  %5 = and i32 %2, %4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @LWIP_RAM_HEAP_POINTER, align 4
  %10 = call i64 @LWIP_MEM_ALIGN(i32 %9)
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** @ram, align 8
  %12 = load i32*, i32** @ram, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.mem*
  store %struct.mem* %14, %struct.mem** %1, align 8
  %15 = load i64, i64* @MEM_SIZE_ALIGNED, align 8
  %16 = load %struct.mem*, %struct.mem** %1, align 8
  %17 = getelementptr inbounds %struct.mem, %struct.mem* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.mem*, %struct.mem** %1, align 8
  %19 = getelementptr inbounds %struct.mem, %struct.mem* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.mem*, %struct.mem** %1, align 8
  %21 = getelementptr inbounds %struct.mem, %struct.mem* %20, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = load i32*, i32** @ram, align 8
  %23 = load i64, i64* @MEM_SIZE_ALIGNED, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = bitcast i32* %24 to i8*
  %26 = bitcast i8* %25 to %struct.mem*
  store %struct.mem* %26, %struct.mem** @ram_end, align 8
  %27 = load %struct.mem*, %struct.mem** @ram_end, align 8
  %28 = getelementptr inbounds %struct.mem, %struct.mem* %27, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = load i64, i64* @MEM_SIZE_ALIGNED, align 8
  %30 = load %struct.mem*, %struct.mem** @ram_end, align 8
  %31 = getelementptr inbounds %struct.mem, %struct.mem* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* @MEM_SIZE_ALIGNED, align 8
  %33 = load %struct.mem*, %struct.mem** @ram_end, align 8
  %34 = getelementptr inbounds %struct.mem, %struct.mem* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32*, i32** @ram, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = bitcast i8* %36 to %struct.mem*
  store %struct.mem* %37, %struct.mem** @lfree, align 8
  %38 = load i32, i32* @avail, align 4
  %39 = load i64, i64* @MEM_SIZE_ALIGNED, align 8
  %40 = call i32 @MEM_STATS_AVAIL(i32 %38, i64 %39)
  %41 = call i64 @sys_mutex_new(i32* @mem_mutex)
  %42 = load i64, i64* @ERR_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %0
  %45 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %46

46:                                               ; preds = %44, %0
  ret void
}

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i64 @LWIP_MEM_ALIGN(i32) #1

declare dso_local i32 @MEM_STATS_AVAIL(i32, i64) #1

declare dso_local i64 @sys_mutex_new(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
