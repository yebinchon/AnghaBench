; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_cfx_verify_mic_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_cfx_verify_mic_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }

@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@GSS_S_BAD_SIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_krb5_cfx_verify_mic_mbuf(i32* %0, %struct.TYPE_12__* %1, i32 %2, i64 %3, i64 %4, %struct.TYPE_14__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_15__, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %14, align 8
  store i32* %6, i32** %15, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %16, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %17, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store i32* %30, i32** %18, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = bitcast %struct.TYPE_13__* %33 to i32*
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32* %35, i32** %19, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %7
  %39 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %40 = load i32*, i32** %15, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %7
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32* %22, i32** %9, align 8
  br label %45

45:                                               ; preds = %44, %41
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %48 = call i32 @gss_krb5_cfx_verify_mic_token(%struct.TYPE_12__* %46, %struct.TYPE_13__* %47)
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %54, i32* %8, align 4
  br label %85

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i32 4, i32* %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %60, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = call i32 @krb5_mic_mbuf(i32* %61, i32* null, i32 %62, i64 %63, i64 %64, %struct.TYPE_15__* %23, i32* %65, i32* %20, i32 0, i32 0)
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i32* %21, i32 %70, i32 4)
  %72 = load i32, i32* %21, align 4
  %73 = call i32 @ntohll(i32 %72)
  store i32 %73, i32* %21, align 4
  %74 = load i32, i32* %21, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %20, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %55
  %80 = load i32, i32* @GSS_S_COMPLETE, align 4
  br label %83

81:                                               ; preds = %55
  %82 = load i32, i32* @GSS_S_BAD_SIG, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %83, %53
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i32 @gss_krb5_cfx_verify_mic_token(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @krb5_mic_mbuf(i32*, i32*, i32, i64, i64, %struct.TYPE_15__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ntohll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
