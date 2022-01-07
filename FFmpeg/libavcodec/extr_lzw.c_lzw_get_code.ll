; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lzw.c_lzw_get_code.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lzw.c_lzw_get_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LZWState = type { i64, i64, i32, i64, i32, i32, i32, i32 }

@FF_LZW_GIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.LZWState*)* @lzw_get_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzw_get_code(%struct.LZWState* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.LZWState*, align 8
  %4 = alloca i32, align 4
  store %struct.LZWState* %0, %struct.LZWState** %3, align 8
  %5 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %6 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %9 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %14 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %13, i32 0, i32 7
  %15 = call i64 @bytestream2_get_bytes_left(i32* %14)
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %19 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %2, align 4
  br label %130

21:                                               ; preds = %12, %1
  %22 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %23 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FF_LZW_GIF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %80

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %47, %27
  %29 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %30 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %33 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %28
  %37 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %38 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %43 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %42, i32 0, i32 7
  %44 = call i32 @bytestream2_get_byte(i32* %43)
  %45 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %46 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %41, %36
  %48 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %49 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %48, i32 0, i32 7
  %50 = call i32 @bytestream2_get_byte(i32* %49)
  %51 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %52 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 %50, %54
  %56 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %57 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %61 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 8
  store i64 %63, i64* %61, align 8
  %64 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %65 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  br label %28

68:                                               ; preds = %28
  %69 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %70 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %4, align 4
  %72 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %73 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %76 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = trunc i64 %74 to i32
  %79 = ashr i32 %77, %78
  store i32 %79, i32* %76, align 4
  br label %117

80:                                               ; preds = %21
  br label %81

81:                                               ; preds = %89, %80
  %82 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %83 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %86 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %81
  %90 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %91 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %95 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %94, i32 0, i32 7
  %96 = call i32 @bytestream2_get_byte(i32* %95)
  %97 = or i32 %93, %96
  %98 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %99 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %101 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 8
  store i64 %103, i64* %101, align 8
  br label %81

104:                                              ; preds = %81
  %105 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %106 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %109 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %112 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %110, %113
  %115 = trunc i64 %114 to i32
  %116 = ashr i32 %107, %115
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %104, %68
  %118 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %119 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %122 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %123, %120
  store i64 %124, i64* %122, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %127 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %125, %128
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %117, %17
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
