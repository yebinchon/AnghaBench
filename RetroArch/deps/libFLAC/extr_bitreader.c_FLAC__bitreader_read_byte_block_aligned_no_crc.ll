; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_read_byte_block_aligned_no_crc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_read_byte_block_aligned_no_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64, i64, i64 }

@FLAC__BYTES_PER_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(%struct.TYPE_6__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = icmp ne %struct.TYPE_6__* null, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @FLAC__ASSERT(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* null, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @FLAC__ASSERT(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = call i32 @FLAC__bitreader_is_consumed_byte_aligned(%struct.TYPE_6__* %20)
  %22 = call i32 @FLAC__ASSERT(i32 %21)
  br label %23

23:                                               ; preds = %38, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ %30, %26 ]
  br i1 %32, label %33, label %46

33:                                               ; preds = %31
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = call i32 @FLAC__bitreader_read_raw_uint32(%struct.TYPE_6__* %34, i32* %8, i32 8)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %127

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8**, i8*** %6, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %6, align 8
  store i8* %41, i8** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %7, align 4
  br label %23

46:                                               ; preds = %31
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 0, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %127

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %108, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @FLAC__BYTES_PER_WORD, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %55, label %109

55:                                               ; preds = %51
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %102

63:                                               ; preds = %55
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = getelementptr inbounds i32, i32* %66, i64 %69
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %91, %63
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @FLAC__BYTES_PER_WORD, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @FLAC__BYTES_PER_WORD, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sub i32 %79, %80
  %82 = sub i32 %81, 1
  %83 = mul i32 8, %82
  %84 = ashr i32 %78, %83
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = load i8**, i8*** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %86, i8** %90, align 8
  br label %91

91:                                               ; preds = %77
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %73

94:                                               ; preds = %73
  %95 = load i32, i32* @FLAC__BYTES_PER_WORD, align 4
  %96 = load i8**, i8*** %6, align 8
  %97 = zext i32 %95 to i64
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  store i8** %98, i8*** %6, align 8
  %99 = load i32, i32* @FLAC__BYTES_PER_WORD, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sub i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %108

102:                                              ; preds = %55
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = call i32 @bitreader_read_from_client_(%struct.TYPE_6__* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %127

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %94
  br label %51

109:                                              ; preds = %51
  br label %110

110:                                              ; preds = %118, %109
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = call i32 @FLAC__bitreader_read_raw_uint32(%struct.TYPE_6__* %114, i32* %8, i32 8)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %127

118:                                              ; preds = %113
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = load i8**, i8*** %6, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i32 1
  store i8** %123, i8*** %6, align 8
  store i8* %121, i8** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = add i32 %124, -1
  store i32 %125, i32* %7, align 4
  br label %110

126:                                              ; preds = %110
  store i32 1, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %117, %106, %49, %37
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @FLAC__bitreader_is_consumed_byte_aligned(%struct.TYPE_6__*) #1

declare dso_local i32 @FLAC__bitreader_read_raw_uint32(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @bitreader_read_from_client_(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
