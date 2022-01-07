; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_NewX509.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_NewX509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_17__ = type { i32, i8* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"DNS.1:%S\00", align 1
@NID_subject_alt_name = common dso_local global i32 0, align 4
@openssl_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NewX509(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, %struct.TYPE_14__* %2, %struct.TYPE_15__* %3, i64 %4, %struct.TYPE_13__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_17__*, align 8
  %25 = alloca i8, align 1
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %13, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %29 = icmp eq %struct.TYPE_16__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %6
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %32 = icmp eq %struct.TYPE_15__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %35 = icmp eq %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30, %6
  store i32* null, i32** %7, align 8
  br label %216

37:                                               ; preds = %33
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32* null, i32** %7, align 8
  br label %216

43:                                               ; preds = %37
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32* null, i32** %7, align 8
  br label %216

49:                                               ; preds = %43
  %50 = call i32 (...) @SystemTime64()
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i64, i64* %12, align 8
  %53 = trunc i64 %52 to i32
  %54 = mul nsw i32 %53, 3600
  %55 = mul nsw i32 %54, 24
  %56 = mul nsw i32 %55, 1000
  %57 = add nsw i32 %51, %56
  store i32 %57, i32* %16, align 4
  %58 = call i32* (...) @X509_new()
  store i32* %58, i32** %14, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32* null, i32** %7, align 8
  br label %216

62:                                               ; preds = %49
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @X509_set_version(i32* %63, i64 2)
  %65 = load i32*, i32** %14, align 8
  %66 = call i32* @X509_get0_notBefore(i32* %65)
  store i32* %66, i32** %17, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = call i32* @X509_get0_notAfter(i32* %67)
  store i32* %68, i32** %18, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @UINT64ToAsn1Time(i8* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %62
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @FreeX509(i32* %75)
  store i32* null, i32** %7, align 8
  br label %216

77:                                               ; preds = %62
  %78 = load i32*, i32** %18, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @UINT64ToAsn1Time(i8* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @FreeX509(i32* %84)
  store i32* null, i32** %7, align 8
  br label %216

86:                                               ; preds = %77
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %88 = call i32* @NameToX509Name(%struct.TYPE_15__* %87)
  store i32* %88, i32** %19, align 8
  %89 = load i32*, i32** %19, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @FreeX509(i32* %92)
  store i32* null, i32** %7, align 8
  br label %216

94:                                               ; preds = %86
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32* @X509_get_subject_name(i32 %97)
  store i32* %98, i32** %20, align 8
  %99 = load i32*, i32** %20, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load i32*, i32** %19, align 8
  %103 = call i32 @FreeX509Name(i32* %102)
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 @FreeX509(i32* %104)
  store i32* null, i32** %7, align 8
  br label %216

106:                                              ; preds = %94
  %107 = load i32*, i32** %14, align 8
  %108 = load i32*, i32** %20, align 8
  %109 = call i32 @X509_set_issuer_name(i32* %107, i32* %108)
  %110 = load i32*, i32** %14, align 8
  %111 = load i32*, i32** %19, align 8
  %112 = call i32 @X509_set_subject_name(i32* %110, i32* %111)
  %113 = load i32*, i32** %19, align 8
  %114 = call i32 @FreeX509Name(i32* %113)
  %115 = load i32*, i32** %14, align 8
  %116 = call %struct.TYPE_17__* @X509_get_serialNumber(i32* %115)
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %24, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @OPENSSL_free(i8* %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %122 = icmp eq %struct.TYPE_13__* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %106
  store i8 0, i8* %25, align 1
  %124 = call i8* @OPENSSL_malloc(i32 1)
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @Copy(i8* %129, i8* %25, i32 1)
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  br label %155

133:                                              ; preds = %106
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @OPENSSL_malloc(i32 %136)
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @Copy(i8* %142, i8* %145, i32 %148)
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %133, %123
  %156 = call i32* (...) @NewBasicKeyUsageForX509()
  store i32* %156, i32** %23, align 8
  %157 = load i32*, i32** %23, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load i32*, i32** %14, align 8
  %161 = load i32*, i32** %23, align 8
  %162 = call i32 @X509_add_ext(i32* %160, i32* %161, i32 -1)
  %163 = load i32*, i32** %23, align 8
  %164 = call i32 @X509_EXTENSION_free(i32* %163)
  br label %165

165:                                              ; preds = %159, %155
  %166 = call i32* (...) @NewExtendedKeyUsageForX509()
  store i32* %166, i32** %22, align 8
  %167 = load i32*, i32** %22, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load i32*, i32** %14, align 8
  %171 = load i32*, i32** %22, align 8
  %172 = call i32 @X509_add_ext(i32* %170, i32* %171, i32 -1)
  %173 = load i32*, i32** %22, align 8
  %174 = call i32 @X509_EXTENSION_free(i32* %173)
  br label %175

175:                                              ; preds = %169, %165
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @UniIsEmptyStr(i32 %178)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %199

181:                                              ; preds = %175
  %182 = load i32, i32* @MAX_PATH, align 4
  %183 = zext i32 %182 to i64
  %184 = call i8* @llvm.stacksave()
  store i8* %184, i8** %26, align 8
  %185 = alloca i8, i64 %183, align 16
  store i64 %183, i64* %27, align 8
  %186 = trunc i64 %183 to i32
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @Format(i8* %185, i32 %186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @NID_subject_alt_name, align 4
  %192 = call i32* @X509V3_EXT_conf_nid(i32* null, i32* null, i32 %191, i8* %185)
  store i32* %192, i32** %21, align 8
  %193 = load i32*, i32** %14, align 8
  %194 = load i32*, i32** %21, align 8
  %195 = call i32 @X509_add_ext(i32* %193, i32* %194, i32 -1)
  %196 = load i32*, i32** %21, align 8
  %197 = call i32 @X509_EXTENSION_free(i32* %196)
  %198 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %198)
  br label %199

199:                                              ; preds = %181, %175
  %200 = load i32, i32* @openssl_lock, align 4
  %201 = call i32 @Lock(i32 %200)
  %202 = load i32*, i32** %14, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @X509_set_pubkey(i32* %202, i32 %205)
  %207 = load i32*, i32** %14, align 8
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (...) @EVP_sha256()
  %212 = call i32 @X509_sign(i32* %207, i32 %210, i32 %211)
  %213 = load i32, i32* @openssl_lock, align 4
  %214 = call i32 @Unlock(i32 %213)
  %215 = load i32*, i32** %14, align 8
  store i32* %215, i32** %7, align 8
  br label %216

216:                                              ; preds = %199, %101, %91, %83, %74, %61, %48, %42, %36
  %217 = load i32*, i32** %7, align 8
  ret i32* %217
}

declare dso_local i32 @SystemTime64(...) #1

declare dso_local i32* @X509_new(...) #1

declare dso_local i32 @X509_set_version(i32*, i64) #1

declare dso_local i32* @X509_get0_notBefore(i32*) #1

declare dso_local i32* @X509_get0_notAfter(i32*) #1

declare dso_local i32 @UINT64ToAsn1Time(i8*, i32) #1

declare dso_local i32 @FreeX509(i32*) #1

declare dso_local i32* @NameToX509Name(%struct.TYPE_15__*) #1

declare dso_local i32* @X509_get_subject_name(i32) #1

declare dso_local i32 @FreeX509Name(i32*) #1

declare dso_local i32 @X509_set_issuer_name(i32*, i32*) #1

declare dso_local i32 @X509_set_subject_name(i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @X509_get_serialNumber(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @Copy(i8*, i8*, i32) #1

declare dso_local i32* @NewBasicKeyUsageForX509(...) #1

declare dso_local i32 @X509_add_ext(i32*, i32*, i32) #1

declare dso_local i32 @X509_EXTENSION_free(i32*) #1

declare dso_local i32* @NewExtendedKeyUsageForX509(...) #1

declare dso_local i32 @UniIsEmptyStr(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Format(i8*, i32, i8*, i32) #1

declare dso_local i32* @X509V3_EXT_conf_nid(i32*, i32*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @X509_set_pubkey(i32*, i32) #1

declare dso_local i32 @X509_sign(i32*, i32, i32) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
