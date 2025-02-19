; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_playlist.c_playlist_set_default_core_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_playlist.c_playlist_set_default_core_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1
@PLAYLIST_SAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_set_default_core_path(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %12, align 16
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @string_is_empty(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %2
  store i32 1, i32* %7, align 4
  br label %57

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = trunc i64 %9 to i32
  %23 = call i32 @strlcpy(i8* %11, i8* %21, i32 %22)
  %24 = call i32 @string_is_equal(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @PLAYLIST_SAVE, align 4
  %28 = trunc i64 %9 to i32
  %29 = call i32 @playlist_resolve_path(i32 %27, i8* %11, i32 %28)
  br label %30

30:                                               ; preds = %26, %20
  %31 = call i64 @string_is_empty(i8* %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  br label %57

34:                                               ; preds = %30
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @string_is_equal(i8* %37, i8* %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @free(i8* %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = call i8* @strdup(i8* %11)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %50, %34
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %33, %19
  %58 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %7, align 4
  switch i32 %59, label %61 [
    i32 0, label %60
    i32 1, label %60
  ]

60:                                               ; preds = %57, %57
  ret void

61:                                               ; preds = %57
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @string_is_equal(i8*, i8*) #2

declare dso_local i32 @playlist_resolve_path(i32, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
