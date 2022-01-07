; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_cfx_verify_mic.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_cfx_verify_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_20__, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }

@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mic token wrong length\0A\00", align 1
@EBADRPC = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@GSS_S_BAD_SIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_krb5_cfx_verify_mic(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_19__, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %12, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %13, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %14, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %30 = bitcast %struct.TYPE_17__* %29 to i32*
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  store i32* %31, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %5
  %38 = load i32*, i32** %7, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32* %18, i32** %7, align 8
  br label %41

41:                                               ; preds = %40, %37
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 4, %47
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EBADRPC, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  br label %86

54:                                               ; preds = %41
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %57 = call i32 @gss_krb5_cfx_verify_mic_token(%struct.TYPE_16__* %55, %struct.TYPE_17__* %56)
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %63, i32* %6, align 4
  br label %95

64:                                               ; preds = %54
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  store i32 4, i32* %67, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @krb5_mic(%struct.TYPE_20__* %68, i32* null, %struct.TYPE_18__* %69, %struct.TYPE_19__* %19, i32* %70, i32* %16, i32 0, i32 0)
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %64
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(i32* %17, i32 %78, i32 4)
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @ntohll(i32 %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %75, %64
  br label %86

86:                                               ; preds = %85, %50
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @GSS_S_COMPLETE, align 4
  br label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @GSS_S_BAD_SIG, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %93, %62
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @gss_krb5_cfx_verify_mic_token(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @krb5_mic(%struct.TYPE_20__*, i32*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ntohll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
