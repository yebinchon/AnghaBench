; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btmemr.c_btmemr_realloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btmemr.c_btmemr_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i32, i32, i64 }

@MEM_ALIGNMENT = common dso_local global i32 0, align 4
@SIZEOF_STRUCT_MEM = common dso_local global i32 0, align 4
@MEM_SIZE = common dso_local global i32 0, align 4
@ram_block = common dso_local global i32* null, align 8
@ram_end = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"memr_realloc: illegal memory.\0A\00", align 1
@MIN_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @btmemr_realloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mem*, align 8
  %11 = alloca %struct.mem*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MEM_ALIGNMENT, align 4
  %14 = srem i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* @MEM_ALIGNMENT, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* @MEM_ALIGNMENT, align 4
  %22 = srem i32 %20, %21
  %23 = sub nsw i32 %17, %22
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %16, %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MEM_SIZE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  br label %123

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32*, i32** @ram_block, align 8
  %35 = icmp ult i32* %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i64, i64* @ram_end, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = icmp uge i32* %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %31
  %43 = call i32 @ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %4, align 8
  store i8* %44, i8** %3, align 8
  br label %123

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @_CPU_ISR_Disable(i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = bitcast i32* %53 to %struct.mem*
  store %struct.mem* %54, %struct.mem** %10, align 8
  %55 = load %struct.mem*, %struct.mem** %10, align 8
  %56 = bitcast %struct.mem* %55 to i32*
  %57 = load i32*, i32** @ram_block, align 8
  %58 = ptrtoint i32* %56 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  %63 = load %struct.mem*, %struct.mem** %10, align 8
  %64 = getelementptr inbounds %struct.mem, %struct.mem* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* @MIN_SIZE, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %119

77:                                               ; preds = %45
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %9, align 4
  %83 = load i32*, i32** @ram_block, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = bitcast i32* %86 to %struct.mem*
  store %struct.mem* %87, %struct.mem** %11, align 8
  %88 = load %struct.mem*, %struct.mem** %11, align 8
  %89 = getelementptr inbounds %struct.mem, %struct.mem* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.mem*, %struct.mem** %10, align 8
  %91 = getelementptr inbounds %struct.mem, %struct.mem* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mem*, %struct.mem** %11, align 8
  %94 = getelementptr inbounds %struct.mem, %struct.mem* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.mem*, %struct.mem** %11, align 8
  %97 = getelementptr inbounds %struct.mem, %struct.mem* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.mem*, %struct.mem** %10, align 8
  %100 = getelementptr inbounds %struct.mem, %struct.mem* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.mem*, %struct.mem** %11, align 8
  %102 = getelementptr inbounds %struct.mem, %struct.mem* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MEM_SIZE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %77
  %107 = load i32, i32* %9, align 4
  %108 = load i32*, i32** @ram_block, align 8
  %109 = load %struct.mem*, %struct.mem** %11, align 8
  %110 = getelementptr inbounds %struct.mem, %struct.mem* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = bitcast i32* %113 to %struct.mem*
  %115 = getelementptr inbounds %struct.mem, %struct.mem* %114, i32 0, i32 1
  store i32 %107, i32* %115, align 4
  br label %116

116:                                              ; preds = %106, %77
  %117 = load %struct.mem*, %struct.mem** %11, align 8
  %118 = call i32 @plug_holes(%struct.mem* %117)
  br label %119

119:                                              ; preds = %116, %45
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @_CPU_ISR_Restore(i32 %120)
  %122 = load i8*, i8** %4, align 8
  store i8* %122, i8** %3, align 8
  br label %123

123:                                              ; preds = %119, %42, %30
  %124 = load i8*, i8** %3, align 8
  ret i8* %124
}

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @plug_holes(%struct.mem*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
