; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_endofresp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_endofresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pop3_conn }
%struct.pop3_conn = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"-ERR\00", align 1
@TRUE = common dso_local global i32 0, align 4
@POP3_CAPA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"+OK\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i8*, i64, i32*)* @pop3_endofresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop3_endofresp(%struct.connectdata* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pop3_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.pop3_conn* %13, %struct.pop3_conn** %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp uge i64 %14, 4
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %17, i32 4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %9, align 8
  store i32 45, i32* %21, align 4
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %5, align 4
  br label %68

23:                                               ; preds = %16, %4
  %24 = load %struct.pop3_conn*, %struct.pop3_conn** %10, align 8
  %25 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @POP3_CAPA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = icmp uge i64 %30, 1
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 46
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32*, i32** %9, align 8
  store i32 43, i32* %39, align 4
  br label %42

40:                                               ; preds = %32, %29
  %41 = load i32*, i32** %9, align 8
  store i32 42, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %5, align 4
  br label %68

44:                                               ; preds = %23
  %45 = load i64, i64* %8, align 8
  %46 = icmp uge i64 %45, 3
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 3)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** %9, align 8
  store i32 43, i32* %52, align 4
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %5, align 4
  br label %68

54:                                               ; preds = %47, %44
  %55 = load i64, i64* %8, align 8
  %56 = icmp uge i64 %55, 1
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 43
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32*, i32** %9, align 8
  store i32 42, i32* %64, align 4
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %5, align 4
  br label %68

66:                                               ; preds = %57, %54
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %63, %51, %42, %20
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
