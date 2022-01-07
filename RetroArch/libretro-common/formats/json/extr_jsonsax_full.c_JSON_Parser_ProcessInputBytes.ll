; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Parser_ProcessInputBytes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Parser_ProcessInputBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@JSON_UnknownEncoding = common dso_local global i64 0, align 8
@JSON_Failure = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @JSON_Parser_ProcessInputBytes(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %33, %3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @JSON_UnknownEncoding, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i1 [ false, %11 ], [ %20, %17 ]
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @JSON_Parser_ProcessUnknownByte(%struct.TYPE_6__* %24, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @JSON_Failure, align 4
  store i32 %32, i32* %4, align 4
  br label %86

33:                                               ; preds = %23
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %11

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %83, %36
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @Decoder_ProcessByte(i32* %43, i64 %46, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @DECODER_RESULT_CODE(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  switch i32 %54, label %83 [
    i32 128, label %55
    i32 131, label %58
    i32 129, label %71
    i32 130, label %74
  ]

55:                                               ; preds = %41
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %8, align 8
  br label %83

58:                                               ; preds = %41
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @DECODER_CODEPOINT(i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @DECODER_SEQUENCE_LENGTH(i32 %62)
  %64 = call i32 @JSON_Parser_ProcessCodepoint(%struct.TYPE_6__* %59, i32 %61, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @JSON_Failure, align 4
  store i32 %67, i32* %4, align 4
  br label %86

68:                                               ; preds = %58
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %83

71:                                               ; preds = %41
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %41, %71
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @DECODER_SEQUENCE_LENGTH(i32 %76)
  %78 = call i32 @JSON_Parser_HandleInvalidEncodingSequence(%struct.TYPE_6__* %75, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @JSON_Failure, align 4
  store i32 %81, i32* %4, align 4
  br label %86

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %41, %82, %68, %55
  br label %37

84:                                               ; preds = %37
  %85 = load i32, i32* @JSON_Success, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %80, %66, %31
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @JSON_Parser_ProcessUnknownByte(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @Decoder_ProcessByte(i32*, i64, i32) #1

declare dso_local i32 @DECODER_RESULT_CODE(i32) #1

declare dso_local i32 @JSON_Parser_ProcessCodepoint(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @DECODER_CODEPOINT(i32) #1

declare dso_local i32 @DECODER_SEQUENCE_LENGTH(i32) #1

declare dso_local i32 @JSON_Parser_HandleInvalidEncodingSequence(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
