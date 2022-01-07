; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_mem.c_mem_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_mem.c_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MEM_DEBUG = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"mem_free(p == NULL) was called.\0A\00", align 1
@mem_sem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"mem_free: legal memory\00", align 1
@ram = common dso_local global i32* null, align 8
@ram_end = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"mem_free: illegal memory\0A\00", align 1
@SIZEOF_STRUCT_MEM = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"mem_free: mem->used\00", align 1
@lfree = common dso_local global %struct.mem* null, align 8
@lwip_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mem*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* @MEM_DEBUG, align 4
  %8 = load i32, i32* @DBG_TRACE, align 4
  %9 = or i32 %7, %8
  %10 = or i32 %9, 2
  %11 = call i32 @LWIP_DEBUGF(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %70

12:                                               ; preds = %1
  %13 = load i32, i32* @mem_sem, align 4
  %14 = call i32 @LWP_SemWait(i32 %13)
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32*, i32** @ram, align 8
  %18 = icmp uge i32* %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load i8*, i8** %2, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i64, i64* @ram_end, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = icmp ult i32* %21, %23
  br label %25

25:                                               ; preds = %19, %12
  %26 = phi i1 [ false, %12 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i8*, i8** %2, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32*, i32** @ram, align 8
  %32 = icmp ult i32* %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %25
  %34 = load i8*, i8** %2, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i64, i64* @ram_end, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = icmp uge i32* %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33, %25
  %40 = load i32, i32* @MEM_DEBUG, align 4
  %41 = or i32 %40, 3
  %42 = call i32 @LWIP_DEBUGF(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @mem_sem, align 4
  %44 = call i32 @LWP_SemPost(i32 %43)
  br label %70

45:                                               ; preds = %33
  %46 = load i8*, i8** %2, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i32*, i32** @SIZEOF_STRUCT_MEM, align 8
  %49 = ptrtoint i32* %47 to i64
  %50 = ptrtoint i32* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 4
  %53 = inttoptr i64 %52 to %struct.mem*
  store %struct.mem* %53, %struct.mem** %3, align 8
  %54 = load %struct.mem*, %struct.mem** %3, align 8
  %55 = getelementptr inbounds %struct.mem, %struct.mem* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load %struct.mem*, %struct.mem** %3, align 8
  %59 = getelementptr inbounds %struct.mem, %struct.mem* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  %60 = load %struct.mem*, %struct.mem** %3, align 8
  %61 = load %struct.mem*, %struct.mem** @lfree, align 8
  %62 = icmp ult %struct.mem* %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %45
  %64 = load %struct.mem*, %struct.mem** %3, align 8
  store %struct.mem* %64, %struct.mem** @lfree, align 8
  br label %65

65:                                               ; preds = %63, %45
  %66 = load %struct.mem*, %struct.mem** %3, align 8
  %67 = call i32 @plug_holes(%struct.mem* %66)
  %68 = load i32, i32* @mem_sem, align 4
  %69 = call i32 @LWP_SemPost(i32 %68)
  br label %70

70:                                               ; preds = %65, %39, %6
  ret void
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @LWP_SemWait(i32) #1

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @LWP_SemPost(i32) #1

declare dso_local i32 @plug_holes(%struct.mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
