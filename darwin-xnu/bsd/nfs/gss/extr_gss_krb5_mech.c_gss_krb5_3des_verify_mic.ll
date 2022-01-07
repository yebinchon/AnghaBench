; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_3des_verify_mic.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_3des_verify_mic.c"
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
define dso_local i32 @gss_krb5_3des_verify_mic(i32* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca %struct.TYPE_14__, align 8
  %17 = alloca %struct.TYPE_16__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %12, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %13, align 8
  %27 = alloca %struct.TYPE_14__, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %28 = bitcast %struct.TYPE_14__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.TYPE_14__* @mic_1964_token to i8*), i64 8, i1 false)
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 4, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i32 8, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %41, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %5
  %45 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %5
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @gss_krb5_3des_token_get(%struct.TYPE_15__* %48, i32 %49, i32* %51, %struct.TYPE_16__* %15, i32* null, i32* null, i32 0)
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %58, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %78

59:                                               ; preds = %47
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @krb5_mic(%struct.TYPE_17__* %60, %struct.TYPE_16__* %17, i32 %61, i32* null, %struct.TYPE_14__* %27, i32* %18, i32 0, i32 0)
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %78

69:                                               ; preds = %59
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @GSS_S_COMPLETE, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @GSS_S_BAD_SIG, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %78

78:                                               ; preds = %76, %67, %57
  %79 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gss_krb5_3des_token_get(%struct.TYPE_15__*, i32, i32*, %struct.TYPE_16__*, i32*, i32*, i32) #3

declare dso_local i32 @krb5_mic(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32*, %struct.TYPE_14__*, i32*, i32, i32) #3

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
