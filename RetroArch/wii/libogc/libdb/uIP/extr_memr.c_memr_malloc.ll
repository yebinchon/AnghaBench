; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_memr.c_memr_malloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_memr.c_memr_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i64, i32, i64 }

@MEM_ALIGNMENT = common dso_local global i64 0, align 8
@SIZEOF_STRUCT_MEM = common dso_local global i64 0, align 8
@UIP_MEM_SIZE = common dso_local global i64 0, align 8
@ram_free = common dso_local global %struct.mem* null, align 8
@ram_block = common dso_local global i8* null, align 8
@ram_end = common dso_local global %struct.mem* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memr_malloc(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mem*, align 8
  %7 = alloca %struct.mem*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %140

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @MEM_ALIGNMENT, align 8
  %14 = srem i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i64, i64* @MEM_ALIGNMENT, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @SIZEOF_STRUCT_MEM, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* @SIZEOF_STRUCT_MEM, align 8
  %22 = srem i64 %20, %21
  %23 = sub nsw i64 %17, %22
  %24 = load i64, i64* %3, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %16, %11
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @UIP_MEM_SIZE, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  br label %140

31:                                               ; preds = %26
  %32 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %33 = bitcast %struct.mem* %32 to i8*
  %34 = load i8*, i8** @ram_block, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %132, %31
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @UIP_MEM_SIZE, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %139

42:                                               ; preds = %38
  %43 = load i8*, i8** @ram_block, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = bitcast i8* %45 to %struct.mem*
  store %struct.mem* %46, %struct.mem** %6, align 8
  %47 = load %struct.mem*, %struct.mem** %6, align 8
  %48 = getelementptr inbounds %struct.mem, %struct.mem* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %131, label %51

51:                                               ; preds = %42
  %52 = load %struct.mem*, %struct.mem** %6, align 8
  %53 = getelementptr inbounds %struct.mem, %struct.mem* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @SIZEOF_STRUCT_MEM, align 8
  %57 = add nsw i64 %55, %56
  %58 = sub nsw i64 %54, %57
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* @SIZEOF_STRUCT_MEM, align 8
  %61 = add nsw i64 %59, %60
  %62 = icmp sge i64 %58, %61
  br i1 %62, label %63, label %131

63:                                               ; preds = %51
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @SIZEOF_STRUCT_MEM, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* %3, align 8
  %68 = add nsw i64 %66, %67
  store i64 %68, i64* %5, align 8
  %69 = load i8*, i8** @ram_block, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = bitcast i8* %71 to %struct.mem*
  store %struct.mem* %72, %struct.mem** %7, align 8
  %73 = load i64, i64* %4, align 8
  %74 = load %struct.mem*, %struct.mem** %7, align 8
  %75 = getelementptr inbounds %struct.mem, %struct.mem* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.mem*, %struct.mem** %6, align 8
  %77 = getelementptr inbounds %struct.mem, %struct.mem* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.mem*, %struct.mem** %7, align 8
  %80 = getelementptr inbounds %struct.mem, %struct.mem* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.mem*, %struct.mem** %6, align 8
  %83 = getelementptr inbounds %struct.mem, %struct.mem* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.mem*, %struct.mem** %6, align 8
  %85 = getelementptr inbounds %struct.mem, %struct.mem* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @UIP_MEM_SIZE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %63
  %90 = load i64, i64* %5, align 8
  %91 = load i8*, i8** @ram_block, align 8
  %92 = load %struct.mem*, %struct.mem** %7, align 8
  %93 = getelementptr inbounds %struct.mem, %struct.mem* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = bitcast i8* %95 to %struct.mem*
  %97 = getelementptr inbounds %struct.mem, %struct.mem* %96, i32 0, i32 2
  store i64 %90, i64* %97, align 8
  br label %98

98:                                               ; preds = %89, %63
  %99 = load %struct.mem*, %struct.mem** %7, align 8
  %100 = getelementptr inbounds %struct.mem, %struct.mem* %99, i32 0, i32 1
  store i32 0, i32* %100, align 8
  %101 = load %struct.mem*, %struct.mem** %6, align 8
  %102 = getelementptr inbounds %struct.mem, %struct.mem* %101, i32 0, i32 1
  store i32 1, i32* %102, align 8
  %103 = load %struct.mem*, %struct.mem** %6, align 8
  %104 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %105 = icmp eq %struct.mem* %103, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %118, %106
  %108 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %109 = getelementptr inbounds %struct.mem, %struct.mem* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %114 = load %struct.mem*, %struct.mem** @ram_end, align 8
  %115 = icmp ne %struct.mem* %113, %114
  br label %116

116:                                              ; preds = %112, %107
  %117 = phi i1 [ false, %107 ], [ %115, %112 ]
  br i1 %117, label %118, label %125

118:                                              ; preds = %116
  %119 = load i8*, i8** @ram_block, align 8
  %120 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %121 = getelementptr inbounds %struct.mem, %struct.mem* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = bitcast i8* %123 to %struct.mem*
  store %struct.mem* %124, %struct.mem** @ram_free, align 8
  br label %107

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %98
  %127 = load %struct.mem*, %struct.mem** %6, align 8
  %128 = bitcast %struct.mem* %127 to i8*
  %129 = load i64, i64* @SIZEOF_STRUCT_MEM, align 8
  %130 = getelementptr i8, i8* %128, i64 %129
  store i8* %130, i8** %2, align 8
  br label %140

131:                                              ; preds = %51, %42
  br label %132

132:                                              ; preds = %131
  %133 = load i8*, i8** @ram_block, align 8
  %134 = load i64, i64* %4, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = bitcast i8* %135 to %struct.mem*
  %137 = getelementptr inbounds %struct.mem, %struct.mem* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %4, align 8
  br label %38

139:                                              ; preds = %38
  store i8* null, i8** %2, align 8
  br label %140

140:                                              ; preds = %139, %126, %30, %10
  %141 = load i8*, i8** %2, align 8
  ret i8* %141
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
