; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kmake.c_read_insert.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kmake.c_read_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INSERT_LENGTH = common dso_local global i32 0, align 4
@MAX_LINE_LENGTH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Buffer overflow reading inserts\00", align 1
@g_input_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Premature EOF while reading inserts\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ID_INPUT_SEPARATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_insert(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* @MAX_INSERT_LENGTH, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = load i8*, i8** @MAX_LINE_LENGTH, align 8
  %13 = ptrtoint i8* %11 to i64
  %14 = ptrtoint i8* %12 to i64
  %15 = sub i64 %13, %14
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %4, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %27, %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp uge i8* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @error_exit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  br label %27

27:                                               ; preds = %26
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** @MAX_LINE_LENGTH, align 8
  %30 = load i32, i32* @g_input_file, align 4
  %31 = call i32 @fgetline(i8* %28, i8* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %17

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @error_exit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %5, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %3, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %3, align 8
  %44 = ptrtoint i8* %42 to i32
  %45 = call i32 @strcpy(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %76, %37
  %47 = load i8*, i8** %3, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = icmp uge i8* %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @error_exit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i8*, i8** %3, align 8
  %54 = load i8*, i8** @MAX_LINE_LENGTH, align 8
  %55 = load i32, i32* @g_input_file, align 4
  %56 = call i32 @fgetline(i8* %53, i8* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @error_exit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %52
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* @ID_INPUT_SEPARATOR, align 4
  %63 = call i64 @strcmp(i8* %61, i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %85

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i8*, i8** %6, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i8*, i8** %3, align 8
  store i8* %73, i8** %6, align 8
  br label %74

74:                                               ; preds = %72, %69
  br label %76

75:                                               ; preds = %66
  store i8* null, i8** %6, align 8
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32, i32* %5, align 4
  %78 = load i8*, i8** %3, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %3, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %3, align 8
  %83 = ptrtoint i8* %81 to i32
  %84 = call i32 @strcpy(i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %46

85:                                               ; preds = %65
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** %3, align 8
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i8*, i8** %3, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %3, align 8
  store i8 0, i8* %91, align 1
  ret void
}

declare dso_local i32 @error_exit(i8*) #1

declare dso_local i32 @fgetline(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
