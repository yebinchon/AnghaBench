; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_add_device.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, %struct.TYPE_6__*, i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@devops_sd_fat = common dso_local global i32 0, align 4
@STD_MAX = common dso_local global i32 0, align 4
@devoptab_list = common dso_local global %struct.TYPE_6__** null, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @sd_fat_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_fat_add_device(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %125

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = sext i32 %21 to i64
  %23 = add i64 48, %22
  %24 = add i64 %23, 1
  %25 = trunc i64 %24 to i32
  %26 = call i64 @malloc(i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %10, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %125

32:                                               ; preds = %19
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 1
  %35 = bitcast %struct.TYPE_6__* %34 to i8*
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strcpy(i8* %36, i8* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = sext i32 %40 to i64
  %42 = add i64 48, %41
  %43 = add i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = call i64 @malloc(i32 %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %14, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %32
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = call i32 @free(%struct.TYPE_6__* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %125

53:                                               ; preds = %32
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 1
  %56 = bitcast %struct.TYPE_6__* %55 to i8*
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @strcpy(i8* %57, i8* %58)
  %60 = load i8*, i8** %12, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = call i64 @malloc(i32 4)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %53
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = call i32 @free(%struct.TYPE_6__* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %80 = call i32 @free(%struct.TYPE_6__* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  store i32 %81, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %125

82:                                               ; preds = %53
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @OSInitMutex(i64 %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = call i32 @memcpy(%struct.TYPE_6__* %87, i32* @devops_sd_fat, i32 48)
  %89 = load i8*, i8** %11, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %94, align 8
  store i32 3, i32* %13, align 4
  br label %95

95:                                               ; preds = %116, %82
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @STD_MAX, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devoptab_list, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %100, i64 %102
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devoptab_list, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %105, i64 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = icmp eq %struct.TYPE_6__* %104, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %99
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %111 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devoptab_list, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %111, i64 %113
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** %114, align 8
  store i32 0, i32* %5, align 4
  br label %125

115:                                              ; preds = %99
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %95

119:                                              ; preds = %95
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %121 = call i32 @free(%struct.TYPE_6__* %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %123 = call i32 @free(%struct.TYPE_6__* %122)
  %124 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %124, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %125

125:                                              ; preds = %119, %109, %76, %49, %30, %17
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @OSInitMutex(i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
