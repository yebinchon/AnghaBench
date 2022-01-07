; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tinterpolation.c_setTagsValueInInterpolation.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tinterpolation.c_setTagsValueInInterpolation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__**, i8**, %struct.TYPE_8__*, i64, i64, i64, i64)* @setTagsValueInInterpolation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setTagsValueInInterpolation(%struct.TYPE_7__** %0, i8** %1, %struct.TYPE_8__* %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %18 = load i64, i64* %12, align 8
  store i64 %18, i64* %16, align 8
  br label %19

19:                                               ; preds = %63, %7
  %20 = load i64, i64* %16, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %27 = load i64, i64* %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %26, i64 %27
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i64, i64* %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = call i8* @getPos(i32 %31, i32 %38, i64 %39, i64 %40, i64 %41)
  store i8* %42, i8** %17, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = load i8**, i8*** %9, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i64, i64* %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i64, i64* %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @assignVal(i8* %43, i8* %47, i32 %54, i32 %61)
  br label %63

63:                                               ; preds = %25
  %64 = load i64, i64* %16, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %16, align 8
  %66 = load i64, i64* %15, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %15, align 8
  br label %19

68:                                               ; preds = %19
  ret void
}

declare dso_local i8* @getPos(i32, i32, i64, i64, i64) #1

declare dso_local i32 @assignVal(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
