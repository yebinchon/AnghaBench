; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_sync_fs.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i64, i64, i64 }

@FR_OK = common dso_local global i64 0, align 8
@FS_FAT32 = common dso_local global i64 0, align 8
@BS_55AA = common dso_local global i64 0, align 8
@FSI_LeadSig = common dso_local global i64 0, align 8
@FSI_StrucSig = common dso_local global i64 0, align 8
@FSI_Free_Count = common dso_local global i64 0, align 8
@FSI_Nxt_Free = common dso_local global i64 0, align 8
@CTRL_SYNC = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8
@FR_DISK_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*)* @sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sync_fs(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = call i64 @sync_window(%struct.TYPE_4__* %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @FR_OK, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %90

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FS_FAT32, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %79

15:                                               ; preds = %9
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %79

20:                                               ; preds = %15
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @mem_set(i64 %23, i32 0, i32 8)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BS_55AA, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @st_word(i64 %29, i32 43605)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FSI_LeadSig, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @st_dword(i64 %35, i32 1096897106)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FSI_StrucSig, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @st_dword(i64 %41, i32 1631679090)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FSI_Free_Count, align 8
  %47 = add nsw i64 %45, %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @st_dword(i64 %47, i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FSI_Nxt_Free, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @st_dword(i64 %56, i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 5
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @disk_write(i32 %69, i64 %72, i64 %75, i32 1)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %20, %15, %9
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CTRL_SYNC, align 4
  %84 = call i64 @disk_ioctl(i32 %82, i32 %83, i32 0)
  %85 = load i64, i64* @RES_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %88, i64* %3, align 8
  br label %89

89:                                               ; preds = %87, %79
  br label %90

90:                                               ; preds = %89, %1
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local i64 @sync_window(%struct.TYPE_4__*) #1

declare dso_local i32 @mem_set(i64, i32, i32) #1

declare dso_local i32 @st_word(i64, i32) #1

declare dso_local i32 @st_dword(i64, i32) #1

declare dso_local i32 @disk_write(i32, i64, i64, i32) #1

declare dso_local i64 @disk_ioctl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
