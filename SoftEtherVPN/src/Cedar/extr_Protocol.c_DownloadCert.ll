; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_DownloadCert.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_DownloadCert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Trying to download a cert from %s ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Download failed.\0A\00", align 1
@CERT_HTTP_DOWNLOAD_TIMEOUT = common dso_local global i32 0, align 4
@CERT_HTTP_DOWNLOAD_MAXSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Download ok.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DownloadCert(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @IsEmptyStr(i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %37

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @ParseUrl(i32* %5, i8* %14, i32 0, i32* null)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %37

19:                                               ; preds = %11
  %20 = load i32, i32* @CERT_HTTP_DOWNLOAD_TIMEOUT, align 4
  %21 = load i32, i32* @CERT_HTTP_DOWNLOAD_TIMEOUT, align 4
  %22 = load i32, i32* @CERT_HTTP_DOWNLOAD_MAXSIZE, align 4
  %23 = call i32* @HttpRequestEx(i32* %5, i32* null, i32 %20, i32 %21, i32* null, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %37

28:                                               ; preds = %19
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @IsBase64(i32* %30)
  %32 = call i32* @BufToX(i32* %29, i32 %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @FreeBuf(i32* %33)
  %35 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** %6, align 8
  store i32* %36, i32** %2, align 8
  br label %37

37:                                               ; preds = %28, %26, %17, %10
  %38 = load i32*, i32** %2, align 8
  ret i32* %38
}

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32 @ParseUrl(i32*, i8*, i32, i32*) #1

declare dso_local i32* @HttpRequestEx(i32*, i32*, i32, i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32* @BufToX(i32*, i32) #1

declare dso_local i32 @IsBase64(i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
