; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_bios.c_GetFreeBlocks.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_bios.c_GetFreeBlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32, i32, i32, i32)* @GetFreeBlocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @GetFreeBlocks(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = call i64 @malloc(i32 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i64* null, i64** %5, align 8
  br label %143

26:                                               ; preds = %4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 %28, %29
  %31 = call i32 @memset(i32* %27, i32 0, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 2, %32
  %34 = shl i32 %33, 1
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %91, %26
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 %37, 1
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %96

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %41, %42
  %44 = add nsw i32 %43, 1
  %45 = call i32 @MappedMemoryReadByte(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %49, %50
  %52 = add nsw i32 %51, 69
  store i32 %52, i32* %12, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %55, 1
  %57 = sdiv i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %85, %48
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @MappedMemoryReadByte(i32 %61)
  %63 = shl i32 %62, 8
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 2
  %66 = call i32 @MappedMemoryReadByte(i32 %65)
  %67 = or i32 %63, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %15, align 8
  %69 = load i64, i64* %15, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %89

72:                                               ; preds = %60
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 4
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %7, align 4
  %78 = shl i32 %77, 1
  %79 = sub nsw i32 %78, 1
  %80 = and i32 %76, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 8
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %82, %72
  %86 = load i32*, i32** %10, align 8
  %87 = load i64, i64* %15, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 1, i32* %88, align 4
  br label %60

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89, %40
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = shl i32 %92, 1
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %13, align 4
  br label %35

96:                                               ; preds = %35
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 8, %98
  %100 = trunc i64 %99 to i32
  %101 = call i64 @malloc(i32 %100)
  %102 = inttoptr i64 %101 to i64*
  store i64* %102, i64** %11, align 8
  %103 = icmp eq i64* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @free(i32* %105)
  store i64* null, i64** %5, align 8
  br label %143

107:                                              ; preds = %96
  store i32 2, i32* %13, align 4
  br label %108

108:                                              ; preds = %136, %107
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sdiv i32 %110, %111
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %139

114:                                              ; preds = %108
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %114
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64*, i64** %11, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  store i64 %123, i64* %127, align 8
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  br label %139

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %114
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %108

139:                                              ; preds = %133, %108
  %140 = load i32*, i32** %10, align 8
  %141 = call i32 @free(i32* %140)
  %142 = load i64*, i64** %11, align 8
  store i64* %142, i64** %5, align 8
  br label %143

143:                                              ; preds = %139, %104, %25
  %144 = load i64*, i64** %5, align 8
  ret i64* %144
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MappedMemoryReadByte(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
