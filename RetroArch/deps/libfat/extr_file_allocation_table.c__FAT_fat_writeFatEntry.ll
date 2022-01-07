; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_file_allocation_table.c__FAT_fat_writeFatEntry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_file_allocation_table.c__FAT_fat_writeFatEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@CLUSTER_FIRST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i64)* @_FAT_fat_writeFatEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_FAT_fat_writeFatEntry(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @CLUSTER_FIRST, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %188

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %186 [
    i32 128, label %26
    i32 131, label %27
    i32 130, label %132
    i32 129, label %159
  ]

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %188

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = mul nsw i64 %32, 3
  %34 = sdiv i64 %33, 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sdiv i64 %34, %37
  %39 = add nsw i64 %31, %38
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = mul nsw i64 %40, 3
  %42 = sdiv i64 %41, 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = srem i64 %42, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load i64, i64* %6, align 8
  %49 = and i64 %48, 1
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %92

51:                                               ; preds = %27
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @_FAT_cache_readLittleEndianValue(i32 %54, i64* %10, i64 %55, i32 %56, i32 4)
  %58 = load i64, i64* %7, align 8
  %59 = shl i64 %58, 4
  %60 = load i64, i64* %10, align 8
  %61 = and i64 %60, 15
  %62 = or i64 %59, %61
  store i64 %62, i64* %7, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = and i64 %66, 255
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @_FAT_cache_writeLittleEndianValue(i32 %65, i64 %67, i64 %68, i32 %69, i32 4)
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %82

82:                                               ; preds = %79, %51
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = ashr i64 %86, 8
  %88 = and i64 %87, 255
  %89 = load i64, i64* %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @_FAT_cache_writeLittleEndianValue(i32 %85, i64 %88, i64 %89, i32 %90, i32 4)
  br label %131

92:                                               ; preds = %27
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @_FAT_cache_writeLittleEndianValue(i32 %95, i64 %96, i64 %97, i32 %98, i32 4)
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %92
  store i32 0, i32* %9, align 4
  %109 = load i64, i64* %8, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %8, align 8
  br label %111

111:                                              ; preds = %108, %92
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @_FAT_cache_readLittleEndianValue(i32 %114, i64* %10, i64 %115, i32 %116, i32 4)
  %118 = load i64, i64* %7, align 8
  %119 = ashr i64 %118, 8
  %120 = and i64 %119, 15
  %121 = load i64, i64* %10, align 8
  %122 = and i64 %121, 240
  %123 = or i64 %120, %122
  store i64 %123, i64* %7, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @_FAT_cache_writeLittleEndianValue(i32 %126, i64 %127, i64 %128, i32 %129, i32 4)
  br label %131

131:                                              ; preds = %111, %82
  br label %187

132:                                              ; preds = %22
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %6, align 8
  %138 = shl i64 %137, 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = sdiv i64 %138, %141
  %143 = add nsw i64 %136, %142
  store i64 %143, i64* %8, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = ashr i64 %147, 1
  %149 = srem i64 %144, %148
  %150 = shl i64 %149, 1
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %9, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @_FAT_cache_writeLittleEndianValue(i32 %154, i64 %155, i64 %156, i32 %157, i32 4)
  br label %187

159:                                              ; preds = %22
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %6, align 8
  %165 = shl i64 %164, 2
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = sdiv i64 %165, %168
  %170 = add nsw i64 %163, %169
  store i64 %170, i64* %8, align 8
  %171 = load i64, i64* %6, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = ashr i64 %174, 2
  %176 = srem i64 %171, %175
  %177 = shl i64 %176, 2
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %9, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i64, i64* %7, align 8
  %183 = load i64, i64* %8, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @_FAT_cache_writeLittleEndianValue(i32 %181, i64 %182, i64 %183, i32 %184, i32 4)
  br label %187

186:                                              ; preds = %22
  store i32 0, i32* %4, align 4
  br label %188

187:                                              ; preds = %159, %132, %131
  store i32 1, i32* %4, align 4
  br label %188

188:                                              ; preds = %187, %186, %26, %21
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @_FAT_cache_readLittleEndianValue(i32, i64*, i64, i32, i32) #1

declare dso_local i32 @_FAT_cache_writeLittleEndianValue(i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
