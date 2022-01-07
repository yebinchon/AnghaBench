; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_get_device_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_get_device_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c":/\00", align 1
@STD_MAX = common dso_local global i32 0, align 4
@devoptab_list = common dso_local global %struct.TYPE_3__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @fs_dev_get_device_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_dev_get_device_data(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %4, align 8
  %7 = bitcast [128 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 128, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %52

11:                                               ; preds = %1
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strncpy(i8* %12, i8* %13, i32 127)
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %16 = call i32 @strtok(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 3, i32* %6, align 4
  br label %17

17:                                               ; preds = %48, %11
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @STD_MAX, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @devoptab_list, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %4, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @strcmp(i8* %35, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %2, align 8
  br label %52

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %29, %21
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %17

51:                                               ; preds = %17
  store i32* null, i32** %2, align 8
  br label %52

52:                                               ; preds = %51, %41, %10
  %53 = load i32*, i32** %2, align 8
  ret i32* %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @strtok(i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
