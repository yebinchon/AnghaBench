; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-keyfile.c_chassis_keyfile_resolve_path.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-keyfile.c_chassis_keyfile_resolve_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32***, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chassis_keyfile_resolve_path(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32***, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %62, %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %11
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = bitcast %struct.TYPE_3__* %6 to i8*
  %25 = bitcast %struct.TYPE_3__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 24, i1 false)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %60 [
    i32 129, label %28
    i32 128, label %35
  ]

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %30 = load i32***, i32**** %29, align 8
  %31 = bitcast i32*** %30 to i32**
  store i32** %31, i32*** %7, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i32**, i32*** %7, align 8
  %34 = call i32 @chassis_resolve_path(i8* %32, i32** %33)
  br label %61

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %37 = load i32***, i32**** %36, align 8
  store i32*** %37, i32**** %8, align 8
  %38 = load i32***, i32**** %8, align 8
  %39 = load i32**, i32*** %38, align 8
  store i32** %39, i32*** %9, align 8
  %40 = load i32**, i32*** %9, align 8
  %41 = icmp ne i32** null, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  store i64 0, i64* %10, align 8
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i32**, i32*** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = load i32**, i32*** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = call i32 @chassis_resolve_path(i8* %50, i32** %53)
  br label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %10, align 8
  br label %43

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %35
  br label %61

60:                                               ; preds = %19
  br label %61

61:                                               ; preds = %60, %59, %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %11

65:                                               ; preds = %11
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @chassis_resolve_path(i8*, i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
