; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_sha512.c_mbedtls_sha512_update.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_sha512.c_mbedtls_sha512_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_sha512_update(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %98

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 127
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sub i32 128, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %23
  store i32 %29, i32* %27, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %12
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %38, %12
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %45
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @memcpy(i8* %58, i8* %59, i64 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @mbedtls_sha512_process(%struct.TYPE_4__* %62, i8* %65)
  %67 = load i64, i64* %7, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %5, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %6, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %52, %48, %45
  br label %74

74:                                               ; preds = %77, %73
  %75 = load i64, i64* %6, align 8
  %76 = icmp uge i64 %75, 128
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @mbedtls_sha512_process(%struct.TYPE_4__* %78, i8* %79)
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 128
  store i8* %82, i8** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = sub i64 %83, 128
  store i64 %84, i64* %6, align 8
  br label %74

85:                                               ; preds = %74
  %86 = load i64, i64* %6, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8*, i8** %5, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @memcpy(i8* %94, i8* %95, i64 %96)
  br label %98

98:                                               ; preds = %11, %88, %85
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_sha512_process(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
