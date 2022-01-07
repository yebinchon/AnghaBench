; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_delete.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@MAX_URL_SIZE = common dso_local global i32 0, align 4
@ftp_delete.del_codes = internal constant [9 x i32] [i32 250, i32 421, i32 450, i32 500, i32 501, i32 502, i32 530, i32 550, i32 0], align 16
@ftp_delete.rmd_codes = internal constant [8 x i32] [i32 250, i32 421, i32 500, i32 501, i32 502, i32 530, i32 550, i32 0], align 16
@.str = private unnamed_addr constant [10 x i8] c"DELE %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"RMD %s\0D\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ftp_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_delete(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %3, align 8
  %10 = load i32, i32* @MAX_URL_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ftp_connect(%struct.TYPE_7__* %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %45

21:                                               ; preds = %1
  %22 = trunc i64 %11 to i32
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @snprintf(i8* %13, i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = call i32 @ftp_send_command(%struct.TYPE_8__* %27, i8* %13, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @ftp_delete.del_codes, i64 0, i64 0), i32* null)
  %29 = icmp eq i32 %28, 250
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %45

31:                                               ; preds = %21
  %32 = trunc i64 %11 to i32
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @snprintf(i8* %13, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = call i32 @ftp_send_command(%struct.TYPE_8__* %37, i8* %13, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @ftp_delete.rmd_codes, i64 0, i64 0), i32* null)
  %39 = icmp eq i32 %38, 250
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EIO, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %40
  br label %45

45:                                               ; preds = %44, %30, %20
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = call i32 @ftp_close(%struct.TYPE_7__* %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ftp_connect(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @ftp_send_command(%struct.TYPE_8__*, i8*, i32*, i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ftp_close(%struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
