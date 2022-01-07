; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_create.c_mbedtls_x509_string_to_names.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_create.c_mbedtls_x509_string_to_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_X509_MAX_DN_NAME_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_UNKNOWN_OID = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_NAME = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_ALLOC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_string_to_names(i32** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8* %22, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 1, i32* %11, align 4
  %23 = load i32, i32* @MBEDTLS_X509_MAX_DN_NAME_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  store i8* %26, i8** %14, align 8
  %27 = load i32**, i32*** %4, align 8
  %28 = call i32 @mbedtls_asn1_free_named_data_list(i32** %27)
  br label %29

29:                                               ; preds = %151, %2
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ule i8* %30, %31
  br i1 %32, label %33, label %154

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 61
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i8* @x509_at_oid_from_name(i8* %42, i32 %48)
  store i8* %49, i8** %10, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @MBEDTLS_ERR_X509_UNKNOWN_OID, align 4
  store i32 %52, i32* %6, align 4
  br label %155

53:                                               ; preds = %41
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %7, align 8
  store i32 0, i32* %11, align 4
  store i8* %26, i8** %14, align 8
  br label %56

56:                                               ; preds = %53, %36, %33
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 92
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ne i8* %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %8, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 44
  br i1 %78, label %79, label %81

79:                                               ; preds = %74, %68
  %80 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_NAME, align 4
  store i32 %80, i32* %6, align 4
  br label %155

81:                                               ; preds = %74
  br label %128

82:                                               ; preds = %64, %59, %56
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %127, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %8, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 44
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %90, %85
  %95 = load i32**, i32*** %4, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = load i8*, i8** %14, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = ptrtoint i8* %26 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = call i32* @mbedtls_asn1_store_named_data(i32** %95, i8* %96, i32 %98, i8* %26, i32 %103)
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = load i32, i32* @MBEDTLS_ERR_X509_ALLOC_FAILED, align 4
  store i32 %107, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %157

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %121, %108
  %110 = load i8*, i8** %8, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = icmp ult i8* %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 32
  br label %119

119:                                              ; preds = %113, %109
  %120 = phi i1 [ false, %109 ], [ %118, %113 ]
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %8, align 8
  br label %109

124:                                              ; preds = %119
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8* %126, i8** %7, align 8
  store i32 1, i32* %11, align 4
  br label %127

127:                                              ; preds = %124, %90, %82
  br label %128

128:                                              ; preds = %127, %81
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %151, label %131

131:                                              ; preds = %128
  %132 = load i8*, i8** %7, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = icmp ne i8* %132, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %131
  %137 = load i8*, i8** %8, align 8
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %14, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %14, align 8
  store i8 %138, i8* %139, align 1
  %141 = load i8*, i8** %14, align 8
  %142 = ptrtoint i8* %141 to i64
  %143 = ptrtoint i8* %26 to i64
  %144 = sub i64 %142, %143
  %145 = load i32, i32* @MBEDTLS_X509_MAX_DN_NAME_SIZE, align 4
  %146 = sext i32 %145 to i64
  %147 = icmp eq i64 %144, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %136
  %149 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_NAME, align 4
  store i32 %149, i32* %6, align 4
  br label %155

150:                                              ; preds = %136
  br label %151

151:                                              ; preds = %150, %131, %128
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %8, align 8
  br label %29

154:                                              ; preds = %29
  br label %155

155:                                              ; preds = %154, %148, %79, %51
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %157

157:                                              ; preds = %155, %106
  %158 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mbedtls_asn1_free_named_data_list(i32**) #1

declare dso_local i8* @x509_at_oid_from_name(i8*, i32) #1

declare dso_local i32* @mbedtls_asn1_store_named_data(i32**, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
