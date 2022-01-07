; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/bdf/extr_bdflib.c__bdf_list_join.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/bdf/extr_bdflib.c__bdf_list_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8** }

@empty = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32, i64*)* @_bdf_list_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_bdf_list_join(%struct.TYPE_3__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load i64*, i64** %7, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %3
  store i8* null, i8** %4, align 8
  br label %82

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %67, %21
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %44, %33
  %41 = load i8*, i8** %11, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %11, align 8
  %47 = load i8, i8* %45, align 1
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  %51 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 %47, i8* %51, align 1
  br label %40

52:                                               ; preds = %40
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  %65 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 %61, i8* %65, align 1
  br label %66

66:                                               ; preds = %59, %52
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %27

70:                                               ; preds = %27
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** @empty, align 8
  %73 = icmp ne i8* %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i8*, i8** %10, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i64, i64* %9, align 8
  %80 = load i64*, i64** %7, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i8*, i8** %10, align 8
  store i8* %81, i8** %4, align 8
  br label %82

82:                                               ; preds = %78, %20
  %83 = load i8*, i8** %4, align 8
  ret i8* %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
