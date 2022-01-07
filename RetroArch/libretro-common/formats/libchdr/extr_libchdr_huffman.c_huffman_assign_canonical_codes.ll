; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_assign_canonical_codes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_assign_canonical_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman_decoder = type { i32, i32, %struct.node_t* }
%struct.node_t = type { i32, i64 }

@HUFFERR_INTERNAL_INCONSISTENCY = common dso_local global i32 0, align 4
@HUFFERR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @huffman_assign_canonical_codes(%struct.huffman_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.huffman_decoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [33 x i32], align 16
  %8 = alloca %struct.node_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.node_t*, align 8
  store %struct.huffman_decoder* %0, %struct.huffman_decoder** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = bitcast [33 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 132, i1 false)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %48, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.huffman_decoder*, %struct.huffman_decoder** %3, align 8
  %15 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %12
  %19 = load %struct.huffman_decoder*, %struct.huffman_decoder** %3, align 8
  %20 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %19, i32 0, i32 2
  %21 = load %struct.node_t*, %struct.node_t** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.node_t, %struct.node_t* %21, i64 %23
  store %struct.node_t* %24, %struct.node_t** %8, align 8
  %25 = load %struct.node_t*, %struct.node_t** %8, align 8
  %26 = getelementptr inbounds %struct.node_t, %struct.node_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.huffman_decoder*, %struct.huffman_decoder** %3, align 8
  %29 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @HUFFERR_INTERNAL_INCONSISTENCY, align 4
  store i32 %33, i32* %2, align 4
  br label %121

34:                                               ; preds = %18
  %35 = load %struct.node_t*, %struct.node_t** %8, align 8
  %36 = getelementptr inbounds %struct.node_t, %struct.node_t* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %37, 32
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.node_t*, %struct.node_t** %8, align 8
  %41 = getelementptr inbounds %struct.node_t, %struct.node_t* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [33 x i32], [33 x i32]* %7, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %39, %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %12

51:                                               ; preds = %12
  store i32 32, i32* %6, align 4
  br label %52

52:                                               ; preds = %83, %51
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [33 x i32], [33 x i32]* %7, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %56, %60
  %62 = ashr i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %77

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %66, 2
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [33 x i32], [33 x i32]* %7, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %68, %72
  %74 = icmp ne i32 %67, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* @HUFFERR_INTERNAL_INCONSISTENCY, align 4
  store i32 %76, i32* %2, align 4
  br label %121

77:                                               ; preds = %65, %55
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [33 x i32], [33 x i32]* %7, i64 0, i64 %80
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %6, align 4
  br label %52

86:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %116, %86
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.huffman_decoder*, %struct.huffman_decoder** %3, align 8
  %90 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %87
  %94 = load %struct.huffman_decoder*, %struct.huffman_decoder** %3, align 8
  %95 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %94, i32 0, i32 2
  %96 = load %struct.node_t*, %struct.node_t** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.node_t, %struct.node_t* %96, i64 %98
  store %struct.node_t* %99, %struct.node_t** %10, align 8
  %100 = load %struct.node_t*, %struct.node_t** %10, align 8
  %101 = getelementptr inbounds %struct.node_t, %struct.node_t* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %93
  %105 = load %struct.node_t*, %struct.node_t** %10, align 8
  %106 = getelementptr inbounds %struct.node_t, %struct.node_t* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [33 x i32], [33 x i32]* %7, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = sext i32 %110 to i64
  %113 = load %struct.node_t*, %struct.node_t** %10, align 8
  %114 = getelementptr inbounds %struct.node_t, %struct.node_t* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %104, %93
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %87

119:                                              ; preds = %87
  %120 = load i32, i32* @HUFFERR_NONE, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %75, %32
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
