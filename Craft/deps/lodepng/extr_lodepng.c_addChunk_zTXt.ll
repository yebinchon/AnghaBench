; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_addChunk_zTXt.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_addChunk_zTXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"zTXt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i8*, i32*)* @addChunk_zTXt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addChunk_zTXt(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %14, align 8
  %17 = call i32 @ucvector_init(%struct.TYPE_7__* %11)
  %18 = call i32 @ucvector_init(%struct.TYPE_7__* %12)
  store i64 0, i64* %13, align 8
  br label %19

19:                                               ; preds = %32, %4
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %13, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %13, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @ucvector_push_back(%struct.TYPE_7__* %11, i8 zeroext %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %13, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %13, align 8
  br label %19

35:                                               ; preds = %19
  %36 = load i64, i64* %13, align 8
  %37 = icmp ult i64 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %13, align 8
  %40 = icmp ugt i64 %39, 79
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35
  store i32 89, i32* %5, align 4
  br label %80

42:                                               ; preds = %38
  %43 = call i32 @ucvector_push_back(%struct.TYPE_7__* %11, i8 zeroext 0)
  %44 = call i32 @ucvector_push_back(%struct.TYPE_7__* %11, i8 zeroext 0)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @zlib_compress(i8** %45, i64* %46, i8* %47, i64 %48, i32* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %42
  store i64 0, i64* %13, align 8
  br label %54

54:                                               ; preds = %66, %53
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @ucvector_push_back(%struct.TYPE_7__* %11, i8 zeroext %64)
  br label %66

66:                                               ; preds = %59
  %67 = load i64, i64* %13, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %13, align 8
  br label %54

69:                                               ; preds = %54
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @addChunk(%struct.TYPE_7__* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %72, i64 %74)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %69, %42
  %77 = call i32 @ucvector_cleanup(%struct.TYPE_7__* %12)
  %78 = call i32 @ucvector_cleanup(%struct.TYPE_7__* %11)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %41
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ucvector_init(%struct.TYPE_7__*) #1

declare dso_local i32 @ucvector_push_back(%struct.TYPE_7__*, i8 zeroext) #1

declare dso_local i32 @zlib_compress(i8**, i64*, i8*, i64, i32*) #1

declare dso_local i32 @addChunk(%struct.TYPE_7__*, i8*, i8*, i64) #1

declare dso_local i32 @ucvector_cleanup(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
