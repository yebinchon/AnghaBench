; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_pl_thumbnail_download.c_download_pl_thumbnail.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_pl_thumbnail_download.c_download_pl_thumbnail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CB_SINGLE_THUMBNAIL = common dso_local global i32 0, align 4
@cb_generic_download = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @download_pl_thumbnail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @download_pl_thumbnail(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2048 x i8], align 16
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %12, align 16
  %13 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %13, align 16
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = trunc i64 %9 to i32
  %16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %17 = call i64 @get_thumbnail_paths(%struct.TYPE_6__* %14, i8* %11, i32 %15, i8* %16, i32 2048)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %1
  %20 = call i32 @path_is_valid(i8* %11)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22, %19
  %28 = call i64 @calloc(i32 1, i32 8)
  %29 = inttoptr i64 %28 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  br label %50

33:                                               ; preds = %27
  %34 = load i32, i32* @MENU_ENUM_LABEL_CB_SINGLE_THUMBNAIL, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strlcpy(i32 %39, i8* %11, i32 4)
  %41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %42 = load i32, i32* @cb_generic_download, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = call i64 @task_push_http_transfer(i8* %41, i32 1, i32* null, i32 %42, %struct.TYPE_7__* %43)
  %45 = inttoptr i64 %44 to i32*
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  br label %48

48:                                               ; preds = %33, %22
  br label %49

49:                                               ; preds = %48, %1
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %7, align 4
  switch i32 %52, label %54 [
    i32 0, label %53
    i32 1, label %53
  ]

53:                                               ; preds = %50, %50
  ret void

54:                                               ; preds = %50
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @get_thumbnail_paths(%struct.TYPE_6__*, i8*, i32, i8*, i32) #2

declare dso_local i32 @path_is_valid(i8*) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i64 @task_push_http_transfer(i8*, i32, i32*, i32, %struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
