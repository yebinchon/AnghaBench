; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddSequence.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddSequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDP_MAX_ATTR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SDP_AddSequence cannot get a buffer!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SIZE_ONE_BYTE = common dso_local global i32 0, align 4
@SIZE_TWO_BYTES = common dso_local global i32 0, align 4
@SIZE_FOUR_BYTES = common dso_local global i32 0, align 4
@SIZE_EIGHT_BYTES = common dso_local global i32 0, align 4
@SIZE_SIXTEEN_BYTES = common dso_local global i32 0, align 4
@SIZE_IN_NEXT_BYTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"SDP_AddSequence - too long(attribute is not added)!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"SDP_AddSequence - too long, add %d elements of %d\0A\00", align 1
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_AddSequence(i32 %0, i64 %1, i64 %2, i32* %3, i32* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32** %5, i32*** %13, align 8
  %19 = load i32, i32* @SDP_MAX_ATTR_LEN, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = mul i64 %21, 2
  %23 = trunc i64 %22 to i32
  %24 = call i64 @osi_malloc(i32 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %15, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = call i32 (i8*, ...) @SDP_TRACE_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %7, align 4
  br label %163

30:                                               ; preds = %6
  %31 = load i32*, i32** %15, align 8
  store i32* %31, i32** %16, align 8
  store i64 0, i64* %14, align 8
  br label %32

32:                                               ; preds = %144, %30
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %147

36:                                               ; preds = %32
  %37 = load i32*, i32** %16, align 8
  store i32* %37, i32** %17, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %92 [
    i32 1, label %42
    i32 2, label %52
    i32 4, label %62
    i32 8, label %72
    i32 16, label %82
  ]

42:                                               ; preds = %36
  %43 = load i32*, i32** %16, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 3
  %49 = load i32, i32* @SIZE_ONE_BYTE, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @UINT8_TO_BE_STREAM(i32* %43, i32 %50)
  br label %108

52:                                               ; preds = %36
  %53 = load i32*, i32** %16, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 3
  %59 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @UINT8_TO_BE_STREAM(i32* %53, i32 %60)
  br label %108

62:                                               ; preds = %36
  %63 = load i32*, i32** %16, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 3
  %69 = load i32, i32* @SIZE_FOUR_BYTES, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @UINT8_TO_BE_STREAM(i32* %63, i32 %70)
  br label %108

72:                                               ; preds = %36
  %73 = load i32*, i32** %16, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i64, i64* %14, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 3
  %79 = load i32, i32* @SIZE_EIGHT_BYTES, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @UINT8_TO_BE_STREAM(i32* %73, i32 %80)
  br label %108

82:                                               ; preds = %36
  %83 = load i32*, i32** %16, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 3
  %89 = load i32, i32* @SIZE_SIXTEEN_BYTES, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @UINT8_TO_BE_STREAM(i32* %83, i32 %90)
  br label %108

92:                                               ; preds = %36
  %93 = load i32*, i32** %16, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i64, i64* %14, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 3
  %99 = load i32, i32* @SIZE_IN_NEXT_BYTE, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @UINT8_TO_BE_STREAM(i32* %93, i32 %100)
  %102 = load i32*, i32** %16, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @UINT8_TO_BE_STREAM(i32* %102, i32 %106)
  br label %108

108:                                              ; preds = %92, %82, %72, %62, %52, %42
  %109 = load i32*, i32** %16, align 8
  %110 = load i32**, i32*** %13, align 8
  %111 = load i64, i64* %14, align 8
  %112 = getelementptr inbounds i32*, i32** %110, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load i64, i64* %14, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ARRAY_TO_BE_STREAM(i32* %109, i32* %113, i32 %117)
  %119 = load i32*, i32** %16, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = ptrtoint i32* %119 to i64
  %122 = ptrtoint i32* %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 4
  %125 = load i32, i32* @SDP_MAX_ATTR_LEN, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp sgt i64 %124, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %108
  %129 = load i32*, i32** %17, align 8
  store i32* %129, i32** %16, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = icmp eq i32* %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = call i32 (i8*, ...) @SDP_TRACE_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32*, i32** %15, align 8
  %136 = call i32 @osi_free(i32* %135)
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %7, align 4
  br label %163

138:                                              ; preds = %128
  %139 = load i64, i64* %14, align 8
  %140 = load i64, i64* %10, align 8
  %141 = call i32 (i8*, ...) @SDP_TRACE_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %139, i64 %140)
  br label %142

142:                                              ; preds = %138
  br label %147

143:                                              ; preds = %108
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %14, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %14, align 8
  br label %32

147:                                              ; preds = %142, %32
  %148 = load i32, i32* %8, align 4
  %149 = load i64, i64* %9, align 8
  %150 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %151 = load i32*, i32** %16, align 8
  %152 = load i32*, i32** %15, align 8
  %153 = ptrtoint i32* %151 to i64
  %154 = ptrtoint i32* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sdiv exact i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = load i32*, i32** %15, align 8
  %159 = call i32 @SDP_AddAttribute(i32 %148, i64 %149, i32 %150, i32 %157, i32* %158)
  store i32 %159, i32* %18, align 4
  %160 = load i32*, i32** %15, align 8
  %161 = call i32 @osi_free(i32* %160)
  %162 = load i32, i32* %18, align 4
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %147, %133, %27
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @SDP_TRACE_ERROR(i8*, ...) #1

declare dso_local i32 @UINT8_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @ARRAY_TO_BE_STREAM(i32*, i32*, i32) #1

declare dso_local i32 @osi_free(i32*) #1

declare dso_local i32 @SDP_AddAttribute(i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
