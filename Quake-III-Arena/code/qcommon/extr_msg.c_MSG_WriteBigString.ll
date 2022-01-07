; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_msg.c_MSG_WriteBigString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_msg.c_MSG_WriteBigString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BIG_INFO_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"MSG_WriteString: BIG_INFO_STRING\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSG_WriteBigString(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @MSG_WriteData(i32* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %61

15:                                               ; preds = %2
  %16 = load i32, i32* @BIG_INFO_STRING, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BIG_INFO_STRING, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = call i32 @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @MSG_WriteData(i32* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 1, i32* %9, align 4
  br label %57

29:                                               ; preds = %15
  %30 = load i8*, i8** %4, align 8
  %31 = trunc i64 %17 to i32
  %32 = call i32 @Q_strncpyz(i8* %19, i8* %30, i32 %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %49, %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = bitcast i8* %19 to i32*
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 127
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %19, i64 %46
  store i8 46, i8* %47, align 1
  br label %48

48:                                               ; preds = %44, %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %33

52:                                               ; preds = %33
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @MSG_WriteData(i32* %53, i8* %19, i32 %55)
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %52, %25
  %58 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %9, align 4
  switch i32 %59, label %62 [
    i32 0, label %60
    i32 1, label %61
  ]

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %57, %60, %12
  ret void

62:                                               ; preds = %57
  unreachable
}

declare dso_local i32 @MSG_WriteData(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
