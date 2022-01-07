; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_update_union_offset.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_update_union_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i32, i32 }

@KIND_STRUCT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @update_union_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update_union_offset(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = call i32* (...) @make_dict()
  store i32* %13, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %73, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @vec_len(i32* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i8** @vec_get(i32* %20, i32 %21)
  store i8** %22, i8*** %10, align 8
  %23 = load i8**, i8*** %10, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %11, align 8
  %26 = load i8**, i8*** %10, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %12, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @MAX(i32 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @MAX(i32 %36, i32 %39)
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %19
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @KIND_STRUCT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %53 = call i32 @squash_unnamed_struct(i32* %51, %struct.TYPE_4__* %52, i32 0)
  br label %73

54:                                               ; preds = %44, %19
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32*, i32** %8, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %71 = call i32 @dict_put(i32* %68, i8* %69, %struct.TYPE_4__* %70)
  br label %72

72:                                               ; preds = %67, %64
  br label %73

73:                                               ; preds = %72, %50
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %14

76:                                               ; preds = %14
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @compute_padding(i32 %78, i32 %80)
  %82 = add nsw i32 %77, %81
  %83 = load i32*, i32** %4, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %8, align 8
  ret i32* %84
}

declare dso_local i32* @make_dict(...) #1

declare dso_local i32 @vec_len(i32*) #1

declare dso_local i8** @vec_get(i32*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @squash_unnamed_struct(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dict_put(i32*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @compute_padding(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
