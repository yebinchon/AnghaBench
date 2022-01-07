; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiGetCurrentRegion.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiGetCurrentRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@SE_LANG_JAPANESE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"JP\00", align 1
@SE_LANG_CHINESE_ZH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"CN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiGetCurrentRegion(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @ClearStr(i8* %7, i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  br label %52

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @Lock(i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @StrCpy(i8* %21, i32 %22, i8* %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @Unlock(i32 %29)
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @IsEmptyStr(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %16
  %35 = call i64 (...) @GetCurrentLangId()
  %36 = load i64, i64* @SE_LANG_JAPANESE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @StrCpy(i8* %39, i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %51

42:                                               ; preds = %34
  %43 = call i64 (...) @GetCurrentLangId()
  %44 = load i64, i64* @SE_LANG_CHINESE_ZH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @StrCpy(i8* %47, i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %15, %51, %16
  ret void
}

declare dso_local i32 @ClearStr(i8*, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i64 @GetCurrentLangId(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
