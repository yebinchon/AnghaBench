; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_fs_utils.c_CreateSubfolder.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_fs_utils.c_CreateSubfolder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateSubfolder(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcpy(i8* %23, i8* %24)
  %26 = call i32 @strlen(i8* %23)
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %35, %17
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %23, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %23, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %4, align 4
  br label %28

41:                                               ; preds = %28
  %42 = call i64 @CheckFile(i8* %23)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %83

45:                                               ; preds = %41
  %46 = call i32 @strlen(i8* %23)
  %47 = add nsw i32 %46, 2
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %9, align 8
  %50 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %10, align 8
  %51 = call i64 @strcpy(i8* %50, i8* %23)
  store i64 %51, i64* %11, align 8
  %52 = call i8* @strrchr(i8* %50, i8 signext 47)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %45
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i8, i8* %50, i64 %56
  store i8 47, i8* %57, align 1
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds i8, i8* %50, i64 %59
  store i8 0, i8* %60, align 1
  %61 = call i64 @stat(i8* %50, %struct.stat* %13)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %71

64:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %71

65:                                               ; preds = %45
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 0, i8* %69, align 1
  %70 = call i32 @CreateSubfolder(i8* %50)
  store i32 %70, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %65, %64, %63
  %72 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %8, align 4
  switch i32 %73, label %83 [
    i32 0, label %74
  ]

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %83

78:                                               ; preds = %74
  %79 = call i32 @mkdir(i8* %23, i32 511)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %83

82:                                               ; preds = %78
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %83

83:                                               ; preds = %82, %81, %77, %71, %44
  %84 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %84)
  br label %85

85:                                               ; preds = %83, %16
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strcpy(i8*, i8*) #1

declare dso_local i64 @CheckFile(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @mkdir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
