; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_mem.c_plug_holes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_mem.c_plug_holes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i64, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"plug_holes: mem >= ram\00", align 1
@ram = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"plug_holes: mem < ram_end\00", align 1
@ram_end = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"plug_holes: mem->used == 0\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"plug_holes: mem->next <= MEM_SIZE\00", align 1
@MEM_SIZE = common dso_local global i64 0, align 8
@lfree = common dso_local global %struct.mem* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem*)* @plug_holes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plug_holes(%struct.mem* %0) #0 {
  %2 = alloca %struct.mem*, align 8
  %3 = alloca %struct.mem*, align 8
  %4 = alloca %struct.mem*, align 8
  store %struct.mem* %0, %struct.mem** %2, align 8
  %5 = load %struct.mem*, %struct.mem** %2, align 8
  %6 = bitcast %struct.mem* %5 to i32*
  %7 = load i32*, i32** @ram, align 8
  %8 = icmp uge i32* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.mem*, %struct.mem** %2, align 8
  %12 = bitcast %struct.mem* %11 to i32*
  %13 = load i64, i64* @ram_end, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = icmp ult i32* %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.mem*, %struct.mem** %2, align 8
  %19 = getelementptr inbounds %struct.mem, %struct.mem* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.mem*, %struct.mem** %2, align 8
  %25 = getelementptr inbounds %struct.mem, %struct.mem* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MEM_SIZE, align 8
  %28 = icmp ule i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** @ram, align 8
  %32 = load %struct.mem*, %struct.mem** %2, align 8
  %33 = getelementptr inbounds %struct.mem, %struct.mem* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = bitcast i32* %35 to %struct.mem*
  store %struct.mem* %36, %struct.mem** %3, align 8
  %37 = load %struct.mem*, %struct.mem** %2, align 8
  %38 = load %struct.mem*, %struct.mem** %3, align 8
  %39 = icmp ne %struct.mem* %37, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %1
  %41 = load %struct.mem*, %struct.mem** %3, align 8
  %42 = getelementptr inbounds %struct.mem, %struct.mem* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %40
  %46 = load %struct.mem*, %struct.mem** %3, align 8
  %47 = bitcast %struct.mem* %46 to i32*
  %48 = load i64, i64* @ram_end, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = icmp ne i32* %47, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %45
  %52 = load %struct.mem*, %struct.mem** @lfree, align 8
  %53 = load %struct.mem*, %struct.mem** %3, align 8
  %54 = icmp eq %struct.mem* %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load %struct.mem*, %struct.mem** %2, align 8
  store %struct.mem* %56, %struct.mem** @lfree, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load %struct.mem*, %struct.mem** %3, align 8
  %59 = getelementptr inbounds %struct.mem, %struct.mem* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.mem*, %struct.mem** %2, align 8
  %62 = getelementptr inbounds %struct.mem, %struct.mem* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.mem*, %struct.mem** %2, align 8
  %64 = bitcast %struct.mem* %63 to i32*
  %65 = load i32*, i32** @ram, align 8
  %66 = ptrtoint i32* %64 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = load i32*, i32** @ram, align 8
  %72 = load %struct.mem*, %struct.mem** %3, align 8
  %73 = getelementptr inbounds %struct.mem, %struct.mem* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = bitcast i32* %75 to %struct.mem*
  %77 = getelementptr inbounds %struct.mem, %struct.mem* %76, i32 0, i32 2
  store i32 %70, i32* %77, align 8
  br label %78

78:                                               ; preds = %57, %45, %40, %1
  %79 = load i32*, i32** @ram, align 8
  %80 = load %struct.mem*, %struct.mem** %2, align 8
  %81 = getelementptr inbounds %struct.mem, %struct.mem* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = bitcast i32* %84 to %struct.mem*
  store %struct.mem* %85, %struct.mem** %4, align 8
  %86 = load %struct.mem*, %struct.mem** %4, align 8
  %87 = load %struct.mem*, %struct.mem** %2, align 8
  %88 = icmp ne %struct.mem* %86, %87
  br i1 %88, label %89, label %121

89:                                               ; preds = %78
  %90 = load %struct.mem*, %struct.mem** %4, align 8
  %91 = getelementptr inbounds %struct.mem, %struct.mem* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %89
  %95 = load %struct.mem*, %struct.mem** @lfree, align 8
  %96 = load %struct.mem*, %struct.mem** %2, align 8
  %97 = icmp eq %struct.mem* %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load %struct.mem*, %struct.mem** %4, align 8
  store %struct.mem* %99, %struct.mem** @lfree, align 8
  br label %100

100:                                              ; preds = %98, %94
  %101 = load %struct.mem*, %struct.mem** %2, align 8
  %102 = getelementptr inbounds %struct.mem, %struct.mem* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.mem*, %struct.mem** %4, align 8
  %105 = getelementptr inbounds %struct.mem, %struct.mem* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.mem*, %struct.mem** %4, align 8
  %107 = bitcast %struct.mem* %106 to i32*
  %108 = load i32*, i32** @ram, align 8
  %109 = ptrtoint i32* %107 to i64
  %110 = ptrtoint i32* %108 to i64
  %111 = sub i64 %109, %110
  %112 = sdiv exact i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = load i32*, i32** @ram, align 8
  %115 = load %struct.mem*, %struct.mem** %2, align 8
  %116 = getelementptr inbounds %struct.mem, %struct.mem* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = bitcast i32* %118 to %struct.mem*
  %120 = getelementptr inbounds %struct.mem, %struct.mem* %119, i32 0, i32 2
  store i32 %113, i32* %120, align 8
  br label %121

121:                                              ; preds = %100, %89, %78
  ret void
}

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
