; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_write_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_write_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FS_ALIGNMENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct._reent*, i8*, i8*, i64)* @sd_fat_write_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sd_fat_write_r(%struct._reent* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._reent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %10, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENODEV, align 4
  %24 = load %struct._reent*, %struct._reent** %6, align 8
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i64 0, i64* %5, align 8
  br label %141

26:                                               ; preds = %4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EACCES, align 4
  %33 = load %struct._reent*, %struct._reent** %6, align 8
  %34 = getelementptr inbounds %struct._reent, %struct._reent* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  store i64 0, i64* %5, align 8
  br label %141

35:                                               ; preds = %26
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @OSLockMutex(i32 %40)
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @FS_ALIGN(i64 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ugt i64 %44, 16384
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i64 16384, i64* %11, align 8
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* @FS_ALIGNMENT, align 4
  %49 = load i64, i64* %11, align 8
  %50 = call i64 @memalign(i32 %48, i64 %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = load %struct._reent*, %struct._reent** %6, align 8
  %57 = getelementptr inbounds %struct._reent, %struct._reent* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @OSUnlockMutex(i32 %62)
  store i64 0, i64* %5, align 8
  br label %141

64:                                               ; preds = %47
  store i64 0, i64* %13, align 8
  br label %65

65:                                               ; preds = %130, %64
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %131

69:                                               ; preds = %65
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %13, align 8
  %73 = sub i64 %71, %72
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i64, i64* %11, align 8
  br label %81

77:                                               ; preds = %69
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %13, align 8
  %80 = sub i64 %78, %79
  br label %81

81:                                               ; preds = %77, %75
  %82 = phi i64 [ %76, %75 ], [ %80, %77 ]
  store i64 %82, i64* %14, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %13, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i64, i64* %14, align 8
  %88 = call i32 @memcpy(i8* %83, i8* %86, i64 %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %12, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @FSWriteFile(i32 %93, i32 %98, i8* %99, i32 1, i64 %100, i32 %103, i32 0, i32 -1)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %81
  %108 = load i32, i32* %15, align 4
  %109 = load %struct._reent*, %struct._reent** %6, align 8
  %110 = getelementptr inbounds %struct._reent, %struct._reent* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %131

111:                                              ; preds = %81
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i64, i64* %14, align 8
  %116 = icmp ugt i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i64 0, i64* %13, align 8
  br label %118

118:                                              ; preds = %117, %114
  br label %131

119:                                              ; preds = %111
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %13, align 8
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129
  br label %65

131:                                              ; preds = %118, %107, %65
  %132 = load i8*, i8** %12, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @OSUnlockMutex(i32 %138)
  %140 = load i64, i64* %13, align 8
  store i64 %140, i64* %5, align 8
  br label %141

141:                                              ; preds = %131, %54, %31, %22
  %142 = load i64, i64* %5, align 8
  ret i64 %142
}

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i64 @FS_ALIGN(i64) #1

declare dso_local i64 @memalign(i32, i64) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @FSWriteFile(i32, i32, i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
