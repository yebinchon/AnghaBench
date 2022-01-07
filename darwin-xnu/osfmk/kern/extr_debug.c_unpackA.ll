; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_debug.c_unpackA.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_debug.c_unpackA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unpackA(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__, align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = mul nsw i32 %7, 8
  %9 = sdiv i32 %8, 7
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %14, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %94

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = bitcast i8* %18 to %struct.TYPE_2__*
  %20 = bitcast %struct.TYPE_2__* %5 to i8*
  %21 = bitcast %struct.TYPE_2__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %21, i64 8, i1 false)
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, 7
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 8
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub i32 %32, %33
  %35 = sub i32 %34, 8
  %36 = call i32 @MAX(i32 0, i32 %35)
  %37 = call i32 @bcopy(i8* %26, i8* %31, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 %39, i8* %44, align 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 %46, i8* %51, align 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %53 = load i8, i8* %52, align 1
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 %53, i8* %58, align 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 %60, i8* %65, align 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 4
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %6, align 4
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 %67, i8* %72, align 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %6, align 4
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 %74, i8* %79, align 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 6
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %6, align 4
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  store i8 %81, i8* %86, align 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 7
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %6, align 4
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8 %88, i8* %93, align 1
  br label %10

94:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @MAX(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
