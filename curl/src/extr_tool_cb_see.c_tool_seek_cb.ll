; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_cb_see.c_tool_seek_cb.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_cb_see.c_tool_seek_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InStruct = type { i32 }

@LSEEK_ERROR = common dso_local global i64 0, align 8
@CURL_SEEKFUNC_CANTSEEK = common dso_local global i32 0, align 4
@CURL_SEEKFUNC_OK = common dso_local global i32 0, align 4
@CURL_SEEKFUNC_FAIL = common dso_local global i32 0, align 4
@OUR_MAX_SEEK_L = common dso_local global i64 0, align 8
@OUR_MAX_SEEK_O = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tool_seek_cb(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.InStruct*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.InStruct*
  store %struct.InStruct* %10, %struct.InStruct** %8, align 8
  %11 = load i64, i64* @LSEEK_ERROR, align 8
  %12 = load %struct.InStruct*, %struct.InStruct** %8, align 8
  %13 = getelementptr inbounds %struct.InStruct, %struct.InStruct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @lseek(i32 %14, i64 %15, i32 %16)
  %18 = icmp eq i64 %11, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @CURL_SEEKFUNC_CANTSEEK, align 4
  store i32 %20, i32* %4, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @CURL_SEEKFUNC_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i64 @lseek(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
