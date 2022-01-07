; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_write_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_write_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct._reent*, i8*, i8*, i64)* @fs_dev_write_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fs_dev_write_r(%struct._reent* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._reent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load %struct._reent*, %struct._reent** %6, align 8
  %17 = icmp ne %struct._reent* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %106

19:                                               ; preds = %4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = load %struct._reent*, %struct._reent** %6, align 8
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i64 0, i64* %5, align 8
  br label %106

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENODEV, align 4
  %33 = load %struct._reent*, %struct._reent** %6, align 8
  %34 = getelementptr inbounds %struct._reent, %struct._reent* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  store i64 0, i64* %5, align 8
  br label %106

35:                                               ; preds = %26
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EACCES, align 4
  %42 = load %struct._reent*, %struct._reent** %6, align 8
  %43 = getelementptr inbounds %struct._reent, %struct._reent* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  store i64 0, i64* %5, align 8
  br label %106

44:                                               ; preds = %35
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @OSLockMutex(i32 %49)
  store i64 0, i64* %11, align 8
  br label %51

51:                                               ; preds = %97, %44
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %11, align 8
  %58 = sub i64 %56, %57
  store i64 %58, i64* %12, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @IOSUHAX_FSA_WriteFile(i32 %63, i8* %66, i32 1, i64 %67, i32 %70, i32 0)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %55
  %75 = load i32, i32* %13, align 4
  %76 = load %struct._reent*, %struct._reent** %6, align 8
  %77 = getelementptr inbounds %struct._reent, %struct._reent* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %98

78:                                               ; preds = %55
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i64, i64* %12, align 8
  %83 = icmp ugt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i64 0, i64* %11, align 8
  br label %85

85:                                               ; preds = %84, %81
  br label %98

86:                                               ; preds = %78
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %11, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96
  br label %51

98:                                               ; preds = %85, %74, %51
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @OSUnlockMutex(i32 %103)
  %105 = load i64, i64* %11, align 8
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %98, %40, %31, %22, %18
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i32 @IOSUHAX_FSA_WriteFile(i32, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
