; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_mem.c_mem_realloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_mem.c_mem_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mem = type { i64, i64, i64 }

@MEM_ALIGNMENT = common dso_local global i64 0, align 8
@SIZEOF_STRUCT_MEM = common dso_local global i32 0, align 4
@MEM_SIZE = common dso_local global i64 0, align 8
@mem_sem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mem_realloc: legal memory\00", align 1
@ram = common dso_local global i32* null, align 8
@ram_end = common dso_local global i64 0, align 8
@MEM_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"mem_realloc: illegal memory\0A\00", align 1
@MIN_SIZE = common dso_local global i64 0, align 8
@lwip_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mem_realloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mem*, align 8
  %10 = alloca %struct.mem*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @MEM_ALIGNMENT, align 8
  %13 = srem i64 %11, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load i64, i64* @MEM_ALIGNMENT, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i64, i64* @MEM_ALIGNMENT, align 8
  %22 = srem i64 %20, %21
  %23 = sub nsw i64 %16, %22
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %15, %2
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @MEM_SIZE, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  br label %139

31:                                               ; preds = %26
  %32 = load i32, i32* @mem_sem, align 4
  %33 = call i32 @LWP_SemWait(i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32*, i32** @ram, align 8
  %37 = icmp uge i32* %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i8*, i8** %4, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i64, i64* @ram_end, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = icmp ult i32* %40, %42
  br label %44

44:                                               ; preds = %38, %31
  %45 = phi i1 [ false, %31 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32*, i32** @ram, align 8
  %51 = icmp ult i32* %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %44
  %53 = load i8*, i8** %4, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = load i64, i64* @ram_end, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = icmp uge i32* %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52, %44
  %59 = load i32, i32* @MEM_DEBUG, align 4
  %60 = or i32 %59, 3
  %61 = call i32 @LWIP_DEBUGF(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i8*, i8** %4, align 8
  store i8* %62, i8** %3, align 8
  br label %139

63:                                               ; preds = %52
  %64 = load i8*, i8** %4, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 0, %67
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = bitcast i32* %69 to %struct.mem*
  store %struct.mem* %70, %struct.mem** %9, align 8
  %71 = load %struct.mem*, %struct.mem** %9, align 8
  %72 = bitcast %struct.mem* %71 to i32*
  %73 = load i32*, i32** @ram, align 8
  %74 = ptrtoint i32* %72 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  store i64 %77, i64* %7, align 8
  %78 = load %struct.mem*, %struct.mem** %9, align 8
  %79 = getelementptr inbounds %struct.mem, %struct.mem* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = sub nsw i64 %80, %81
  %83 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %82, %84
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load i64, i64* @MIN_SIZE, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* %6, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %135

94:                                               ; preds = %63
  %95 = load i64, i64* %7, align 8
  %96 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = load i64, i64* %5, align 8
  %100 = add nsw i64 %98, %99
  store i64 %100, i64* %8, align 8
  %101 = load i32*, i32** @ram, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = bitcast i32* %103 to %struct.mem*
  store %struct.mem* %104, %struct.mem** %10, align 8
  %105 = load %struct.mem*, %struct.mem** %10, align 8
  %106 = getelementptr inbounds %struct.mem, %struct.mem* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.mem*, %struct.mem** %9, align 8
  %108 = getelementptr inbounds %struct.mem, %struct.mem* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.mem*, %struct.mem** %10, align 8
  %111 = getelementptr inbounds %struct.mem, %struct.mem* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.mem*, %struct.mem** %10, align 8
  %114 = getelementptr inbounds %struct.mem, %struct.mem* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.mem*, %struct.mem** %9, align 8
  %117 = getelementptr inbounds %struct.mem, %struct.mem* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.mem*, %struct.mem** %10, align 8
  %119 = getelementptr inbounds %struct.mem, %struct.mem* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MEM_SIZE, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %94
  %124 = load i64, i64* %8, align 8
  %125 = load i32*, i32** @ram, align 8
  %126 = load %struct.mem*, %struct.mem** %10, align 8
  %127 = getelementptr inbounds %struct.mem, %struct.mem* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = bitcast i32* %129 to %struct.mem*
  %131 = getelementptr inbounds %struct.mem, %struct.mem* %130, i32 0, i32 1
  store i64 %124, i64* %131, align 8
  br label %132

132:                                              ; preds = %123, %94
  %133 = load %struct.mem*, %struct.mem** %10, align 8
  %134 = call i32 @plug_holes(%struct.mem* %133)
  br label %135

135:                                              ; preds = %132, %63
  %136 = load i32, i32* @mem_sem, align 4
  %137 = call i32 @LWP_SemPost(i32 %136)
  %138 = load i8*, i8** %4, align 8
  store i8* %138, i8** %3, align 8
  br label %139

139:                                              ; preds = %135, %58, %30
  %140 = load i8*, i8** %3, align 8
  ret i8* %140
}

declare dso_local i32 @LWP_SemWait(i32) #1

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @plug_holes(%struct.mem*) #1

declare dso_local i32 @LWP_SemPost(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
