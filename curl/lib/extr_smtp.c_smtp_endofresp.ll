; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_endofresp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_endofresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.smtp_conn }
%struct.smtp_conn = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SMTP_EHLO = common dso_local global i64 0, align 8
@SMTP_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i8*, i64, i32*)* @smtp_endofresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smtp_endofresp(%struct.connectdata* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.smtp_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [6 x i8], align 1
  store %struct.connectdata* %0, %struct.connectdata** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.smtp_conn* %15, %struct.smtp_conn** %10, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %37, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @ISDIGIT(i8 signext %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @ISDIGIT(i8 signext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @ISDIGIT(i8 signext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31, %25, %19, %4
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %5, align 4
  br label %93

39:                                               ; preds = %31
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %46, 5
  br i1 %47, label %48, label %69

48:                                               ; preds = %45, %39
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %11, align 4
  %50 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %51 = call i32 @memset(i8* %50, i8 signext 0, i32 6)
  %52 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp eq i64 %54, 5
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 5, i32 3
  %58 = call i32 @memcpy(i8* %52, i8* %53, i32 %57)
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %60 = call i32 @strtol(i8* %59, i32* null, i32 10)
  %61 = call i32 @curlx_sltosi(i32 %60)
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %48
  %67 = load i32*, i32** %9, align 8
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %48
  br label %91

69:                                               ; preds = %45
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 45
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = load %struct.smtp_conn*, %struct.smtp_conn** %10, align 8
  %77 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SMTP_EHLO, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.smtp_conn*, %struct.smtp_conn** %10, align 8
  %83 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SMTP_COMMAND, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81, %75
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %11, align 4
  %89 = load i32*, i32** %9, align 8
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %81, %69
  br label %91

91:                                               ; preds = %90, %68
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %37
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @curlx_sltosi(i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
