; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_parse_query.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_parse_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64)* @parse_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_query(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %100

18:                                               ; preds = %3
  store i64 1, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %13, align 1
  %28 = load i8, i8* %13, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 38
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i8, i8* %13, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 59
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %23
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %35, %31
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %19

42:                                               ; preds = %19
  %43 = load i64, i64* %9, align 8
  %44 = mul i64 %43, 4
  %45 = call i64 @malloc(i64 %44)
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %100

50:                                               ; preds = %42
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  store i64 0, i64* %8, align 8
  br label %54

54:                                               ; preds = %91, %50
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %13, align 1
  %61 = load i8, i8* %13, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 61
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  store i8* %68, i8** %12, align 8
  br label %69

69:                                               ; preds = %67, %64, %58
  %70 = load i8, i8* %13, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 38
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i8, i8* %13, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 59
  br i1 %76, label %77, label %88

77:                                               ; preds = %73, %69
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @store_query(%struct.TYPE_4__* %78, i8* %79, i8* %80, i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %100

85:                                               ; preds = %77
  store i8* null, i8** %12, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8* %87, i8** %11, align 8
  br label %88

88:                                               ; preds = %85, %73
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  br label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %8, align 8
  br label %54

94:                                               ; preds = %54
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @store_query(%struct.TYPE_4__* %95, i8* %96, i8* %97, i8* %98)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %94, %84, %49, %17
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @store_query(%struct.TYPE_4__*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
