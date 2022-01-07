; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_translate_code.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_translate_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i32 0, align 4
@TFTP_ERR_NONE = common dso_local global i32 0, align 4
@CURLE_TFTP_NOTFOUND = common dso_local global i32 0, align 4
@CURLE_TFTP_PERM = common dso_local global i32 0, align 4
@CURLE_REMOTE_DISK_FULL = common dso_local global i32 0, align 4
@CURLE_TFTP_ILLEGAL = common dso_local global i32 0, align 4
@CURLE_TFTP_UNKNOWNID = common dso_local global i32 0, align 4
@CURLE_REMOTE_FILE_EXISTS = common dso_local global i32 0, align 4
@CURLE_TFTP_NOSUCHUSER = common dso_local global i32 0, align 4
@CURLE_OPERATION_TIMEDOUT = common dso_local global i32 0, align 4
@CURLE_COULDNT_CONNECT = common dso_local global i32 0, align 4
@CURLE_ABORTED_BY_CALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tftp_translate_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tftp_translate_code(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @CURLE_OK, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @TFTP_ERR_NONE, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %28 [
    i32 132, label %10
    i32 131, label %12
    i32 137, label %14
    i32 129, label %16
    i32 135, label %16
    i32 128, label %18
    i32 136, label %20
    i32 133, label %22
    i32 130, label %24
    i32 134, label %26
  ]

10:                                               ; preds = %8
  %11 = load i32, i32* @CURLE_TFTP_NOTFOUND, align 4
  store i32 %11, i32* %3, align 4
  br label %30

12:                                               ; preds = %8
  %13 = load i32, i32* @CURLE_TFTP_PERM, align 4
  store i32 %13, i32* %3, align 4
  br label %30

14:                                               ; preds = %8
  %15 = load i32, i32* @CURLE_REMOTE_DISK_FULL, align 4
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %8, %8
  %17 = load i32, i32* @CURLE_TFTP_ILLEGAL, align 4
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %8
  %19 = load i32, i32* @CURLE_TFTP_UNKNOWNID, align 4
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %8
  %21 = load i32, i32* @CURLE_REMOTE_FILE_EXISTS, align 4
  store i32 %21, i32* %3, align 4
  br label %30

22:                                               ; preds = %8
  %23 = load i32, i32* @CURLE_TFTP_NOSUCHUSER, align 4
  store i32 %23, i32* %3, align 4
  br label %30

24:                                               ; preds = %8
  %25 = load i32, i32* @CURLE_OPERATION_TIMEDOUT, align 4
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %8
  %27 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %8
  %29 = load i32, i32* @CURLE_ABORTED_BY_CALLBACK, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %26, %24, %22, %20, %18, %16, %14, %12, %10
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @CURLE_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
