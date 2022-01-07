; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_StateRead.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_StateRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILENAME_MAX = common dso_local global i32 0, align 4
@SIO_drive_status = common dso_local global i64* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SIO_StateRead() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %45, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %48

9:                                                ; preds = %6
  %10 = load i32, i32* @FILENAME_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = call i32 @StateSav_ReadINT(i32* %2, i32 1)
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64*, i64** @SIO_drive_status, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64 %16, i64* %20, align 8
  %21 = call i32 @StateSav_ReadFNAME(i8* %13)
  %22 = getelementptr inbounds i8, i8* %13, i64 0
  %23 = load i8, i8* %22, align 16
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %9
  store i32 4, i32* %5, align 4
  br label %41

27:                                               ; preds = %9
  %28 = load i32, i32* %2, align 4
  switch i32 %28, label %39 [
    i32 129, label %29
    i32 128, label %34
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @SIO_Mount(i32 %31, i8* %13, i32 %32)
  br label %40

34:                                               ; preds = %27
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @SIO_Mount(i32 %36, i8* %13, i32 %37)
  br label %40

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %34, %29
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %49 [
    i32 0, label %44
    i32 4, label %45
  ]

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %6

48:                                               ; preds = %6
  ret void

49:                                               ; preds = %41
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StateSav_ReadINT(i32*, i32) #2

declare dso_local i32 @StateSav_ReadFNAME(i8*) #2

declare dso_local i32 @SIO_Mount(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
