; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_http_accept.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_http_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_9__**)* @http_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_accept(%struct.TYPE_9__* %0, %struct.TYPE_9__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @av_assert0(i32 %19)
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = call i32 @ffurl_alloc(%struct.TYPE_9__** %21, i32 %24, i32 %27, i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %48

33:                                               ; preds = %2
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %8, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = call i32 @ffurl_accept(%struct.TYPE_9__* %38, %struct.TYPE_9__** %10)
  store i32 %39, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %48

42:                                               ; preds = %33
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  store i32 0, i32* %3, align 4
  br label %56

48:                                               ; preds = %41, %32
  %49 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %50 = icmp ne %struct.TYPE_9__** %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %53 = call i32 @ffurl_closep(%struct.TYPE_9__** %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %42
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ffurl_alloc(%struct.TYPE_9__**, i32, i32, i32*) #1

declare dso_local i32 @ffurl_accept(%struct.TYPE_9__*, %struct.TYPE_9__**) #1

declare dso_local i32 @ffurl_closep(%struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
