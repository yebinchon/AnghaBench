; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_vc_uri_find_query.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_vc_uri_find_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_uri_find_query(%struct.TYPE_5__* %0, i32* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  br label %17

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ 0, %16 ]
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %71

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %67, %22
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i1 [ false, %23 ], [ %31, %26 ]
  br i1 %33, label %34, label %70

34:                                               ; preds = %32
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @strcmp(i8* %35, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %34
  %47 = load i8**, i8*** %9, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8**, i8*** %9, align 8
  store i8* %57, i8** %58, align 8
  br label %59

59:                                               ; preds = %49, %46
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  store i32 1, i32* %5, align 4
  br label %71

66:                                               ; preds = %34
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %23

70:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %65, %21
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
