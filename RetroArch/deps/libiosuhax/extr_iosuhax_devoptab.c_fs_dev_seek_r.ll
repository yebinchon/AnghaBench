; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_seek_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_seek_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i8* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*, i32, i32)* @fs_dev_seek_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_dev_seek_r(%struct._reent* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._reent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load %struct._reent*, %struct._reent** %6, align 8
  %15 = icmp ne %struct._reent* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %90

17:                                               ; preds = %4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** @EINVAL, align 8
  %22 = load %struct._reent*, %struct._reent** %6, align 8
  %23 = getelementptr inbounds %struct._reent, %struct._reent* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  store i32 0, i32* %5, align 4
  br label %90

24:                                               ; preds = %17
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** @ENODEV, align 8
  %31 = load %struct._reent*, %struct._reent** %6, align 8
  %32 = getelementptr inbounds %struct._reent, %struct._reent* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  store i32 0, i32* %5, align 4
  br label %90

33:                                               ; preds = %24
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @OSLockMutex(i32 %38)
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %59 [
    i32 128, label %41
    i32 130, label %45
    i32 129, label %51
  ]

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %63

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %63

51:                                               ; preds = %33
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %54, %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %63

59:                                               ; preds = %33
  %60 = load i8*, i8** @EINVAL, align 8
  %61 = load %struct._reent*, %struct._reent** %6, align 8
  %62 = getelementptr inbounds %struct._reent, %struct._reent* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  store i32 -1, i32* %5, align 4
  br label %90

63:                                               ; preds = %51, %45, %41
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @IOSUHAX_FSA_SetFilePos(i32 %68, i32 %71, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @OSUnlockMutex(i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %63
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %5, align 4
  br label %90

88:                                               ; preds = %63
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %84, %59, %29, %20, %16
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i32 @IOSUHAX_FSA_SetFilePos(i32, i32, i32) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
