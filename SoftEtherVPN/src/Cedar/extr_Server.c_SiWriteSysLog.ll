; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteSysLog.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteSysLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@MAX_HOST_NAME_LEN = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@GSF_DISABLE_SYSLOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i32] [i32 91, i32 37, i32 83, i32 47, i32 86, i32 80, i32 78, i32 47, i32 37, i32 83, i32 93, i32 32, i32 40, i32 37, i32 83, i32 41, i32 32, i32 60, i32 37, i32 83, i32 62, i32 58, i32 32, i32 37, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [23 x i32] [i32 91, i32 37, i32 83, i32 47, i32 86, i32 80, i32 78, i32 93, i32 32, i32 40, i32 37, i32 83, i32 41, i32 32, i32 60, i32 37, i32 83, i32 62, i32 58, i32 32, i32 37, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Syslog send: %S\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiWriteSysLog(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [1024 x i32], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32, i32* @MAX_HOST_NAME_LEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = icmp eq %struct.TYPE_3__* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %4
  store i32 1, i32* %14, align 4
  br label %76

32:                                               ; preds = %28
  %33 = load i32, i32* @GSF_DISABLE_SYSLOG, align 4
  %34 = call i64 @GetGlobalServerFlag(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %14, align 4
  br label %76

37:                                               ; preds = %32
  %38 = trunc i64 %17 to i32
  %39 = call i32 @GetMachineName(i8* %19, i32 %38)
  %40 = call i32 @LocalTime(i32* %13)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = trunc i64 %21 to i32
  %47 = call i32 (...) @GetCurrentTimezone()
  %48 = call i32 @GetDateTimeStrRFC3339(i8* %22, i32 %46, i32* %13, i32 %47)
  br label %52

49:                                               ; preds = %37
  %50 = trunc i64 %21 to i32
  %51 = call i32 @GetDateTimeStrMilli(i8* %22, i32 %50, i32* %13)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @IsEmptyStr(i8* %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 (i32*, i32, i8*, i8*, i8*, i8*, i8*, ...) @UniFormat(i32* %57, i32 4096, i8* bitcast ([26 x i32]* @.str to i8*), i8* %19, i8* %58, i8* %22, i8* %59, i32* %60)
  br label %68

62:                                               ; preds = %52
  %63 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %64 = load i8*, i8** %6, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = bitcast i32* %65 to i8*
  %67 = call i32 (i32*, i32, i8*, i8*, i8*, i8*, i8*, ...) @UniFormat(i32* %63, i32 4096, i8* bitcast ([23 x i32]* @.str.1 to i8*), i8* %19, i8* %22, i8* %64, i8* %66)
  br label %68

68:                                               ; preds = %62, %56
  %69 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %70 = call i32 @Debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %75 = call i32 @SendSysLog(i32 %73, i32* %74)
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %68, %36, %31
  %77 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %14, align 4
  switch i32 %78, label %80 [
    i32 0, label %79
    i32 1, label %79
  ]

79:                                               ; preds = %76, %76
  ret void

80:                                               ; preds = %76
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetGlobalServerFlag(i32) #2

declare dso_local i32 @GetMachineName(i8*, i32) #2

declare dso_local i32 @LocalTime(i32*) #2

declare dso_local i32 @GetDateTimeStrRFC3339(i8*, i32, i32*, i32) #2

declare dso_local i32 @GetCurrentTimezone(...) #2

declare dso_local i32 @GetDateTimeStrMilli(i8*, i32, i32*) #2

declare dso_local i32 @IsEmptyStr(i8*) #2

declare dso_local i32 @UniFormat(i32*, i32, i8*, i8*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @Debug(i8*, i32*) #2

declare dso_local i32 @SendSysLog(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
