; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_x509_parse_time.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_x509_parse_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@MBEDTLS_ERR_X509_INVALID_DATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64, i64, %struct.TYPE_4__*)* @x509_parse_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_time(i8** %0, i64 %1, i64 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = add i64 %12, 8
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_DATE, align 4
  store i32 %16, i32* %5, align 4
  br label %103

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = add i64 %18, 8
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %20, %19
  store i64 %21, i64* %7, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @x509_parse_int(i8** %22, i32 %24, i32* %26)
  %28 = call i32 @CHECK(i32 %27)
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 2, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %17
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 50
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 100
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1900
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %17
  %47 = load i8**, i8*** %6, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = call i32 @x509_parse_int(i8** %47, i32 2, i32* %49)
  %51 = call i32 @CHECK(i32 %50)
  %52 = load i8**, i8*** %6, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = call i32 @x509_parse_int(i8** %52, i32 2, i32* %54)
  %56 = call i32 @CHECK(i32 %55)
  %57 = load i8**, i8*** %6, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = call i32 @x509_parse_int(i8** %57, i32 2, i32* %59)
  %61 = call i32 @CHECK(i32 %60)
  %62 = load i8**, i8*** %6, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = call i32 @x509_parse_int(i8** %62, i32 2, i32* %64)
  %66 = call i32 @CHECK(i32 %65)
  %67 = load i64, i64* %7, align 8
  %68 = icmp uge i64 %67, 2
  br i1 %68, label %69, label %77

69:                                               ; preds = %46
  %70 = load i8**, i8*** %6, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 5
  %73 = call i32 @x509_parse_int(i8** %70, i32 2, i32* %72)
  %74 = call i32 @CHECK(i32 %73)
  %75 = load i64, i64* %7, align 8
  %76 = sub i64 %75, 2
  store i64 %76, i64* %7, align 8
  br label %79

77:                                               ; preds = %46
  %78 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_DATE, align 4
  store i32 %78, i32* %5, align 4
  br label %103

79:                                               ; preds = %69
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 1, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load i8**, i8*** %6, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 90, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i8**, i8*** %6, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %89, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %7, align 8
  br label %94

94:                                               ; preds = %88, %82, %79
  %95 = load i64, i64* %7, align 8
  %96 = icmp ne i64 0, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_DATE, align 4
  store i32 %98, i32* %5, align 4
  br label %103

99:                                               ; preds = %94
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %101 = call i32 @x509_date_is_valid(%struct.TYPE_4__* %100)
  %102 = call i32 @CHECK(i32 %101)
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %97, %77, %15
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @x509_parse_int(i8**, i32, i32*) #1

declare dso_local i32 @x509_date_is_valid(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
