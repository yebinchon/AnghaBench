; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_multi-uv.c_handle_socket.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_multi-uv.c_handle_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@curl_handle = common dso_local global i32 0, align 4
@UV_WRITABLE = common dso_local global i32 0, align 4
@UV_READABLE = common dso_local global i32 0, align 4
@curl_perform = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*)* @handle_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_socket(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %64 [
    i32 131, label %14
    i32 129, label %14
    i32 130, label %14
    i32 128, label %49
  ]

14:                                               ; preds = %5, %5, %5
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  br label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.TYPE_4__* @create_curl_context(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi %struct.TYPE_4__* [ %19, %17 ], [ %22, %20 ]
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %11, align 8
  %25 = load i32, i32* @curl_handle, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %28 = bitcast %struct.TYPE_4__* %27 to i8*
  %29 = call i32 @curl_multi_assign(i32 %25, i32 %26, i8* %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 131
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @UV_WRITABLE, align 4
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 129
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @UV_READABLE, align 4
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @curl_perform, align 4
  %48 = call i32 @uv_poll_start(i32* %45, i32 %46, i32 %47)
  br label %66

49:                                               ; preds = %5
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i8*, i8** %10, align 8
  %54 = bitcast i8* %53 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @uv_poll_stop(i32* %55)
  %57 = load i8*, i8** %10, align 8
  %58 = bitcast i8* %57 to %struct.TYPE_4__*
  %59 = call i32 @destroy_curl_context(%struct.TYPE_4__* %58)
  %60 = load i32, i32* @curl_handle, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @curl_multi_assign(i32 %60, i32 %61, i8* null)
  br label %63

63:                                               ; preds = %52, %49
  br label %66

64:                                               ; preds = %5
  %65 = call i32 (...) @abort() #3
  unreachable

66:                                               ; preds = %63, %43
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @create_curl_context(i32) #1

declare dso_local i32 @curl_multi_assign(i32, i32, i8*) #1

declare dso_local i32 @uv_poll_start(i32*, i32, i32) #1

declare dso_local i32 @uv_poll_stop(i32*) #1

declare dso_local i32 @destroy_curl_context(%struct.TYPE_4__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
