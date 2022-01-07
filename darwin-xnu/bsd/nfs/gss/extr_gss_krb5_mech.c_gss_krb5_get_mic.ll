; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_get_mic.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_get_mic.c"
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
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_krb5_get_mic(i64* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = icmp eq i64* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i64* %12, i64** %7, align 8
  br label %16

16:                                               ; preds = %15, %5
  %17 = load i64*, i64** %7, align 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = icmp eq %struct.TYPE_13__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = bitcast %struct.TYPE_13__* %21 to %struct.TYPE_12__*
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %16
  %27 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  store i64 %27, i64* %6, align 8
  br label %66

28:                                               ; preds = %20
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @supported_etype(i32 %33, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %28
  %41 = load i64, i64* @ENOTSUP, align 8
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %43, i64* %6, align 8
  br label %66

44:                                               ; preds = %28
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %64 [
    i32 0, label %50
    i32 1, label %57
  ]

50:                                               ; preds = %44
  %51 = load i64*, i64** %7, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @gss_krb5_3des_get_mic(i64* %51, %struct.TYPE_13__* %52, i32 %53, i32 %54, i32 %55)
  store i64 %56, i64* %6, align 8
  br label %66

57:                                               ; preds = %44
  %58 = load i64*, i64** %7, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @gss_krb5_cfx_get_mic(i64* %58, %struct.TYPE_13__* %59, i32 %60, i32 %61, i32 %62)
  store i64 %63, i64* %6, align 8
  br label %66

64:                                               ; preds = %44
  %65 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %64, %57, %50, %40, %26
  %67 = load i64, i64* %6, align 8
  ret i64 %67
}

declare dso_local i32 @supported_etype(i32, i32) #1

declare dso_local i64 @gss_krb5_3des_get_mic(i64*, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i64 @gss_krb5_cfx_get_mic(i64*, %struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
