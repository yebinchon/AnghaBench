; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/extr_mem.c_mem_free.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/extr_mem.c_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i32, i64 }

@MEM_DEBUG = common dso_local global i32 0, align 4
@LWIP_DBG_TRACE = common dso_local global i32 0, align 4
@LWIP_DBG_LEVEL_SERIOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"mem_free(p == NULL) was called.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"mem_free: sanity check alignment\00", align 1
@MEM_ALIGNMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"mem_free: legal memory\00", align 1
@ram = common dso_local global i32* null, align 8
@ram_end = common dso_local global i64 0, align 8
@lev = common dso_local global i32 0, align 4
@LWIP_DBG_LEVEL_SEVERE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"mem_free: illegal memory\0A\00", align 1
@illegal = common dso_local global i32 0, align 4
@SIZEOF_STRUCT_MEM = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"mem_free: mem->used\00", align 1
@lfree = common dso_local global %struct.mem* null, align 8
@used = common dso_local global i32 0, align 4
@mem_free_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mem*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @LWIP_MEM_FREE_DECL_PROTECT()
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @MEM_DEBUG, align 4
  %9 = load i32, i32* @LWIP_DBG_TRACE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @LWIP_DBG_LEVEL_SERIOUS, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @LWIP_DEBUGF(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %99

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = load i32, i32* @MEM_ALIGNMENT, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i8*, i8** %2, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i32*, i32** @ram, align 8
  %26 = icmp uge i32* %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = load i8*, i8** %2, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i64, i64* @ram_end, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = icmp ult i32* %29, %31
  br label %33

33:                                               ; preds = %27, %14
  %34 = phi i1 [ false, %14 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i8*, i8** %2, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i32*, i32** @ram, align 8
  %40 = icmp ult i32* %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = load i8*, i8** %2, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i64, i64* @ram_end, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = icmp uge i32* %43, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41, %33
  %48 = load i32, i32* @lev, align 4
  %49 = call i32 @SYS_ARCH_DECL_PROTECT(i32 %48)
  %50 = load i32, i32* @MEM_DEBUG, align 4
  %51 = load i32, i32* @LWIP_DBG_LEVEL_SEVERE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @LWIP_DEBUGF(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @lev, align 4
  %55 = call i32 @SYS_ARCH_PROTECT(i32 %54)
  %56 = load i32, i32* @illegal, align 4
  %57 = call i32 @MEM_STATS_INC(i32 %56)
  %58 = load i32, i32* @lev, align 4
  %59 = call i32 @SYS_ARCH_UNPROTECT(i32 %58)
  br label %99

60:                                               ; preds = %41
  %61 = call i32 (...) @LWIP_MEM_FREE_PROTECT()
  %62 = load i8*, i8** %2, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i32*, i32** @SIZEOF_STRUCT_MEM, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = inttoptr i64 %68 to i8*
  %70 = bitcast i8* %69 to %struct.mem*
  store %struct.mem* %70, %struct.mem** %3, align 8
  %71 = load %struct.mem*, %struct.mem** %3, align 8
  %72 = getelementptr inbounds %struct.mem, %struct.mem* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load %struct.mem*, %struct.mem** %3, align 8
  %76 = getelementptr inbounds %struct.mem, %struct.mem* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.mem*, %struct.mem** %3, align 8
  %78 = load %struct.mem*, %struct.mem** @lfree, align 8
  %79 = icmp ult %struct.mem* %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %60
  %81 = load %struct.mem*, %struct.mem** %3, align 8
  store %struct.mem* %81, %struct.mem** @lfree, align 8
  br label %82

82:                                               ; preds = %80, %60
  %83 = load i32, i32* @used, align 4
  %84 = load %struct.mem*, %struct.mem** %3, align 8
  %85 = getelementptr inbounds %struct.mem, %struct.mem* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.mem*, %struct.mem** %3, align 8
  %88 = bitcast %struct.mem* %87 to i32*
  %89 = load i32*, i32** @ram, align 8
  %90 = ptrtoint i32* %88 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = sub nsw i64 %86, %93
  %95 = call i32 @MEM_STATS_DEC_USED(i32 %83, i64 %94)
  %96 = load %struct.mem*, %struct.mem** %3, align 8
  %97 = call i32 @plug_holes(%struct.mem* %96)
  %98 = call i32 (...) @LWIP_MEM_FREE_UNPROTECT()
  br label %99

99:                                               ; preds = %82, %47, %7
  ret void
}

declare dso_local i32 @LWIP_MEM_FREE_DECL_PROTECT(...) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @SYS_ARCH_DECL_PROTECT(i32) #1

declare dso_local i32 @SYS_ARCH_PROTECT(i32) #1

declare dso_local i32 @MEM_STATS_INC(i32) #1

declare dso_local i32 @SYS_ARCH_UNPROTECT(i32) #1

declare dso_local i32 @LWIP_MEM_FREE_PROTECT(...) #1

declare dso_local i32 @MEM_STATS_DEC_USED(i32, i64) #1

declare dso_local i32 @plug_holes(%struct.mem*) #1

declare dso_local i32 @LWIP_MEM_FREE_UNPROTECT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
