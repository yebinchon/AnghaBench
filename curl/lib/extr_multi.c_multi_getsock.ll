; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_multi_getsock.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_multi_getsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.Curl_easy* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, i32*)* @multi_getsock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multi_getsock(%struct.Curl_easy* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca i32*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %7 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

11:                                               ; preds = %2
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %13 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 144
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 145
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %24 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store %struct.Curl_easy* %22, %struct.Curl_easy** %26, align 8
  br label %27

27:                                               ; preds = %21, %16, %11
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %29 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %31 [
    i32 128, label %32
    i32 134, label %38
    i32 133, label %38
    i32 143, label %44
    i32 142, label %44
    i32 129, label %50
    i32 131, label %56
    i32 139, label %62
    i32 140, label %68
    i32 135, label %68
  ]

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %74

32:                                               ; preds = %27
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %34 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @Curl_resolv_getsock(%struct.TYPE_8__* %35, i32* %36)
  store i32 %37, i32* %3, align 4
  br label %74

38:                                               ; preds = %27, %27
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %40 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @protocol_getsock(%struct.TYPE_8__* %41, i32* %42)
  store i32 %43, i32* %3, align 4
  br label %74

44:                                               ; preds = %27, %27
  %45 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %46 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @doing_getsock(%struct.TYPE_8__* %47, i32* %48)
  store i32 %49, i32* %3, align 4
  br label %74

50:                                               ; preds = %27
  %51 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %52 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @waitproxyconnect_getsock(%struct.TYPE_8__* %53, i32* %54)
  store i32 %55, i32* %3, align 4
  br label %74

56:                                               ; preds = %27
  %57 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %58 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @waitconnect_getsock(%struct.TYPE_8__* %59, i32* %60)
  store i32 %61, i32* %3, align 4
  br label %74

62:                                               ; preds = %27
  %63 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %64 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @domore_getsock(%struct.TYPE_8__* %65, i32* %66)
  store i32 %67, i32* %3, align 4
  br label %74

68:                                               ; preds = %27, %27
  %69 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %70 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @Curl_single_getsock(%struct.TYPE_8__* %71, i32* %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %68, %62, %56, %50, %44, %38, %32, %31, %10
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @Curl_resolv_getsock(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @protocol_getsock(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @doing_getsock(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @waitproxyconnect_getsock(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @waitconnect_getsock(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @domore_getsock(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @Curl_single_getsock(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
