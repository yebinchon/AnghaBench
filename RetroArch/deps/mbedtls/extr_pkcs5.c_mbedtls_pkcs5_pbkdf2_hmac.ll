; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkcs5.c_mbedtls_pkcs5_pbkdf2_hmac.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkcs5.c_mbedtls_pkcs5_pbkdf2_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@MBEDTLS_MD_MAX_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PKCS5_BAD_INPUT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pkcs5_pbkdf2_hmac(%struct.TYPE_6__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5, i8 signext %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8, align 1
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca [4 x i8], align 1
  %28 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i8 %6, i8* %16, align 1
  store i8* %7, i8** %17, align 8
  %29 = load i32, i32* @MBEDTLS_MD_MAX_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %21, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %22, align 8
  %33 = load i32, i32* @MBEDTLS_MD_MAX_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %23, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call zeroext i8 @mbedtls_md_get_size(i32 %38)
  store i8 %39, i8* %24, align 1
  %40 = load i8*, i8** %17, align 8
  store i8* %40, i8** %26, align 8
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %27, i64 0, i64 0
  %42 = call i32 @memset(i8* %41, i32 0, i32 4)
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %27, i64 0, i64 3
  store i8 1, i8* %43, align 1
  %44 = load i32, i32* %15, align 4
  %45 = icmp ugt i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %8
  %47 = load i32, i32* @MBEDTLS_ERR_PKCS5_BAD_INPUT_DATA, align 4
  store i32 %47, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %184

48:                                               ; preds = %8
  br label %49

49:                                               ; preds = %182, %48
  %50 = load i8, i8* %16, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %183

52:                                               ; preds = %49
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @mbedtls_md_hmac_starts(%struct.TYPE_6__* %53, i8* %54, i64 %55)
  store i32 %56, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %18, align 4
  store i32 %59, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %184

60:                                               ; preds = %52
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i64, i64* %14, align 8
  %64 = trunc i64 %63 to i8
  %65 = call i32 @mbedtls_md_hmac_update(%struct.TYPE_6__* %61, i8* %62, i8 zeroext %64)
  store i32 %65, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %18, align 4
  store i32 %68, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %184

69:                                               ; preds = %60
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %27, i64 0, i64 0
  %72 = call i32 @mbedtls_md_hmac_update(%struct.TYPE_6__* %70, i8* %71, i8 zeroext 4)
  store i32 %72, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %184

76:                                               ; preds = %69
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = call i32 @mbedtls_md_hmac_finish(%struct.TYPE_6__* %77, i8* %35)
  store i32 %78, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %184

82:                                               ; preds = %76
  %83 = load i8, i8* %24, align 1
  %84 = zext i8 %83 to i64
  %85 = call i32 @memcpy(i8* %32, i8* %35, i64 %84)
  store i32 1, i32* %20, align 4
  br label %86

86:                                               ; preds = %134, %82
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %137

90:                                               ; preds = %86
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @mbedtls_md_hmac_starts(%struct.TYPE_6__* %91, i8* %92, i64 %93)
  store i32 %94, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %18, align 4
  store i32 %97, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %184

98:                                               ; preds = %90
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %100 = load i8, i8* %24, align 1
  %101 = call i32 @mbedtls_md_hmac_update(%struct.TYPE_6__* %99, i8* %32, i8 zeroext %100)
  store i32 %101, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %18, align 4
  store i32 %104, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %184

105:                                              ; preds = %98
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %107 = call i32 @mbedtls_md_hmac_finish(%struct.TYPE_6__* %106, i8* %32)
  store i32 %107, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* %18, align 4
  store i32 %110, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %184

111:                                              ; preds = %105
  store i32 0, i32* %19, align 4
  br label %112

112:                                              ; preds = %130, %111
  %113 = load i32, i32* %19, align 4
  %114 = load i8, i8* %24, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %32, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %35, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = xor i32 %127, %122
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %125, align 1
  br label %130

130:                                              ; preds = %117
  %131 = load i32, i32* %19, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %19, align 4
  br label %112

133:                                              ; preds = %112
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %20, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %20, align 4
  br label %86

137:                                              ; preds = %86
  %138 = load i8, i8* %16, align 1
  %139 = sext i8 %138 to i32
  %140 = load i8, i8* %24, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i8, i8* %16, align 1
  %145 = sext i8 %144 to i32
  br label %149

146:                                              ; preds = %137
  %147 = load i8, i8* %24, align 1
  %148 = zext i8 %147 to i32
  br label %149

149:                                              ; preds = %146, %143
  %150 = phi i32 [ %145, %143 ], [ %148, %146 ]
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %25, align 8
  %152 = load i8*, i8** %26, align 8
  %153 = load i64, i64* %25, align 8
  %154 = call i32 @memcpy(i8* %152, i8* %35, i64 %153)
  %155 = load i64, i64* %25, align 8
  %156 = trunc i64 %155 to i8
  %157 = sext i8 %156 to i32
  %158 = load i8, i8* %16, align 1
  %159 = sext i8 %158 to i32
  %160 = sub nsw i32 %159, %157
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %16, align 1
  %162 = load i64, i64* %25, align 8
  %163 = load i8*, i8** %26, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 %162
  store i8* %164, i8** %26, align 8
  store i32 4, i32* %20, align 4
  br label %165

165:                                              ; preds = %179, %149
  %166 = load i32, i32* %20, align 4
  %167 = icmp ugt i32 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %165
  %169 = load i32, i32* %20, align 4
  %170 = sub i32 %169, 1
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [4 x i8], [4 x i8]* %27, i64 0, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = add i8 %173, 1
  store i8 %174, i8* %172, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  br label %182

178:                                              ; preds = %168
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %20, align 4
  %181 = add i32 %180, -1
  store i32 %181, i32* %20, align 4
  br label %165

182:                                              ; preds = %177, %165
  br label %49

183:                                              ; preds = %49
  store i32 0, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %184

184:                                              ; preds = %183, %109, %103, %96, %80, %74, %67, %58, %46
  %185 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i32, i32* %9, align 4
  ret i32 %186
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local zeroext i8 @mbedtls_md_get_size(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mbedtls_md_hmac_starts(%struct.TYPE_6__*, i8*, i64) #2

declare dso_local i32 @mbedtls_md_hmac_update(%struct.TYPE_6__*, i8*, i8 zeroext) #2

declare dso_local i32 @mbedtls_md_hmac_finish(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
