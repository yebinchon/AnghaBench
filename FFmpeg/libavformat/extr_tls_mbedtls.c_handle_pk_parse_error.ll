; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_mbedtls.c_handle_pk_parse_error.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_mbedtls.c_handle_pk_parse_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"Read of key file failed. Is it actually there, are the access permissions correct?\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"A password for the private key is missing.\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"The given password for the private key is wrong.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"mbedtls_pk_parse_key returned -0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @handle_pk_parse_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_pk_parse_error(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %18 [
    i32 130, label %6
    i32 128, label %10
    i32 129, label %14
  ]

6:                                                ; preds = %2
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @AV_LOG_ERROR, align 4
  %9 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %7, i32 %8, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  br label %24

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @AV_LOG_ERROR, align 4
  %13 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %11, i32 %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %24

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @AV_LOG_ERROR, align 4
  %17 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %15, i32 %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %24

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @AV_LOG_ERROR, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %19, i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %14, %10, %6
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
