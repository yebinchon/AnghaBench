; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_directory.c__FAT_directory_entryFromPosition.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_directory.c__FAT_directory_entryFromPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32 }

@MAX_LFN_LENGTH = common dso_local global i32 0, align 4
@DIR_ENTRY_DATA_SIZE = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4
@LFN_offset_ordinal = common dso_local global i64 0, align 8
@LFN_END = common dso_local global i32 0, align 4
@LFN_offset_table = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_directory_entryFromPosition(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = bitcast %struct.TYPE_10__* %6 to i8*
  %19 = bitcast %struct.TYPE_10__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = bitcast %struct.TYPE_10__* %7 to i8*
  %23 = bitcast %struct.TYPE_10__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 24, i1 false)
  %24 = load i32, i32* @MAX_LFN_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @NAME_MAX, align 4
  %35 = call i32 @memset(i32 %33, i8 signext 0, i32 %34)
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %133, %2
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %45, label %136

45:                                               ; preds = %43
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @_FAT_fat_clusterToSector(%struct.TYPE_9__* %49, i64 %51)
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %52, %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %61 = call i32 @_FAT_cache_readPartialSector(i32 %48, i32* %30, i64 %55, i32 %59, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %45
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %69, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %84 = call i32 @memcpy(i32 %82, i32* %30, i32 %83)
  store i32 1, i32* %9, align 4
  br label %132

85:                                               ; preds = %73, %67, %45
  %86 = load i64, i64* @LFN_offset_ordinal, align 8
  %87 = getelementptr inbounds i32, i32* %30, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @LFN_END, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = sub nsw i32 %91, 1
  %93 = mul nsw i32 %92, 13
  store i32 %93, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %128, %85
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 13
  br i1 %96, label %97, label %131

97:                                               ; preds = %94
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* @MAX_LFN_LENGTH, align 4
  %102 = sub nsw i32 %101, 1
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %97
  %105 = load i64*, i64** @LFN_offset_table, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32, i32* %30, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i64*, i64** @LFN_offset_table, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  %118 = getelementptr inbounds i32, i32* %30, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 8
  %121 = or i32 %111, %120
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %27, i64 %125
  store i32 %121, i32* %126, align 4
  br label %127

127:                                              ; preds = %104, %97
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %94

131:                                              ; preds = %94
  br label %132

132:                                              ; preds = %131, %79
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = call i32 @_FAT_directory_incrementDirEntryPosition(%struct.TYPE_9__* %134, %struct.TYPE_10__* %6, i32 0)
  store i32 %135, i32* %8, align 4
  br label %36

136:                                              ; preds = %43
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %183

140:                                              ; preds = %136
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  %143 = bitcast %struct.TYPE_10__* %6 to i8*
  %144 = bitcast %struct.TYPE_10__* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 8 %144, i64 24, i1 false)
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %146, %148
  br i1 %149, label %150, label %173

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %152, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @_FAT_directory_entryGetAlias(i32 %165, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %162
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %183

172:                                              ; preds = %162
  br label %182

173:                                              ; preds = %156, %150, %140
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @NAME_MAX, align 4
  %178 = call i64 @_FAT_directory_ucs2tombs(i32 %176, i32* %27, i32 %177)
  %179 = icmp eq i64 %178, -1
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %183

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %172
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %183

183:                                              ; preds = %182, %180, %171, %139
  %184 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32, i8 signext, i32) #3

declare dso_local i32 @_FAT_cache_readPartialSector(i32, i32*, i64, i32, i32) #3

declare dso_local i64 @_FAT_fat_clusterToSector(%struct.TYPE_9__*, i64) #3

declare dso_local i32 @memcpy(i32, i32*, i32) #3

declare dso_local i32 @_FAT_directory_incrementDirEntryPosition(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #3

declare dso_local i32 @_FAT_directory_entryGetAlias(i32, i32) #3

declare dso_local i64 @_FAT_directory_ucs2tombs(i32, i32*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
