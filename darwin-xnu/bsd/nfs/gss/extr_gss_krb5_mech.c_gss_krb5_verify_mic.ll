; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_verify_mic.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_verify_mic.c"
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
define dso_local i64 @gss_krb5_verify_mic(i64* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i64*, i64** %7, align 8
  %16 = icmp eq i64* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i64* %12, i64** %7, align 8
  br label %18

18:                                               ; preds = %17, %5
  %19 = load i32*, i32** %11, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32* %13, i32** %11, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i64*, i64** %7, align 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = icmp eq %struct.TYPE_13__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = bitcast %struct.TYPE_13__* %27 to %struct.TYPE_12__*
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %22
  %33 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  store i64 %33, i64* %6, align 8
  br label %72

34:                                               ; preds = %26
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @supported_etype(i32 %39, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %34
  %47 = load i64, i64* @ENOTSUP, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %49, i64* %6, align 8
  br label %72

50:                                               ; preds = %34
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %70 [
    i32 0, label %56
    i32 1, label %63
  ]

56:                                               ; preds = %50
  %57 = load i64*, i64** %7, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = call i64 @gss_krb5_3des_verify_mic(i64* %57, %struct.TYPE_13__* %58, i32 %59, i32 %60, i32* %61)
  store i64 %62, i64* %6, align 8
  br label %72

63:                                               ; preds = %50
  %64 = load i64*, i64** %7, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = call i64 @gss_krb5_cfx_verify_mic(i64* %64, %struct.TYPE_13__* %65, i32 %66, i32 %67, i32* %68)
  store i64 %69, i64* %6, align 8
  br label %72

70:                                               ; preds = %50
  %71 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %70, %63, %56, %46, %32
  %73 = load i64, i64* %6, align 8
  ret i64 %73
}

declare dso_local i32 @supported_etype(i32, i32) #1

declare dso_local i64 @gss_krb5_3des_verify_mic(i64*, %struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i64 @gss_krb5_cfx_verify_mic(i64*, %struct.TYPE_13__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
