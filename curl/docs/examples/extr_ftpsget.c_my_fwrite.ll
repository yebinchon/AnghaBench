; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_ftpsget.c_my_fwrite.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_ftpsget.c_my_fwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FtpFile = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @my_fwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @my_fwrite(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.FtpFile*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = bitcast i8* %11 to %struct.FtpFile*
  store %struct.FtpFile* %12, %struct.FtpFile** %10, align 8
  %13 = load %struct.FtpFile*, %struct.FtpFile** %10, align 8
  %14 = getelementptr inbounds %struct.FtpFile, %struct.FtpFile* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %4
  %18 = load %struct.FtpFile*, %struct.FtpFile** %10, align 8
  %19 = getelementptr inbounds %struct.FtpFile, %struct.FtpFile* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @fopen(i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.FtpFile*, %struct.FtpFile** %10, align 8
  %23 = getelementptr inbounds %struct.FtpFile, %struct.FtpFile* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.FtpFile*, %struct.FtpFile** %10, align 8
  %25 = getelementptr inbounds %struct.FtpFile, %struct.FtpFile* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  store i64 -1, i64* %5, align 8
  br label %38

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.FtpFile*, %struct.FtpFile** %10, align 8
  %35 = getelementptr inbounds %struct.FtpFile, %struct.FtpFile* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @fwrite(i8* %31, i64 %32, i64 %33, i64 %36)
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %30, %28
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i64 @fopen(i32, i8*) #1

declare dso_local i64 @fwrite(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
