; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vfs_fsremove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vfs_fsremove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfstable = type { i64, i8*, i64 }

@EBUSY = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vfs_fsremove(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vfstable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to %struct.vfstable*
  store %struct.vfstable* %8, %struct.vfstable** %4, align 8
  store i8* null, i8** %5, align 8
  %9 = call i32 (...) @mount_list_lock()
  %10 = load %struct.vfstable*, %struct.vfstable** %4, align 8
  %11 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 (...) @mount_list_unlock()
  %16 = load i64, i64* @EBUSY, align 8
  store i64 %16, i64* %2, align 8
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.vfstable*, %struct.vfstable** %4, align 8
  %19 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.vfstable*, %struct.vfstable** %4, align 8
  %24 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.vfstable*, %struct.vfstable** %4, align 8
  %29 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %5, align 8
  br label %31

31:                                               ; preds = %27, %22, %17
  %32 = load %struct.vfstable*, %struct.vfstable** %4, align 8
  %33 = call i64 @vfstable_del(%struct.vfstable* %32)
  store i64 %33, i64* %6, align 8
  %34 = call i32 (...) @mount_list_unlock()
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* @M_TEMP, align 4
  %43 = call i32 @FREE(i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %37, %31
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %44, %14
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i32 @mount_list_lock(...) #1

declare dso_local i32 @mount_list_unlock(...) #1

declare dso_local i64 @vfstable_del(%struct.vfstable*) #1

declare dso_local i32 @FREE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
