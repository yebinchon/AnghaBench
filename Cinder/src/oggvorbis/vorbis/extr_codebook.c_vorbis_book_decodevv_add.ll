; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_codebook.c_vorbis_book_decodevv_add.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_codebook.c_vorbis_book_decodevv_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, float*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vorbis_book_decodevv_add(%struct.TYPE_4__* %0, float** %1, i64 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca float**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store float** %1, float*** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %88

23:                                               ; preds = %6
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = sdiv i64 %24, %26
  store i64 %27, i64* %14, align 8
  br label %28

28:                                               ; preds = %86, %23
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = sdiv i64 %33, %35
  %37 = icmp slt i64 %29, %36
  br i1 %37, label %38, label %87

38:                                               ; preds = %28
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i64 @decode_packed_entry_number(%struct.TYPE_4__* %39, i32* %40)
  store i64 %41, i64* %16, align 8
  %42 = load i64, i64* %16, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i64 -1, i64* %7, align 8
  br label %89

45:                                               ; preds = %38
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load float*, float** %47, align 8
  %49 = load i64, i64* %16, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = mul nsw i64 %49, %52
  %54 = getelementptr inbounds float, float* %48, i64 %53
  store float* %54, float** %18, align 8
  store i64 0, i64* %15, align 8
  br label %55

55:                                               ; preds = %83, %45
  %56 = load i64, i64* %15, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %55
  %62 = load float*, float** %18, align 8
  %63 = load i64, i64* %15, align 8
  %64 = getelementptr inbounds float, float* %62, i64 %63
  %65 = load float, float* %64, align 4
  %66 = load float**, float*** %9, align 8
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %17, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds float*, float** %66, i64 %69
  %71 = load float*, float** %70, align 8
  %72 = load i64, i64* %14, align 8
  %73 = getelementptr inbounds float, float* %71, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fadd float %74, %65
  store float %75, float* %73, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %61
  store i32 0, i32* %17, align 4
  %80 = load i64, i64* %14, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %14, align 8
  br label %82

82:                                               ; preds = %79, %61
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %15, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %15, align 8
  br label %55

86:                                               ; preds = %55
  br label %28

87:                                               ; preds = %28
  br label %88

88:                                               ; preds = %87, %6
  store i64 0, i64* %7, align 8
  br label %89

89:                                               ; preds = %88, %44
  %90 = load i64, i64* %7, align 8
  ret i64 %90
}

declare dso_local i64 @decode_packed_entry_number(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
