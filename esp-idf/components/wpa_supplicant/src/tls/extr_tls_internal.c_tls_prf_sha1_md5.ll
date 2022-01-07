; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tls_internal.c_tls_prf_sha1_md5.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tls_internal.c_tls_prf_sha1_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@SHA1_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_prf_sha1_md5(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [3 x i8*], align 16
  %29 = alloca [3 x i64], align 16
  %30 = alloca [3 x i8*], align 16
  %31 = alloca [3 x i64], align 16
  %32 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %33 = load i32, i32* @MD5_MAC_LEN, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %21, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %22, align 8
  %37 = load i32, i32* @SHA1_MAC_LEN, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %23, align 8
  %40 = load i32, i32* @MD5_MAC_LEN, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %24, align 8
  %43 = load i32, i32* @SHA1_MAC_LEN, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %25, align 8
  %46 = load i64, i64* %10, align 8
  %47 = and i64 %46, 1
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %32, align 4
  br label %159

50:                                               ; preds = %7
  %51 = getelementptr inbounds [3 x i8*], [3 x i8*]* %28, i64 0, i64 0
  store i8* %36, i8** %51, align 16
  %52 = load i32, i32* @MD5_MAC_LEN, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 0
  store i64 %53, i64* %54, align 16
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds [3 x i8*], [3 x i8*]* %28, i64 0, i64 1
  store i8* %55, i8** %56, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i64 @os_strlen(i8* %57)
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 1
  store i64 %58, i64* %59, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds [3 x i8*], [3 x i8*]* %28, i64 0, i64 2
  store i8* %60, i8** %61, align 16
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 2
  store i64 %62, i64* %63, align 16
  %64 = getelementptr inbounds [3 x i8*], [3 x i8*]* %30, i64 0, i64 0
  store i8* %39, i8** %64, align 16
  %65 = load i32, i32* @SHA1_MAC_LEN, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 0
  store i64 %66, i64* %67, align 16
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds [3 x i8*], [3 x i8*]* %30, i64 0, i64 1
  store i8* %68, i8** %69, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i64 @os_strlen(i8* %70)
  %72 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 1
  store i64 %71, i64* %72, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds [3 x i8*], [3 x i8*]* %30, i64 0, i64 2
  store i8* %73, i8** %74, align 16
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 2
  store i64 %75, i64* %76, align 16
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, 1
  %79 = udiv i64 %78, 2
  store i64 %79, i64* %17, align 8
  store i64 %79, i64* %16, align 8
  %80 = load i8*, i8** %9, align 8
  store i8* %80, i8** %19, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i64, i64* %16, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %20, align 8
  %84 = load i64, i64* %10, align 8
  %85 = and i64 %84, 1
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %50
  %88 = load i8*, i8** %20, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %89, i8** %20, align 8
  br label %90

90:                                               ; preds = %87, %50
  %91 = load i8*, i8** %19, align 8
  %92 = load i64, i64* %16, align 8
  %93 = getelementptr inbounds [3 x i8*], [3 x i8*]* %28, i64 0, i64 1
  %94 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 1
  %95 = call i32 @hmac_md5_vector(i8* %91, i64 %92, i32 2, i8** %93, i64* %94, i8* %36)
  %96 = load i8*, i8** %20, align 8
  %97 = load i64, i64* %17, align 8
  %98 = getelementptr inbounds [3 x i8*], [3 x i8*]* %30, i64 0, i64 1
  %99 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 1
  %100 = call i32 @hmac_sha1_vector(i8* %96, i64 %97, i32 2, i8** %98, i64* %99, i8* %39)
  %101 = load i32, i32* @MD5_MAC_LEN, align 4
  store i32 %101, i32* %26, align 4
  %102 = load i32, i32* @SHA1_MAC_LEN, align 4
  store i32 %102, i32* %27, align 4
  store i64 0, i64* %18, align 8
  br label %103

103:                                              ; preds = %155, %90
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %15, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %158

107:                                              ; preds = %103
  %108 = load i32, i32* %26, align 4
  %109 = load i32, i32* @MD5_MAC_LEN, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load i8*, i8** %19, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds [3 x i8*], [3 x i8*]* %28, i64 0, i64 0
  %115 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 0
  %116 = call i32 @hmac_md5_vector(i8* %112, i64 %113, i32 3, i8** %114, i64* %115, i8* %42)
  store i32 0, i32* %26, align 4
  %117 = load i8*, i8** %19, align 8
  %118 = load i64, i64* %16, align 8
  %119 = load i32, i32* @MD5_MAC_LEN, align 4
  %120 = call i32 @hmac_md5(i8* %117, i64 %118, i8* %36, i32 %119, i8* %36)
  br label %121

121:                                              ; preds = %111, %107
  %122 = load i32, i32* %27, align 4
  %123 = load i32, i32* @SHA1_MAC_LEN, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i8*, i8** %20, align 8
  %127 = load i64, i64* %17, align 8
  %128 = getelementptr inbounds [3 x i8*], [3 x i8*]* %30, i64 0, i64 0
  %129 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 0
  %130 = call i32 @hmac_sha1_vector(i8* %126, i64 %127, i32 3, i8** %128, i64* %129, i8* %45)
  store i32 0, i32* %27, align 4
  %131 = load i8*, i8** %20, align 8
  %132 = load i64, i64* %17, align 8
  %133 = load i32, i32* @SHA1_MAC_LEN, align 4
  %134 = call i32 @hmac_sha1(i8* %131, i64 %132, i8* %39, i32 %133, i8* %39)
  br label %135

135:                                              ; preds = %125, %121
  %136 = load i32, i32* %26, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %42, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = load i32, i32* %27, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %45, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = xor i32 %140, %145
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %14, align 8
  %149 = load i64, i64* %18, align 8
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8 %147, i8* %150, align 1
  %151 = load i32, i32* %26, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %26, align 4
  %153 = load i32, i32* %27, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %27, align 4
  br label %155

155:                                              ; preds = %135
  %156 = load i64, i64* %18, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %18, align 8
  br label %103

158:                                              ; preds = %103
  store i32 0, i32* %8, align 4
  store i32 1, i32* %32, align 4
  br label %159

159:                                              ; preds = %158, %49
  %160 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i32 @hmac_md5_vector(i8*, i64, i32, i8**, i64*, i8*) #2

declare dso_local i32 @hmac_sha1_vector(i8*, i64, i32, i8**, i64*, i8*) #2

declare dso_local i32 @hmac_md5(i8*, i64, i8*, i32, i8*) #2

declare dso_local i32 @hmac_sha1(i8*, i64, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
