; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mime.c_encoder_7bit_read.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mime.c_encoder_7bit_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i8* }

@READ_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32, %struct.TYPE_5__*)* @encoder_7bit_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encoder_7bit_read(i8* %0, i64 %1, i32 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  store i64 %20, i64* %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %25, %4
  store i64 0, i64* %11, align 8
  br label %28

28:                                               ; preds = %62, %27
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %6, align 8
  store i8 %40, i8* %41, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i32
  %46 = and i32 %45, 128
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %32
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i64, i64* %11, align 8
  br label %55

53:                                               ; preds = %48
  %54 = load i64, i64* @READ_ERROR, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  store i64 %56, i64* %5, align 8
  br label %67

57:                                               ; preds = %32
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %11, align 8
  br label %28

65:                                               ; preds = %28
  %66 = load i64, i64* %11, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %65, %55
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
