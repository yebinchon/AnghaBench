; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatdir.c__FAT_rename_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatdir.c__FAT_rename_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i8* }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i32 }

@ENODEV = common dso_local global i8* null, align 8
@EXDEV = common dso_local global i8* null, align 8
@EROFS = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i8* null, align 8
@EEXIST = common dso_local global i8* null, align 8
@DIR_SEPARATOR = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i8* null, align 8
@NAME_MAX = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i8* null, align 8
@EIO = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_rename_r(%struct._reent* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.TYPE_14__* @_FAT_partition_getPartitionFromPath(i8* %13)
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %8, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %16 = icmp eq %struct.TYPE_14__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i8*, i8** @ENODEV, align 8
  %19 = load %struct._reent*, %struct._reent** %5, align 8
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  store i32 -1, i32* %4, align 4
  br label %191

21:                                               ; preds = %3
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = call i32 @_FAT_lock(i32* %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call %struct.TYPE_14__* @_FAT_partition_getPartitionFromPath(i8* %26)
  %28 = icmp ne %struct.TYPE_14__* %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = call i32 @_FAT_unlock(i32* %31)
  %33 = load i8*, i8** @EXDEV, align 8
  %34 = load %struct._reent*, %struct._reent** %5, align 8
  %35 = getelementptr inbounds %struct._reent, %struct._reent* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  store i32 -1, i32* %4, align 4
  br label %191

36:                                               ; preds = %21
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = call i32 @_FAT_unlock(i32* %43)
  %45 = load i8*, i8** @EROFS, align 8
  %46 = load %struct._reent*, %struct._reent** %5, align 8
  %47 = getelementptr inbounds %struct._reent, %struct._reent* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  store i32 -1, i32* %4, align 4
  br label %191

48:                                               ; preds = %36
  %49 = load i8*, i8** %6, align 8
  %50 = call i8* @strchr(i8* %49, i8 signext 58)
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 58)
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %6, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @strchr(i8* %57, i8 signext 58)
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = call i32 @_FAT_unlock(i32* %62)
  %64 = load i8*, i8** @EINVAL, align 8
  %65 = load %struct._reent*, %struct._reent** %5, align 8
  %66 = getelementptr inbounds %struct._reent, %struct._reent* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  store i32 -1, i32* %4, align 4
  br label %191

67:                                               ; preds = %56
  %68 = load i8*, i8** %7, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 58)
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i8*, i8** %7, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 58)
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8* %74, i8** %7, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i8*, i8** %7, align 8
  %77 = call i8* @strchr(i8* %76, i8 signext 58)
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = call i32 @_FAT_unlock(i32* %81)
  %83 = load i8*, i8** @EINVAL, align 8
  %84 = load %struct._reent*, %struct._reent** %5, align 8
  %85 = getelementptr inbounds %struct._reent, %struct._reent* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  store i32 -1, i32* %4, align 4
  br label %191

86:                                               ; preds = %75
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i64 @_FAT_directory_entryFromPath(%struct.TYPE_14__* %87, %struct.TYPE_15__* %9, i8* %88, i8* null)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = call i32 @_FAT_unlock(i32* %93)
  %95 = load i8*, i8** @ENOENT, align 8
  %96 = load %struct._reent*, %struct._reent** %5, align 8
  %97 = getelementptr inbounds %struct._reent, %struct._reent* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  store i32 -1, i32* %4, align 4
  br label %191

98:                                               ; preds = %86
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i64 @_FAT_directory_entryFromPath(%struct.TYPE_14__* %99, %struct.TYPE_15__* %10, i8* %100, i8* null)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = call i32 @_FAT_unlock(i32* %105)
  %107 = load i8*, i8** @EEXIST, align 8
  %108 = load %struct._reent*, %struct._reent** %5, align 8
  %109 = getelementptr inbounds %struct._reent, %struct._reent* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  store i32 -1, i32* %4, align 4
  br label %191

110:                                              ; preds = %98
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* @DIR_SEPARATOR, align 4
  %113 = call i8* @strrchr(i8* %111, i32 %112)
  store i8* %113, i8** %11, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %12, align 4
  %120 = load i8*, i8** %7, align 8
  store i8* %120, i8** %11, align 8
  br label %144

121:                                              ; preds = %110
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = call i64 @_FAT_directory_entryFromPath(%struct.TYPE_14__* %122, %struct.TYPE_15__* %10, i8* %123, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = call i32 @_FAT_directory_isDirectory(%struct.TYPE_15__* %10)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %127, %121
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = call i32 @_FAT_unlock(i32* %132)
  %134 = load i8*, i8** @ENOTDIR, align 8
  %135 = load %struct._reent*, %struct._reent** %5, align 8
  %136 = getelementptr inbounds %struct._reent, %struct._reent* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  store i32 -1, i32* %4, align 4
  br label %191

137:                                              ; preds = %127
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @_FAT_directory_entryGetCluster(%struct.TYPE_14__* %138, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  store i8* %143, i8** %11, align 8
  br label %144

144:                                              ; preds = %137, %116
  %145 = call i32 @memcpy(%struct.TYPE_15__* %10, %struct.TYPE_15__* %9, i32 8)
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i8*, i8** %11, align 8
  %149 = load i64, i64* @NAME_MAX, align 8
  %150 = sub nsw i64 %149, 1
  %151 = call i32 @strncpy(i32 %147, i8* %148, i64 %150)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @_FAT_directory_addEntry(%struct.TYPE_14__* %152, %struct.TYPE_15__* %10, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %144
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = call i32 @_FAT_unlock(i32* %158)
  %160 = load i8*, i8** @ENOSPC, align 8
  %161 = load %struct._reent*, %struct._reent** %5, align 8
  %162 = getelementptr inbounds %struct._reent, %struct._reent* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  store i32 -1, i32* %4, align 4
  br label %191

163:                                              ; preds = %144
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %165 = call i32 @_FAT_directory_removeEntry(%struct.TYPE_14__* %164, %struct.TYPE_15__* %9)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %163
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = call i32 @_FAT_unlock(i32* %169)
  %171 = load i8*, i8** @EIO, align 8
  %172 = load %struct._reent*, %struct._reent** %5, align 8
  %173 = getelementptr inbounds %struct._reent, %struct._reent* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  store i32 -1, i32* %4, align 4
  br label %191

174:                                              ; preds = %163
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @_FAT_cache_flush(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %174
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = call i32 @_FAT_unlock(i32* %182)
  %184 = load i8*, i8** @EIO, align 8
  %185 = load %struct._reent*, %struct._reent** %5, align 8
  %186 = getelementptr inbounds %struct._reent, %struct._reent* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  store i32 -1, i32* %4, align 4
  br label %191

187:                                              ; preds = %174
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = call i32 @_FAT_unlock(i32* %189)
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %187, %180, %167, %156, %130, %103, %91, %79, %60, %41, %29, %17
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local %struct.TYPE_14__* @_FAT_partition_getPartitionFromPath(i8*) #1

declare dso_local i32 @_FAT_lock(i32*) #1

declare dso_local i32 @_FAT_unlock(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @_FAT_directory_entryFromPath(%struct.TYPE_14__*, %struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i32) #1

declare dso_local i32 @_FAT_directory_isDirectory(%struct.TYPE_15__*) #1

declare dso_local i32 @_FAT_directory_entryGetCluster(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i32 @_FAT_directory_addEntry(%struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @_FAT_directory_removeEntry(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @_FAT_cache_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
