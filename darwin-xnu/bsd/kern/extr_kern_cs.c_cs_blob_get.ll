; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_cs_blob_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_cs_blob_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.cs_blob = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs_blob_get(%struct.TYPE_3__* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.cs_blob*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i8**, i8*** %6, align 8
  store i8* null, i8** %9, align 8
  %10 = load i64*, i64** %7, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* null, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.cs_blob* @ubc_cs_blob_get(i32* %20, i32 -1, i32 %23)
  store %struct.cs_blob* %24, %struct.cs_blob** %8, align 8
  %25 = icmp eq %struct.cs_blob* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %37

27:                                               ; preds = %17
  %28 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %29 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8**, i8*** %6, align 8
  store i8* %31, i8** %32, align 8
  %33 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %34 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %27, %26, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.cs_blob* @ubc_cs_blob_get(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
