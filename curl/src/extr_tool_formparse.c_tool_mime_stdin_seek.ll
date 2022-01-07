; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_formparse.c_tool_mime_stdin_seek.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_formparse.c_tool_mime_stdin_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@CURL_SEEKFUNC_CANTSEEK = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@CURL_SEEKFUNC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tool_mime_stdin_seek(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %8, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %25 [
    i32 129, label %12
    i32 128, label %18
  ]

12:                                               ; preds = %3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %6, align 8
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %3, %18, %12
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @CURL_SEEKFUNC_CANTSEEK, align 4
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %25
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @stdin, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load i32, i32* @SEEK_SET, align 4
  %43 = call i64 @fseek(i32 %36, i64 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @CURL_SEEKFUNC_CANTSEEK, align 4
  store i32 %46, i32* %4, align 4
  br label %53

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @CURL_SEEKFUNC_OK, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %45, %28
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @fseek(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
