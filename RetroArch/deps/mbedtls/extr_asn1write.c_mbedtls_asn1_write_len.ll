; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1write.c_mbedtls_asn1_write_len.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1write.c_mbedtls_asn1_write_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_ASN1_BUF_TOO_SMALL = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_INVALID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_len(i8** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %8, 128
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = ptrtoint i8* %12 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* @MBEDTLS_ERR_ASN1_BUF_TOO_SMALL, align 4
  store i32 %19, i32* %4, align 4
  br label %161

20:                                               ; preds = %10
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i8
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %25, i8** %23, align 8
  store i8 %22, i8* %25, align 1
  store i32 1, i32* %4, align 4
  br label %161

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = icmp ule i64 %27, 255
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = icmp slt i64 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @MBEDTLS_ERR_ASN1_BUF_TOO_SMALL, align 4
  store i32 %38, i32* %4, align 4
  br label %161

39:                                               ; preds = %29
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i8
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %44, i8** %42, align 8
  store i8 %41, i8* %44, align 1
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %45, align 8
  store i8 -127, i8* %47, align 1
  store i32 2, i32* %4, align 4
  br label %161

48:                                               ; preds = %26
  %49 = load i64, i64* %7, align 8
  %50 = icmp ule i64 %49, 65535
  br i1 %50, label %51, label %78

51:                                               ; preds = %48
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = icmp slt i64 %57, 3
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @MBEDTLS_ERR_ASN1_BUF_TOO_SMALL, align 4
  store i32 %60, i32* %4, align 4
  br label %161

61:                                               ; preds = %51
  %62 = load i64, i64* %7, align 8
  %63 = and i64 %62, 255
  %64 = trunc i64 %63 to i8
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %67, i8** %65, align 8
  store i8 %64, i8* %67, align 1
  %68 = load i64, i64* %7, align 8
  %69 = lshr i64 %68, 8
  %70 = and i64 %69, 255
  %71 = trunc i64 %70 to i8
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %74, i8** %72, align 8
  store i8 %71, i8* %74, align 1
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %75, align 8
  store i8 -126, i8* %77, align 1
  store i32 3, i32* %4, align 4
  br label %161

78:                                               ; preds = %48
  %79 = load i64, i64* %7, align 8
  %80 = icmp ule i64 %79, 16777215
  br i1 %80, label %81, label %115

81:                                               ; preds = %78
  %82 = load i8**, i8*** %5, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = icmp slt i64 %87, 4
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @MBEDTLS_ERR_ASN1_BUF_TOO_SMALL, align 4
  store i32 %90, i32* %4, align 4
  br label %161

91:                                               ; preds = %81
  %92 = load i64, i64* %7, align 8
  %93 = and i64 %92, 255
  %94 = trunc i64 %93 to i8
  %95 = load i8**, i8*** %5, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 -1
  store i8* %97, i8** %95, align 8
  store i8 %94, i8* %97, align 1
  %98 = load i64, i64* %7, align 8
  %99 = lshr i64 %98, 8
  %100 = and i64 %99, 255
  %101 = trunc i64 %100 to i8
  %102 = load i8**, i8*** %5, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %104, i8** %102, align 8
  store i8 %101, i8* %104, align 1
  %105 = load i64, i64* %7, align 8
  %106 = lshr i64 %105, 16
  %107 = and i64 %106, 255
  %108 = trunc i64 %107 to i8
  %109 = load i8**, i8*** %5, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 -1
  store i8* %111, i8** %109, align 8
  store i8 %108, i8* %111, align 1
  %112 = load i8**, i8*** %5, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 -1
  store i8* %114, i8** %112, align 8
  store i8 -125, i8* %114, align 1
  store i32 4, i32* %4, align 4
  br label %161

115:                                              ; preds = %78
  %116 = load i64, i64* %7, align 8
  %117 = icmp ule i64 %116, 4294967295
  br i1 %117, label %118, label %159

118:                                              ; preds = %115
  %119 = load i8**, i8*** %5, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = icmp slt i64 %124, 5
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* @MBEDTLS_ERR_ASN1_BUF_TOO_SMALL, align 4
  store i32 %127, i32* %4, align 4
  br label %161

128:                                              ; preds = %118
  %129 = load i64, i64* %7, align 8
  %130 = and i64 %129, 255
  %131 = trunc i64 %130 to i8
  %132 = load i8**, i8*** %5, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 -1
  store i8* %134, i8** %132, align 8
  store i8 %131, i8* %134, align 1
  %135 = load i64, i64* %7, align 8
  %136 = lshr i64 %135, 8
  %137 = and i64 %136, 255
  %138 = trunc i64 %137 to i8
  %139 = load i8**, i8*** %5, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 -1
  store i8* %141, i8** %139, align 8
  store i8 %138, i8* %141, align 1
  %142 = load i64, i64* %7, align 8
  %143 = lshr i64 %142, 16
  %144 = and i64 %143, 255
  %145 = trunc i64 %144 to i8
  %146 = load i8**, i8*** %5, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 -1
  store i8* %148, i8** %146, align 8
  store i8 %145, i8* %148, align 1
  %149 = load i64, i64* %7, align 8
  %150 = lshr i64 %149, 24
  %151 = and i64 %150, 255
  %152 = trunc i64 %151 to i8
  %153 = load i8**, i8*** %5, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 -1
  store i8* %155, i8** %153, align 8
  store i8 %152, i8* %155, align 1
  %156 = load i8**, i8*** %5, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 -1
  store i8* %158, i8** %156, align 8
  store i8 -124, i8* %158, align 1
  store i32 5, i32* %4, align 4
  br label %161

159:                                              ; preds = %115
  %160 = load i32, i32* @MBEDTLS_ERR_ASN1_INVALID_LENGTH, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %159, %128, %126, %91, %89, %61, %59, %39, %37, %20, %18
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
