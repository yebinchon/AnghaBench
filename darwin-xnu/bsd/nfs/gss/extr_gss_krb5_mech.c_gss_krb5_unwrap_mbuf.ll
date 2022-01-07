; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_unwrap_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_unwrap_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@GSS_S_NO_CONTEXT = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_krb5_unwrap_mbuf(i32* %0, %struct.TYPE_13__* %1, i32** %2, i64 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %17, align 4
  %22 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  store i32 %22, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store i32* %17, i32** %9, align 8
  br label %26

26:                                               ; preds = %25, %7
  %27 = load i32*, i32** %15, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32* %18, i32** %15, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32*, i32** %14, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32* %19, i32** %14, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %36 = icmp eq %struct.TYPE_13__* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = bitcast %struct.TYPE_13__* %38 to %struct.TYPE_12__*
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %34
  %44 = load i32, i32* @GSS_S_NO_CONTEXT, align 4
  store i32 %44, i32* %8, align 4
  br label %102

45:                                               ; preds = %37
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @supported_etype(i32 %50, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* @ENOTSUP, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %60, i32* %8, align 4
  br label %102

61:                                               ; preds = %45
  %62 = load i32**, i32*** %11, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @gss_normalize_mbuf(i32* %63, i64 %64, i64* %13, i32** %20, i32** %21, i32 0)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %85 [
    i32 0, label %71
    i32 1, label %78
  ]

71:                                               ; preds = %61
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @gss_krb5_3des_unwrap_mbuf(i32* %72, %struct.TYPE_13__* %73, i32** %20, i64 %74, i32* %75, i32* %76)
  store i32 %77, i32* %16, align 4
  br label %85

78:                                               ; preds = %61
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @gss_krb5_cfx_unwrap_mbuf(i32* %79, %struct.TYPE_13__* %80, i32** %20, i64 %81, i32* %82, i32* %83)
  store i32 %84, i32* %16, align 4
  br label %85

85:                                               ; preds = %61, %78, %71
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32**, i32*** %11, align 8
  %90 = load i32*, i32** %89, align 8
  %91 = load i32*, i32** %20, align 8
  %92 = load i32*, i32** %21, align 8
  %93 = call i32 @gss_join_mbuf(i32* %90, i32* %91, i32* %92)
  br label %100

94:                                               ; preds = %85
  %95 = load i32*, i32** %20, align 8
  %96 = load i32**, i32*** %11, align 8
  store i32* %95, i32** %96, align 8
  %97 = load i32*, i32** %20, align 8
  %98 = load i32*, i32** %21, align 8
  %99 = call i32 @gss_join_mbuf(i32* %97, i32* %98, i32* null)
  br label %100

100:                                              ; preds = %94, %88
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %100, %57, %43
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local i32 @supported_etype(i32, i32) #1

declare dso_local i32 @gss_normalize_mbuf(i32*, i64, i64*, i32**, i32**, i32) #1

declare dso_local i32 @gss_krb5_3des_unwrap_mbuf(i32*, %struct.TYPE_13__*, i32**, i64, i32*, i32*) #1

declare dso_local i32 @gss_krb5_cfx_unwrap_mbuf(i32*, %struct.TYPE_13__*, i32**, i64, i32*, i32*) #1

declare dso_local i32 @gss_join_mbuf(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
