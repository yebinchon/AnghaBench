; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tnote.c_taosGetNoteName.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tnote.c_taosGetNoteName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@taosNoteFileNum = common dso_local global i32 0, align 4
@NOTE_FILE_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%d.0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%d.1\00", align 1
@taosNoteName = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosGetNoteName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @taosNoteFileNum, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %48

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %44, %11
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @taosNoteFileNum, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load i32, i32* @NOTE_FILE_NAME_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %4, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %5, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22)
  %24 = call i32 @taosCheckNoteIsOpen(i8* %20)
  store i32 %24, i32* %6, align 4
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %26)
  %28 = call i32 @taosCheckNoteIsOpen(i8* %20)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** @taosNoteName, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %37)
  store i32 1, i32* %8, align 4
  br label %40

39:                                               ; preds = %31, %16
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %53 [
    i32 0, label %43
    i32 1, label %52
  ]

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %12

47:                                               ; preds = %12
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i8*, i8** @taosNoteName, align 8
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @strcpy(i8* %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %40
  ret void

53:                                               ; preds = %40
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local i32 @taosCheckNoteIsOpen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
