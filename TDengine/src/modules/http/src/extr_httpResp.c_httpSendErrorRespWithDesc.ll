; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpResp.c_httpSendErrorRespWithDesc.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpResp.c_httpSendErrorRespWithDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Internal Server Error\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Not Found\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Method Not Allowed\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"HTTP Version Not Supported\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Not Acceptable\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Request Entity Too Large\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Conflict\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Request-URI Invalid\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Unauthorized\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Bad Request\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Too many connections\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Insufficient Storage\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"context:%p, fd:%d, ip:%s, error:%d not recognized\00", align 1
@httpMsg = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpSendErrorRespWithDesc(%struct.TYPE_5__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 500, i32* %7, align 4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %25 [
    i32 160, label %10
    i32 162, label %11
    i32 128, label %11
    i32 167, label %12
    i32 166, label %13
    i32 168, label %14
    i32 163, label %15
    i32 171, label %16
    i32 170, label %16
    i32 165, label %17
    i32 181, label %18
    i32 164, label %18
    i32 172, label %19
    i32 161, label %20
    i32 176, label %21
    i32 182, label %21
    i32 179, label %22
    i32 174, label %22
    i32 169, label %22
    i32 178, label %22
    i32 173, label %22
    i32 175, label %23
    i32 159, label %24
    i32 158, label %24
    i32 148, label %24
    i32 147, label %24
    i32 146, label %24
    i32 143, label %24
    i32 142, label %24
    i32 144, label %24
    i32 145, label %24
    i32 131, label %24
    i32 130, label %24
    i32 129, label %24
    i32 139, label %24
    i32 138, label %24
    i32 137, label %24
    i32 134, label %24
    i32 136, label %24
    i32 135, label %24
    i32 132, label %24
    i32 133, label %24
    i32 141, label %24
    i32 140, label %24
    i32 157, label %24
    i32 156, label %24
    i32 155, label %24
    i32 152, label %24
    i32 154, label %24
    i32 153, label %24
    i32 150, label %24
    i32 151, label %24
    i32 180, label %24
    i32 177, label %24
    i32 149, label %24
    i32 184, label %24
    i32 183, label %24
  ]

10:                                               ; preds = %3
  store i32 200, i32* %7, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %35

11:                                               ; preds = %3, %3
  store i32 404, i32* %7, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %35

12:                                               ; preds = %3
  store i32 405, i32* %7, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %35

13:                                               ; preds = %3
  store i32 505, i32* %7, align 4
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %35

14:                                               ; preds = %3
  store i32 406, i32* %7, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %35

15:                                               ; preds = %3
  store i32 413, i32* %7, align 4
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %35

16:                                               ; preds = %3, %3
  store i32 409, i32* %7, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %35

17:                                               ; preds = %3
  store i32 414, i32* %7, align 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %35

18:                                               ; preds = %3, %3
  store i32 401, i32* %7, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %35

19:                                               ; preds = %3
  store i32 400, i32* %7, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %35

20:                                               ; preds = %3
  store i32 421, i32* %7, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  br label %35

21:                                               ; preds = %3, %3
  store i32 507, i32* %7, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8** %8, align 8
  br label %35

22:                                               ; preds = %3, %3, %3, %3, %3
  store i32 400, i32* %7, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %35

23:                                               ; preds = %3
  store i32 421, i32* %7, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  br label %35

24:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  store i32 400, i32* %7, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %35

25:                                               ; preds = %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @httpError(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_5__* %26, i32 %29, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1000
  %44 = load i8**, i8*** @httpMsg, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @httpSendErrorRespImp(%struct.TYPE_5__* %39, i32 %40, i8* %41, i32 %43, i8* %48)
  br label %58

50:                                               ; preds = %35
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1000
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @httpSendErrorRespImp(%struct.TYPE_5__* %51, i32 %52, i8* %53, i32 %55, i8* %56)
  br label %58

58:                                               ; preds = %50, %38
  ret void
}

declare dso_local i32 @httpError(i8*, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @httpSendErrorRespImp(%struct.TYPE_5__*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
