; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_close.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct._reent = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@close = common dso_local global i32 0, align 4
@s_fd_table_lock = common dso_local global i32 0, align 4
@s_fd_table = common dso_local global %struct.TYPE_3__* null, align 8
@FD_TABLE_ENTRY_UNUSED = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_vfs_close(%struct._reent* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._reent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32* @get_vfs_for_fd(i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @get_local_fd(i32* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %2
  %21 = load i32, i32* @EBADF, align 4
  store i32 %21, i32* %8, align 4
  store i32 -1, i32* %3, align 4
  br label %46

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = load %struct._reent*, %struct._reent** %4, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @close, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @CHECK_AND_CALL(i32 %23, %struct._reent* %24, i32* %25, i32 %26, i32 %27)
  %29 = call i32 @_lock_acquire(i32* @s_fd_table_lock)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_fd_table, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %22
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_fd_table, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = bitcast %struct.TYPE_3__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 bitcast (%struct.TYPE_3__* @FD_TABLE_ENTRY_UNUSED to i8*), i64 4, i1 false)
  br label %43

43:                                               ; preds = %37, %22
  %44 = call i32 @_lock_release(i32* @s_fd_table_lock)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32* @get_vfs_for_fd(i32) #1

declare dso_local i32 @get_local_fd(i32*, i32) #1

declare dso_local i32 @CHECK_AND_CALL(i32, %struct._reent*, i32*, i32, i32) #1

declare dso_local i32 @_lock_acquire(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_lock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
