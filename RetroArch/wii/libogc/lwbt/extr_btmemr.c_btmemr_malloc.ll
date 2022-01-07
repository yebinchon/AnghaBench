; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btmemr.c_btmemr_malloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btmemr.c_btmemr_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i64, i32, i64 }

@MEM_ALIGNMENT = common dso_local global i64 0, align 8
@SIZEOF_STRUCT_MEM = common dso_local global i64 0, align 8
@MEM_SIZE = common dso_local global i64 0, align 8
@ram_free = common dso_local global %struct.mem* null, align 8
@ram_block = common dso_local global i8* null, align 8
@ram_end = common dso_local global %struct.mem* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @btmemr_malloc(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mem*, align 8
  %8 = alloca %struct.mem*, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %147

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @MEM_ALIGNMENT, align 8
  %15 = srem i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i64, i64* @MEM_ALIGNMENT, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @SIZEOF_STRUCT_MEM, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* @SIZEOF_STRUCT_MEM, align 8
  %23 = srem i64 %21, %22
  %24 = sub nsw i64 %18, %23
  %25 = load i64, i64* %3, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %17, %12
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @MEM_SIZE, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i8* null, i8** %2, align 8
  br label %147

32:                                               ; preds = %27
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @_CPU_ISR_Disable(i64 %33)
  %35 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %36 = bitcast %struct.mem* %35 to i8*
  %37 = load i8*, i8** @ram_block, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %137, %32
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @MEM_SIZE, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %144

45:                                               ; preds = %41
  %46 = load i8*, i8** @ram_block, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = bitcast i8* %48 to %struct.mem*
  store %struct.mem* %49, %struct.mem** %7, align 8
  %50 = load %struct.mem*, %struct.mem** %7, align 8
  %51 = getelementptr inbounds %struct.mem, %struct.mem* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %136, label %54

54:                                               ; preds = %45
  %55 = load %struct.mem*, %struct.mem** %7, align 8
  %56 = getelementptr inbounds %struct.mem, %struct.mem* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @SIZEOF_STRUCT_MEM, align 8
  %60 = add nsw i64 %58, %59
  %61 = sub nsw i64 %57, %60
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @SIZEOF_STRUCT_MEM, align 8
  %64 = add nsw i64 %62, %63
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %136

66:                                               ; preds = %54
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @SIZEOF_STRUCT_MEM, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i64, i64* %3, align 8
  %71 = add nsw i64 %69, %70
  store i64 %71, i64* %6, align 8
  %72 = load i8*, i8** @ram_block, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = bitcast i8* %74 to %struct.mem*
  store %struct.mem* %75, %struct.mem** %8, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.mem*, %struct.mem** %8, align 8
  %78 = getelementptr inbounds %struct.mem, %struct.mem* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.mem*, %struct.mem** %7, align 8
  %80 = getelementptr inbounds %struct.mem, %struct.mem* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.mem*, %struct.mem** %8, align 8
  %83 = getelementptr inbounds %struct.mem, %struct.mem* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.mem*, %struct.mem** %7, align 8
  %86 = getelementptr inbounds %struct.mem, %struct.mem* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.mem*, %struct.mem** %7, align 8
  %88 = getelementptr inbounds %struct.mem, %struct.mem* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MEM_SIZE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %66
  %93 = load i64, i64* %6, align 8
  %94 = load i8*, i8** @ram_block, align 8
  %95 = load %struct.mem*, %struct.mem** %8, align 8
  %96 = getelementptr inbounds %struct.mem, %struct.mem* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = bitcast i8* %98 to %struct.mem*
  %100 = getelementptr inbounds %struct.mem, %struct.mem* %99, i32 0, i32 2
  store i64 %93, i64* %100, align 8
  br label %101

101:                                              ; preds = %92, %66
  %102 = load %struct.mem*, %struct.mem** %8, align 8
  %103 = getelementptr inbounds %struct.mem, %struct.mem* %102, i32 0, i32 1
  store i32 0, i32* %103, align 8
  %104 = load %struct.mem*, %struct.mem** %7, align 8
  %105 = getelementptr inbounds %struct.mem, %struct.mem* %104, i32 0, i32 1
  store i32 1, i32* %105, align 8
  %106 = load %struct.mem*, %struct.mem** %7, align 8
  %107 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %108 = icmp eq %struct.mem* %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %121, %109
  %111 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %112 = getelementptr inbounds %struct.mem, %struct.mem* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %117 = load %struct.mem*, %struct.mem** @ram_end, align 8
  %118 = icmp ne %struct.mem* %116, %117
  br label %119

119:                                              ; preds = %115, %110
  %120 = phi i1 [ false, %110 ], [ %118, %115 ]
  br i1 %120, label %121, label %128

121:                                              ; preds = %119
  %122 = load i8*, i8** @ram_block, align 8
  %123 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %124 = getelementptr inbounds %struct.mem, %struct.mem* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  %127 = bitcast i8* %126 to %struct.mem*
  store %struct.mem* %127, %struct.mem** @ram_free, align 8
  br label %110

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %101
  %130 = load i64, i64* %4, align 8
  %131 = call i32 @_CPU_ISR_Restore(i64 %130)
  %132 = load %struct.mem*, %struct.mem** %7, align 8
  %133 = bitcast %struct.mem* %132 to i8*
  %134 = load i64, i64* @SIZEOF_STRUCT_MEM, align 8
  %135 = getelementptr i8, i8* %133, i64 %134
  store i8* %135, i8** %2, align 8
  br label %147

136:                                              ; preds = %54, %45
  br label %137

137:                                              ; preds = %136
  %138 = load i8*, i8** @ram_block, align 8
  %139 = load i64, i64* %5, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = bitcast i8* %140 to %struct.mem*
  %142 = getelementptr inbounds %struct.mem, %struct.mem* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %5, align 8
  br label %41

144:                                              ; preds = %41
  %145 = load i64, i64* %4, align 8
  %146 = call i32 @_CPU_ISR_Restore(i64 %145)
  store i8* null, i8** %2, align 8
  br label %147

147:                                              ; preds = %144, %129, %31, %11
  %148 = load i8*, i8** %2, align 8
  ret i8* %148
}

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
