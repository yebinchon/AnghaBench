; ModuleID = '/home/carl/AnghaBench/esp-idf/components/nghttp/port/extr_http_parser.c_http_parser_pause.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/nghttp/port/extr_http_parser.c_http_parser_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPE_OK = common dso_local global i64 0, align 8
@HPE_PAUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_parser_pause(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @HTTP_PARSER_ERRNO(i32* %5)
  %7 = load i64, i64* @HPE_OK, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @HTTP_PARSER_ERRNO(i32* %10)
  %12 = load i64, i64* @HPE_PAUSED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i64, i64* @HPE_PAUSED, align 8
  br label %21

19:                                               ; preds = %14
  %20 = load i64, i64* @HPE_OK, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  %23 = call i32 @SET_ERRNO(i64 %22)
  br label %26

24:                                               ; preds = %9
  %25 = call i32 @assert(i32 0)
  br label %26

26:                                               ; preds = %24, %21
  ret void
}

declare dso_local i64 @HTTP_PARSER_ERRNO(i32*) #1

declare dso_local i32 @SET_ERRNO(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
