; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_auth.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@CONTROL_BUFFER_SIZE = common dso_local global i32 0, align 4
@ftp_auth.user_codes = internal constant [3 x i32] [i32 331, i32 230, i32 0], align 4
@ftp_auth.pass_codes = internal constant [2 x i32] [i32 230, i32 0], align 4
@.str = private unnamed_addr constant [10 x i8] c"USER %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"PASS %s\0D\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @ftp_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_auth(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = trunc i64 %9 to i32
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = call i32 @ftp_send_command(%struct.TYPE_4__* %17, i8* %11, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @ftp_auth.user_codes, i64 0, i64 0), i32* null)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 331
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = trunc i64 %9 to i32
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @snprintf(i8* %11, i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = call i32 @ftp_send_command(%struct.TYPE_4__* %32, i8* %11, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ftp_auth.pass_codes, i64 0, i64 0), i32* null)
  store i32 %33, i32* %6, align 4
  br label %37

34:                                               ; preds = %21
  %35 = load i32, i32* @EACCES, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %45

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 230
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EACCES, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %45

44:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %41, %34
  %46 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @ftp_send_command(%struct.TYPE_4__*, i8*, i32*, i32*) #2

declare dso_local i32 @AVERROR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
