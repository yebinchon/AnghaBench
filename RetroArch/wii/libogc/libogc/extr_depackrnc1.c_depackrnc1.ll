; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_depackrnc1.c_depackrnc1.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_depackrnc1.c_depackrnc1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RNC_SIGNATURE = common dso_local global i64 0, align 8
@RNC_FILE_IS_NOT_RNC = common dso_local global i64 0, align 8
@RNC_PACKED_CRC_ERROR = common dso_local global i64 0, align 8
@RNC_HUF_DECODE_ERROR = common dso_local global i64 0, align 8
@RNC_FILE_SIZE_MISMATCH = common dso_local global i64 0, align 8
@RNC_UNPACKED_CRC_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @depackrnc1(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @blong(i8* %21)
  %23 = load i64, i64* @RNC_SIGNATURE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i64, i64* @RNC_FILE_IS_NOT_RNC, align 8
  store i64 %26, i64* %3, align 8
  br label %148

27:                                               ; preds = %2
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  %30 = call i64 @blong(i8* %29)
  store i64 %30, i64* %15, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %15, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 18
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 8
  %38 = call i64 @blong(i8* %37)
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 18
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = call i32 @rnc_crc(i8* %42, i64 %47)
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -4
  %51 = call i32 @bword(i8* %50)
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %27
  %54 = load i64, i64* @RNC_PACKED_CRC_ERROR, align 8
  store i64 %54, i64* %3, align 8
  br label %148

55:                                               ; preds = %27
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 -6
  %58 = call i32 @bword(i8* %57)
  store i32 %58, i32* %16, align 4
  %59 = call i32 @bitread_init(i32* %10, i8** %6)
  %60 = call i32 @bit_advance(i32* %10, i32 2, i8** %6)
  br label %61

61:                                               ; preds = %128, %55
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %129

65:                                               ; preds = %61
  %66 = call i32 @read_huftable(i32* %11, i32* %10, i8** %6)
  %67 = call i32 @read_huftable(i32* %12, i32* %10, i8** %6)
  %68 = call i32 @read_huftable(i32* %13, i32* %10, i8** %6)
  %69 = call i64 @bit_read(i32* %10, i32 65535, i32 16, i8** %6)
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %65, %127
  %71 = call i64 @huf_read(i32* %11, i32* %10, i8** %6)
  store i64 %71, i64* %17, align 8
  %72 = load i64, i64* %17, align 8
  %73 = icmp eq i64 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* @RNC_HUF_DECODE_ERROR, align 8
  store i64 %75, i64* %3, align 8
  br label %148

76:                                               ; preds = %70
  %77 = load i64, i64* %17, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %84, %79
  %81 = load i64, i64* %17, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %17, align 8
  %83 = icmp ne i64 %81, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  %87 = load i8, i8* %85, align 1
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %7, align 8
  store i8 %87, i8* %88, align 1
  br label %80

90:                                               ; preds = %80
  %91 = call i32 @bitread_fix(i32* %10, i8** %6)
  br label %92

92:                                               ; preds = %90, %76
  %93 = load i64, i64* %14, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %14, align 8
  %95 = icmp ule i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %128

97:                                               ; preds = %92
  %98 = call i64 @huf_read(i32* %12, i32* %10, i8** %6)
  store i64 %98, i64* %18, align 8
  %99 = load i64, i64* %18, align 8
  %100 = icmp eq i64 %99, -1
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i64, i64* @RNC_HUF_DECODE_ERROR, align 8
  store i64 %102, i64* %3, align 8
  br label %148

103:                                              ; preds = %97
  %104 = call i64 @huf_read(i32* %13, i32* %10, i8** %6)
  store i64 %104, i64* %17, align 8
  %105 = load i64, i64* %17, align 8
  %106 = icmp eq i64 %105, -1
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i64, i64* @RNC_HUF_DECODE_ERROR, align 8
  store i64 %108, i64* %3, align 8
  br label %148

109:                                              ; preds = %103
  %110 = load i64, i64* %18, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %18, align 8
  %112 = load i64, i64* %17, align 8
  %113 = add nsw i64 %112, 2
  store i64 %113, i64* %17, align 8
  br label %114

114:                                              ; preds = %118, %109
  %115 = load i64, i64* %17, align 8
  %116 = add nsw i64 %115, -1
  store i64 %116, i64* %17, align 8
  %117 = icmp ne i64 %115, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load i8*, i8** %7, align 8
  %120 = load i64, i64* %18, align 8
  %121 = sub nsw i64 0, %120
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = load i8*, i8** %7, align 8
  store i8 %123, i8* %124, align 1
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %7, align 8
  br label %114

127:                                              ; preds = %114
  br label %70

128:                                              ; preds = %96
  br label %61

129:                                              ; preds = %61
  %130 = load i8*, i8** %9, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = icmp ne i8* %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i64, i64* @RNC_FILE_SIZE_MISMATCH, align 8
  store i64 %134, i64* %3, align 8
  br label %148

135:                                              ; preds = %129
  %136 = load i8*, i8** %9, align 8
  %137 = load i64, i64* %15, align 8
  %138 = sub i64 0, %137
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i64, i64* %15, align 8
  %141 = call i32 @rnc_crc(i8* %139, i64 %140)
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i64, i64* @RNC_UNPACKED_CRC_ERROR, align 8
  store i64 %145, i64* %3, align 8
  br label %148

146:                                              ; preds = %135
  %147 = load i64, i64* %15, align 8
  store i64 %147, i64* %3, align 8
  br label %148

148:                                              ; preds = %146, %144, %133, %107, %101, %74, %53, %25
  %149 = load i64, i64* %3, align 8
  ret i64 %149
}

declare dso_local i64 @blong(i8*) #1

declare dso_local i32 @rnc_crc(i8*, i64) #1

declare dso_local i32 @bword(i8*) #1

declare dso_local i32 @bitread_init(i32*, i8**) #1

declare dso_local i32 @bit_advance(i32*, i32, i8**) #1

declare dso_local i32 @read_huftable(i32*, i32*, i8**) #1

declare dso_local i64 @bit_read(i32*, i32, i32, i8**) #1

declare dso_local i64 @huf_read(i32*, i32*, i8**) #1

declare dso_local i32 @bitread_fix(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
