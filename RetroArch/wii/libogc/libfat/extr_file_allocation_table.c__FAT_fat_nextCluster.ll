; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_file_allocation_table.c__FAT_fat_nextCluster.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_file_allocation_table.c__FAT_fat_nextCluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@CLUSTER_FREE = common dso_local global i64 0, align 8
@CLUSTER_ERROR = common dso_local global i64 0, align 8
@CLUSTER_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_FAT_fat_nextCluster(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* @CLUSTER_FREE, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @CLUSTER_FREE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @CLUSTER_FREE, align 8
  store i64 %15, i64* %3, align 8
  br label %153

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %149 [
    i32 128, label %20
    i32 131, label %22
    i32 130, label %87
    i32 129, label %118
  ]

20:                                               ; preds = %16
  %21 = load i64, i64* @CLUSTER_ERROR, align 8
  store i64 %21, i64* %3, align 8
  br label %153

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = mul nsw i64 %27, 3
  %29 = sdiv i64 %28, 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sdiv i64 %29, %32
  %34 = add nsw i64 %26, %33
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = mul nsw i64 %35, 3
  %37 = sdiv i64 %36, 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = srem i64 %37, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i32, ...) @_FAT_cache_readLittleEndianValue(i32 %45, i64* %6, i64 %46, i32 %47, i64 4)
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %57, %22
  store i32 0, i32* %9, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (i32, ...) @_FAT_cache_readLittleEndianValue(i32 %63, i32* %9, i64 %64, i32 %65, i64 4)
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 %67, 8
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %6, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %5, align 8
  %73 = and i64 %72, 1
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load i64, i64* %6, align 8
  %77 = ashr i64 %76, 4
  store i64 %77, i64* %6, align 8
  br label %81

78:                                               ; preds = %60
  %79 = load i64, i64* %6, align 8
  %80 = and i64 %79, 4095
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i64, i64* %6, align 8
  %83 = icmp sge i64 %82, 4087
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i64, i64* @CLUSTER_EOF, align 8
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %84, %81
  br label %151

87:                                               ; preds = %16
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = shl i64 %92, 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sdiv i64 %93, %96
  %98 = add nsw i64 %91, %97
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = ashr i64 %102, 1
  %104 = srem i64 %99, %103
  %105 = shl i64 %104, 1
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %8, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i32, ...) @_FAT_cache_readLittleEndianValue(i32 %109, i64* %6, i64 %110, i32 %111, i64 4)
  %113 = load i64, i64* %6, align 8
  %114 = icmp sge i64 %113, 65527
  br i1 %114, label %115, label %117

115:                                              ; preds = %87
  %116 = load i64, i64* @CLUSTER_EOF, align 8
  store i64 %116, i64* %6, align 8
  br label %117

117:                                              ; preds = %115, %87
  br label %151

118:                                              ; preds = %16
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = shl i64 %123, 2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = sdiv i64 %124, %127
  %129 = add nsw i64 %122, %128
  store i64 %129, i64* %7, align 8
  %130 = load i64, i64* %5, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = ashr i64 %133, 2
  %135 = srem i64 %130, %134
  %136 = shl i64 %135, 2
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %8, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 (i32, ...) @_FAT_cache_readLittleEndianValue(i32 %140, i64* %6, i64 %141, i32 %142, i64 4)
  %144 = load i64, i64* %6, align 8
  %145 = icmp sge i64 %144, 268435447
  br i1 %145, label %146, label %148

146:                                              ; preds = %118
  %147 = load i64, i64* @CLUSTER_EOF, align 8
  store i64 %147, i64* %6, align 8
  br label %148

148:                                              ; preds = %146, %118
  br label %151

149:                                              ; preds = %16
  %150 = load i64, i64* @CLUSTER_ERROR, align 8
  store i64 %150, i64* %3, align 8
  br label %153

151:                                              ; preds = %148, %117, %86
  %152 = load i64, i64* %6, align 8
  store i64 %152, i64* %3, align 8
  br label %153

153:                                              ; preds = %151, %149, %20, %14
  %154 = load i64, i64* %3, align 8
  ret i64 %154
}

declare dso_local i32 @_FAT_cache_readLittleEndianValue(i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
