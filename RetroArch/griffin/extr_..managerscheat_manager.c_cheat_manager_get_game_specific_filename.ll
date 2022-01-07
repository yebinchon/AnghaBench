; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_get_game_specific_filename.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_get_game_specific_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_system_info = type { i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @cheat_manager_get_game_specific_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cheat_manager_get_game_specific_filename(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.retro_system_info, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %11, align 8
  %21 = call %struct.TYPE_10__* (...) @global_get_ptr()
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %22 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %22, align 16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %78

29:                                               ; preds = %25
  %30 = call i32 @core_get_system_info(%struct.retro_system_info* %10)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %78

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %10, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %13, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @path_basename(i32 %39)
  store i8* %40, i8** %14, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @string_is_empty(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %33
  %48 = load i8*, i8** %13, align 8
  %49 = call i64 @string_is_empty(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %14, align 8
  %53 = call i64 @string_is_empty(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47, %33
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %78

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 0, i8* %58, align 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @fill_pathname_join(i8* %19, i8* %62, i8* %63, i64 %17)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = call i32 @path_is_valid(i8* %19)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call i32 @path_mkdir(i8* %19)
  br label %72

72:                                               ; preds = %70, %67
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @fill_pathname_join(i8* %74, i8* %19, i8* %75, i64 %76)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %78

78:                                               ; preds = %73, %55, %32, %28
  %79 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #2

declare dso_local %struct.TYPE_10__* @global_get_ptr(...) #2

declare dso_local i32 @core_get_system_info(%struct.retro_system_info*) #2

declare dso_local i8* @path_basename(i32) #2

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i64) #2

declare dso_local i32 @path_is_valid(i8*) #2

declare dso_local i32 @path_mkdir(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
