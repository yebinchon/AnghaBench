; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_NewRootX509.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_NewRootX509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32, i8* }

@NID_basic_constraints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"critical,CA:TRUE\00", align 1
@openssl_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NewRootX509(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32* %2, i64 %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  %23 = alloca i8, align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %5
  %27 = load i32*, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = icmp eq %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26, %5
  store i32* null, i32** %6, align 8
  br label %199

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i64 365, i64* %10, align 8
  br label %37

37:                                               ; preds = %36, %33
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32* null, i32** %6, align 8
  br label %199

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32* null, i32** %6, align 8
  br label %199

49:                                               ; preds = %43
  %50 = call i32 (...) @SystemTime64()
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i64, i64* %10, align 8
  %53 = trunc i64 %52 to i32
  %54 = mul nsw i32 %53, 3600
  %55 = mul nsw i32 %54, 24
  %56 = mul nsw i32 %55, 1000
  %57 = add nsw i32 %51, %56
  store i32 %57, i32* %14, align 4
  %58 = call i32* (...) @X509_new()
  store i32* %58, i32** %12, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32* null, i32** %6, align 8
  br label %199

62:                                               ; preds = %49
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @X509_set_version(i32* %63, i64 2)
  %65 = load i32*, i32** %12, align 8
  %66 = call i32* @X509_get0_notBefore(i32* %65)
  store i32* %66, i32** %15, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32* @X509_get0_notAfter(i32* %67)
  store i32* %68, i32** %16, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @UINT64ToAsn1Time(i8* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %62
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @FreeX509(i32* %75)
  store i32* null, i32** %6, align 8
  br label %199

77:                                               ; preds = %62
  %78 = load i32*, i32** %16, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @UINT64ToAsn1Time(i8* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @FreeX509(i32* %84)
  store i32* null, i32** %6, align 8
  br label %199

86:                                               ; preds = %77
  %87 = load i32*, i32** %9, align 8
  %88 = call i32* @NameToX509Name(i32* %87)
  store i32* %88, i32** %17, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @FreeX509(i32* %92)
  store i32* null, i32** %6, align 8
  br label %199

94:                                               ; preds = %86
  %95 = load i32*, i32** %9, align 8
  %96 = call i32* @NameToX509Name(i32* %95)
  store i32* %96, i32** %18, align 8
  %97 = load i32*, i32** %18, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 @FreeX509Name(i32* %100)
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @FreeX509(i32* %102)
  store i32* null, i32** %6, align 8
  br label %199

104:                                              ; preds = %94
  %105 = load i32*, i32** %12, align 8
  %106 = load i32*, i32** %18, align 8
  %107 = call i32 @X509_set_issuer_name(i32* %105, i32* %106)
  %108 = load i32*, i32** %12, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = call i32 @X509_set_subject_name(i32* %108, i32* %109)
  %111 = load i32*, i32** %17, align 8
  %112 = call i32 @FreeX509Name(i32* %111)
  %113 = load i32*, i32** %18, align 8
  %114 = call i32 @FreeX509Name(i32* %113)
  %115 = load i32*, i32** %12, align 8
  %116 = call %struct.TYPE_10__* @X509_get_serialNumber(i32* %115)
  store %struct.TYPE_10__* %116, %struct.TYPE_10__** %22, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @OPENSSL_free(i8* %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %122 = icmp eq %struct.TYPE_8__* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %104
  store i8 0, i8* %23, align 1
  %124 = call i8* @OPENSSL_malloc(i32 1)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @Copy(i8* %129, i8* %23, i32 1)
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  br label %155

133:                                              ; preds = %104
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @OPENSSL_malloc(i32 %136)
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @Copy(i8* %142, i8* %145, i32 %148)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %133, %123
  %156 = load i32, i32* @NID_basic_constraints, align 4
  %157 = call i32* @X509V3_EXT_conf_nid(i32* null, i32* null, i32 %156, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %157, i32** %19, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = load i32*, i32** %19, align 8
  %160 = call i32 @X509_add_ext(i32* %158, i32* %159, i32 -1)
  %161 = load i32*, i32** %19, align 8
  %162 = call i32 @X509_EXTENSION_free(i32* %161)
  %163 = call i32* (...) @NewBasicKeyUsageForX509()
  store i32* %163, i32** %21, align 8
  %164 = load i32*, i32** %21, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %155
  %167 = load i32*, i32** %12, align 8
  %168 = load i32*, i32** %21, align 8
  %169 = call i32 @X509_add_ext(i32* %167, i32* %168, i32 -1)
  %170 = load i32*, i32** %21, align 8
  %171 = call i32 @X509_EXTENSION_free(i32* %170)
  br label %172

172:                                              ; preds = %166, %155
  %173 = call i32* (...) @NewExtendedKeyUsageForX509()
  store i32* %173, i32** %20, align 8
  %174 = load i32*, i32** %20, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load i32*, i32** %12, align 8
  %178 = load i32*, i32** %20, align 8
  %179 = call i32 @X509_add_ext(i32* %177, i32* %178, i32 -1)
  %180 = load i32*, i32** %20, align 8
  %181 = call i32 @X509_EXTENSION_free(i32* %180)
  br label %182

182:                                              ; preds = %176, %172
  %183 = load i32, i32* @openssl_lock, align 4
  %184 = call i32 @Lock(i32 %183)
  %185 = load i32*, i32** %12, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @X509_set_pubkey(i32* %185, i32 %188)
  %190 = load i32*, i32** %12, align 8
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (...) @EVP_sha256()
  %195 = call i32 @X509_sign(i32* %190, i32 %193, i32 %194)
  %196 = load i32, i32* @openssl_lock, align 4
  %197 = call i32 @Unlock(i32 %196)
  %198 = load i32*, i32** %12, align 8
  store i32* %198, i32** %6, align 8
  br label %199

199:                                              ; preds = %182, %99, %91, %83, %74, %61, %48, %42, %32
  %200 = load i32*, i32** %6, align 8
  ret i32* %200
}

declare dso_local i32 @SystemTime64(...) #1

declare dso_local i32* @X509_new(...) #1

declare dso_local i32 @X509_set_version(i32*, i64) #1

declare dso_local i32* @X509_get0_notBefore(i32*) #1

declare dso_local i32* @X509_get0_notAfter(i32*) #1

declare dso_local i32 @UINT64ToAsn1Time(i8*, i32) #1

declare dso_local i32 @FreeX509(i32*) #1

declare dso_local i32* @NameToX509Name(i32*) #1

declare dso_local i32 @FreeX509Name(i32*) #1

declare dso_local i32 @X509_set_issuer_name(i32*, i32*) #1

declare dso_local i32 @X509_set_subject_name(i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @X509_get_serialNumber(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @Copy(i8*, i8*, i32) #1

declare dso_local i32* @X509V3_EXT_conf_nid(i32*, i32*, i32, i8*) #1

declare dso_local i32 @X509_add_ext(i32*, i32*, i32) #1

declare dso_local i32 @X509_EXTENSION_free(i32*) #1

declare dso_local i32* @NewBasicKeyUsageForX509(...) #1

declare dso_local i32* @NewExtendedKeyUsageForX509(...) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @X509_set_pubkey(i32*, i32) #1

declare dso_local i32 @X509_sign(i32*, i32, i32) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
