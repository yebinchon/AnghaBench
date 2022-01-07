; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_memr.c_memr_realloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_memr.c_memr_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i32, i32, i64 }

@MEM_ALIGNMENT = common dso_local global i32 0, align 4
@SIZEOF_STRUCT_MEM = common dso_local global i32 0, align 4
@UIP_MEM_SIZE = common dso_local global i32 0, align 4
@ram_block = common dso_local global i32* null, align 8
@ram_end = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"memr_realloc: illegal memory.\0A\00", align 1
@MIN_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memr_realloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mem*, align 8
  %10 = alloca %struct.mem*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MEM_ALIGNMENT, align 4
  %13 = srem i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @MEM_ALIGNMENT, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* @MEM_ALIGNMENT, align 4
  %21 = srem i32 %19, %20
  %22 = sub nsw i32 %16, %21
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %15, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @UIP_MEM_SIZE, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %118

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32*, i32** @ram_block, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i64, i64* @ram_end, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = icmp uge i32* %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %30
  %42 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %43 = load i8*, i8** %4, align 8
  store i8* %43, i8** %3, align 8
  br label %118

44:                                               ; preds = %35
  %45 = load i8*, i8** %4, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = bitcast i32* %50 to %struct.mem*
  store %struct.mem* %51, %struct.mem** %9, align 8
  %52 = load %struct.mem*, %struct.mem** %9, align 8
  %53 = bitcast %struct.mem* %52 to i32*
  %54 = load i32*, i32** @ram_block, align 8
  %55 = ptrtoint i32* %53 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  %60 = load %struct.mem*, %struct.mem** %9, align 8
  %61 = getelementptr inbounds %struct.mem, %struct.mem* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* @MIN_SIZE, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %116

74:                                               ; preds = %44
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @SIZEOF_STRUCT_MEM, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %8, align 4
  %80 = load i32*, i32** @ram_block, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = bitcast i32* %83 to %struct.mem*
  store %struct.mem* %84, %struct.mem** %10, align 8
  %85 = load %struct.mem*, %struct.mem** %10, align 8
  %86 = getelementptr inbounds %struct.mem, %struct.mem* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.mem*, %struct.mem** %9, align 8
  %88 = getelementptr inbounds %struct.mem, %struct.mem* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.mem*, %struct.mem** %10, align 8
  %91 = getelementptr inbounds %struct.mem, %struct.mem* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.mem*, %struct.mem** %10, align 8
  %94 = getelementptr inbounds %struct.mem, %struct.mem* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.mem*, %struct.mem** %9, align 8
  %97 = getelementptr inbounds %struct.mem, %struct.mem* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.mem*, %struct.mem** %10, align 8
  %99 = getelementptr inbounds %struct.mem, %struct.mem* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @UIP_MEM_SIZE, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %74
  %104 = load i32, i32* %8, align 4
  %105 = load i32*, i32** @ram_block, align 8
  %106 = load %struct.mem*, %struct.mem** %10, align 8
  %107 = getelementptr inbounds %struct.mem, %struct.mem* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = bitcast i32* %110 to %struct.mem*
  %112 = getelementptr inbounds %struct.mem, %struct.mem* %111, i32 0, i32 1
  store i32 %104, i32* %112, align 4
  br label %113

113:                                              ; preds = %103, %74
  %114 = load %struct.mem*, %struct.mem** %10, align 8
  %115 = call i32 @plug_holes(%struct.mem* %114)
  br label %116

116:                                              ; preds = %113, %44
  %117 = load i8*, i8** %4, align 8
  store i8* %117, i8** %3, align 8
  br label %118

118:                                              ; preds = %116, %41, %29
  %119 = load i8*, i8** %3, align 8
  ret i8* %119
}

declare dso_local i32 @UIP_ERROR(i8*) #1

declare dso_local i32 @plug_holes(%struct.mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
