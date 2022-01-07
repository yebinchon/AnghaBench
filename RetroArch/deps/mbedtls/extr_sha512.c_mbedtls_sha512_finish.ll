; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_sha512.c_mbedtls_sha512_finish.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_sha512.c_mbedtls_sha512_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i64 }

@sha512_padding = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_sha512_finish(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 61
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 3
  %22 = or i32 %15, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 3
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %31 = call i32 @PUT_UINT64_BE(i32 %29, i8* %30, i32 0)
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %34 = call i32 @PUT_UINT64_BE(i32 %32, i8* %33, i32 8)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 127
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ult i64 %42, 112
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load i64, i64* %5, align 8
  %46 = sub i64 112, %45
  br label %50

47:                                               ; preds = %2
  %48 = load i64, i64* %5, align 8
  %49 = sub i64 240, %48
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i64 [ %46, %44 ], [ %49, %47 ]
  store i64 %51, i64* %6, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = load i8*, i8** @sha512_padding, align 8
  %54 = load i64, i64* %6, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @mbedtls_sha512_update(%struct.TYPE_4__* %52, i8* %53, i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %59 = call i32 @mbedtls_sha512_update(%struct.TYPE_4__* %57, i8* %58, i32 16)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @PUT_UINT64_BE(i32 %64, i8* %65, i32 0)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @PUT_UINT64_BE(i32 %71, i8* %72, i32 8)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @PUT_UINT64_BE(i32 %78, i8* %79, i32 16)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @PUT_UINT64_BE(i32 %85, i8* %86, i32 24)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @PUT_UINT64_BE(i32 %92, i8* %93, i32 32)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 5
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 @PUT_UINT64_BE(i32 %99, i8* %100, i32 40)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %50
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 6
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 @PUT_UINT64_BE(i32 %111, i8* %112, i32 48)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 7
  %118 = load i32, i32* %117, align 4
  %119 = load i8*, i8** %4, align 8
  %120 = call i32 @PUT_UINT64_BE(i32 %118, i8* %119, i32 56)
  br label %121

121:                                              ; preds = %106, %50
  ret void
}

declare dso_local i32 @PUT_UINT64_BE(i32, i8*, i32) #1

declare dso_local i32 @mbedtls_sha512_update(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
