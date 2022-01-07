; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_verify_mic_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_verify_mic_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@GSS_S_NO_CONTEXT = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_krb5_verify_mic_mbuf(i64* %0, %struct.TYPE_13__* %1, i32 %2, i64 %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64* %0, i64** %9, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i64 0, i64* %16, align 8
  %18 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i64*, i64** %9, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  store i64* %16, i64** %9, align 8
  br label %22

22:                                               ; preds = %21, %7
  %23 = load i32*, i32** %15, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32* %17, i32** %15, align 8
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i64*, i64** %9, align 8
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i64 -1, i64* %13, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %33 = icmp eq %struct.TYPE_13__* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %36 = bitcast %struct.TYPE_13__* %35 to %struct.TYPE_12__*
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %31
  %41 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  store i64 %41, i64* %8, align 8
  br label %84

42:                                               ; preds = %34
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @supported_etype(i32 %47, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %42
  %55 = load i64, i64* @ENOTSUP, align 8
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %57, i64* %8, align 8
  br label %84

58:                                               ; preds = %42
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %82 [
    i32 0, label %64
    i32 1, label %73
  ]

64:                                               ; preds = %58
  %65 = load i64*, i64** %9, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load i32*, i32** %15, align 8
  %72 = call i64 @gss_krb5_3des_verify_mic_mbuf(i64* %65, %struct.TYPE_13__* %66, i32 %67, i64 %68, i64 %69, i32 %70, i32* %71)
  store i64 %72, i64* %8, align 8
  br label %84

73:                                               ; preds = %58
  %74 = load i64*, i64** %9, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = call i64 @gss_krb5_cfx_verify_mic_mbuf(i64* %74, %struct.TYPE_13__* %75, i32 %76, i64 %77, i64 %78, i32 %79, i32* %80)
  store i64 %81, i64* %8, align 8
  br label %84

82:                                               ; preds = %58
  %83 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %82, %73, %64, %54, %40
  %85 = load i64, i64* %8, align 8
  ret i64 %85
}

declare dso_local i32 @supported_etype(i32, i32) #1

declare dso_local i64 @gss_krb5_3des_verify_mic_mbuf(i64*, %struct.TYPE_13__*, i32, i64, i64, i32, i32*) #1

declare dso_local i64 @gss_krb5_cfx_verify_mic_mbuf(i64*, %struct.TYPE_13__*, i32, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
