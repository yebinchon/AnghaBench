; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_skip_byte_block_aligned_no_crc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_skip_byte_block_aligned_no_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@FLAC__BYTES_PER_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__bitreader_skip_byte_block_aligned_no_crc(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp ne %struct.TYPE_6__* null, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @FLAC__ASSERT(i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 0, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @FLAC__ASSERT(i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = call i32 @FLAC__bitreader_is_consumed_byte_aligned(%struct.TYPE_6__* %17)
  %19 = call i32 @FLAC__ASSERT(i32 %18)
  br label %20

20:                                               ; preds = %35, %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %38

30:                                               ; preds = %28
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = call i32 @FLAC__bitreader_read_raw_uint32(%struct.TYPE_6__* %31, i32* %6, i32 8)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %83

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %5, align 4
  br label %20

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 0, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %83

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %69, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @FLAC__BYTES_PER_WORD, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %43
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load i32, i32* @FLAC__BYTES_PER_WORD, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %69

63:                                               ; preds = %47
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = call i32 @bitreader_read_from_client_(%struct.TYPE_6__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %83

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %55
  br label %43

70:                                               ; preds = %43
  br label %71

71:                                               ; preds = %79, %70
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = call i32 @FLAC__bitreader_read_raw_uint32(%struct.TYPE_6__* %75, i32* %6, i32 8)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = add i32 %80, -1
  store i32 %81, i32* %5, align 4
  br label %71

82:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %78, %67, %41, %34
  %84 = load i32, i32* %3, align 4
  ret i32 %84
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
