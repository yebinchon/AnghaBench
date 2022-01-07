; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_3des_verify_mic_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_3des_verify_mic_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }

@mic_1964_token = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@GSS_S_BAD_SIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_krb5_3des_verify_mic_mbuf(i32* %0, %struct.TYPE_15__* %1, i32 %2, i64 %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_16__, align 8
  %20 = alloca %struct.TYPE_16__, align 8
  %21 = alloca %struct.TYPE_14__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %16, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %17, align 8
  %31 = alloca %struct.TYPE_14__, i64 %29, align 16
  store i64 %29, i64* %18, align 8
  %32 = bitcast %struct.TYPE_14__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.TYPE_14__* @mic_1964_token to i8*), i64 8, i1 false)
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 4, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store i32 8, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %45, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %7
  %49 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %50 = load i32*, i32** %15, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %7
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %53 = load i32, i32* %14, align 4
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @gss_krb5_3des_token_get(%struct.TYPE_15__* %52, i32 %53, i32* %55, %struct.TYPE_16__* %20, i32* null, i32* null, i32 0)
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %62, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %84

63:                                               ; preds = %51
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @krb5_mic_mbuf(%struct.TYPE_17__* %64, %struct.TYPE_16__* %19, i32 %65, i64 %66, i64 %67, i32* null, %struct.TYPE_14__* %31, i32* %22, i32 0, i32 0)
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %74, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %84

75:                                               ; preds = %63
  %76 = load i32, i32* %22, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @GSS_S_COMPLETE, align 4
  br label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @GSS_S_BAD_SIG, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %84

84:                                               ; preds = %82, %73, %61
  %85 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gss_krb5_3des_token_get(%struct.TYPE_15__*, i32, i32*, %struct.TYPE_16__*, i32*, i32*, i32) #3

declare dso_local i32 @krb5_mic_mbuf(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i64, i64, i32*, %struct.TYPE_14__*, i32*, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
