; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_....png.c_png_icc_check_header.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_....png.c_png_icc_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"length does not match profile\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid length\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"tag count too large\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"invalid rendering intent\00", align 1
@PNG_sRGB_INTENT_LAST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"intent outside defined range\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"invalid signature\00", align 1
@D50_nCIEXYZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"PCS illuminant is not D50\00", align 1
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"RGB color space not permitted on grayscale PNG\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Gray color space not permitted on RGB PNG\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"invalid ICC profile color space\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"invalid embedded Abstract ICC profile\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"unexpected DeviceLink ICC profile class\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"unexpected NamedColor ICC profile class\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"unrecognized ICC profile class\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"unexpected ICC PCS encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @png_icc_check_header(i32 %0, i32* %1, i32 %2, i32 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i64*, i64** %12, align 8
  %16 = call i32 @png_get_uint_32(i64* %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @png_icc_profile_error(i32 %21, i32* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %7, align 4
  br label %180

26:                                               ; preds = %6
  %27 = load i64*, i64** %12, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 8
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp sgt i32 %31, 3
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, 3
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @png_icc_profile_error(i32 %38, i32* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %42, i32* %7, align 4
  br label %180

43:                                               ; preds = %33, %26
  %44 = load i64*, i64** %12, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 128
  %46 = call i32 @png_get_uint_32(i64* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp sgt i32 %47, 357913930
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %14, align 4
  %52 = mul nsw i32 12, %51
  %53 = add nsw i32 132, %52
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49, %43
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @png_icc_profile_error(i32 %56, i32* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 %60, i32* %7, align 4
  br label %180

61:                                               ; preds = %49
  %62 = load i64*, i64** %12, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 64
  %64 = call i32 @png_get_uint_32(i64* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp sge i32 %65, 65535
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @png_icc_profile_error(i32 %68, i32* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 %72, i32* %7, align 4
  br label %180

73:                                               ; preds = %61
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @PNG_sRGB_INTENT_LAST, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @png_icc_profile_error(i32 %78, i32* null, i32 %79, i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77, %73
  %83 = load i64*, i64** %12, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 36
  %85 = call i32 @png_get_uint_32(i64* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 1633907568
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @png_icc_profile_error(i32 %89, i32* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 %93, i32* %7, align 4
  br label %180

94:                                               ; preds = %82
  %95 = load i64*, i64** %12, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 68
  %97 = load i32, i32* @D50_nCIEXYZ, align 4
  %98 = call i64 @memcmp(i64* %96, i32 %97, i32 12)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @png_icc_profile_error(i32 %101, i32* null, i32 %102, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i64*, i64** %12, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 16
  %107 = call i32 @png_get_uint_32(i64* %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  switch i32 %108, label %133 [
    i32 1380401696, label %109
    i32 1196573017, label %121
  ]

109:                                              ; preds = %104
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @png_icc_profile_error(i32 %115, i32* %116, i32 %117, i32 %118, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  store i32 %119, i32* %7, align 4
  br label %180

120:                                              ; preds = %109
  br label %139

121:                                              ; preds = %104
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32, i32* %8, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @png_icc_profile_error(i32 %127, i32* %128, i32 %129, i32 %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  store i32 %131, i32* %7, align 4
  br label %180

132:                                              ; preds = %121
  br label %139

133:                                              ; preds = %104
  %134 = load i32, i32* %8, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @png_icc_profile_error(i32 %134, i32* %135, i32 %136, i32 %137, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  store i32 %138, i32* %7, align 4
  br label %180

139:                                              ; preds = %132, %120
  %140 = load i64*, i64** %12, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 12
  %142 = call i32 @png_get_uint_32(i64* %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  switch i32 %143, label %162 [
    i32 1935896178, label %144
    i32 1835955314, label %144
    i32 1886549106, label %144
    i32 1936744803, label %144
    i32 1633842036, label %145
    i32 1818848875, label %151
    i32 1852662636, label %157
  ]

144:                                              ; preds = %139, %139, %139, %139
  br label %167

145:                                              ; preds = %139
  %146 = load i32, i32* %8, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @png_icc_profile_error(i32 %146, i32* %147, i32 %148, i32 %149, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  store i32 %150, i32* %7, align 4
  br label %180

151:                                              ; preds = %139
  %152 = load i32, i32* %8, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @png_icc_profile_error(i32 %152, i32* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  store i32 %156, i32* %7, align 4
  br label %180

157:                                              ; preds = %139
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @png_icc_profile_error(i32 %158, i32* null, i32 %159, i32 %160, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  br label %167

162:                                              ; preds = %139
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @png_icc_profile_error(i32 %163, i32* null, i32 %164, i32 %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  br label %167

167:                                              ; preds = %162, %157, %144
  %168 = load i64*, i64** %12, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 20
  %170 = call i32 @png_get_uint_32(i64* %169)
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %14, align 4
  switch i32 %171, label %173 [
    i32 1482250784, label %172
    i32 1281450528, label %172
  ]

172:                                              ; preds = %167, %167
  br label %179

173:                                              ; preds = %167
  %174 = load i32, i32* %8, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @png_icc_profile_error(i32 %174, i32* %175, i32 %176, i32 %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  store i32 %178, i32* %7, align 4
  br label %180

179:                                              ; preds = %172
  store i32 1, i32* %7, align 4
  br label %180

180:                                              ; preds = %179, %173, %151, %145, %133, %126, %114, %88, %67, %55, %37, %20
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local i32 @png_get_uint_32(i64*) #1

declare dso_local i32 @png_icc_profile_error(i32, i32*, i32, i32, i8*) #1

declare dso_local i64 @memcmp(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
