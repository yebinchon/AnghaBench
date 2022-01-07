; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_crypto_ctx_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_crypto_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ctx = type { i32, i32, i32, i32, i32*, %struct.TYPE_15__*, i32, %struct.TYPE_15__*, i8*, %struct.TYPE_13__, %struct.TYPE_15__*, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i8**, i32*, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i32 }

@KRB5_USAGE_LEN = common dso_local global i32 0, align 4
@CRYPTO_CTS_ENABLE = common dso_local global i32 0, align 4
@KRB5_USAGE_INITIATOR_SIGN = common dso_local global i32 0, align 4
@KRB5_USAGE_ACCEPTOR_SIGN = common dso_local global i32 0, align 4
@GSS_SND = common dso_local global i64 0, align 8
@GSS_RCV = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@gss_krb5_mech_grp = common dso_local global i32 0, align 4
@LCK_ATTR_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_crypto_ctx_init(%struct.crypto_ctx* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_ctx*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_ctx* %0, %struct.crypto_ctx** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %11 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %11, i32 0, i32 12
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %12, align 8
  %13 = load i32, i32* @KRB5_USAGE_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %17, i32 0, i32 12
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 8
  %26 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %26, i32 0, i32 12
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %6, align 8
  %33 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %33, i32 0, i32 12
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %42, i32 0, i32 8
  store i8* %41, i8** %43, align 8
  %44 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %201 [
    i32 130, label %47
    i32 129, label %47
    i32 128, label %131
  ]

47:                                               ; preds = %2, %2
  %48 = call %struct.TYPE_15__* (...) @ccaes_cbc_encrypt_mode()
  %49 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %49, i32 0, i32 5
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %50, align 8
  %51 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %51, i32 0, i32 5
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = call i32 @assert(%struct.TYPE_15__* %53)
  %55 = call %struct.TYPE_15__* (...) @ccaes_cbc_decrypt_mode()
  %56 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %56, i32 0, i32 10
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %57, align 8
  %58 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %58, i32 0, i32 10
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = call i32 @assert(%struct.TYPE_15__* %60)
  %62 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %62, i32 0, i32 9
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %65, i32 0, i32 9
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  %68 = call i8* (...) @ccsha1_di()
  %69 = bitcast i8* %68 to %struct.TYPE_15__*
  %70 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %70, i32 0, i32 7
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %71, align 8
  %72 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %72, i32 0, i32 7
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = call i32 @assert(%struct.TYPE_15__* %74)
  %76 = load i32, i32* @CRYPTO_CTS_ENABLE, align 4
  %77 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %78 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %80 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %82 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %81, i32 0, i32 2
  store i32 12, i32* %82, align 8
  %83 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %83, i32 0, i32 12
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %47
  %90 = load i32, i32* @KRB5_USAGE_INITIATOR_SIGN, align 4
  br label %93

91:                                               ; preds = %47
  %92 = load i32, i32* @KRB5_USAGE_ACCEPTOR_SIGN, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = call i32 @krb5_make_usage(i32 %94, i32 153, i32* %16)
  %96 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %97 = load i32, i32* @KRB5_USAGE_LEN, align 4
  %98 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %99 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @GSS_SND, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %104 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @krb5_key_derivation(%struct.crypto_ctx* %96, i32* %16, i32 %97, i32* %102, i32 %105)
  %107 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %108 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %107, i32 0, i32 12
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %93
  %114 = load i32, i32* @KRB5_USAGE_ACCEPTOR_SIGN, align 4
  br label %117

115:                                              ; preds = %93
  %116 = load i32, i32* @KRB5_USAGE_INITIATOR_SIGN, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = call i32 @krb5_make_usage(i32 %118, i32 153, i32* %16)
  %120 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %121 = load i32, i32* @KRB5_USAGE_LEN, align 4
  %122 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %123 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @GSS_RCV, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %128 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %127, i32 0, i32 11
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @krb5_key_derivation(%struct.crypto_ctx* %120, i32* %16, i32 %121, i32* %126, i32 %129)
  br label %203

131:                                              ; preds = %2
  %132 = call %struct.TYPE_15__* (...) @ccdes3_cbc_encrypt_mode()
  %133 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %134 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %133, i32 0, i32 5
  store %struct.TYPE_15__* %132, %struct.TYPE_15__** %134, align 8
  %135 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %136 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %135, i32 0, i32 5
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = call i32 @assert(%struct.TYPE_15__* %137)
  %139 = call %struct.TYPE_15__* (...) @ccdes3_cbc_decrypt_mode()
  %140 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %141 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %140, i32 0, i32 10
  store %struct.TYPE_15__* %139, %struct.TYPE_15__** %141, align 8
  %142 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %143 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %142, i32 0, i32 10
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = call i32 @assert(%struct.TYPE_15__* %144)
  %146 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %147 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %146, i32 0, i32 8
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %150 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %149, i32 0, i32 9
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i8**, i8*** %151, align 8
  %153 = load i64, i64* @GSS_SND, align 8
  %154 = getelementptr inbounds i8*, i8** %152, i64 %153
  store i8* %148, i8** %154, align 8
  %155 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %156 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %155, i32 0, i32 8
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %159 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %158, i32 0, i32 9
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i8**, i8*** %160, align 8
  %162 = load i64, i64* @GSS_RCV, align 8
  %163 = getelementptr inbounds i8*, i8** %161, i64 %162
  store i8* %157, i8** %163, align 8
  %164 = call i8* (...) @ccsha1_di()
  %165 = bitcast i8* %164 to %struct.TYPE_15__*
  %166 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %167 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %166, i32 0, i32 7
  store %struct.TYPE_15__* %165, %struct.TYPE_15__** %167, align 8
  %168 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %169 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %168, i32 0, i32 7
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = call i32 @assert(%struct.TYPE_15__* %170)
  %172 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %173 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %172, i32 0, i32 6
  store i32 0, i32* %173, align 8
  %174 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %175 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %174, i32 0, i32 5
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %180 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %182 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %181, i32 0, i32 2
  store i32 20, i32* %182, align 8
  %183 = load i32, i32* @KRB5_USAGE_ACCEPTOR_SIGN, align 4
  %184 = call i32 @krb5_make_usage(i32 %183, i32 153, i32* %16)
  %185 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %186 = load i32, i32* @KRB5_USAGE_LEN, align 4
  %187 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %188 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @GSS_SND, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = call i32 @krb5_3des_key_derivation(%struct.crypto_ctx* %185, i32* %16, i32 %186, i32* %191)
  %193 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %194 = load i32, i32* @KRB5_USAGE_LEN, align 4
  %195 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %196 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @GSS_RCV, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = call i32 @krb5_3des_key_derivation(%struct.crypto_ctx* %193, i32* %16, i32 %194, i32* %199)
  br label %203

201:                                              ; preds = %2
  %202 = load i32, i32* @ENOTSUP, align 4
  store i32 %202, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %209

203:                                              ; preds = %131, %117
  %204 = load i32, i32* @gss_krb5_mech_grp, align 4
  %205 = load i32, i32* @LCK_ATTR_NULL, align 4
  %206 = call i32 @lck_mtx_alloc_init(i32 %204, i32 %205)
  %207 = load %struct.crypto_ctx*, %struct.crypto_ctx** %4, align 8
  %208 = getelementptr inbounds %struct.crypto_ctx, %struct.crypto_ctx* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %209

209:                                              ; preds = %203, %201
  %210 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_15__* @ccaes_cbc_encrypt_mode(...) #2

declare dso_local i32 @assert(%struct.TYPE_15__*) #2

declare dso_local %struct.TYPE_15__* @ccaes_cbc_decrypt_mode(...) #2

declare dso_local i8* @ccsha1_di(...) #2

declare dso_local i32 @krb5_make_usage(i32, i32, i32*) #2

declare dso_local i32 @krb5_key_derivation(%struct.crypto_ctx*, i32*, i32, i32*, i32) #2

declare dso_local %struct.TYPE_15__* @ccdes3_cbc_encrypt_mode(...) #2

declare dso_local %struct.TYPE_15__* @ccdes3_cbc_decrypt_mode(...) #2

declare dso_local i32 @krb5_3des_key_derivation(%struct.crypto_ctx*, i32*, i32, i32*) #2

declare dso_local i32 @lck_mtx_alloc_init(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
