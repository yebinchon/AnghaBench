; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_fslog.c_fslog_extmod_msgtracer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_fslog.c_fslog_extmod_msgtracer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@PROC_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@MAXCOMLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"messagetracer\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"com.apple.message.domain\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"com.apple.kernel.external_modification\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"com.apple.message.signature\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"com.apple.message.signature2\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"com.apple.message.result\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"noop\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"com.apple.message.summarize\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fslog_extmod_msgtracer(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PROC_NULL, align 8
  %12 = icmp ne %struct.TYPE_6__* %10, %11
  br i1 %12, label %13, label %85

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PROC_NULL, align 8
  %16 = icmp ne %struct.TYPE_6__* %14, %15
  br i1 %16, label %17, label %85

17:                                               ; preds = %13
  %18 = load i32, i32* @MAXCOMLEN, align 4
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 8
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = load i32, i32* @MAXCOMLEN, align 4
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 8
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %8, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = trunc i64 %22 to i32
  %35 = call i32 @strlcpy(i8* %24, i32 %33, i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @uuid_unparse_upper(i32 %38, i8* %39)
  %41 = trunc i64 %22 to i32
  %42 = call i32 @strlcat(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = trunc i64 %22 to i32
  %45 = call i32 @strlcat(i8* %24, i8* %43, i32 %44)
  %46 = trunc i64 %22 to i32
  %47 = call i32 @strlcat(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = call i64 @strlen(i8* %24)
  %49 = add nsw i64 %48, 1
  %50 = trunc i64 %22 to i32
  %51 = call i64 @escape_str(i8* %24, i64 %49, i32 %50)
  %52 = icmp ne i64 0, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %17
  store i32 1, i32* %9, align 4
  br label %81

54:                                               ; preds = %17
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = trunc i64 %29 to i32
  %59 = call i32 @strlcpy(i8* %30, i32 %57, i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @uuid_unparse_upper(i32 %62, i8* %63)
  %65 = trunc i64 %29 to i32
  %66 = call i32 @strlcat(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i8*, i8** %5, align 8
  %68 = trunc i64 %29 to i32
  %69 = call i32 @strlcat(i8* %30, i8* %67, i32 %68)
  %70 = trunc i64 %29 to i32
  %71 = call i32 @strlcat(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = call i64 @strlen(i8* %30)
  %73 = add nsw i64 %72, 1
  %74 = trunc i64 %29 to i32
  %75 = call i64 @escape_str(i8* %30, i64 %73, i32 %74)
  %76 = icmp ne i64 0, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  br label %81

78:                                               ; preds = %54
  %79 = load i32, i32* @LOG_DEBUG, align 4
  %80 = call i32 @kern_asl_msg(i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32* null)
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %78, %77, %53
  %82 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %9, align 4
  switch i32 %83, label %86 [
    i32 0, label %84
    i32 1, label %85
  ]

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %81, %84, %13, %2
  ret void

86:                                               ; preds = %81
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @uuid_unparse_upper(i32, i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i64 @escape_str(i8*, i64, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @kern_asl_msg(i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
