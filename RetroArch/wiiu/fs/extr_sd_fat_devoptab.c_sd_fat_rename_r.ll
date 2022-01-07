; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_rename_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_rename_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*, i8*)* @sd_fat_rename_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_fat_rename_r(%struct._reent* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.TYPE_4__* @sd_fat_get_device_data(i8* %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = load %struct._reent*, %struct._reent** %5, align 8
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  store i32 -1, i32* %4, align 4
  br label %81

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @OSLockMutex(i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = call i8* @sd_fat_real_path(i8* %25, %struct.TYPE_4__* %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %20
  %31 = load i8*, i8** @ENOMEM, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct._reent*, %struct._reent** %5, align 8
  %34 = getelementptr inbounds %struct._reent, %struct._reent* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @OSUnlockMutex(i32 %37)
  store i32 -1, i32* %4, align 4
  br label %81

39:                                               ; preds = %20
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = call i8* @sd_fat_real_path(i8* %40, %struct.TYPE_4__* %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** @ENOMEM, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct._reent*, %struct._reent** %5, align 8
  %49 = getelementptr inbounds %struct._reent, %struct._reent* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @OSUnlockMutex(i32 %54)
  store i32 -1, i32* %4, align 4
  br label %81

56:                                               ; preds = %39
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @FSRename(i32 %59, i32 %62, i8* %63, i8* %64, i32 -1)
  store i32 %65, i32* %11, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @OSUnlockMutex(i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %56
  %77 = load i32, i32* %11, align 4
  %78 = load %struct._reent*, %struct._reent** %5, align 8
  %79 = getelementptr inbounds %struct._reent, %struct._reent* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  store i32 -1, i32* %4, align 4
  br label %81

80:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %76, %45, %30, %16
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_4__* @sd_fat_get_device_data(i8*) #1

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i8* @sd_fat_real_path(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FSRename(i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
