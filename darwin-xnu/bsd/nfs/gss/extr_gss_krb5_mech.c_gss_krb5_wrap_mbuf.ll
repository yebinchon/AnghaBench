; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_wrap_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_wrap_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@GSS_S_NO_CONTEXT = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_krb5_wrap_mbuf(i64* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i32** %4, i64 %5, i64 %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i64* %0, i64** %10, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32** %4, i32*** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %22, align 4
  %23 = load i64*, i64** %10, align 8
  %24 = icmp eq i64* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  store i64* %19, i64** %10, align 8
  br label %26

26:                                               ; preds = %25, %8
  %27 = load i32*, i32** %17, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32* %22, i32** %17, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i64*, i64** %10, align 8
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %33 = icmp eq %struct.TYPE_13__* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %36 = bitcast %struct.TYPE_13__* %35 to %struct.TYPE_12__*
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %30
  %41 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  store i64 %41, i64* %9, align 8
  br label %101

42:                                               ; preds = %34
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @supported_etype(i32 %47, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %42
  %55 = load i64, i64* @ENOTSUP, align 8
  %56 = load i64*, i64** %10, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %57, i64* %9, align 8
  br label %101

58:                                               ; preds = %42
  %59 = load i32**, i32*** %14, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %15, align 8
  %62 = call i32 @gss_normalize_mbuf(i32* %60, i64 %61, i64* %16, i32** %20, i32** %21, i32 0)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %84 [
    i32 0, label %68
    i32 1, label %76
  ]

68:                                               ; preds = %58
  %69 = load i64*, i64** %10, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i64, i64* %16, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = call i64 @gss_krb5_3des_wrap_mbuf(i64* %69, %struct.TYPE_13__* %70, i32 %71, i32 %72, i32** %20, i64 %73, i32* %74)
  store i64 %75, i64* %18, align 8
  br label %84

76:                                               ; preds = %58
  %77 = load i64*, i64** %10, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i64, i64* %16, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = call i64 @gss_krb5_cfx_wrap_mbuf(i64* %77, %struct.TYPE_13__* %78, i32 %79, i32 %80, i32** %20, i64 %81, i32* %82)
  store i64 %83, i64* %18, align 8
  br label %84

84:                                               ; preds = %58, %76, %68
  %85 = load i64, i64* %15, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32**, i32*** %14, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = load i32*, i32** %20, align 8
  %91 = load i32*, i32** %21, align 8
  %92 = call i32 @gss_join_mbuf(i32* %89, i32* %90, i32* %91)
  br label %99

93:                                               ; preds = %84
  %94 = load i32*, i32** %20, align 8
  %95 = load i32**, i32*** %14, align 8
  store i32* %94, i32** %95, align 8
  %96 = load i32*, i32** %20, align 8
  %97 = load i32*, i32** %21, align 8
  %98 = call i32 @gss_join_mbuf(i32* %96, i32* %97, i32* null)
  br label %99

99:                                               ; preds = %93, %87
  %100 = load i64, i64* %18, align 8
  store i64 %100, i64* %9, align 8
  br label %101

101:                                              ; preds = %99, %54, %40
  %102 = load i64, i64* %9, align 8
  ret i64 %102
}

declare dso_local i32 @supported_etype(i32, i32) #1

declare dso_local i32 @gss_normalize_mbuf(i32*, i64, i64*, i32**, i32**, i32) #1

declare dso_local i64 @gss_krb5_3des_wrap_mbuf(i64*, %struct.TYPE_13__*, i32, i32, i32**, i64, i32*) #1

declare dso_local i64 @gss_krb5_cfx_wrap_mbuf(i64*, %struct.TYPE_13__*, i32, i32, i32**, i64, i32*) #1

declare dso_local i32 @gss_join_mbuf(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
