; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_f_sync.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_f_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_14__, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i32, i32 }
%struct.TYPE_13__ = type { i64, i32*, i32, i32 }

@FR_OK = common dso_local global i64 0, align 8
@FA_MODIFIED = common dso_local global i32 0, align 4
@FA_DIRTY = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8
@FR_DISK_ERR = common dso_local global i64 0, align 8
@AM_ARC = common dso_local global i32 0, align 4
@DIR_Attr = common dso_local global i64 0, align 8
@DIR_FileSize = common dso_local global i32 0, align 4
@DIR_ModTime = common dso_local global i32 0, align 4
@DIR_LstAccDate = common dso_local global i32 0, align 4
@FS_EXFAT = common dso_local global i64 0, align 8
@XDIR_AccTime = common dso_local global i32 0, align 4
@XDIR_Attr = common dso_local global i64 0, align 8
@XDIR_FileSize = common dso_local global i32 0, align 4
@XDIR_FstClus = common dso_local global i32 0, align 4
@XDIR_GenFlags = common dso_local global i64 0, align 8
@XDIR_ModTime = common dso_local global i32 0, align 4
@XDIR_ModTime10 = common dso_local global i64 0, align 8
@XDIR_ValidFileSize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_sync(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = call i64 @validate(%struct.TYPE_14__* %9, %struct.TYPE_13__** %5)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @FR_OK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %115

14:                                               ; preds = %1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FA_MODIFIED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %114

21:                                               ; preds = %14
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FA_DIRTY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %21
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @disk_write(i32 %31, i32 %34, i32 %37, i32 1)
  %39 = load i64, i64* @RES_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = load i64, i64* @FR_DISK_ERR, align 8
  %44 = call i32 @LEAVE_FF(%struct.TYPE_13__* %42, i64 %43)
  br label %45

45:                                               ; preds = %41, %28
  %46 = load i32, i32* @FA_DIRTY, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %45, %21
  %53 = call i32 (...) @GET_FATTIME()
  store i32 %53, i32* %6, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @move_window(%struct.TYPE_13__* %54, i32 %57)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @FR_OK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %113

62:                                               ; preds = %52
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %7, align 8
  %66 = load i32, i32* @AM_ARC, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i64, i64* @DIR_Attr, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @st_clust(i32 %75, i32* %76, i32 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @DIR_FileSize, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @st_dword(i32* %85, i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* @DIR_ModTime, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @st_dword(i32* %95, i32 %96)
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* @DIR_LstAccDate, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i32 @st_word(i32* %101, i32 0)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = call i64 @sync_fs(%struct.TYPE_13__* %105)
  store i64 %106, i64* %4, align 8
  %107 = load i32, i32* @FA_MODIFIED, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %62, %52
  br label %114

114:                                              ; preds = %113, %14
  br label %115

115:                                              ; preds = %114, %1
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @LEAVE_FF(%struct.TYPE_13__* %116, i64 %117)
  %119 = load i64, i64* %2, align 8
  ret i64 %119
}

declare dso_local i64 @validate(%struct.TYPE_14__*, %struct.TYPE_13__**) #1

declare dso_local i64 @disk_write(i32, i32, i32, i32) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @GET_FATTIME(...) #1

declare dso_local i64 @move_window(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @st_clust(i32, i32*, i32) #1

declare dso_local i32 @st_dword(i32*, i32) #1

declare dso_local i32 @st_word(i32*, i32) #1

declare dso_local i64 @sync_fs(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
