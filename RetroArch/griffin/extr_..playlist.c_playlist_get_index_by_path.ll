; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_playlist_get_index_by_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_playlist_get_index_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.playlist_entry* }
%struct.playlist_entry = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_get_index_by_path(%struct.TYPE_3__* %0, i8* %1, %struct.playlist_entry** %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.playlist_entry**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.playlist_entry** %2, %struct.playlist_entry*** %6, align 8
  %11 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %15, align 16
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.playlist_entry**, %struct.playlist_entry*** %6, align 8
  %20 = icmp ne %struct.playlist_entry** %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @string_is_empty(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %18, %3
  store i32 1, i32* %10, align 4
  br label %60

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = trunc i64 %12 to i32
  %29 = call i32 @strlcpy(i8* %14, i8* %27, i32 %28)
  %30 = trunc i64 %12 to i32
  %31 = call i32 @path_resolve_realpath(i8* %14, i32 %30, i32 1)
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %56, %26
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load %struct.playlist_entry*, %struct.playlist_entry** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %41, i64 %42
  %44 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @playlist_path_equal(i8* %14, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %56

49:                                               ; preds = %38
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.playlist_entry*, %struct.playlist_entry** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %52, i64 %53
  %55 = load %struct.playlist_entry**, %struct.playlist_entry*** %6, align 8
  store %struct.playlist_entry* %54, %struct.playlist_entry** %55, align 8
  br label %59

56:                                               ; preds = %48
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %32

59:                                               ; preds = %49, %32
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %25
  %61 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %10, align 4
  switch i32 %62, label %64 [
    i32 0, label %63
    i32 1, label %63
  ]

63:                                               ; preds = %60, %60
  ret void

64:                                               ; preds = %60
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @path_resolve_realpath(i8*, i32, i32) #2

declare dso_local i32 @playlist_path_equal(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
