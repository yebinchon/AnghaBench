; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatfile.c__FAT_fsync_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatfile.c__FAT_fsync_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_fsync_r(%struct._reent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._reent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EBADF, align 4
  %16 = load %struct._reent*, %struct._reent** %4, align 8
  %17 = getelementptr inbounds %struct._reent, %struct._reent* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  store i32 -1, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @_FAT_lock(i32* %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = call i32 @_FAT_syncToDisc(%struct.TYPE_5__* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = load %struct._reent*, %struct._reent** %4, align 8
  %31 = getelementptr inbounds %struct._reent, %struct._reent* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 -1, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %18
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @_FAT_unlock(i32* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @_FAT_lock(i32*) #1

declare dso_local i32 @_FAT_syncToDisc(%struct.TYPE_5__*) #1

declare dso_local i32 @_FAT_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
