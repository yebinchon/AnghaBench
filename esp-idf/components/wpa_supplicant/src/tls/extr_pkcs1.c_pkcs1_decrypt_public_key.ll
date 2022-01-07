; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_pkcs1.c_pkcs1_decrypt_public_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_pkcs1.c_pkcs1_decrypt_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rsa_key = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"LibTomCrypt: Invalid signature EB structure\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"LibTomCrypt: Invalid signature PS (BT=00)\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"LibTomCrypt: Invalid signature PS (BT=01)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"LibTomCrypt: Too short signature padding\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"LibTomCrypt: Invalid signature EB structure (2)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs1_decrypt_public_key(%struct.crypto_rsa_key* %0, i32* %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_rsa_key*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.crypto_rsa_key* %0, %struct.crypto_rsa_key** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64*, i64** %11, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %7, align 8
  %20 = call i64 @crypto_rsa_exptmod(i32* %16, i64 %17, i32* %18, i64* %12, %struct.crypto_rsa_key* %19, i32 0)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %150

23:                                               ; preds = %5
  %24 = load i64, i64* %12, align 8
  %25 = icmp ult i64 %24, 27
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %26, %23
  %42 = load i32, i32* @MSG_INFO, align 4
  %43 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %150

44:                                               ; preds = %36, %31
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  store i32* %46, i32** %13, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %44
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @MSG_INFO, align 4
  %58 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %150

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i32*, i32** %13, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32*, i32** %10, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = icmp ult i32* %62, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br label %76

76:                                               ; preds = %71, %67, %60
  %77 = phi i1 [ false, %67 ], [ false, %60 ], [ %75, %71 ]
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i32*, i32** %13, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %13, align 8
  br label %60

81:                                               ; preds = %76
  br label %107

82:                                               ; preds = %44
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 255
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @MSG_INFO, align 4
  %89 = call i32 @wpa_printf(i32 %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %150

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %103, %90
  %92 = load i32*, i32** %13, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = icmp ult i32* %92, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 255
  br label %101

101:                                              ; preds = %97, %91
  %102 = phi i1 [ false, %91 ], [ %100, %97 ]
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = load i32*, i32** %13, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %13, align 8
  br label %91

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %81
  %108 = load i32*, i32** %13, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = ptrtoint i32* %108 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = sub nsw i64 %113, 2
  %115 = icmp slt i64 %114, 8
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* @MSG_INFO, align 4
  %118 = call i32 @wpa_printf(i32 %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %150

119:                                              ; preds = %107
  %120 = load i32*, i32** %13, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 16
  %122 = load i32*, i32** %10, align 8
  %123 = load i64, i64* %12, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = icmp uge i32* %121, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %119
  %127 = load i32*, i32** %13, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126, %119
  %131 = load i32, i32* @MSG_INFO, align 4
  %132 = call i32 @wpa_printf(i32 %131, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %150

133:                                              ; preds = %126
  %134 = load i32*, i32** %13, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %13, align 8
  %136 = load i32*, i32** %13, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = ptrtoint i32* %136 to i64
  %139 = ptrtoint i32* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 4
  %142 = load i64, i64* %12, align 8
  %143 = sub i64 %142, %141
  store i64 %143, i64* %12, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = load i64, i64* %12, align 8
  %147 = call i32 @os_memmove(i32* %144, i32* %145, i64 %146)
  %148 = load i64, i64* %12, align 8
  %149 = load i64*, i64** %11, align 8
  store i64 %148, i64* %149, align 8
  store i32 0, i32* %6, align 4
  br label %150

150:                                              ; preds = %133, %130, %116, %87, %56, %41, %22
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i64 @crypto_rsa_exptmod(i32*, i64, i32*, i64*, %struct.crypto_rsa_key*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
