; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_remove_device.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c":/\00", align 1
@STD_MAX = common dso_local global i32 0, align 4
@devoptab_list = common dso_local global %struct.TYPE_6__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**, i8**)* @sd_fat_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_fat_remove_device(i8* %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %14 = bitcast [128 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 128, i1 false)
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strncpy(i8* %15, i8* %16, i32 127)
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %19 = call i32 @strtok(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 3, i32* %12, align 4
  br label %20

20:                                               ; preds = %107, %4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @STD_MAX, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %110

24:                                               ; preds = %20
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devoptab_list, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %10, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %106

32:                                               ; preds = %24
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %106

37:                                               ; preds = %32
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @strcmp(i8* %38, i64 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %105

44:                                               ; preds = %37
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devoptab_list, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devoptab_list, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %48, i64 %50
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %102

56:                                               ; preds = %44
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = bitcast %struct.TYPE_6__* %59 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %13, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %7, align 8
  store i8* %63, i8** %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** %8, align 8
  store i8* %67, i8** %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @strlen(i32 %71)
  %73 = add nsw i64 %72, 1
  %74 = call i64 @malloc(i64 %73)
  %75 = inttoptr i64 %74 to i8*
  %76 = load i8**, i8*** %9, align 8
  store i8* %75, i8** %76, align 8
  %77 = load i8**, i8*** %9, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %56
  %81 = load i8**, i8*** %9, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @strcpy(i8* %82, i32 %85)
  br label %87

87:                                               ; preds = %80, %56
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = icmp ne %struct.TYPE_6__* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = call i32 @free(%struct.TYPE_6__* %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = call i32 @free(%struct.TYPE_6__* %100)
  br label %102

102:                                              ; preds = %97, %44
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %104 = call i32 @free(%struct.TYPE_6__* %103)
  store i32 0, i32* %5, align 4
  br label %111

105:                                              ; preds = %37
  br label %106

106:                                              ; preds = %105, %32, %24
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %20

110:                                              ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %102
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @strtok(i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i64) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @free(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
