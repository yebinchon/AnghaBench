; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1parse.c_mbedtls_asn1_get_len.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1parse.c_mbedtls_asn1_get_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_ASN1_OUT_OF_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_INVALID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_len(i8** %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = ptrtoint i8* %8 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp slt i64 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  store i32 %16, i32* %4, align 4
  br label %175

17:                                               ; preds = %3
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 128
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %25, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i64
  %30 = load i64*, i64** %7, align 8
  store i64 %29, i64* %30, align 8
  br label %162

31:                                               ; preds = %17
  %32 = load i8**, i8*** %5, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 127
  switch i32 %36, label %159 [
    i32 1, label %37
    i32 2, label %57
    i32 3, label %84
    i32 4, label %118
  ]

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = ptrtoint i8* %38 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = icmp slt i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  store i32 %46, i32* %4, align 4
  br label %175

47:                                               ; preds = %37
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i64
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  store i8* %56, i8** %54, align 8
  br label %161

57:                                               ; preds = %31
  %58 = load i8*, i8** %6, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = ptrtoint i8* %58 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = icmp slt i64 %63, 3
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  store i32 %66, i32* %4, align 4
  br label %175

67:                                               ; preds = %57
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i64
  %73 = shl i64 %72, 8
  %74 = load i8**, i8*** %5, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i64
  %79 = or i64 %73, %78
  %80 = load i64*, i64** %7, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i8**, i8*** %5, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  store i8* %83, i8** %81, align 8
  br label %161

84:                                               ; preds = %31
  %85 = load i8*, i8** %6, align 8
  %86 = load i8**, i8*** %5, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %85 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = icmp slt i64 %90, 4
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  store i32 %93, i32* %4, align 4
  br label %175

94:                                               ; preds = %84
  %95 = load i8**, i8*** %5, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i64
  %100 = shl i64 %99, 16
  %101 = load i8**, i8*** %5, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i64
  %106 = shl i64 %105, 8
  %107 = or i64 %100, %106
  %108 = load i8**, i8*** %5, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 3
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i64
  %113 = or i64 %107, %112
  %114 = load i64*, i64** %7, align 8
  store i64 %113, i64* %114, align 8
  %115 = load i8**, i8*** %5, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 4
  store i8* %117, i8** %115, align 8
  br label %161

118:                                              ; preds = %31
  %119 = load i8*, i8** %6, align 8
  %120 = load i8**, i8*** %5, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = ptrtoint i8* %119 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = icmp slt i64 %124, 5
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  store i32 %127, i32* %4, align 4
  br label %175

128:                                              ; preds = %118
  %129 = load i8**, i8*** %5, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i64
  %134 = shl i64 %133, 24
  %135 = load i8**, i8*** %5, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i64
  %140 = shl i64 %139, 16
  %141 = or i64 %134, %140
  %142 = load i8**, i8*** %5, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 3
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i64
  %147 = shl i64 %146, 8
  %148 = or i64 %141, %147
  %149 = load i8**, i8*** %5, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 4
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i64
  %154 = or i64 %148, %153
  %155 = load i64*, i64** %7, align 8
  store i64 %154, i64* %155, align 8
  %156 = load i8**, i8*** %5, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 5
  store i8* %158, i8** %156, align 8
  br label %161

159:                                              ; preds = %31
  %160 = load i32, i32* @MBEDTLS_ERR_ASN1_INVALID_LENGTH, align 4
  store i32 %160, i32* %4, align 4
  br label %175

161:                                              ; preds = %128, %94, %67, %47
  br label %162

162:                                              ; preds = %161, %24
  %163 = load i64*, i64** %7, align 8
  %164 = load i64, i64* %163, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = load i8**, i8*** %5, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = ptrtoint i8* %165 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = icmp ugt i64 %164, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %162
  %173 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  store i32 %173, i32* %4, align 4
  br label %175

174:                                              ; preds = %162
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %172, %159, %126, %92, %65, %45, %15
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
