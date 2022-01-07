; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_remove_device.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c":/\00", align 1
@STD_MAX = common dso_local global i32 0, align 4
@devoptab_list = common dso_local global %struct.TYPE_6__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fs_dev_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_dev_remove_device(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  %8 = bitcast [128 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 128, i1 false)
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %95

12:                                               ; preds = %1
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strncpy(i8* %13, i8* %14, i32 127)
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %17 = call i32 @strtok(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 3, i32* %6, align 4
  br label %18

18:                                               ; preds = %91, %12
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @STD_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devoptab_list, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %23, i64 %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %4, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %90

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %30
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @strcmp(i8* %36, i64 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %89

42:                                               ; preds = %35
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devoptab_list, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devoptab_list, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 %48
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %86

54:                                               ; preds = %42
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = bitcast %struct.TYPE_6__* %57 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %7, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @IOSUHAX_FSA_Unmount(i32 %66, i32 %69, i32 2)
  br label %71

71:                                               ; preds = %63, %54
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = call i32 @free(%struct.TYPE_6__* %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = call i32 @free(%struct.TYPE_6__* %84)
  br label %86

86:                                               ; preds = %81, %42
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = call i32 @free(%struct.TYPE_6__* %87)
  store i32 0, i32* %2, align 4
  br label %95

89:                                               ; preds = %35
  br label %90

90:                                               ; preds = %89, %30, %22
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %18

94:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %86, %11
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @strtok(i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i64) #2

declare dso_local i32 @IOSUHAX_FSA_Unmount(i32, i32, i32) #2

declare dso_local i32 @free(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
