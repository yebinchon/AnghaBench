; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_md5.c_MD5_Update.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_md5.c_MD5_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i64)* @MD5_Update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MD5_Update(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = add i64 %13, %14
  %16 = and i64 %15, 536870911
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %24, %3
  %30 = load i64, i64* %6, align 8
  %31 = lshr i64 %30, 29
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load i64, i64* %7, align 8
  %37 = and i64 %36, 63
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %29
  %41 = load i64, i64* %8, align 8
  %42 = sub i64 64, %41
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @memcpy(i8* %51, i8* %52, i64 %53)
  br label %93

55:                                               ; preds = %40
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @memcpy(i8* %60, i8* %61, i64 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %5, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %6, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @body(%struct.TYPE_4__* %70, i8* %73, i64 64)
  br label %75

75:                                               ; preds = %55, %29
  %76 = load i64, i64* %6, align 8
  %77 = icmp uge i64 %76, 64
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = and i64 %81, -64
  %83 = call i8* @body(%struct.TYPE_4__* %79, i8* %80, i64 %82)
  store i8* %83, i8** %5, align 8
  %84 = load i64, i64* %6, align 8
  %85 = and i64 %84, 63
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %78, %75
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @memcpy(i8* %89, i8* %90, i64 %91)
  br label %93

93:                                               ; preds = %86, %46
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @body(%struct.TYPE_4__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
