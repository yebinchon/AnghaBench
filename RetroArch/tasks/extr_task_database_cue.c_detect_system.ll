; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_detect_system.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database_cue.c_detect_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }

@MAGIC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_COMPARING_WITH_KNOWN_MAGIC_NUMBERS = common dso_local global i32 0, align 4
@MAGIC_NUMBERS = common dso_local global %struct.TYPE_2__* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Could not read data at offset %d: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"PSP GAME\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"psp\00\00", align 1
@MSG_COULD_NOT_FIND_COMPATIBLE_SYSTEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @detect_system(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  %10 = load i32, i32* @MAGIC_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @MSG_COMPARING_WITH_KNOWN_MAGIC_NUMBERS, align 4
  %15 = call i32 @msg_hash_to_str(i32 %14)
  %16 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %77, %2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MAGIC_NUMBERS, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %80

25:                                               ; preds = %17
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MAGIC_NUMBERS, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i32 @intfstream_seek(i32* %26, i32 %32, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @MAGIC_LEN, align 4
  %37 = call i64 @intfstream_read(i32* %35, i8* %13, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %25
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MAGIC_NUMBERS, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %48)
  %50 = load i32, i32* @errno, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %103

52:                                               ; preds = %25
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* @MAGIC_LEN, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %77

58:                                               ; preds = %52
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MAGIC_NUMBERS, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MAGIC_LEN, align 4
  %66 = call i64 @memcmp(i32 %64, i8* %13, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MAGIC_NUMBERS, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %4, align 8
  store i8* %74, i8** %75, align 8
  store i32 0, i32* %5, align 4
  br label %103

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76, %57
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %17

80:                                               ; preds = %17
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* @SEEK_SET, align 4
  %83 = call i32 @intfstream_seek(i32* %81, i32 32776, i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i64 @intfstream_read(i32* %84, i8* %13, i32 8)
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = getelementptr inbounds i8, i8* %13, i64 8
  store i8 0, i8* %88, align 8
  %89 = call i32 @string_is_empty(i8* %13)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = call i64 @string_is_equal(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %95, align 8
  store i32 0, i32* %5, align 4
  br label %103

96:                                               ; preds = %91, %87
  br label %97

97:                                               ; preds = %96, %80
  %98 = load i32, i32* @MSG_COULD_NOT_FIND_COMPATIBLE_SYSTEM, align 4
  %99 = call i32 @msg_hash_to_str(i32 %98)
  %100 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %97, %94, %68, %40
  %104 = load i32, i32* %5, align 4
  %105 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %105)
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RARCH_LOG(i8*, i32, ...) #2

declare dso_local i32 @msg_hash_to_str(i32) #2

declare dso_local i32 @intfstream_seek(i32*, i32, i32) #2

declare dso_local i64 @intfstream_read(i32*, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @string_is_empty(i8*) #2

declare dso_local i64 @string_is_equal(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
