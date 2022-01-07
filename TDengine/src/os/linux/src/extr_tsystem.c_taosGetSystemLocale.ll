; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tsystem.c_taosGetSystemLocale.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tsystem.c_taosGetSystemLocale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@TSDB_CFG_CSTATUS_DEFAULT = common dso_local global i64 0, align 8
@LC_CTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"can't get locale from system\00", align 1
@tsLocale = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"locale not configured, set to system default:%s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@tsCharset = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"charset not configured, set to system default:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosGetSystemLocale() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8 46, i8* %1, align 1
  store i8* null, i8** %2, align 8
  %7 = call %struct.TYPE_3__* @tsGetConfigOption(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TSDB_CFG_CSTATUS_DEFAULT, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = load i32, i32* @LC_CTYPE, align 4
  %18 = call i8* @setlocale(i32 %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %2, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @pError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %31

23:                                               ; preds = %16
  %24 = load i32, i32* @tsLocale, align 4
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* @tsLocale, align 4
  %27 = call i32 @tListLen(i32 %26)
  %28 = call i32 @strncpy(i32 %24, i8* %25, i32 %27)
  %29 = load i32, i32* @tsLocale, align 4
  %30 = call i32 @pPrint(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %23, %21
  br label %32

32:                                               ; preds = %31, %10, %0
  %33 = call %struct.TYPE_3__* @tsGetConfigOption(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %4, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %63

36:                                               ; preds = %32
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TSDB_CFG_CSTATUS_DEFAULT, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  %43 = load i32, i32* @tsLocale, align 4
  %44 = load i8, i8* %1, align 1
  %45 = call i8* @strrchr(i32 %43, i8 signext %44)
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @taosCharsetReplace(i8* %51)
  store i8* %52, i8** %6, align 8
  %53 = load i32, i32* @tsCharset, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @tsCharset, align 4
  %56 = call i32 @tListLen(i32 %55)
  %57 = call i32 @strncpy(i32 %53, i8* %54, i32 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i32, i32* @tsCharset, align 4
  %61 = call i32 @pPrint(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %48, %42
  br label %63

63:                                               ; preds = %62, %36, %32
  ret void
}

declare dso_local %struct.TYPE_3__* @tsGetConfigOption(i8*) #1

declare dso_local i8* @setlocale(i32, i8*) #1

declare dso_local i32 @pError(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @tListLen(i32) #1

declare dso_local i32 @pPrint(i8*, i32) #1

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i8* @taosCharsetReplace(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
