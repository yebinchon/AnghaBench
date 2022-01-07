; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_multi-event.c_handle_socket.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_multi-event.c_handle_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@curl_handle = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@base = common dso_local global i32 0, align 4
@curl_perform = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*)* @handle_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_socket(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %82 [
    i32 131, label %14
    i32 129, label %14
    i32 130, label %14
    i32 128, label %66
  ]

14:                                               ; preds = %5, %5, %5
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  br label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.TYPE_5__* @create_curl_context(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi %struct.TYPE_5__* [ %19, %17 ], [ %22, %20 ]
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %11, align 8
  %25 = load i32, i32* @curl_handle, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = bitcast %struct.TYPE_5__* %27 to i8*
  %29 = call i32 @curl_multi_assign(i32 %25, i32 %26, i8* %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 131
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @EV_WRITE, align 4
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 129
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @EV_READ, align 4
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* @EV_PERSIST, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @event_del(i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @base, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @curl_perform, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = call i32 @event_assign(i32 %53, i32 %54, i32 %57, i32 %58, i32 %59, %struct.TYPE_5__* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @event_add(i32 %64, i32* null)
  br label %84

66:                                               ; preds = %5
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i8*, i8** %10, align 8
  %71 = bitcast i8* %70 to %struct.TYPE_5__*
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @event_del(i32 %73)
  %75 = load i8*, i8** %10, align 8
  %76 = bitcast i8* %75 to %struct.TYPE_5__*
  %77 = call i32 @destroy_curl_context(%struct.TYPE_5__* %76)
  %78 = load i32, i32* @curl_handle, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @curl_multi_assign(i32 %78, i32 %79, i8* null)
  br label %81

81:                                               ; preds = %69, %66
  br label %84

82:                                               ; preds = %5
  %83 = call i32 (...) @abort() #3
  unreachable

84:                                               ; preds = %81, %43
  ret i32 0
}

declare dso_local %struct.TYPE_5__* @create_curl_context(i32) #1

declare dso_local i32 @curl_multi_assign(i32, i32, i8*) #1

declare dso_local i32 @event_del(i32) #1

declare dso_local i32 @event_assign(i32, i32, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @event_add(i32, i32*) #1

declare dso_local i32 @destroy_curl_context(%struct.TYPE_5__*) #1

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
