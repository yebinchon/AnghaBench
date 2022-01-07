; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_import_tree_rle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_import_tree_rle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman_decoder = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bitstream = type { i32 }

@HUFFERR_INVALID_DATA = common dso_local global i32 0, align 4
@HUFFERR_NONE = common dso_local global i32 0, align 4
@HUFFERR_INPUT_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @huffman_import_tree_rle(%struct.huffman_decoder* %0, %struct.bitstream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.huffman_decoder*, align 8
  %5 = alloca %struct.bitstream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.huffman_decoder* %0, %struct.huffman_decoder** %4, align 8
  store %struct.bitstream* %1, %struct.bitstream** %5, align 8
  %11 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %12 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 16
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 5, i32* %7, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %18 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %19, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 4, i32* %7, align 4
  br label %23

22:                                               ; preds = %16
  store i32 3, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %21
  br label %24

24:                                               ; preds = %23, %15
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %84, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %28 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %85

31:                                               ; preds = %25
  %32 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @bitstream_read(%struct.bitstream* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %40 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %38, i32* %46, align 4
  br label %84

47:                                               ; preds = %31
  %48 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @bitstream_read(%struct.bitstream* %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %56 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %54, i32* %62, align 4
  br label %83

63:                                               ; preds = %47
  %64 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @bitstream_read(%struct.bitstream* %64, i32 %65)
  %67 = add nsw i32 %66, 3
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %72, %63
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %10, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %75 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %73, i32* %81, align 4
  br label %68

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %53
  br label %84

84:                                               ; preds = %83, %37
  br label %25

85:                                               ; preds = %25
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %88 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @HUFFERR_INVALID_DATA, align 4
  store i32 %92, i32* %3, align 4
  br label %113

93:                                               ; preds = %85
  %94 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %95 = call i32 @huffman_assign_canonical_codes(%struct.huffman_decoder* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @HUFFERR_NONE, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %113

101:                                              ; preds = %93
  %102 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %103 = call i32 @huffman_build_lookup_table(%struct.huffman_decoder* %102)
  %104 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %105 = call i64 @bitstream_overflow(%struct.bitstream* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @HUFFERR_INPUT_BUFFER_TOO_SMALL, align 4
  br label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @HUFFERR_NONE, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %99, %91
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @bitstream_read(%struct.bitstream*, i32) #1

declare dso_local i32 @huffman_assign_canonical_codes(%struct.huffman_decoder*) #1

declare dso_local i32 @huffman_build_lookup_table(%struct.huffman_decoder*) #1

declare dso_local i64 @bitstream_overflow(%struct.bitstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
