; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_test_merging_uri.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_test_merging_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Base <%s>, relative <%s>, expect <%s>\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"*** Failed to allocate base URI structure\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"*** Failed to parse base URI structure\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"*** Failed to parse relative URI structure\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"*** Failed to merge base and relative URIs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @test_merging_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_merging_uri(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @LOG_INFO(i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @vc_uri_clear(i32* %17)
  %19 = call i32* (...) @vc_uri_create()
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %57

24:                                               ; preds = %2
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vc_uri_parse(i32* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %57

33:                                               ; preds = %24
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @vc_uri_parse(i32* %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %57

42:                                               ; preds = %33
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @vc_uri_merge(i32* %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %57

49:                                               ; preds = %42
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @vc_uri_release(i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @check_uri(i32* %52, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %49, %47, %40, %31, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @LOG_INFO(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @vc_uri_clear(i32*) #1

declare dso_local i32* @vc_uri_create(...) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

declare dso_local i32 @vc_uri_parse(i32*, i32) #1

declare dso_local i32 @vc_uri_merge(i32*, i32*) #1

declare dso_local i32 @vc_uri_release(i32*) #1

declare dso_local i32 @check_uri(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
